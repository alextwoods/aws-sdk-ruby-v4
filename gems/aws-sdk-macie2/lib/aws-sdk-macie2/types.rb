# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Macie2
  module Types

    # @!attribute administrator_account_id
    #   <p>The Amazon Web Services account ID for the account that sent the invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute invitation_id
    #   <p>The unique identifier for the invitation to accept.</p>
    #
    #   @return [String]
    #
    # @!attribute master_account
    #   <p>(Deprecated) The Amazon Web Services account ID for the account that sent the invitation. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    AcceptInvitationInput = ::Struct.new(
      :administrator_account_id,
      :invitation_id,
      :master_account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AcceptInvitationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the permissions settings of the bucket-level access control list (ACL) for an S3 bucket.</p>
    #
    # @!attribute allows_public_read_access
    #   <p>Specifies whether the ACL grants the general public with read access permissions for the bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allows_public_write_access
    #   <p>Specifies whether the ACL grants the general public with write access permissions for the bucket.</p>
    #
    #   @return [Boolean]
    #
    AccessControlList = ::Struct.new(
      :allows_public_read_access,
      :allows_public_write_access,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allows_public_read_access ||= false
        self.allows_public_write_access ||= false
      end
    end

    # <p>Provides information about an error that occurred due to insufficient access to a specified resource.</p>
    #
    # @!attribute message
    #   <p>The explanation of the error that occurred.</p>
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the details of an account to associate with an Amazon Macie administrator account.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the account.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address for the account.</p>
    #
    #   @return [String]
    #
    AccountDetail = ::Struct.new(
      :account_id,
      :email,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the account-level permissions settings that apply to an S3 bucket.</p>
    #
    # @!attribute block_public_access
    #   <p>The block public access settings for the Amazon Web Services account that owns the bucket.</p>
    #
    #   @return [BlockPublicAccess]
    #
    AccountLevelPermissions = ::Struct.new(
      :block_public_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the delegated Amazon Macie administrator account for an organization in Organizations.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the account.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the account as the delegated Amazon Macie administrator account for the organization.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLING_IN_PROGRESS"]
    #
    #   @return [String]
    #
    AdminAccount = ::Struct.new(
      :account_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AdminStatus
    #
    module AdminStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLING_IN_PROGRESS = "DISABLING_IN_PROGRESS"
    end

    # Includes enum constants for AllowsUnencryptedObjectUploads
    #
    module AllowsUnencryptedObjectUploads
      # No documentation available.
      #
      TRUE = "TRUE"

      # No documentation available.
      #
      FALSE = "FALSE"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # <p>Provides information about an API operation that an entity invoked for an affected resource.</p>
    #
    # @!attribute api
    #   <p>The name of the operation that was invoked most recently and produced the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute api_service_name
    #   <p>The URL of the Amazon Web Service that provides the operation, for example: s3.amazonaws.com.</p>
    #
    #   @return [String]
    #
    # @!attribute first_seen
    #   <p>The first date and time, in UTC and extended ISO 8601 format, when any operation was invoked and produced the finding.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_seen
    #   <p>The most recent date and time, in UTC and extended ISO 8601 format, when the specified operation (api) was invoked and produced the finding.</p>
    #
    #   @return [Time]
    #
    ApiCallDetails = ::Struct.new(
      :api,
      :api_service_name,
      :first_seen,
      :last_seen,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an identity that performed an action on an affected resource by using temporary security credentials. The credentials were obtained using the AssumeRole operation of the Security Token Service (STS) API.</p>
    #
    # @!attribute access_key_id
    #   <p>The Amazon Web Services access key ID that identifies the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account that owns the entity that was used to get the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity that was used to get the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The unique identifier for the entity that was used to get the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute session_context
    #   <p>The details of the session that was created for the credentials, including the entity that issued the session.</p>
    #
    #   @return [SessionContext]
    #
    AssumedRole = ::Struct.new(
      :access_key_id,
      :account_id,
      :arn,
      :principal_id,
      :session_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an Amazon Web Services account and entity that performed an action on an affected resource. The action was performed using the credentials for an Amazon Web Services account other than your own account.</p>
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The unique identifier for the entity that performed the action.</p>
    #
    #   @return [String]
    #
    AwsAccount = ::Struct.new(
      :account_id,
      :principal_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an Amazon Web Service that performed an action on an affected resource.</p>
    #
    # @!attribute invoked_by
    #   <p>The name of the Amazon Web Service that performed the action.</p>
    #
    #   @return [String]
    #
    AwsService = ::Struct.new(
      :invoked_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a custom data identifier.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute deleted
    #   <p>Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>The custom description of the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The custom name of the custom data identifier.</p>
    #
    #   @return [String]
    #
    BatchGetCustomDataIdentifierSummary = ::Struct.new(
      :arn,
      :created_at,
      :deleted,
      :description,
      :id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.deleted ||= false
      end
    end

    # @!attribute ids
    #   <p>An array of custom data identifier IDs, one for each custom data identifier to retrieve information about.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetCustomDataIdentifiersInput = ::Struct.new(
      :ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute custom_data_identifiers
    #   <p>An array of objects, one for each custom data identifier that meets the criteria specified in the request.</p>
    #
    #   @return [Array<BatchGetCustomDataIdentifierSummary>]
    #
    # @!attribute not_found_identifier_ids
    #   <p>An array of custom data identifier IDs, one for each custom data identifier that was specified in the request but doesn't correlate to an existing custom data identifier.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetCustomDataIdentifiersOutput = ::Struct.new(
      :custom_data_identifiers,
      :not_found_identifier_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the block public access settings for an S3 bucket. These settings can apply to a bucket at the account level or bucket level. For detailed information about each setting, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html">Blocking public access to your Amazon S3 storage</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #
    # @!attribute block_public_acls
    #   <p>Specifies whether Amazon S3 blocks public access control lists (ACLs) for the bucket and objects in the bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute block_public_policy
    #   <p>Specifies whether Amazon S3 blocks public bucket policies for the bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ignore_public_acls
    #   <p>Specifies whether Amazon S3 ignores public ACLs for the bucket and objects in the bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute restrict_public_buckets
    #   <p>Specifies whether Amazon S3 restricts public bucket policies for the bucket.</p>
    #
    #   @return [Boolean]
    #
    BlockPublicAccess = ::Struct.new(
      :block_public_acls,
      :block_public_policy,
      :ignore_public_acls,
      :restrict_public_buckets,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.block_public_acls ||= false
        self.block_public_policy ||= false
        self.ignore_public_acls ||= false
        self.restrict_public_buckets ||= false
      end
    end

    # <p>Provides information about the number of S3 buckets that are publicly accessible based on a combination of permissions settings for each bucket.</p>
    #
    # @!attribute publicly_accessible
    #   <p>The total number of buckets that allow the general public to have read or write access to the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute publicly_readable
    #   <p>The total number of buckets that allow the general public to have read access to the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute publicly_writable
    #   <p>The total number of buckets that allow the general public to have write access to the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unknown
    #   <p>The total number of buckets that Amazon Macie wasn't able to evaluate permissions settings for. Macie can't determine whether these buckets are publicly accessible.</p>
    #
    #   @return [Integer]
    #
    BucketCountByEffectivePermission = ::Struct.new(
      :publicly_accessible,
      :publicly_readable,
      :publicly_writable,
      :unknown,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.publicly_accessible ||= 0
        self.publicly_readable ||= 0
        self.publicly_writable ||= 0
        self.unknown ||= 0
      end
    end

    # <p>Provides information about the number of S3 buckets that use certain types of server-side encryption by default or don't encrypt new objects by default. For detailed information about these settings, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html">Setting default server-side encryption behavior for Amazon S3 buckets</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #
    # @!attribute kms_managed
    #   <p>The total number of buckets that use an KMS key to encrypt new objects by default, either an Amazon Web Services managed key or a customer managed key. These buckets use KMS encryption (SSE-KMS) by default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute s3_managed
    #   <p>The total number of buckets that use an Amazon S3 managed key to encrypt new objects by default. These buckets use Amazon S3 managed encryption (SSE-S3) by default.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unencrypted
    #   <p>The total number of buckets that don't encrypt new objects by default. Default encryption is disabled for these buckets.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unknown
    #   <p>The total number of buckets that Amazon Macie doesn't have current encryption metadata for. Macie can't provide current data about the default encryption settings for these buckets.</p>
    #
    #   @return [Integer]
    #
    BucketCountByEncryptionType = ::Struct.new(
      :kms_managed,
      :s3_managed,
      :unencrypted,
      :unknown,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.kms_managed ||= 0
        self.s3_managed ||= 0
        self.unencrypted ||= 0
        self.unknown ||= 0
      end
    end

    # <p>Provides information about the number of S3 buckets that are or aren't shared with other Amazon Web Services accounts.</p>
    #
    # @!attribute external
    #   <p>The total number of buckets that are shared with an Amazon Web Services account that isn't part of the same Amazon Macie organization.</p>
    #
    #   @return [Integer]
    #
    # @!attribute internal
    #   <p>The total number of buckets that are shared with an Amazon Web Services account that's part of the same Amazon Macie organization.</p>
    #
    #   @return [Integer]
    #
    # @!attribute not_shared
    #   <p>The total number of buckets that aren't shared with other Amazon Web Services accounts.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unknown
    #   <p>The total number of buckets that Amazon Macie wasn't able to evaluate shared access settings for. Macie can't determine whether these buckets are shared with other Amazon Web Services accounts.</p>
    #
    #   @return [Integer]
    #
    BucketCountBySharedAccessType = ::Struct.new(
      :external,
      :internal,
      :not_shared,
      :unknown,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.external ||= 0
        self.internal ||= 0
        self.not_shared ||= 0
        self.unknown ||= 0
      end
    end

    # <p>Provides information about the number of S3 buckets whose bucket policies do or don't require server-side encryption of objects when objects are uploaded to the buckets.</p>
    #
    # @!attribute allows_unencrypted_object_uploads
    #   <p>The total number of buckets that don't have a bucket policy or have a bucket policy that doesn't require server-side encryption of new objects. If a bucket policy exists, the policy doesn't require PutObject requests to include the x-amz-server-side-encryption header and it doesn't require the value for that header to be AES256 or aws:kms.</p>
    #
    #   @return [Integer]
    #
    # @!attribute denies_unencrypted_object_uploads
    #   <p>The total number of buckets whose bucket policies require server-side encryption of new objects. PutObject requests for these buckets must include the x-amz-server-side-encryption header and the value for that header must be AES256 or aws:kms.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unknown
    #   <p>The total number of buckets that Amazon Macie wasn't able to evaluate server-side encryption requirements for. Macie can't determine whether the bucket policies for these buckets require server-side encryption of new objects.</p>
    #
    #   @return [Integer]
    #
    BucketCountPolicyAllowsUnencryptedObjectUploads = ::Struct.new(
      :allows_unencrypted_object_uploads,
      :denies_unencrypted_object_uploads,
      :unknown,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allows_unencrypted_object_uploads ||= 0
        self.denies_unencrypted_object_uploads ||= 0
        self.unknown ||= 0
      end
    end

    # <p>Specifies the operator to use in a property-based condition that filters the results of a query for information about S3 buckets.</p>
    #
    # @!attribute eq
    #   <p>The value for the property matches (equals) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute gt
    #   <p>The value for the property is greater than the specified value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute gte
    #   <p>The value for the property is greater than or equal to the specified value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lt
    #   <p>The value for the property is less than the specified value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lte
    #   <p>The value for the property is less than or equal to the specified value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute neq
    #   <p>The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute prefix
    #   <p>The name of the bucket begins with the specified value.</p>
    #
    #   @return [String]
    #
    BucketCriteriaAdditionalProperties = ::Struct.new(
      :eq,
      :gt,
      :gte,
      :lt,
      :lte,
      :neq,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.gt ||= 0
        self.gte ||= 0
        self.lt ||= 0
        self.lte ||= 0
      end
    end

    # <p>Provides information about the bucket-level permissions settings for an S3 bucket.</p>
    #
    # @!attribute access_control_list
    #   <p>The permissions settings of the access control list (ACL) for the bucket. This value is null if an ACL hasn't been defined for the bucket.</p>
    #
    #   @return [AccessControlList]
    #
    # @!attribute block_public_access
    #   <p>The block public access settings for the bucket.</p>
    #
    #   @return [BlockPublicAccess]
    #
    # @!attribute bucket_policy
    #   <p>The permissions settings of the bucket policy for the bucket. This value is null if a bucket policy hasn't been defined for the bucket.</p>
    #
    #   @return [BucketPolicy]
    #
    BucketLevelPermissions = ::Struct.new(
      :access_control_list,
      :block_public_access,
      :bucket_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides statistical data and other information about an S3 bucket that Amazon Macie monitors and analyzes for your account. If an error occurs when Macie attempts to retrieve and process information about the bucket or the bucket's objects, the value for the versioning property is false and the value for most other properties is null. Exceptions are accountId, bucketArn, bucketCreatedAt, bucketName, lastUpdated, and region. To identify the cause of the error, refer to the errorCode and errorMessage values.</p>
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account that owns the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute allows_unencrypted_object_uploads
    #   <p>Specifies whether the bucket policy for the bucket requires server-side encryption of objects when objects are uploaded to the bucket. Possible values are:</p> <ul><li><p>FALSE - The bucket policy requires server-side encryption of new objects. PutObject requests must include the x-amz-server-side-encryption header and the value for that header must be AES256 or aws:kms.</p></li> <li><p>TRUE - The bucket doesn't have a bucket policy or it has a bucket policy that doesn't require server-side encryption of new objects. If a bucket policy exists, it doesn't require PutObject requests to include the x-amz-server-side-encryption header and it doesn't require the value for that header to be AES256 or aws:kms.</p></li> <li><p>UNKNOWN - Amazon Macie can't determine whether the bucket policy requires server-side encryption of new objects.</p></li></ul>
    #
    #   Enum, one of: ["TRUE", "FALSE", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_created_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the bucket was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute bucket_name
    #   <p>The name of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute classifiable_object_count
    #   <p>The total number of objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p>
    #
    #   @return [Integer]
    #
    # @!attribute classifiable_size_in_bytes
    #   <p>The total storage size, in bytes, of the objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p> <p>If versioning is enabled for the bucket, Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute error_code
    #   <p>Specifies the error code for an error that prevented Amazon Macie from retrieving and processing information about the bucket and the bucket's objects. If this value is ACCESS_DENIED, Macie doesn't have permission to retrieve the information. For example, the bucket has a restrictive bucket policy and Amazon S3 denied the request. If this value is null, Macie was able to retrieve and process the information.</p>
    #
    #   Enum, one of: ["ACCESS_DENIED"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A brief description of the error (errorCode) that prevented Amazon Macie from retrieving and processing information about the bucket and the bucket's objects. This value is null if Macie was able to retrieve and process the information.</p>
    #
    #   @return [String]
    #
    # @!attribute job_details
    #   <p>Specifies whether any one-time or recurring classification jobs are configured to analyze data in the bucket, and, if so, the details of the job that ran most recently.</p>
    #
    #   @return [JobDetails]
    #
    # @!attribute last_updated
    #   <p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently retrieved both bucket and object metadata from Amazon S3 for the bucket.</p>
    #
    #   @return [Time]
    #
    # @!attribute object_count
    #   <p>The total number of objects in the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute object_count_by_encryption_type
    #   <p>The total number of objects that are in the bucket, grouped by server-side encryption type. This includes a grouping that reports the total number of objects that aren't encrypted or use client-side encryption.</p>
    #
    #   @return [ObjectCountByEncryptionType]
    #
    # @!attribute public_access
    #   <p>Specifies whether the bucket is publicly accessible due to the combination of permissions settings that apply to the bucket, and provides information about those settings.</p>
    #
    #   @return [BucketPublicAccess]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region that hosts the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_details
    #   <p>Specifies whether the bucket is configured to replicate one or more objects to buckets for other Amazon Web Services accounts and, if so, which accounts.</p>
    #
    #   @return [ReplicationDetails]
    #
    # @!attribute server_side_encryption
    #   <p>Specifies whether the bucket encrypts new objects by default and, if so, the type of server-side encryption that's used.</p>
    #
    #   @return [BucketServerSideEncryption]
    #
    # @!attribute shared_access
    #   <p>Specifies whether the bucket is shared with another Amazon Web Services account. Possible values are:</p> <ul><li><p>EXTERNAL - The bucket is shared with an Amazon Web Services account that isn't part of the same Amazon Macie organization.</p></li> <li><p>INTERNAL - The bucket is shared with an Amazon Web Services account that's part of the same Amazon Macie organization.</p></li> <li><p>NOT_SHARED - The bucket isn't shared with other Amazon Web Services accounts.</p></li> <li><p>UNKNOWN - Amazon Macie wasn't able to evaluate the shared access settings for the bucket.</p></li></ul>
    #
    #   Enum, one of: ["EXTERNAL", "INTERNAL", "NOT_SHARED", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute size_in_bytes
    #   <p>The total storage size, in bytes, of the bucket.</p> <p>If versioning is enabled for the bucket, Amazon Macie calculates this value based on the size of the latest version of each object in the bucket. This value doesn't reflect the storage size of all versions of each object in the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute size_in_bytes_compressed
    #   <p>The total storage size, in bytes, of the objects that are compressed (.gz, .gzip, .zip) files in the bucket.</p> <p>If versioning is enabled for the bucket, Amazon Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>An array that specifies the tags (keys and values) that are associated with the bucket.</p>
    #
    #   @return [Array<KeyValuePair>]
    #
    # @!attribute unclassifiable_object_count
    #   <p>The total number of objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>
    #
    #   @return [ObjectLevelStatistics]
    #
    # @!attribute unclassifiable_object_size_in_bytes
    #   <p>The total storage size, in bytes, of the objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>
    #
    #   @return [ObjectLevelStatistics]
    #
    # @!attribute versioning
    #   <p>Specifies whether versioning is enabled for the bucket.</p>
    #
    #   @return [Boolean]
    #
    BucketMetadata = ::Struct.new(
      :account_id,
      :allows_unencrypted_object_uploads,
      :bucket_arn,
      :bucket_created_at,
      :bucket_name,
      :classifiable_object_count,
      :classifiable_size_in_bytes,
      :error_code,
      :error_message,
      :job_details,
      :last_updated,
      :object_count,
      :object_count_by_encryption_type,
      :public_access,
      :region,
      :replication_details,
      :server_side_encryption,
      :shared_access,
      :size_in_bytes,
      :size_in_bytes_compressed,
      :tags,
      :unclassifiable_object_count,
      :unclassifiable_object_size_in_bytes,
      :versioning,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.classifiable_object_count ||= 0
        self.classifiable_size_in_bytes ||= 0
        self.object_count ||= 0
        self.size_in_bytes ||= 0
        self.size_in_bytes_compressed ||= 0
        self.versioning ||= false
      end
    end

    # Includes enum constants for BucketMetadataErrorCode
    #
    module BucketMetadataErrorCode
      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"
    end

    # <p>Provides information about the account-level and bucket-level permissions settings for an S3 bucket.</p>
    #
    # @!attribute account_level_permissions
    #   <p>The account-level permissions settings that apply to the bucket.</p>
    #
    #   @return [AccountLevelPermissions]
    #
    # @!attribute bucket_level_permissions
    #   <p>The bucket-level permissions settings for the bucket.</p>
    #
    #   @return [BucketLevelPermissions]
    #
    BucketPermissionConfiguration = ::Struct.new(
      :account_level_permissions,
      :bucket_level_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the permissions settings of the bucket policy for an S3 bucket.</p>
    #
    # @!attribute allows_public_read_access
    #   <p>Specifies whether the bucket policy allows the general public to have read access to the bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allows_public_write_access
    #   <p>Specifies whether the bucket policy allows the general public to have write access to the bucket.</p>
    #
    #   @return [Boolean]
    #
    BucketPolicy = ::Struct.new(
      :allows_public_read_access,
      :allows_public_write_access,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allows_public_read_access ||= false
        self.allows_public_write_access ||= false
      end
    end

    # <p>Provides information about the permissions settings that determine whether an S3 bucket is publicly accessible.</p>
    #
    # @!attribute effective_permission
    #   <p>Specifies whether the bucket is publicly accessible due to the combination of permissions settings that apply to the bucket. Possible values are:</p> <ul><li><p>NOT_PUBLIC - The bucket isn't publicly accessible.</p></li> <li><p>PUBLIC - The bucket is publicly accessible.</p></li> <li><p>UNKNOWN - Amazon Macie can't determine whether the bucket is publicly accessible.</p></li></ul>
    #
    #   Enum, one of: ["PUBLIC", "NOT_PUBLIC", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute permission_configuration
    #   <p>The account-level and bucket-level permissions settings for the bucket.</p>
    #
    #   @return [BucketPermissionConfiguration]
    #
    BucketPublicAccess = ::Struct.new(
      :effective_permission,
      :permission_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the default server-side encryption settings for an S3 bucket. For detailed information about these settings, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html">Setting default server-side encryption behavior for Amazon S3 buckets</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #
    # @!attribute kms_master_key_id
    #   <p>The Amazon Resource Name (ARN) or unique identifier (key ID) for the KMS key that's used by default to encrypt objects that are added to the bucket. This value is null if the bucket uses an Amazon S3 managed key to encrypt new objects or the bucket doesn't encrypt new objects by default.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of server-side encryption that's used by default when storing new objects in the bucket. Possible values are:</p> <ul><li><p>AES256 - New objects are encrypted with an Amazon S3 managed key. They use SSE-S3 encryption.</p></li> <li><p>aws:kms - New objects are encrypted with an KMS key (kmsMasterKeyId), either an Amazon Web Services managed key or a customer managed key. They use SSE-KMS encryption.</p></li> <li><p>NONE - New objects aren't encrypted by default. Default encryption is disabled for the bucket.</p></li></ul>
    #
    #   Enum, one of: ["NONE", "AES256", "aws:kms"]
    #
    #   @return [String]
    #
    BucketServerSideEncryption = ::Struct.new(
      :kms_master_key_id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies criteria for sorting the results of a query for information about S3 buckets.</p>
    #
    # @!attribute attribute_name
    #   <p>The name of the bucket property to sort the results by. This value can be one of the following properties that Amazon Macie defines as bucket metadata: accountId, bucketName, classifiableObjectCount, classifiableSizeInBytes, objectCount, or sizeInBytes.</p>
    #
    #   @return [String]
    #
    # @!attribute order_by
    #   <p>The sort order to apply to the results, based on the value specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    BucketSortCriteria = ::Struct.new(
      :attribute_name,
      :order_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the location of an occurrence of sensitive data in a Microsoft Excel workbook, CSV file, or TSV file.</p>
    #
    # @!attribute cell_reference
    #   <p>The location of the cell, as an absolute cell reference, that contains the sensitive data, for example Sheet2!C5 for cell C5 on Sheet2 in a Microsoft Excel workbook. This value is null for CSV and TSV files.</p>
    #
    #   @return [String]
    #
    # @!attribute column
    #   <p>The column number of the column that contains the sensitive data. For a Microsoft Excel workbook, this value correlates to the alphabetical character(s) for a column identifier, for example: 1 for column A, 2 for column B, and so on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute column_name
    #   <p>The name of the column that contains the sensitive data, if available.</p>
    #
    #   @return [String]
    #
    # @!attribute row
    #   <p>The row number of the row that contains the sensitive data.</p>
    #
    #   @return [Integer]
    #
    Cell = ::Struct.new(
      :cell_reference,
      :column,
      :column_name,
      :row,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.column ||= 0
        self.row ||= 0
      end
    end

    # <p>Provides information about a sensitive data finding and the details of the finding.</p>
    #
    # @!attribute detailed_results_location
    #   <p>The path to the folder or file (in Amazon S3) that contains the corresponding sensitive data discovery result for the finding. If a finding applies to a large archive or compressed file, this value is the path to a folder. Otherwise, this value is the path to a file.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the classification job that produced the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier for the classification job that produced the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute origin_type
    #   <p>Specifies how Amazon Macie found the sensitive data that produced the finding: SENSITIVE_DATA_DISCOVERY_JOB, for a classification job.</p>
    #
    #   Enum, one of: ["SENSITIVE_DATA_DISCOVERY_JOB"]
    #
    #   @return [String]
    #
    # @!attribute result
    #   <p>The status and other details of the finding.</p>
    #
    #   @return [ClassificationResult]
    #
    ClassificationDetails = ::Struct.new(
      :detailed_results_location,
      :job_arn,
      :job_id,
      :origin_type,
      :result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies where to store data classification results, and the encryption settings to use when storing results in that location. Currently, you can store classification results only in an S3 bucket.</p>
    #
    # @!attribute s3_destination
    #   <p>The S3 bucket to store data classification results in, and the encryption settings to use when storing results in that bucket.</p>
    #
    #   @return [S3Destination]
    #
    ClassificationExportConfiguration = ::Struct.new(
      :s3_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the details of a sensitive data finding, including the types, number of occurrences, and locations of the sensitive data that was detected.</p>
    #
    # @!attribute additional_occurrences
    #   <p>Specifies whether Amazon Macie detected additional occurrences of sensitive data in the S3 object. A finding includes location data for a maximum of 15 occurrences of sensitive data.</p> <p>This value can help you determine whether to investigate additional occurrences of sensitive data in an object. You can do this by referring to the corresponding sensitive data discovery result for the finding (ClassificationDetails.detailedResultsLocation).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute custom_data_identifiers
    #   <p>The custom data identifiers that detected the sensitive data and the number of occurrences of the data that they detected.</p>
    #
    #   @return [CustomDataIdentifiers]
    #
    # @!attribute mime_type
    #   <p>The type of content, as a MIME type, that the finding applies to. For example, application/gzip, for a GNU Gzip compressed archive file, or application/pdf, for an Adobe Portable Document Format file.</p>
    #
    #   @return [String]
    #
    # @!attribute sensitive_data
    #   <p>The category, types, and number of occurrences of the sensitive data that produced the finding.</p>
    #
    #   @return [Array<SensitiveDataItem>]
    #
    # @!attribute size_classified
    #   <p>The total size, in bytes, of the data that the finding applies to.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the finding.</p>
    #
    #   @return [ClassificationResultStatus]
    #
    ClassificationResult = ::Struct.new(
      :additional_occurrences,
      :custom_data_identifiers,
      :mime_type,
      :sensitive_data,
      :size_classified,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.additional_occurrences ||= false
        self.size_classified ||= 0
      end
    end

    # <p>Provides information about the status of a sensitive data finding.</p>
    #
    # @!attribute code
    #   <p>The status of the finding. Possible values are:</p> <ul><li><p>COMPLETE - Amazon Macie successfully completed its analysis of the S3 object that the finding applies to.</p></li> <li><p>PARTIAL - Macie analyzed only a subset of the data in the S3 object that the finding applies to. For example, the object is an archive file that contains files in an unsupported format.</p></li> <li><p>SKIPPED - Macie wasn't able to analyze the S3 object that the finding applies to. For example, the object is a file that uses an unsupported format.</p></li></ul>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>A brief description of the status of the finding. This value is null if the status (code) of the finding is COMPLETE.</p> <p>Amazon Macie uses this value to notify you of any errors, warnings, or considerations that might impact your analysis of the finding and the affected S3 object. Possible values are:</p> <ul><li><p>ARCHIVE_CONTAINS_UNPROCESSED_FILES - The object is an archive file and Macie extracted and analyzed only some or none of the files in the archive. To determine which files Macie analyzed, if any, you can refer to the corresponding sensitive data discovery result for the finding (ClassificationDetails.detailedResultsLocation).</p></li> <li><p>ARCHIVE_EXCEEDS_SIZE_LIMIT - The object is an archive file whose total storage size exceeds the size quota for this type of archive.</p></li> <li><p>ARCHIVE_NESTING_LEVEL_OVER_LIMIT - The object is an archive file whose nested depth exceeds the quota for the maximum number of nested levels that Macie analyzes for this type of archive.</p></li> <li><p>ARCHIVE_TOTAL_BYTES_EXTRACTED_OVER_LIMIT - The object is an archive file that exceeds the quota for the maximum amount of data that Macie extracts and analyzes for this type of archive.</p></li> <li><p>ARCHIVE_TOTAL_DOCUMENTS_PROCESSED_OVER_LIMIT - The object is an archive file that contains more than the maximum number of files that Macie extracts and analyzes for this type of archive.</p></li> <li><p>FILE_EXCEEDS_SIZE_LIMIT - The storage size of the object exceeds the size quota for this type of file.</p></li> <li><p>INVALID_ENCRYPTION - The object is encrypted using server-side encryption but Macie isn’t allowed to use the key. Macie can’t decrypt and analyze the object.</p></li> <li><p>INVALID_KMS_KEY - The object is encrypted with an KMS key that was disabled or is being deleted. Macie can’t decrypt and analyze the object.</p></li> <li><p>INVALID_OBJECT_STATE - The object doesn’t use a supported Amazon S3 storage class. For more information, see <a href="https://docs.aws.amazon.com/macie/latest/user/data-classification.html">Discovering sensitive data</a> in the <i>Amazon Macie User Guide</i>.</p></li> <li><p>JSON_NESTING_LEVEL_OVER_LIMIT - The object contains JSON data and the nested depth of the data exceeds the quota for the number of nested levels that Macie analyzes for this type of file.</p></li> <li><p>MALFORMED_FILE - The object is a malformed or corrupted file. An error occurred when Macie attempted to detect the file’s type or extract data from the file.</p></li> <li><p>OBJECT_VERSION_MISMATCH - The object was changed while Macie was analyzing it.</p></li> <li><p>NO_SUCH_BUCKET_AVAILABLE - The object was in a bucket that was deleted shortly before or when Macie attempted to analyze the object.</p></li> <li><p>MALFORMED_OR_FILE_SIZE_EXCEEDS_LIMIT - The object is a Microsoft Office file that is malformed or exceeds the size quota for this type of file. If the file is malformed, an error occurred when Macie attempted to extract data from the file.</p></li> <li><p>OOXML_UNCOMPRESSED_SIZE_EXCEEDS_LIMIT - The object is an Office Open XML file that exceeds the size quota for this type of file.</p></li> <li><p>OOXML_UNCOMPRESSED_RATIO_EXCEEDS_LIMIT - The object is an Office Open XML file whose compression ratio exceeds the compression quota for this type of file.</p></li> <li><p>PERMISSION_DENIED - Macie isn’t allowed to access the object. The object’s permissions settings prevent Macie from analyzing the object.</p></li> <li><p>SOURCE_OBJECT_NO_LONGER_AVAILABLE - The object was deleted shortly before or when Macie attempted to analyze it.</p></li> <li><p>UNABLE_TO_PARSE_FILE - The object is a file that contains structured data and an error occurred when Macie attempted to parse the data.</p></li> <li><p>UNSUPPORTED_FILE_TYPE_EXCEPTION - The object is a file that uses an unsupported file or storage format. For more information, see <a href="https://docs.aws.amazon.com/macie/latest/user/discovery-supported-formats.html">Supported file and storage formats</a> in the <i>Amazon Macie User Guide</i>.</p></li></ul> <p>For information about sensitive data discovery quotas for files, see <a href="https://docs.aws.amazon.com/macie/latest/user/macie-quotas.html">Amazon Macie quotas</a> in the <i>Amazon Macie User Guide</i>.</p>
    #
    #   @return [String]
    #
    ClassificationResultStatus = ::Struct.new(
      :code,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an error that occurred due to a versioning conflict for a specified resource.</p>
    #
    # @!attribute message
    #   <p>The explanation of the error that occurred.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_data_identifier_ids
    #   <p>An array of unique identifiers, one for each custom data identifier for the job to use when it analyzes data. To use only managed data identifiers, don't specify a value for this property and specify a value other than NONE for the managedDataIdentifierSelector property.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute description
    #   <p>A custom description of the job. The description can contain as many as 200 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_run
    #   <p>For a recurring job, specifies whether to analyze all existing, eligible objects immediately after the job is created (true). To analyze only those objects that are created or changed after you create the job and before the job's first scheduled run, set this value to false.</p><p>If you configure the job to run only once, don't specify a value for this property.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute job_type
    #   <p>The schedule for running the job. Valid values are:</p> <ul><li><p>ONE_TIME - Run the job only once. If you specify this value, don't specify a value for the scheduleFrequency property.</p></li> <li><p>SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the scheduleFrequency property to define the recurrence pattern for the job.</p></li></ul>
    #
    #   Enum, one of: ["ONE_TIME", "SCHEDULED"]
    #
    #   @return [String]
    #
    # @!attribute managed_data_identifier_ids
    #   <p>An array of unique identifiers, one for each managed data identifier for the job to include (use) or exclude (not use) when it analyzes data. Inclusion or exclusion depends on the managed data identifier selection type that you specify for the job (managedDataIdentifierSelector).</p><p>To retrieve a list of valid values for this property, use the ListManagedDataIdentifiers operation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute managed_data_identifier_selector
    #   <p>The selection type to apply when determining which managed data identifiers the job uses to analyze data. Valid values are:</p> <ul><li><p>ALL - Use all the managed data identifiers that Amazon Macie provides. If you specify this value, don't specify any values for the managedDataIdentifierIds property.</p></li> <li><p>EXCLUDE - Use all the managed data identifiers that Macie provides except the managed data identifiers specified by the managedDataIdentifierIds property.</p></li> <li><p>INCLUDE - Use only the managed data identifiers specified by the managedDataIdentifierIds property.</p></li> <li><p>NONE - Don't use any managed data identifiers. If you specify this value, specify at least one custom data identifier for the job (customDataIdentifierIds) and don't specify any values for the managedDataIdentifierIds property.</p></li></ul> <p>If you don't specify a value for this property, the job uses all managed data identifiers. If you don't specify a value for this property or you specify ALL or EXCLUDE for a recurring job, the job also uses new managed data identifiers as they are released.</p>
    #
    #   Enum, one of: ["ALL", "EXCLUDE", "INCLUDE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A custom name for the job. The name can contain as many as 500 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_job_definition
    #   <p>The S3 buckets that contain the objects to analyze, and the scope of that analysis.</p>
    #
    #   @return [S3JobDefinition]
    #
    # @!attribute sampling_percentage
    #   <p>The sampling depth, as a percentage, for the job to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schedule_frequency
    #   <p>The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the jobType property to ONE_TIME.</p>
    #
    #   @return [JobScheduleFrequency]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the job.</p> <p>A job can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateClassificationJobInput = ::Struct.new(
      :client_token,
      :custom_data_identifier_ids,
      :description,
      :initial_run,
      :job_type,
      :managed_data_identifier_ids,
      :managed_data_identifier_selector,
      :name,
      :s3_job_definition,
      :sampling_percentage,
      :schedule_frequency,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.initial_run ||= false
        self.sampling_percentage ||= 0
      end
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier for the job.</p>
    #
    #   @return [String]
    #
    CreateClassificationJobOutput = ::Struct.new(
      :job_arn,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A custom description of the custom data identifier. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a custom data identifier. Other users of your account might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    #   @return [String]
    #
    # @!attribute ignore_words
    #   <p>An array that lists specific character sequences (<i>ignore words</i>) to exclude from the results. If the text matched by the regular expression contains any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4-90 UTF-8 characters. Ignore words are case sensitive.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute keywords
    #   <p>An array that lists specific character sequences (<i>keywords</i>), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3-90 UTF-8 characters. Keywords aren't case sensitive.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute maximum_match_distance
    #   <p>The maximum number of characters that can exist between text that matches the regular expression and the character sequences specified by the keywords array. Amazon Macie includes or excludes a result based on the proximity of a keyword to text that matches the regular expression. The distance can be 1-300 characters. The default value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>A custom name for the custom data identifier. The name can contain as many as 128 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a custom data identifier. Other users of your account might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    #   @return [String]
    #
    # @!attribute regex
    #   <p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_levels
    #   <p>The severity to assign to findings that the custom data identifier produces, based on the number of occurrences of text that matches the custom data identifier's detection criteria. You can specify as many as three SeverityLevel objects in this array, one for each severity: LOW, MEDIUM, or HIGH. If you specify more than one, the occurrences thresholds must be in ascending order by severity, moving from LOW to HIGH. For example, 1 for LOW, 50 for MEDIUM, and 100 for HIGH. If an S3 object contains fewer occurrences than the lowest specified threshold, Amazon Macie doesn't create a finding.</p> <p>If you don't specify any values for this array, Macie creates findings for S3 objects that contain at least one occurrence of text that matches the detection criteria, and Macie assigns the MEDIUM severity to those findings.</p>
    #
    #   @return [Array<SeverityLevel>]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the custom data identifier.</p> <p>A custom data identifier can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateCustomDataIdentifierInput = ::Struct.new(
      :client_token,
      :description,
      :ignore_words,
      :keywords,
      :maximum_match_distance,
      :name,
      :regex,
      :severity_levels,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.maximum_match_distance ||= 0
      end
    end

    # @!attribute custom_data_identifier_id
    #   <p>The unique identifier for the custom data identifier that was created.</p>
    #
    #   @return [String]
    #
    CreateCustomDataIdentifierOutput = ::Struct.new(
      :custom_data_identifier_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #   <p>The action to perform on findings that meet the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>
    #
    #   Enum, one of: ["ARCHIVE", "NOOP"]
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users of your account might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_criteria
    #   <p>The criteria to use to filter findings.</p>
    #
    #   @return [FindingCriteria]
    #
    # @!attribute name
    #   <p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users of your account might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    #   @return [String]
    #
    # @!attribute position
    #   <p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the filter.</p> <p>A findings filter can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateFindingsFilterInput = ::Struct.new(
      :action,
      :client_token,
      :description,
      :finding_criteria,
      :name,
      :position,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.position ||= 0
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the filter that was created.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the filter that was created.</p>
    #
    #   @return [String]
    #
    CreateFindingsFilterOutput = ::Struct.new(
      :arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>An array that lists Amazon Web Services account IDs, one for each account to send the invitation to.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute disable_email_notification
    #   <p>Specifies whether to send the invitation as an email message. If this value is false, Amazon Macie sends the invitation (as an email message) to the email address that you specified for the recipient's account when you associated the account with your account. The default value is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute message
    #   <p>Custom text to include in the email message that contains the invitation. The text can contain as many as 80 alphanumeric characters.</p>
    #
    #   @return [String]
    #
    CreateInvitationsInput = ::Struct.new(
      :account_ids,
      :disable_email_notification,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.disable_email_notification ||= false
      end
    end

    # @!attribute unprocessed_accounts
    #   <p>An array of objects, one for each account whose invitation hasn't been processed. Each object identifies the account and explains why the invitation hasn't been processed for the account.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    CreateInvitationsOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account
    #   <p>The details of the account to associate with the administrator account.</p>
    #
    #   @return [AccountDetail]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the account in Amazon Macie.</p> <p>An account can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateMemberInput = ::Struct.new(
      :account,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the account that was associated with the administrator account.</p>
    #
    #   @return [String]
    #
    CreateMemberOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute finding_types
    #   <p>An array of finding types, one for each type of sample finding to create. To create a sample of every type of finding that Amazon Macie supports, don't include this array in your request.</p>
    #
    #   @return [Array<String>]
    #
    CreateSampleFindingsInput = ::Struct.new(
      :finding_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateSampleFindingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies one or more property- and tag-based conditions that define criteria for including or excluding S3 buckets from a classification job.</p>
    #
    # @!attribute and
    #   <p>An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>
    #
    #   @return [Array<CriteriaForJob>]
    #
    CriteriaBlockForJob = ::Struct.new(
      :and,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a property- or tag-based condition that defines criteria for including or excluding S3 buckets from a classification job.</p>
    #
    # @!attribute simple_criterion
    #   <p>A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.</p>
    #
    #   @return [SimpleCriterionForJob]
    #
    # @!attribute tag_criterion
    #   <p>A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.</p>
    #
    #   @return [TagCriterionForJob]
    #
    CriteriaForJob = ::Struct.new(
      :simple_criterion,
      :tag_criterion,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the operator to use in a property-based condition that filters the results of a query for findings. For detailed information and examples of each operator, see <a href="https://docs.aws.amazon.com/macie/latest/user/findings-filter-basics.html">Fundamentals of filtering findings</a> in the <i>Amazon Macie User Guide</i>.</p>
    #
    # @!attribute eq
    #   <p>The value for the property matches (equals) the specified value. If you specify multiple values, Macie uses OR logic to join the values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute eq_exact_match
    #   <p>The value for the property exclusively matches (equals an exact match for) all the specified values. If you specify multiple values, Amazon Macie uses AND logic to join the values.</p> <p>You can use this operator with the following properties: customDataIdentifiers.detections.arn, customDataIdentifiers.detections.name, resourcesAffected.s3Bucket.tags.key, resourcesAffected.s3Bucket.tags.value, resourcesAffected.s3Object.tags.key, resourcesAffected.s3Object.tags.value, sensitiveData.category, and sensitiveData.detections.type.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute gt
    #   <p>The value for the property is greater than the specified value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute gte
    #   <p>The value for the property is greater than or equal to the specified value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lt
    #   <p>The value for the property is less than the specified value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lte
    #   <p>The value for the property is less than or equal to the specified value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute neq
    #   <p>The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Macie uses OR logic to join the values.</p>
    #
    #   @return [Array<String>]
    #
    CriterionAdditionalProperties = ::Struct.new(
      :eq,
      :eq_exact_match,
      :gt,
      :gte,
      :lt,
      :lte,
      :neq,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.gt ||= 0
        self.gte ||= 0
        self.lt ||= 0
        self.lte ||= 0
      end
    end

    # Includes enum constants for Currency
    #
    module Currency
      # No documentation available.
      #
      USD = "USD"
    end

    # <p>Provides information about a custom data identifier.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The custom description of the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The custom name of the custom data identifier.</p>
    #
    #   @return [String]
    #
    CustomDataIdentifierSummary = ::Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about custom data identifiers that produced a sensitive data finding, and the number of occurrences of the data that they detected for the finding.</p>
    #
    # @!attribute detections
    #   <p>The custom data identifiers that detected the data, and the number of occurrences of the data that each identifier detected.</p>
    #
    #   @return [Array<CustomDetection>]
    #
    # @!attribute total_count
    #   <p>The total number of occurrences of the data that was detected by the custom data identifiers and produced the finding.</p>
    #
    #   @return [Integer]
    #
    CustomDataIdentifiers = ::Struct.new(
      :detections,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_count ||= 0
      end
    end

    # <p>Provides information about a custom data identifier that produced a sensitive data finding, and the sensitive data that it detected for the finding.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>The total number of occurrences of the sensitive data that the custom data identifier detected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>The name of the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute occurrences
    #   <p>The location of 1-15 occurrences of the sensitive data that the custom data identifier detected. A finding includes location data for a maximum of 15 occurrences of sensitive data.</p>
    #
    #   @return [Occurrences]
    #
    CustomDetection = ::Struct.new(
      :arn,
      :count,
      :name,
      :occurrences,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
      end
    end

    # <p>Specifies that a classification job runs once a day, every day. This is an empty object.</p>
    #
    DailySchedule = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataIdentifierSeverity
    #
    module DataIdentifierSeverity
      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"
    end

    # Includes enum constants for DayOfWeek
    #
    module DayOfWeek
      # No documentation available.
      #
      SUNDAY = "SUNDAY"

      # No documentation available.
      #
      MONDAY = "MONDAY"

      # No documentation available.
      #
      TUESDAY = "TUESDAY"

      # No documentation available.
      #
      WEDNESDAY = "WEDNESDAY"

      # No documentation available.
      #
      THURSDAY = "THURSDAY"

      # No documentation available.
      #
      FRIDAY = "FRIDAY"

      # No documentation available.
      #
      SATURDAY = "SATURDAY"
    end

    # @!attribute account_ids
    #   <p>An array that lists Amazon Web Services account IDs, one for each account that sent an invitation to decline.</p>
    #
    #   @return [Array<String>]
    #
    DeclineInvitationsInput = ::Struct.new(
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>An array of objects, one for each account whose invitation hasn't been declined. Each object identifies the account and explains why the request hasn't been processed for that account.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    DeclineInvitationsOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a type of sensitive data that was detected by a managed data identifier and produced a sensitive data finding.</p>
    #
    # @!attribute count
    #   <p>The total number of occurrences of the type of sensitive data that was detected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute occurrences
    #   <p>The location of 1-15 occurrences of the sensitive data that was detected. A finding includes location data for a maximum of 15 occurrences of sensitive data.</p>
    #
    #   @return [Occurrences]
    #
    # @!attribute type
    #   <p>The type of sensitive data that was detected. For example, AWS_CREDENTIALS, PHONE_NUMBER, or ADDRESS.</p>
    #
    #   @return [String]
    #
    DefaultDetection = ::Struct.new(
      :count,
      :occurrences,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
      end
    end

    # @!attribute id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    #   @return [String]
    #
    DeleteCustomDataIdentifierInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCustomDataIdentifierOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    #   @return [String]
    #
    DeleteFindingsFilterInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFindingsFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>An array that lists Amazon Web Services account IDs, one for each account that sent an invitation to delete.</p>
    #
    #   @return [Array<String>]
    #
    DeleteInvitationsInput = ::Struct.new(
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_accounts
    #   <p>An array of objects, one for each account whose invitation hasn't been deleted. Each object identifies the account and explains why the request hasn't been processed for that account.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    DeleteInvitationsOutput = ::Struct.new(
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    #   @return [String]
    #
    DeleteMemberInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMemberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute criteria
    #   <p>The criteria to use to filter the query results.</p>
    #
    #   @return [Hash<String, BucketCriteriaAdditionalProperties>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to include in each page of the response. The default value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_criteria
    #   <p>The criteria to use to sort the query results.</p>
    #
    #   @return [BucketSortCriteria]
    #
    DescribeBucketsInput = ::Struct.new(
      :criteria,
      :max_results,
      :next_token,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute buckets
    #   <p>An array of objects, one for each bucket that meets the filter criteria specified in the request.</p>
    #
    #   @return [Array<BucketMetadata>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    DescribeBucketsOutput = ::Struct.new(
      :buckets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier for the classification job.</p>
    #
    #   @return [String]
    #
    DescribeClassificationJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>The token that was provided to ensure the idempotency of the request to create the job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute custom_data_identifier_ids
    #   <p>An array of unique identifiers, one for each custom data identifier that the job uses to analyze data. This value is null if the job uses only managed data identifiers to analyze data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute description
    #   <p>The custom description of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_run
    #   <p>For a recurring job, specifies whether you configured the job to analyze all existing, eligible objects immediately after the job was created (true). If you configured the job to analyze only those objects that were created or changed after the job was created and before the job's first scheduled run, this value is false. This value is also false for a one-time job.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the job. Possible values are:</p> <ul><li><p>CANCELLED - You cancelled the job or, if it's a one-time job, you paused the job and didn't resume it within 30 days.</p></li> <li><p>COMPLETE - For a one-time job, Amazon Macie finished processing the data specified for the job. This value doesn't apply to recurring jobs.</p></li> <li><p>IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to one-time jobs.</p></li> <li><p>PAUSED - Macie started running the job but additional processing would exceed the monthly sensitive data discovery quota for your account or one or more member accounts that the job analyzes data for.</p></li> <li><p>RUNNING - For a one-time job, the job is in progress. For a recurring job, a scheduled run is in progress.</p></li> <li><p>USER_PAUSED - You paused the job. If you paused the job while it had a status of RUNNING and you don't resume it within 30 days of pausing it, the job or job run will expire and be cancelled, depending on the job's type. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>
    #
    #   Enum, one of: ["RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"]
    #
    #   @return [String]
    #
    # @!attribute job_type
    #   <p>The schedule for running the job. Possible values are:</p> <ul><li><p>ONE_TIME - The job runs only once.</p></li> <li><p>SCHEDULED - The job runs on a daily, weekly, or monthly basis. The scheduleFrequency property indicates the recurrence pattern for the job.</p></li></ul>
    #
    #   Enum, one of: ["ONE_TIME", "SCHEDULED"]
    #
    #   @return [String]
    #
    # @!attribute last_run_error_status
    #   <p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run.</p>
    #
    #   @return [LastRunErrorStatus]
    #
    # @!attribute last_run_time
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the job started. If the job is a recurring job, this value indicates when the most recent run started.</p>
    #
    #   @return [Time]
    #
    # @!attribute managed_data_identifier_ids
    #   <p>An array of unique identifiers, one for each managed data identifier that the job is explicitly configured to include (use) or exclude (not use) when it analyzes data. Inclusion or exclusion depends on the managed data identifier selection type specified for the job (managedDataIdentifierSelector). This value is null if the job's managed data identifier selection type is ALL or the job uses only custom data identifiers (customDataIdentifierIds) to analyze data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute managed_data_identifier_selector
    #   <p>The selection type that determines which managed data identifiers the job uses to analyze data. Possible values are:</p> <ul><li><p>ALL - Use all the managed data identifiers that Amazon Macie provides.</p></li> <li><p>EXCLUDE - Use all the managed data identifiers that Macie provides except the managed data identifiers specified by the managedDataIdentifierIds property.</p></li> <li><p>INCLUDE - Use only the managed data identifiers specified by the managedDataIdentifierIds property.</p></li> <li><p>NONE - Don't use any managed data identifiers.</p></li></ul> <p>If this value is null, the job uses all managed data identifiers. If this value is null, ALL, or EXCLUDE for a recurring job, the job also uses new managed data identifiers as they are released.</p>
    #
    #   Enum, one of: ["ALL", "EXCLUDE", "INCLUDE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The custom name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_job_definition
    #   <p>The S3 buckets that contain the objects to analyze, and the scope of that analysis.</p>
    #
    #   @return [S3JobDefinition]
    #
    # @!attribute sampling_percentage
    #   <p>The sampling depth, as a percentage, that determines the percentage of eligible objects that the job analyzes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute schedule_frequency
    #   <p>The recurrence pattern for running the job. This value is null if the job is configured to run only once.</p>
    #
    #   @return [JobScheduleFrequency]
    #
    # @!attribute statistics
    #   <p>The number of times that the job has run and processing statistics for the job's current run.</p>
    #
    #   @return [Statistics]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that specifies which tags (keys and values) are associated with the classification job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute user_paused_details
    #   <p>If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for jobStatus is USER_PAUSED.</p>
    #
    #   @return [UserPausedDetails]
    #
    DescribeClassificationJobOutput = ::Struct.new(
      :client_token,
      :created_at,
      :custom_data_identifier_ids,
      :description,
      :initial_run,
      :job_arn,
      :job_id,
      :job_status,
      :job_type,
      :last_run_error_status,
      :last_run_time,
      :managed_data_identifier_ids,
      :managed_data_identifier_selector,
      :name,
      :s3_job_definition,
      :sampling_percentage,
      :schedule_frequency,
      :statistics,
      :tags,
      :user_paused_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.initial_run ||= false
        self.sampling_percentage ||= 0
      end
    end

    DescribeOrganizationConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_enable
    #   <p>Specifies whether Amazon Macie is enabled automatically for accounts that are added to the organization.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_account_limit_reached
    #   <p>Specifies whether the maximum number of Amazon Macie member accounts are part of the organization.</p>
    #
    #   @return [Boolean]
    #
    DescribeOrganizationConfigurationOutput = ::Struct.new(
      :auto_enable,
      :max_account_limit_reached,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_enable ||= false
        self.max_account_limit_reached ||= false
      end
    end

    DisableMacieInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableMacieOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account_id
    #   <p>The Amazon Web Services account ID of the delegated Amazon Macie administrator account.</p>
    #
    #   @return [String]
    #
    DisableOrganizationAdminAccountInput = ::Struct.new(
      :admin_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableOrganizationAdminAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateFromAdministratorAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateFromAdministratorAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateFromMasterAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateFromMasterAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    #   @return [String]
    #
    DisassociateMemberInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateMemberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the domain name of the device that an entity used to perform an action on an affected resource.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #
    #   @return [String]
    #
    DomainDetails = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EffectivePermission
    #
    module EffectivePermission
      # No documentation available.
      #
      PUBLIC = "PUBLIC"

      # No documentation available.
      #
      NOT_PUBLIC = "NOT_PUBLIC"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_publishing_frequency
    #   <p>Specifies how often to publish updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events).</p>
    #
    #   Enum, one of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies the new status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to ENABLED.</p>
    #
    #   Enum, one of: ["PAUSED", "ENABLED"]
    #
    #   @return [String]
    #
    EnableMacieInput = ::Struct.new(
      :client_token,
      :finding_publishing_frequency,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableMacieOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute admin_account_id
    #   <p>The Amazon Web Services account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    EnableOrganizationAdminAccountInput = ::Struct.new(
      :admin_account_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableOrganizationAdminAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionType
    #
    module EncryptionType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      AES256 = "AES256"

      # No documentation available.
      #
      aws_kms = "aws:kms"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      ClientError = "ClientError"

      # No documentation available.
      #
      InternalError = "InternalError"
    end

    # <p>Provides information about an identity that performed an action on an affected resource by using temporary security credentials. The credentials were obtained using the GetFederationToken operation of the Security Token Service (STS) API.</p>
    #
    # @!attribute access_key_id
    #   <p>The Amazon Web Services access key ID that identifies the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account that owns the entity that was used to get the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the entity that was used to get the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The unique identifier for the entity that was used to get the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute session_context
    #   <p>The details of the session that was created for the credentials, including the entity that issued the session.</p>
    #
    #   @return [SessionContext]
    #
    FederatedUser = ::Struct.new(
      :access_key_id,
      :account_id,
      :arn,
      :principal_id,
      :session_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the details of a finding.</p>
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account that the finding applies to. This is typically the account that owns the affected resource.</p>
    #
    #   @return [String]
    #
    # @!attribute archived
    #   <p>Specifies whether the finding is archived (suppressed).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute category
    #   <p>The category of the finding. Possible values are: CLASSIFICATION, for a sensitive data finding; and, POLICY, for a policy finding.</p>
    #
    #   Enum, one of: ["CLASSIFICATION", "POLICY"]
    #
    #   @return [String]
    #
    # @!attribute classification_details
    #   <p>The details of a sensitive data finding. This value is null for a policy finding.</p>
    #
    #   @return [ClassificationDetails]
    #
    # @!attribute count
    #   <p>The total number of occurrences of the finding. For sensitive data findings, this value is always 1. All sensitive data findings are considered new (unique) because they derive from individual classification jobs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the finding was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the finding. This is a random string that Amazon Macie generates and assigns to a finding when it creates the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute partition
    #   <p>The Amazon Web Services partition that Amazon Macie created the finding in.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_details
    #   <p>The details of a policy finding. This value is null for a sensitive data finding.</p>
    #
    #   @return [PolicyDetails]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region that Amazon Macie created the finding in.</p>
    #
    #   @return [String]
    #
    # @!attribute resources_affected
    #   <p>The resources that the finding applies to.</p>
    #
    #   @return [ResourcesAffected]
    #
    # @!attribute sample
    #   <p>Specifies whether the finding is a sample finding. A <i>sample finding</i> is a finding that uses example data to demonstrate what a finding might contain.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute schema_version
    #   <p>The version of the schema that was used to define the data structures in the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity level and score for the finding.</p>
    #
    #   @return [Severity]
    #
    # @!attribute title
    #   <p>The brief description of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the finding.</p>
    #
    #   Enum, one of: ["SensitiveData:S3Object/Multiple", "SensitiveData:S3Object/Financial", "SensitiveData:S3Object/Personal", "SensitiveData:S3Object/Credentials", "SensitiveData:S3Object/CustomIdentifier", "Policy:IAMUser/S3BucketPublic", "Policy:IAMUser/S3BucketSharedExternally", "Policy:IAMUser/S3BucketReplicatedExternally", "Policy:IAMUser/S3BucketEncryptionDisabled", "Policy:IAMUser/S3BlockPublicAccessDisabled"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the finding was last updated. For sensitive data findings, this value is the same as the value for the createdAt property. All sensitive data findings are considered new (unique) because they derive from individual classification jobs.</p>
    #
    #   @return [Time]
    #
    Finding = ::Struct.new(
      :account_id,
      :archived,
      :category,
      :classification_details,
      :count,
      :created_at,
      :description,
      :id,
      :partition,
      :policy_details,
      :region,
      :resources_affected,
      :sample,
      :schema_version,
      :severity,
      :title,
      :type,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.archived ||= false
        self.count ||= 0
        self.sample ||= false
      end
    end

    # <p>Provides information about an action that occurred for a resource and produced a policy finding.</p>
    #
    # @!attribute action_type
    #   <p>The type of action that occurred for the affected resource. This value is typically AWS_API_CALL, which indicates that an entity invoked an API operation for the resource.</p>
    #
    #   Enum, one of: ["AWS_API_CALL"]
    #
    #   @return [String]
    #
    # @!attribute api_call_details
    #   <p>The invocation details of the API operation that an entity invoked for the affected resource, if the value for the actionType property is AWS_API_CALL.</p>
    #
    #   @return [ApiCallDetails]
    #
    FindingAction = ::Struct.new(
      :action_type,
      :api_call_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FindingActionType
    #
    module FindingActionType
      # No documentation available.
      #
      AWS_API_CALL = "AWS_API_CALL"
    end

    # <p>Provides information about an entity that performed an action that produced a policy finding for a resource.</p>
    #
    # @!attribute domain_details
    #   <p>The domain name of the device that the entity used to perform the action on the affected resource.</p>
    #
    #   @return [DomainDetails]
    #
    # @!attribute ip_address_details
    #   <p>The IP address of the device that the entity used to perform the action on the affected resource. This object also provides information such as the owner and geographic location for the IP address.</p>
    #
    #   @return [IpAddressDetails]
    #
    # @!attribute user_identity
    #   <p>The type and other characteristics of the entity that performed the action on the affected resource.</p>
    #
    #   @return [UserIdentity]
    #
    FindingActor = ::Struct.new(
      :domain_details,
      :ip_address_details,
      :user_identity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FindingCategory
    #
    module FindingCategory
      # No documentation available.
      #
      CLASSIFICATION = "CLASSIFICATION"

      # No documentation available.
      #
      POLICY = "POLICY"
    end

    # <p>Specifies, as a map, one or more property-based conditions that filter the results of a query for findings.</p>
    #
    # @!attribute criterion
    #   <p>A condition that specifies the property, operator, and one or more values to use to filter the results.</p>
    #
    #   @return [Hash<String, CriterionAdditionalProperties>]
    #
    FindingCriteria = ::Struct.new(
      :criterion,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FindingPublishingFrequency
    #
    module FindingPublishingFrequency
      # No documentation available.
      #
      FIFTEEN_MINUTES = "FIFTEEN_MINUTES"

      # No documentation available.
      #
      ONE_HOUR = "ONE_HOUR"

      # No documentation available.
      #
      SIX_HOURS = "SIX_HOURS"
    end

    # Includes enum constants for FindingStatisticsSortAttributeName
    #
    module FindingStatisticsSortAttributeName
      # No documentation available.
      #
      groupKey = "groupKey"

      # No documentation available.
      #
      count = "count"
    end

    # <p>Specifies criteria for sorting the results of a query that retrieves aggregated statistical data about findings.</p>
    #
    # @!attribute attribute_name
    #   <p>The grouping to sort the results by. Valid values are: count, sort the results by the number of findings in each group of results; and, groupKey, sort the results by the name of each group of results.</p>
    #
    #   Enum, one of: ["groupKey", "count"]
    #
    #   @return [String]
    #
    # @!attribute order_by
    #   <p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    FindingStatisticsSortCriteria = ::Struct.new(
      :attribute_name,
      :order_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FindingType
    #
    module FindingType
      # No documentation available.
      #
      SensitiveData_S3Object_Multiple = "SensitiveData:S3Object/Multiple"

      # No documentation available.
      #
      SensitiveData_S3Object_Financial = "SensitiveData:S3Object/Financial"

      # No documentation available.
      #
      SensitiveData_S3Object_Personal = "SensitiveData:S3Object/Personal"

      # No documentation available.
      #
      SensitiveData_S3Object_Credentials = "SensitiveData:S3Object/Credentials"

      # No documentation available.
      #
      SensitiveData_S3Object_CustomIdentifier = "SensitiveData:S3Object/CustomIdentifier"

      # No documentation available.
      #
      Policy_IAMUser_S3BucketPublic = "Policy:IAMUser/S3BucketPublic"

      # No documentation available.
      #
      Policy_IAMUser_S3BucketSharedExternally = "Policy:IAMUser/S3BucketSharedExternally"

      # No documentation available.
      #
      Policy_IAMUser_S3BucketReplicatedExternally = "Policy:IAMUser/S3BucketReplicatedExternally"

      # No documentation available.
      #
      Policy_IAMUser_S3BucketEncryptionDisabled = "Policy:IAMUser/S3BucketEncryptionDisabled"

      # No documentation available.
      #
      Policy_IAMUser_S3BlockPublicAccessDisabled = "Policy:IAMUser/S3BlockPublicAccessDisabled"
    end

    # Includes enum constants for FindingsFilterAction
    #
    module FindingsFilterAction
      # No documentation available.
      #
      ARCHIVE = "ARCHIVE"

      # No documentation available.
      #
      NOOP = "NOOP"
    end

    # <p>Provides information about a findings filter.</p>
    #
    # @!attribute action
    #   <p>The action that's performed on findings that meet the filter criteria. Possible values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>
    #
    #   Enum, one of: ["ARCHIVE", "NOOP"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The custom name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the filter.</p>
    #
    #   @return [Hash<String, String>]
    #
    FindingsFilterListItem = ::Struct.new(
      :action,
      :arn,
      :id,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetAdministratorAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute administrator
    #   <p>The Amazon Web Services account ID for the administrator account. If the accounts are associated by an Amazon Macie membership invitation, this object also provides details about the invitation that was sent to establish the relationship between the accounts.</p>
    #
    #   @return [Invitation]
    #
    GetAdministratorAccountOutput = ::Struct.new(
      :administrator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    GetBucketStatisticsInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket_count
    #   <p>The total number of buckets.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bucket_count_by_effective_permission
    #   <p>The total number of buckets that are publicly accessible based on a combination of permissions settings for each bucket.</p>
    #
    #   @return [BucketCountByEffectivePermission]
    #
    # @!attribute bucket_count_by_encryption_type
    #   <p>The total number of buckets that use certain types of server-side encryption to encrypt new objects by default. This object also reports the total number of buckets that don't encrypt new objects by default.</p>
    #
    #   @return [BucketCountByEncryptionType]
    #
    # @!attribute bucket_count_by_object_encryption_requirement
    #   <p>The total number of buckets whose bucket policies do or don't require server-side encryption of objects when objects are uploaded to the buckets.</p>
    #
    #   @return [BucketCountPolicyAllowsUnencryptedObjectUploads]
    #
    # @!attribute bucket_count_by_shared_access_type
    #   <p>The total number of buckets that are or aren't shared with another Amazon Web Services account.</p>
    #
    #   @return [BucketCountBySharedAccessType]
    #
    # @!attribute classifiable_object_count
    #   <p>The total number of objects that Amazon Macie can analyze in the buckets. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p>
    #
    #   @return [Integer]
    #
    # @!attribute classifiable_size_in_bytes
    #   <p>The total storage size, in bytes, of all the objects that Amazon Macie can analyze in the buckets. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p> <p>If versioning is enabled for any of the buckets, Macie calculates this value based on the size of the latest version of each applicable object in those buckets. This value doesn't reflect the storage size of all versions of all applicable objects in the buckets.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_updated
    #   <p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently retrieved both bucket and object metadata from Amazon S3 for the buckets.</p>
    #
    #   @return [Time]
    #
    # @!attribute object_count
    #   <p>The total number of objects in the buckets.</p>
    #
    #   @return [Integer]
    #
    # @!attribute size_in_bytes
    #   <p>The total storage size, in bytes, of the buckets.</p> <p>If versioning is enabled for any of the buckets, Amazon Macie calculates this value based on the size of the latest version of each object in those buckets. This value doesn't reflect the storage size of all versions of the objects in the buckets.</p>
    #
    #   @return [Integer]
    #
    # @!attribute size_in_bytes_compressed
    #   <p>The total storage size, in bytes, of the objects that are compressed (.gz, .gzip, .zip) files in the buckets.</p> <p>If versioning is enabled for any of the buckets, Amazon Macie calculates this value based on the size of the latest version of each applicable object in those buckets. This value doesn't reflect the storage size of all versions of the applicable objects in the buckets.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unclassifiable_object_count
    #   <p>The total number of objects that Amazon Macie can't analyze in the buckets. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>
    #
    #   @return [ObjectLevelStatistics]
    #
    # @!attribute unclassifiable_object_size_in_bytes
    #   <p>The total storage size, in bytes, of the objects that Amazon Macie can't analyze in the buckets. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>
    #
    #   @return [ObjectLevelStatistics]
    #
    GetBucketStatisticsOutput = ::Struct.new(
      :bucket_count,
      :bucket_count_by_effective_permission,
      :bucket_count_by_encryption_type,
      :bucket_count_by_object_encryption_requirement,
      :bucket_count_by_shared_access_type,
      :classifiable_object_count,
      :classifiable_size_in_bytes,
      :last_updated,
      :object_count,
      :size_in_bytes,
      :size_in_bytes_compressed,
      :unclassifiable_object_count,
      :unclassifiable_object_size_in_bytes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bucket_count ||= 0
        self.classifiable_object_count ||= 0
        self.classifiable_size_in_bytes ||= 0
        self.object_count ||= 0
        self.size_in_bytes ||= 0
        self.size_in_bytes_compressed ||= 0
      end
    end

    GetClassificationExportConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration
    #   <p>The location where data classification results are stored, and the encryption settings that are used when storing results in that location.</p>
    #
    #   @return [ClassificationExportConfiguration]
    #
    GetClassificationExportConfigurationOutput = ::Struct.new(
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    #   @return [String]
    #
    GetCustomDataIdentifierInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute deleted
    #   <p>Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>The custom description of the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute ignore_words
    #   <p>An array that lists specific character sequences (<i>ignore words</i>) to exclude from the results. If the text matched by the regular expression contains any string in this array, Amazon Macie ignores it. Ignore words are case sensitive.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute keywords
    #   <p>An array that lists specific character sequences (<i>keywords</i>), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. Keywords aren't case sensitive.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute maximum_match_distance
    #   <p>The maximum number of characters that can exist between text that matches the regular expression and the character sequences specified by the keywords array. Amazon Macie includes or excludes a result based on the proximity of a keyword to text that matches the regular expression.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>The custom name of the custom data identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute regex
    #   <p>The regular expression (<i>regex</i>) that defines the pattern to match.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_levels
    #   <p>Specifies the severity that's assigned to findings that the custom data identifier produces, based on the number of occurrences of text that matches the custom data identifier's detection criteria. By default, Amazon Macie creates findings for S3 objects that contain at least one occurrence of text that matches the detection criteria, and Macie assigns the MEDIUM severity to those findings.</p>
    #
    #   @return [Array<SeverityLevel>]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the custom data identifier.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetCustomDataIdentifierOutput = ::Struct.new(
      :arn,
      :created_at,
      :deleted,
      :description,
      :id,
      :ignore_words,
      :keywords,
      :maximum_match_distance,
      :name,
      :regex,
      :severity_levels,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.deleted ||= false
        self.maximum_match_distance ||= 0
      end
    end

    # @!attribute finding_criteria
    #   <p>The criteria to use to filter the query results.</p>
    #
    #   @return [FindingCriteria]
    #
    # @!attribute group_by
    #   <p>The finding property to use to group the query results. Valid values are:</p> <ul><li><p>classificationDetails.jobId - The unique identifier for the classification job that produced the finding.</p></li> <li><p>resourcesAffected.s3Bucket.name - The name of the S3 bucket that the finding applies to.</p></li> <li><p>severity.description - The severity level of the finding, such as High or Medium.</p></li> <li><p>type - The type of finding, such as Policy:IAMUser/S3BucketPublic and SensitiveData:S3Object/Personal.</p></li></ul>
    #
    #   Enum, one of: ["resourcesAffected.s3Bucket.name", "type", "classificationDetails.jobId", "severity.description"]
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The maximum number of items to include in each page of the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sort_criteria
    #   <p>The criteria to use to sort the query results.</p>
    #
    #   @return [FindingStatisticsSortCriteria]
    #
    GetFindingStatisticsInput = ::Struct.new(
      :finding_criteria,
      :group_by,
      :size,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
      end
    end

    # @!attribute counts_by_group
    #   <p>An array of objects, one for each group of findings that meet the filter criteria specified in the request.</p>
    #
    #   @return [Array<GroupCount>]
    #
    GetFindingStatisticsOutput = ::Struct.new(
      :counts_by_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    #   @return [String]
    #
    GetFindingsFilterInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #   <p>The action that's performed on findings that meet the filter criteria (findingCriteria). Possible values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>
    #
    #   Enum, one of: ["ARCHIVE", "NOOP"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The custom description of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_criteria
    #   <p>The criteria that's used to filter findings.</p>
    #
    #   @return [FindingCriteria]
    #
    # @!attribute id
    #   <p>The unique identifier for the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The custom name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute position
    #   <p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the filter.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetFindingsFilterOutput = ::Struct.new(
      :action,
      :arn,
      :description,
      :finding_criteria,
      :id,
      :name,
      :position,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.position ||= 0
      end
    end

    # @!attribute finding_ids
    #   <p>An array of strings that lists the unique identifiers for the findings to retrieve. You can specify as many as 50 unique identifiers in this array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sort_criteria
    #   <p>The criteria for sorting the results of the request.</p>
    #
    #   @return [SortCriteria]
    #
    GetFindingsInput = ::Struct.new(
      :finding_ids,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute findings
    #   <p>An array of objects, one for each finding that meets the criteria specified in the request.</p>
    #
    #   @return [Array<Finding>]
    #
    GetFindingsOutput = ::Struct.new(
      :findings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetFindingsPublicationConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_hub_configuration
    #   <p>The configuration settings that determine which findings are published to Security Hub.</p>
    #
    #   @return [SecurityHubConfiguration]
    #
    GetFindingsPublicationConfigurationOutput = ::Struct.new(
      :security_hub_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetInvitationsCountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute invitations_count
    #   <p>The total number of invitations that were received by the account, not including the currently accepted invitation.</p>
    #
    #   @return [Integer]
    #
    GetInvitationsCountOutput = ::Struct.new(
      :invitations_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.invitations_count ||= 0
      end
    end

    GetMacieSessionInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute created_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the Amazon Macie account was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute finding_publishing_frequency
    #   <p>The frequency with which Amazon Macie publishes updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events).</p>
    #
    #   Enum, one of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #
    #   @return [String]
    #
    # @!attribute service_role
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that allows Amazon Macie to monitor and analyze data in Amazon Web Services resources for the account.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the Amazon Macie account. Possible values are: PAUSED, the account is enabled but all Macie activities are suspended (paused) for the account; and, ENABLED, the account is enabled and all Macie activities are enabled for the account.</p>
    #
    #   Enum, one of: ["PAUSED", "ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the Amazon Macie account.</p>
    #
    #   @return [Time]
    #
    GetMacieSessionOutput = ::Struct.new(
      :created_at,
      :finding_publishing_frequency,
      :service_role,
      :status,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetMasterAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute master
    #   <p>(Deprecated) The Amazon Web Services account ID for the administrator account. If the accounts are associated by a Macie membership invitation, this object also provides details about the invitation that was sent to establish the relationship between the accounts.</p>
    #
    #   @return [Invitation]
    #
    GetMasterAccountOutput = ::Struct.new(
      :master,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    #   @return [String]
    #
    GetMemberInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the account.</p>
    #
    #   @return [String]
    #
    # @!attribute administrator_account_id
    #   <p>The Amazon Web Services account ID for the administrator account.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the account.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address for the account.</p>
    #
    #   @return [String]
    #
    # @!attribute invited_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if an invitation hasn't been sent to the account.</p>
    #
    #   @return [Time]
    #
    # @!attribute master_account_id
    #   <p>(Deprecated) The Amazon Web Services account ID for the administrator account. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_status
    #   <p>The current status of the relationship between the account and the administrator account.</p>
    #
    #   Enum, one of: ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the member account in Amazon Macie.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute updated_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the relationship between the account and the administrator account.</p>
    #
    #   @return [Time]
    #
    GetMemberOutput = ::Struct.new(
      :account_id,
      :administrator_account_id,
      :arn,
      :email,
      :invited_at,
      :master_account_id,
      :relationship_status,
      :tags,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter_by
    #   <p>An array of objects, one for each condition to use to filter the query results. If you specify more than one condition, Amazon Macie uses an AND operator to join the conditions.</p>
    #
    #   @return [Array<UsageStatisticsFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The criteria to use to sort the query results.</p>
    #
    #   @return [UsageStatisticsSortBy]
    #
    # @!attribute time_range
    #   <p>The inclusive time period to query usage data for. Valid values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value, Amazon Macie provides usage data for the preceding 30 days.</p>
    #
    #   Enum, one of: ["MONTH_TO_DATE", "PAST_30_DAYS"]
    #
    #   @return [String]
    #
    GetUsageStatisticsInput = ::Struct.new(
      :filter_by,
      :max_results,
      :next_token,
      :sort_by,
      :time_range,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    # @!attribute records
    #   <p>An array of objects that contains the results of the query. Each object contains the data for an account that meets the filter criteria specified in the request.</p>
    #
    #   @return [Array<UsageRecord>]
    #
    # @!attribute time_range
    #   <p>The inclusive time period that the usage data applies to. Possible values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days.</p>
    #
    #   Enum, one of: ["MONTH_TO_DATE", "PAST_30_DAYS"]
    #
    #   @return [String]
    #
    GetUsageStatisticsOutput = ::Struct.new(
      :next_token,
      :records,
      :time_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_range
    #   <p>The inclusive time period to retrieve the data for. Valid values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value for this parameter, Amazon Macie provides aggregated usage data for the preceding 30 days.</p>
    #
    #   @return [String]
    #
    GetUsageTotalsInput = ::Struct.new(
      :time_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_range
    #   <p>The inclusive time period that the usage data applies to. Possible values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days.</p>
    #
    #   Enum, one of: ["MONTH_TO_DATE", "PAST_30_DAYS"]
    #
    #   @return [String]
    #
    # @!attribute usage_totals
    #   <p>An array of objects that contains the results of the query. Each object contains the data for a specific usage metric.</p>
    #
    #   @return [Array<UsageTotal>]
    #
    GetUsageTotalsOutput = ::Struct.new(
      :time_range,
      :usage_totals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GroupBy
    #
    module GroupBy
      # No documentation available.
      #
      resourcesAffected_s3Bucket_name = "resourcesAffected.s3Bucket.name"

      # No documentation available.
      #
      type = "type"

      # No documentation available.
      #
      classificationDetails_jobId = "classificationDetails.jobId"

      # No documentation available.
      #
      severity_description = "severity.description"
    end

    # <p>Provides a group of results for a query that retrieved aggregated statistical data about findings.</p>
    #
    # @!attribute count
    #   <p>The total number of findings in the group of query results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute group_key
    #   <p>The name of the property that defines the group in the query results, as specified by the groupBy property in the query request.</p>
    #
    #   @return [String]
    #
    GroupCount = ::Struct.new(
      :count,
      :group_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
      end
    end

    # <p>Provides information about an Identity and Access Management (IAM) user who performed an action on an affected resource.</p>
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account that's associated with the IAM user who performed the action.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the principal that performed the action. The last section of the ARN contains the name of the user who performed the action.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The unique identifier for the IAM user who performed the action.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The user name of the IAM user who performed the action.</p>
    #
    #   @return [String]
    #
    IamUser = ::Struct.new(
      :account_id,
      :arn,
      :principal_id,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an error that occurred due to an unknown internal server error, exception, or failure.</p>
    #
    # @!attribute message
    #   <p>The explanation of the error that occurred.</p>
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an Amazon Macie membership invitation.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the account that sent the invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute invitation_id
    #   <p>The unique identifier for the invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute invited_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the invitation was sent.</p>
    #
    #   @return [Time]
    #
    # @!attribute relationship_status
    #   <p>The status of the relationship between the account that sent the invitation and the account that received the invitation.</p>
    #
    #   Enum, one of: ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #
    #   @return [String]
    #
    Invitation = ::Struct.new(
      :account_id,
      :invitation_id,
      :invited_at,
      :relationship_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the IP address of the device that an entity used to perform an action on an affected resource.</p>
    #
    # @!attribute ip_address_v4
    #   <p>The Internet Protocol version 4 (IPv4) address of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_city
    #   <p>The city that the IP address originated from.</p>
    #
    #   @return [IpCity]
    #
    # @!attribute ip_country
    #   <p>The country that the IP address originated from.</p>
    #
    #   @return [IpCountry]
    #
    # @!attribute ip_geo_location
    #   <p>The geographic coordinates of the location that the IP address originated from.</p>
    #
    #   @return [IpGeoLocation]
    #
    # @!attribute ip_owner
    #   <p>The registered owner of the IP address.</p>
    #
    #   @return [IpOwner]
    #
    IpAddressDetails = ::Struct.new(
      :ip_address_v4,
      :ip_city,
      :ip_country,
      :ip_geo_location,
      :ip_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the city that an IP address originated from.</p>
    #
    # @!attribute name
    #   <p>The name of the city.</p>
    #
    #   @return [String]
    #
    IpCity = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the country that an IP address originated from.</p>
    #
    # @!attribute code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country that the IP address originated from. For example, US for the United States.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the country that the IP address originated from.</p>
    #
    #   @return [String]
    #
    IpCountry = ::Struct.new(
      :code,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides geographic coordinates that indicate where a specified IP address originated from.</p>
    #
    # @!attribute lat
    #   <p>The latitude coordinate of the location, rounded to four decimal places.</p>
    #
    #   @return [Float]
    #
    # @!attribute lon
    #   <p>The longitude coordinate of the location, rounded to four decimal places.</p>
    #
    #   @return [Float]
    #
    IpGeoLocation = ::Struct.new(
      :lat,
      :lon,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.lat ||= 0
        self.lon ||= 0
      end
    end

    # <p>Provides information about the registered owner of an IP address.</p>
    #
    # @!attribute asn
    #   <p>The autonomous system number (ASN) for the autonomous system that included the IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute asn_org
    #   <p>The organization identifier that's associated with the autonomous system number (ASN) for the autonomous system that included the IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute isp
    #   <p>The name of the internet service provider (ISP) that owned the IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute org
    #   <p>The name of the organization that owned the IP address.</p>
    #
    #   @return [String]
    #
    IpOwner = ::Struct.new(
      :asn,
      :asn_org,
      :isp,
      :org,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IsDefinedInJob
    #
    module IsDefinedInJob
      # No documentation available.
      #
      TRUE = "TRUE"

      # No documentation available.
      #
      FALSE = "FALSE"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # Includes enum constants for IsMonitoredByJob
    #
    module IsMonitoredByJob
      # No documentation available.
      #
      TRUE = "TRUE"

      # No documentation available.
      #
      FALSE = "FALSE"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # Includes enum constants for JobComparator
    #
    module JobComparator
      # No documentation available.
      #
      EQ = "EQ"

      # No documentation available.
      #
      GT = "GT"

      # No documentation available.
      #
      GTE = "GTE"

      # No documentation available.
      #
      LT = "LT"

      # No documentation available.
      #
      LTE = "LTE"

      # No documentation available.
      #
      NE = "NE"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"

      # No documentation available.
      #
      STARTS_WITH = "STARTS_WITH"
    end

    # <p>Specifies whether any one-time or recurring classification jobs are configured to analyze data in an S3 bucket, and, if so, the details of the job that ran most recently.</p>
    #
    # @!attribute is_defined_in_job
    #   <p>Specifies whether any one-time or recurring jobs are configured to analyze data in the bucket. Possible values are:</p> <ul><li><p>TRUE - The bucket is explicitly included in the bucket definition (S3BucketDefinitionForJob) for one or more jobs and at least one of those jobs has a status other than CANCELLED. Or the bucket matched the bucket criteria (S3BucketCriteriaForJob) for at least one job that previously ran.</p></li> <li><p>FALSE - The bucket isn't explicitly included in the bucket definition (S3BucketDefinitionForJob) for any jobs, all the jobs that explicitly include the bucket in their bucket definitions have a status of CANCELLED, or the bucket didn't match the bucket criteria (S3BucketCriteriaForJob) for any jobs that previously ran.</p></li> <li><p>UNKNOWN - An exception occurred when Amazon Macie attempted to retrieve job data for the bucket.</p></li></ul> <p></p>
    #
    #   Enum, one of: ["TRUE", "FALSE", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute is_monitored_by_job
    #   <p>Specifies whether any recurring jobs are configured to analyze data in the bucket. Possible values are:</p> <ul><li><p>TRUE - The bucket is explicitly included in the bucket definition (S3BucketDefinitionForJob) for one or more recurring jobs or the bucket matches the bucket criteria (S3BucketCriteriaForJob) for one or more recurring jobs. At least one of those jobs has a status other than CANCELLED.</p></li> <li><p>FALSE - The bucket isn't explicitly included in the bucket definition (S3BucketDefinitionForJob) for any recurring jobs, the bucket doesn't match the bucket criteria (S3BucketCriteriaForJob) for any recurring jobs, or all the recurring jobs that are configured to analyze data in the bucket have a status of CANCELLED.</p></li> <li><p>UNKNOWN - An exception occurred when Amazon Macie attempted to retrieve job data for the bucket.</p></li></ul>
    #
    #   Enum, one of: ["TRUE", "FALSE", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute last_job_id
    #   <p>The unique identifier for the job that ran most recently and is configured to analyze data in the bucket, either the latest run of a recurring job or the only run of a one-time job.</p> <p>This value is typically null if the value for the isDefinedInJob property is FALSE or UNKNOWN.</p>
    #
    #   @return [String]
    #
    # @!attribute last_job_run_time
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the job (lastJobId) started. If the job is a recurring job, this value indicates when the most recent run started.</p> <p>This value is typically null if the value for the isDefinedInJob property is FALSE or UNKNOWN.</p>
    #
    #   @return [Time]
    #
    JobDetails = ::Struct.new(
      :is_defined_in_job,
      :is_monitored_by_job,
      :last_job_id,
      :last_job_run_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the recurrence pattern for running a classification job.</p>
    #
    # @!attribute daily_schedule
    #   <p>Specifies a daily recurrence pattern for running the job.</p>
    #
    #   @return [DailySchedule]
    #
    # @!attribute monthly_schedule
    #   <p>Specifies a monthly recurrence pattern for running the job.</p>
    #
    #   @return [MonthlySchedule]
    #
    # @!attribute weekly_schedule
    #   <p>Specifies a weekly recurrence pattern for running the job.</p>
    #
    #   @return [WeeklySchedule]
    #
    JobScheduleFrequency = ::Struct.new(
      :daily_schedule,
      :monthly_schedule,
      :weekly_schedule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a property- or tag-based condition that defines criteria for including or excluding S3 objects from a classification job. A JobScopeTerm object can contain only one simpleScopeTerm object or one tagScopeTerm object.</p>
    #
    # @!attribute simple_scope_term
    #   <p>A property-based condition that defines a property, operator, and one or more values for including or excluding objects from the job.</p>
    #
    #   @return [SimpleScopeTerm]
    #
    # @!attribute tag_scope_term
    #   <p>A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding objects from the job.</p>
    #
    #   @return [TagScopeTerm]
    #
    JobScopeTerm = ::Struct.new(
      :simple_scope_term,
      :tag_scope_term,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies one or more property- and tag-based conditions that define criteria for including or excluding S3 objects from a classification job.</p>
    #
    # @!attribute and
    #   <p>An array of conditions, one for each property- or tag-based condition that determines which objects to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>
    #
    #   @return [Array<JobScopeTerm>]
    #
    JobScopingBlock = ::Struct.new(
      :and,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      PAUSED = "PAUSED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      IDLE = "IDLE"

      # No documentation available.
      #
      USER_PAUSED = "USER_PAUSED"
    end

    # <p>Provides information about a classification job, including the current status of the job.</p>
    #
    # @!attribute bucket_definitions
    #   <p>An array of objects, one for each Amazon Web Services account that owns specific S3 buckets for the job to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for that account. A job's definition can contain a bucketDefinitions array or a bucketCriteria object, not both.</p>
    #
    #   @return [Array<S3BucketDefinitionForJob>]
    #
    # @!attribute created_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_id
    #   <p>The unique identifier for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the job. Possible values are:</p> <ul><li><p>CANCELLED - You cancelled the job or, if it's a one-time job, you paused the job and didn't resume it within 30 days.</p></li> <li><p>COMPLETE - For a one-time job, Amazon Macie finished processing the data specified for the job. This value doesn't apply to recurring jobs.</p></li> <li><p>IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to one-time jobs.</p></li> <li><p>PAUSED - Macie started running the job but additional processing would exceed the monthly sensitive data discovery quota for your account or one or more member accounts that the job analyzes data for.</p></li> <li><p>RUNNING - For a one-time job, the job is in progress. For a recurring job, a scheduled run is in progress.</p></li> <li><p>USER_PAUSED - You paused the job. If you paused the job while it had a status of RUNNING and you don't resume it within 30 days of pausing it, the job or job run will expire and be cancelled, depending on the job's type. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>
    #
    #   Enum, one of: ["RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"]
    #
    #   @return [String]
    #
    # @!attribute job_type
    #   <p>The schedule for running the job. Possible values are:</p> <ul><li><p>ONE_TIME - The job runs only once.</p></li> <li><p>SCHEDULED - The job runs on a daily, weekly, or monthly basis.</p></li></ul>
    #
    #   Enum, one of: ["ONE_TIME", "SCHEDULED"]
    #
    #   @return [String]
    #
    # @!attribute last_run_error_status
    #   <p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run.</p>
    #
    #   @return [LastRunErrorStatus]
    #
    # @!attribute name
    #   <p>The custom name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute user_paused_details
    #   <p>If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for jobStatus is USER_PAUSED.</p>
    #
    #   @return [UserPausedDetails]
    #
    # @!attribute bucket_criteria
    #   <p>The property- and tag-based conditions that determine which S3 buckets are included or excluded from the job's analysis. Each time the job runs, the job uses these criteria to determine which buckets to analyze. A job's definition can contain a bucketCriteria object or a bucketDefinitions array, not both.</p>
    #
    #   @return [S3BucketCriteriaForJob]
    #
    JobSummary = ::Struct.new(
      :bucket_definitions,
      :created_at,
      :job_id,
      :job_status,
      :job_type,
      :last_run_error_status,
      :name,
      :user_paused_details,
      :bucket_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobType
    #
    module JobType
      # No documentation available.
      #
      ONE_TIME = "ONE_TIME"

      # No documentation available.
      #
      SCHEDULED = "SCHEDULED"
    end

    # <p>Provides information about the tags that are associated with an S3 bucket or object. Each tag consists of a required tag key and an associated tag value.</p>
    #
    # @!attribute key
    #   <p>One part of a key-value pair that comprises a tag. A tag key is a general label that acts as a category for more specific tag values.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>One part of a key-value pair that comprises a tag. A tag value acts as a descriptor for a tag key. A tag value can be an empty string.</p>
    #
    #   @return [String]
    #
    KeyValuePair = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies whether any account- or bucket-level access errors occurred when a classification job ran. For information about using logging data to investigate these errors, see <a href="https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-monitor-cw-logs.html">Monitoring sensitive data discovery jobs</a> in the <i>Amazon Macie User Guide</i>.</p>
    #
    # @!attribute code
    #   <p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run. Possible values are:</p> <ul><li><p>ERROR - One or more errors occurred. Amazon Macie didn't process all the data specified for the job.</p></li> <li><p>NONE - No errors occurred. Macie processed all the data specified for the job.</p></li></ul>
    #
    #   Enum, one of: ["NONE", "ERROR"]
    #
    #   @return [String]
    #
    LastRunErrorStatus = ::Struct.new(
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LastRunErrorStatusCode
    #
    module LastRunErrorStatusCode
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # @!attribute filter_criteria
    #   <p>The criteria to use to filter the results.</p>
    #
    #   @return [ListJobsFilterCriteria]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_criteria
    #   <p>The criteria to use to sort the results.</p>
    #
    #   @return [ListJobsSortCriteria]
    #
    ListClassificationJobsInput = ::Struct.new(
      :filter_criteria,
      :max_results,
      :next_token,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute items
    #   <p>An array of objects, one for each job that meets the filter criteria specified in the request.</p>
    #
    #   @return [Array<JobSummary>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ListClassificationJobsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    ListCustomDataIdentifiersInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute items
    #   <p>An array of objects, one for each custom data identifier.</p>
    #
    #   @return [Array<CustomDataIdentifierSummary>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ListCustomDataIdentifiersOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    ListFindingsFiltersInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute findings_filter_list_items
    #   <p>An array of objects, one for each filter that's associated with the account.</p>
    #
    #   @return [Array<FindingsFilterListItem>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ListFindingsFiltersOutput = ::Struct.new(
      :findings_filter_list_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute finding_criteria
    #   <p>The criteria to use to filter the results.</p>
    #
    #   @return [FindingCriteria]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_criteria
    #   <p>The criteria to use to sort the results.</p>
    #
    #   @return [SortCriteria]
    #
    ListFindingsInput = ::Struct.new(
      :finding_criteria,
      :max_results,
      :next_token,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute finding_ids
    #   <p>An array of strings, where each string is the unique identifier for a finding that meets the filter criteria specified in the request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ListFindingsOutput = ::Struct.new(
      :finding_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    ListInvitationsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute invitations
    #   <p>An array of objects, one for each invitation that was received by the account.</p>
    #
    #   @return [Array<Invitation>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ListInvitationsOutput = ::Struct.new(
      :invitations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies criteria for filtering the results of a request for information about classification jobs.</p>
    #
    # @!attribute excludes
    #   <p>An array of objects, one for each condition that determines which jobs to exclude from the results.</p>
    #
    #   @return [Array<ListJobsFilterTerm>]
    #
    # @!attribute includes
    #   <p>An array of objects, one for each condition that determines which jobs to include in the results.</p>
    #
    #   @return [Array<ListJobsFilterTerm>]
    #
    ListJobsFilterCriteria = ::Struct.new(
      :excludes,
      :includes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ListJobsFilterKey
    #
    module ListJobsFilterKey
      # No documentation available.
      #
      jobType = "jobType"

      # No documentation available.
      #
      jobStatus = "jobStatus"

      # No documentation available.
      #
      createdAt = "createdAt"

      # No documentation available.
      #
      name = "name"
    end

    # <p>Specifies a condition that filters the results of a request for information about classification jobs. Each condition consists of a property, an operator, and one or more values.</p>
    #
    # @!attribute comparator
    #   <p>The operator to use to filter the results.</p>
    #
    #   Enum, one of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The property to use to filter the results.</p>
    #
    #   Enum, one of: ["jobType", "jobStatus", "createdAt", "name"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array that lists one or more values to use to filter the results.</p>
    #
    #   @return [Array<String>]
    #
    ListJobsFilterTerm = ::Struct.new(
      :comparator,
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ListJobsSortAttributeName
    #
    module ListJobsSortAttributeName
      # No documentation available.
      #
      createdAt = "createdAt"

      # No documentation available.
      #
      jobStatus = "jobStatus"

      # No documentation available.
      #
      name = "name"

      # No documentation available.
      #
      jobType = "jobType"
    end

    # <p>Specifies criteria for sorting the results of a request for information about classification jobs.</p>
    #
    # @!attribute attribute_name
    #   <p>The property to sort the results by.</p>
    #
    #   Enum, one of: ["createdAt", "jobStatus", "name", "jobType"]
    #
    #   @return [String]
    #
    # @!attribute order_by
    #   <p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    ListJobsSortCriteria = ::Struct.new(
      :attribute_name,
      :order_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    ListManagedDataIdentifiersInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>An array of objects, one for each managed data identifier.</p>
    #
    #   @return [Array<ManagedDataIdentifierSummary>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ListManagedDataIdentifiersOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    # @!attribute only_associated
    #   <p>Specifies which accounts to include in the response, based on the status of an account's relationship with the administrator account. By default, the response includes only current member accounts. To include all accounts, set this value to false.</p>
    #
    #   @return [String]
    #
    ListMembersInput = ::Struct.new(
      :max_results,
      :next_token,
      :only_associated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute members
    #   <p>An array of objects, one for each account that's associated with the administrator account and meets the criteria specified in the request.</p>
    #
    #   @return [Array<Member>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ListMembersOutput = ::Struct.new(
      :members,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    ListOrganizationAdminAccountsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute admin_accounts
    #   <p>An array of objects, one for each delegated Amazon Macie administrator account for the organization. Only one of these accounts can have a status of ENABLED.</p>
    #
    #   @return [Array<AdminAccount>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ListOrganizationAdminAccountsOutput = ::Struct.new(
      :admin_accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>
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
    #   <p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MacieStatus
    #
    module MacieStatus
      # No documentation available.
      #
      PAUSED = "PAUSED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for ManagedDataIdentifierSelector
    #
    module ManagedDataIdentifierSelector
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      EXCLUDE = "EXCLUDE"

      # No documentation available.
      #
      INCLUDE = "INCLUDE"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>Provides information about a managed data identifier. For additional information, see <a href="https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html">Using managed data identifiers</a> in the <i>Amazon Macie User Guide</i>.</p>
    #
    # @!attribute category
    #   <p>The category of sensitive data that the managed data identifier detects: CREDENTIALS, for credentials data such as private keys or Amazon Web Services secret access keys; FINANCIAL_INFORMATION, for financial data such as credit card numbers; or, PERSONAL_INFORMATION, for personal health information, such as health insurance identification numbers, or personally identifiable information, such as passport numbers.</p>
    #
    #   Enum, one of: ["FINANCIAL_INFORMATION", "PERSONAL_INFORMATION", "CREDENTIALS", "CUSTOM_IDENTIFIER"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the managed data identifier. This is a string that describes the type of sensitive data that the managed data identifier detects. For example: OPENSSH_PRIVATE_KEY for OpenSSH private keys, CREDIT_CARD_NUMBER for credit card numbers, or USA_PASSPORT_NUMBER for US passport numbers.</p>
    #
    #   @return [String]
    #
    ManagedDataIdentifierSummary = ::Struct.new(
      :category,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides statistical data and other information about an S3 bucket that Amazon Macie monitors and analyzes for your account. If an error occurs when Macie attempts to retrieve and process information about the bucket or the bucket's objects, the value for most of these properties is null. Exceptions are accountId and bucketName. To identify the cause of the error, refer to the errorCode and errorMessage values.</p>
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account that owns the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p>The name of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute classifiable_object_count
    #   <p>The total number of objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p>
    #
    #   @return [Integer]
    #
    # @!attribute classifiable_size_in_bytes
    #   <p>The total storage size, in bytes, of the objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p> <p>If versioning is enabled for the bucket, Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute error_code
    #   <p>Specifies the error code for an error that prevented Amazon Macie from retrieving and processing information about the bucket and the bucket's objects. If this value is ACCESS_DENIED, Macie doesn't have permission to retrieve the information. For example, the bucket has a restrictive bucket policy and Amazon S3 denied the request. If this value is null, Macie was able to retrieve and process the information.</p>
    #
    #   Enum, one of: ["ACCESS_DENIED"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A brief description of the error (errorCode) that prevented Amazon Macie from retrieving and processing information about the bucket and the bucket's objects. This value is null if Macie was able to retrieve and process the information.</p>
    #
    #   @return [String]
    #
    # @!attribute job_details
    #   <p>Specifies whether any one-time or recurring classification jobs are configured to analyze objects in the bucket, and, if so, the details of the job that ran most recently.</p>
    #
    #   @return [JobDetails]
    #
    # @!attribute object_count
    #   <p>The total number of objects in the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute object_count_by_encryption_type
    #   <p>The total number of objects that are in the bucket, grouped by server-side encryption type. This includes a grouping that reports the total number of objects that aren't encrypted or use client-side encryption.</p>
    #
    #   @return [ObjectCountByEncryptionType]
    #
    # @!attribute size_in_bytes
    #   <p>The total storage size, in bytes, of the bucket.</p> <p>If versioning is enabled for the bucket, Amazon Macie calculates this value based on the size of the latest version of each object in the bucket. This value doesn't reflect the storage size of all versions of each object in the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute size_in_bytes_compressed
    #   <p>The total storage size, in bytes, of the objects that are compressed (.gz, .gzip, .zip) files in the bucket.</p> <p>If versioning is enabled for the bucket, Amazon Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unclassifiable_object_count
    #   <p>The total number of objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>
    #
    #   @return [ObjectLevelStatistics]
    #
    # @!attribute unclassifiable_object_size_in_bytes
    #   <p>The total storage size, in bytes, of the objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>
    #
    #   @return [ObjectLevelStatistics]
    #
    MatchingBucket = ::Struct.new(
      :account_id,
      :bucket_name,
      :classifiable_object_count,
      :classifiable_size_in_bytes,
      :error_code,
      :error_message,
      :job_details,
      :object_count,
      :object_count_by_encryption_type,
      :size_in_bytes,
      :size_in_bytes_compressed,
      :unclassifiable_object_count,
      :unclassifiable_object_size_in_bytes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.classifiable_object_count ||= 0
        self.classifiable_size_in_bytes ||= 0
        self.object_count ||= 0
        self.size_in_bytes ||= 0
        self.size_in_bytes_compressed ||= 0
      end
    end

    # <p>Provides statistical data and other information about an Amazon Web Services resource that Amazon Macie monitors and analyzes for your account.</p>
    #
    # @!attribute matching_bucket
    #   <p>The details of an S3 bucket that Amazon Macie monitors and analyzes.</p>
    #
    #   @return [MatchingBucket]
    #
    MatchingResource = ::Struct.new(
      :matching_bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an account that's associated with an Amazon Macie administrator account.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the account.</p>
    #
    #   @return [String]
    #
    # @!attribute administrator_account_id
    #   <p>The Amazon Web Services account ID for the administrator account.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the account.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address for the account.</p>
    #
    #   @return [String]
    #
    # @!attribute invited_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if an invitation hasn't been sent to the account.</p>
    #
    #   @return [Time]
    #
    # @!attribute master_account_id
    #   <p>(Deprecated) The Amazon Web Services account ID for the administrator account. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_status
    #   <p>The current status of the relationship between the account and the administrator account.</p>
    #
    #   Enum, one of: ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the account in Amazon Macie.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute updated_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the relationship between the account and the administrator account.</p>
    #
    #   @return [Time]
    #
    Member = ::Struct.new(
      :account_id,
      :administrator_account_id,
      :arn,
      :email,
      :invited_at,
      :master_account_id,
      :relationship_status,
      :tags,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a monthly recurrence pattern for running a classification job.</p>
    #
    # @!attribute day_of_month
    #   <p>The numeric day of the month when Amazon Macie runs the job. This value can be an integer from 1 through 31.</p> <p>If this value exceeds the number of days in a certain month, Macie doesn't run the job that month. Macie runs the job only during months that have the specified day. For example, if this value is 31 and a month has only 30 days, Macie doesn't run the job that month. To run the job every month, specify a value that's less than 29.</p>
    #
    #   @return [Integer]
    #
    MonthlySchedule = ::Struct.new(
      :day_of_month,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.day_of_month ||= 0
      end
    end

    # <p>Provides information about the number of objects that are in an S3 bucket and use certain types of server-side encryption, use client-side encryption, or aren't encrypted.</p>
    #
    # @!attribute customer_managed
    #   <p>The total number of objects that are encrypted with a customer-provided key. The objects use customer-provided server-side encryption (SSE-C).</p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_managed
    #   <p>The total number of objects that are encrypted with an KMS key, either an Amazon Web Services managed key or a customer managed key. The objects use KMS encryption (SSE-KMS).</p>
    #
    #   @return [Integer]
    #
    # @!attribute s3_managed
    #   <p>The total number of objects that are encrypted with an Amazon S3 managed key. The objects use Amazon S3 managed encryption (SSE-S3).</p>
    #
    #   @return [Integer]
    #
    # @!attribute unencrypted
    #   <p>The total number of objects that aren't encrypted or use client-side encryption.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unknown
    #   <p>The total number of objects that Amazon Macie doesn't have current encryption metadata for. Macie can't provide current data about the encryption settings for these objects.</p>
    #
    #   @return [Integer]
    #
    ObjectCountByEncryptionType = ::Struct.new(
      :customer_managed,
      :kms_managed,
      :s3_managed,
      :unencrypted,
      :unknown,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.customer_managed ||= 0
        self.kms_managed ||= 0
        self.s3_managed ||= 0
        self.unencrypted ||= 0
        self.unknown ||= 0
      end
    end

    # <p>Provides information about the total storage size (in bytes) or number of objects that Amazon Macie can't analyze in one or more S3 buckets. In a BucketMetadata or MatchingBucket object, this data is for a specific bucket. In a GetBucketStatisticsResponse object, this data is aggregated for the buckets in the query results. If versioning is enabled for a bucket, total storage size values are based on the size of the latest version of each applicable object in the bucket.</p>
    #
    # @!attribute file_type
    #   <p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects don't have a file name extension for a supported file or storage format.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_class
    #   <p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects use an unsupported storage class.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total
    #   <p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects use an unsupported storage class or don't have a file name extension for a supported file or storage format.</p>
    #
    #   @return [Integer]
    #
    ObjectLevelStatistics = ::Struct.new(
      :file_type,
      :storage_class,
      :total,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.file_type ||= 0
        self.storage_class ||= 0
        self.total ||= 0
      end
    end

    # <p>Specifies the location of 1-15 occurrences of sensitive data that was detected by a managed data identifier or a custom data identifier and produced a sensitive data finding.</p>
    #
    # @!attribute cells
    #   <p>An array of objects, one for each occurrence of sensitive data in a Microsoft Excel workbook, CSV file, or TSV file. This value is null for all other types of files.</p><p>Each Cell object specifies a cell or field that contains the sensitive data.</p>
    #
    #   @return [Array<Cell>]
    #
    # @!attribute line_ranges
    #   <p>An array of objects, one for each occurrence of sensitive data in a non-binary text file, such as an HTML, TXT, or XML file. Each Range object specifies a line or inclusive range of lines that contains the sensitive data, and the position of the data on the specified line or lines.</p> <p>This value is often null for file types that are supported by Cell, Page, or Record objects. Exceptions are the location of sensitive data in: unstructured sections of an otherwise structured file, such as a comment in a file; a malformed file that Amazon Macie analyzes as plain text; and, a CSV or TSV file that has any column names that contain sensitive data.</p>
    #
    #   @return [Array<Range>]
    #
    # @!attribute offset_ranges
    #   <p>Reserved for future use.</p>
    #
    #   @return [Array<Range>]
    #
    # @!attribute pages
    #   <p>An array of objects, one for each occurrence of sensitive data in an Adobe Portable Document Format file. This value is null for all other types of files.</p><p>Each Page object specifies a page that contains the sensitive data.</p>
    #
    #   @return [Array<Page>]
    #
    # @!attribute records
    #   <p>An array of objects, one for each occurrence of sensitive data in an Apache Avro object container, Apache Parquet file, JSON file, or JSON Lines file. This value is null for all other types of files.</p> <p>For an Avro object container or Parquet file, each Record object specifies a record index and the path to a field in a record that contains the sensitive data. For a JSON or JSON Lines file, each Record object specifies the path to a field or array that contains the sensitive data. For a JSON Lines file, it also specifies the index of the line that contains the data.</p>
    #
    #   @return [Array<Record>]
    #
    Occurrences = ::Struct.new(
      :cells,
      :line_ranges,
      :offset_ranges,
      :pages,
      :records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrderBy
    #
    module OrderBy
      # No documentation available.
      #
      ASC = "ASC"

      # No documentation available.
      #
      DESC = "DESC"
    end

    # Includes enum constants for OriginType
    #
    module OriginType
      # No documentation available.
      #
      SENSITIVE_DATA_DISCOVERY_JOB = "SENSITIVE_DATA_DISCOVERY_JOB"
    end

    # <p>Specifies the location of an occurrence of sensitive data in an Adobe Portable Document Format file.</p>
    #
    # @!attribute line_range
    #   <p>Reserved for future use.</p>
    #
    #   @return [Range]
    #
    # @!attribute offset_range
    #   <p>Reserved for future use.</p>
    #
    #   @return [Range]
    #
    # @!attribute page_number
    #   <p>The page number of the page that contains the sensitive data.</p>
    #
    #   @return [Integer]
    #
    Page = ::Struct.new(
      :line_range,
      :offset_range,
      :page_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.page_number ||= 0
      end
    end

    # <p>Provides the details of a policy finding.</p>
    #
    # @!attribute action
    #   <p>The action that produced the finding.</p>
    #
    #   @return [FindingAction]
    #
    # @!attribute actor
    #   <p>The entity that performed the action that produced the finding.</p>
    #
    #   @return [FindingActor]
    #
    PolicyDetails = ::Struct.new(
      :action,
      :actor,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration
    #   <p>The location to store data classification results in, and the encryption settings to use when storing results in that location.</p>
    #
    #   @return [ClassificationExportConfiguration]
    #
    PutClassificationExportConfigurationInput = ::Struct.new(
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration
    #   <p>The location where the data classification results are stored, and the encryption settings that are used when storing results in that location.</p>
    #
    #   @return [ClassificationExportConfiguration]
    #
    PutClassificationExportConfigurationOutput = ::Struct.new(
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute security_hub_configuration
    #   <p>The configuration settings that determine which findings to publish to Security Hub.</p>
    #
    #   @return [SecurityHubConfiguration]
    #
    PutFindingsPublicationConfigurationInput = ::Struct.new(
      :client_token,
      :security_hub_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutFindingsPublicationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the location of an occurrence of sensitive data in a non-binary text file, such as an HTML, TXT, or XML file.</p>
    #
    # @!attribute end
    #   <p>The number of lines from the beginning of the file to the end of the sensitive data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start
    #   <p>The number of lines from the beginning of the file to the beginning of the sensitive data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_column
    #   <p>The number of characters, with spaces and starting from 1, from the beginning of the first line that contains the sensitive data (start) to the beginning of the sensitive data.</p>
    #
    #   @return [Integer]
    #
    Range = ::Struct.new(
      :end,
      :start,
      :start_column,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.end ||= 0
        self.start ||= 0
        self.start_column ||= 0
      end
    end

    # <p>Specifies the location of an occurrence of sensitive data in an Apache Avro object container, Apache Parquet file, JSON file, or JSON Lines file.</p>
    #
    # @!attribute json_path
    #   <p>The path, as a JSONPath expression, to the sensitive data. For an Avro object container or Parquet file, this is the path to the field in the record (recordIndex) that contains the data. For a JSON or JSON Lines file, this is the path to the field or array that contains the data. If the data is a value in an array, the path also indicates which value contains the data.</p> <p>If Amazon Macie detects sensitive data in the name of any element in the path, Macie omits this field. If the name of an element exceeds 20 characters, Macie truncates the name by removing characters from the beginning of the name. If the resulting full path exceeds 250 characters, Macie also truncates the path, starting with the first element in the path, until the path contains 250 or fewer characters.</p>
    #
    #   @return [String]
    #
    # @!attribute record_index
    #   <p>For an Avro object container or Parquet file, the record index, starting from 0, for the record that contains the sensitive data. For a JSON Lines file, the line index, starting from 0, for the line that contains the sensitive data. This value is always 0 for JSON files.</p>
    #
    #   @return [Integer]
    #
    Record = ::Struct.new(
      :json_path,
      :record_index,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.record_index ||= 0
      end
    end

    # Includes enum constants for RelationshipStatus
    #
    module RelationshipStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Paused = "Paused"

      # No documentation available.
      #
      Invited = "Invited"

      # No documentation available.
      #
      Created = "Created"

      # No documentation available.
      #
      Removed = "Removed"

      # No documentation available.
      #
      Resigned = "Resigned"

      # No documentation available.
      #
      EmailVerificationInProgress = "EmailVerificationInProgress"

      # No documentation available.
      #
      EmailVerificationFailed = "EmailVerificationFailed"

      # No documentation available.
      #
      RegionDisabled = "RegionDisabled"

      # No documentation available.
      #
      AccountSuspended = "AccountSuspended"
    end

    # <p>Provides information about settings that define whether one or more objects in an S3 bucket are replicated to S3 buckets for other Amazon Web Services accounts and, if so, which accounts.</p>
    #
    # @!attribute replicated
    #   <p>Specifies whether the bucket is configured to replicate one or more objects to any destination.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replicated_externally
    #   <p>Specifies whether the bucket is configured to replicate one or more objects to an Amazon Web Services account that isn't part of the same Amazon Macie organization.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_accounts
    #   <p>An array of Amazon Web Services account IDs, one for each Amazon Web Services account that the bucket is configured to replicate one or more objects to.</p>
    #
    #   @return [Array<String>]
    #
    ReplicationDetails = ::Struct.new(
      :replicated,
      :replicated_externally,
      :replication_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.replicated ||= false
        self.replicated_externally ||= false
      end
    end

    # <p>Provides information about an error that occurred because a specified resource wasn't found.</p>
    #
    # @!attribute message
    #   <p>The explanation of the error that occurred.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the resources that a finding applies to.</p>
    #
    # @!attribute s3_bucket
    #   <p>The details of the S3 bucket that the finding applies to.</p>
    #
    #   @return [S3Bucket]
    #
    # @!attribute s3_object
    #   <p>The details of the S3 object that the finding applies to.</p>
    #
    #   @return [S3Object]
    #
    ResourcesAffected = ::Struct.new(
      :s3_bucket,
      :s3_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the S3 bucket that a finding applies to.</p>
    #
    # @!attribute allows_unencrypted_object_uploads
    #   <p>Specifies whether the bucket policy for the bucket requires server-side encryption of objects when objects are uploaded to the bucket. Possible values are:</p> <ul><li><p>FALSE - The bucket policy requires server-side encryption of new objects. PutObject requests must include the x-amz-server-side-encryption header and the value for that header must be AES256 or aws:kms.</p></li> <li><p>TRUE - The bucket doesn't have a bucket policy or it has a bucket policy that doesn't require server-side encryption of new objects. If a bucket policy exists, it doesn't require PutObject requests to include the x-amz-server-side-encryption header and it doesn't require the value for that header to be AES256 or aws:kms.</p></li> <li><p>UNKNOWN - Amazon Macie can't determine whether the bucket policy requires server-side encryption of objects.</p></li></ul>
    #
    #   Enum, one of: ["TRUE", "FALSE", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the bucket was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute default_server_side_encryption
    #   <p>The type of server-side encryption that's used by default to encrypt objects in the bucket.</p>
    #
    #   @return [ServerSideEncryption]
    #
    # @!attribute name
    #   <p>The name of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The display name and canonical user ID for the Amazon Web Services account that owns the bucket.</p>
    #
    #   @return [S3BucketOwner]
    #
    # @!attribute public_access
    #   <p>The permissions settings that determine whether the bucket is publicly accessible.</p>
    #
    #   @return [BucketPublicAccess]
    #
    # @!attribute tags
    #   <p>The tags that are associated with the bucket.</p>
    #
    #   @return [Array<KeyValuePair>]
    #
    S3Bucket = ::Struct.new(
      :allows_unencrypted_object_uploads,
      :arn,
      :created_at,
      :default_server_side_encryption,
      :name,
      :owner,
      :public_access,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies property- and tag-based conditions that define criteria for including or excluding S3 buckets from a classification job. Exclude conditions take precedence over include conditions.</p>
    #
    # @!attribute excludes
    #   <p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>
    #
    #   @return [CriteriaBlockForJob]
    #
    # @!attribute includes
    #   <p>The property- and tag-based conditions that determine which buckets to include in the job.</p>
    #
    #   @return [CriteriaBlockForJob]
    #
    S3BucketCriteriaForJob = ::Struct.new(
      :excludes,
      :includes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an Amazon Web Services account that owns S3 buckets for a classification job to analyze, and one or more specific buckets to analyze for that account.</p>
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account that owns the buckets.</p>
    #
    #   @return [String]
    #
    # @!attribute buckets
    #   <p>An array that lists the names of the buckets.</p>
    #
    #   @return [Array<String>]
    #
    S3BucketDefinitionForJob = ::Struct.new(
      :account_id,
      :buckets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the Amazon Web Services account that owns an S3 bucket.</p>
    #
    # @!attribute display_name
    #   <p>The display name of the account that owns the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The canonical user ID for the account that owns the bucket.</p>
    #
    #   @return [String]
    #
    S3BucketOwner = ::Struct.new(
      :display_name,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an S3 bucket to store data classification results in, and the encryption settings to use when storing results in that bucket.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p>The path prefix to use in the path to the location in the bucket. This prefix specifies where to store classification results in the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to use for encryption of the results. This must be the ARN of an existing, symmetric, customer managed KMS key that's in the same Amazon Web Services Region as the bucket.</p>
    #
    #   @return [String]
    #
    S3Destination = ::Struct.new(
      :bucket_name,
      :key_prefix,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies which S3 buckets contain the objects that a classification job analyzes, and the scope of that analysis. The bucket specification can be static (bucketDefinitions) or dynamic (bucketCriteria). If it's static, the job analyzes objects in the same predefined set of buckets each time the job runs. If it's dynamic, the job analyzes objects in any buckets that match the specified criteria each time the job starts to run.</p>
    #
    # @!attribute bucket_definitions
    #   <p>An array of objects, one for each Amazon Web Services account that owns specific S3 buckets to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for that account. A job's definition can contain a bucketDefinitions array or a bucketCriteria object, not both.</p>
    #
    #   @return [Array<S3BucketDefinitionForJob>]
    #
    # @!attribute scoping
    #   <p>The property- and tag-based conditions that determine which S3 objects to include or exclude from the analysis. Each time the job runs, the job uses these criteria to determine which objects to analyze.</p>
    #
    #   @return [Scoping]
    #
    # @!attribute bucket_criteria
    #   <p>The property- and tag-based conditions that determine which S3 buckets to include or exclude from the analysis. Each time the job runs, the job uses these criteria to determine which buckets contain objects to analyze. A job's definition can contain a bucketCriteria object or a bucketDefinitions array, not both.</p>
    #
    #   @return [S3BucketCriteriaForJob]
    #
    S3JobDefinition = ::Struct.new(
      :bucket_definitions,
      :scoping,
      :bucket_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the S3 object that a finding applies to.</p>
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the bucket that contains the object.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The entity tag (ETag) that identifies the affected version of the object. If the object was overwritten or changed after Amazon Macie produced the finding, this value might be different from the current ETag for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute extension
    #   <p>The file name extension of the object. If the object doesn't have a file name extension, this value is "".</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The full key (name) that's assigned to the object.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the object was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute path
    #   <p>The path to the object, including the full key (name).</p>
    #
    #   @return [String]
    #
    # @!attribute public_access
    #   <p>Specifies whether the object is publicly accessible due to the combination of permissions settings that apply to the object.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute server_side_encryption
    #   <p>The type of server-side encryption that's used to encrypt the object.</p>
    #
    #   @return [ServerSideEncryption]
    #
    # @!attribute size
    #   <p>The total storage size, in bytes, of the object.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_class
    #   <p>The storage class of the object.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "ONEZONE_IA", "GLACIER"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that are associated with the object.</p>
    #
    #   @return [Array<KeyValuePair>]
    #
    # @!attribute version_id
    #   <p>The identifier for the affected version of the object.</p>
    #
    #   @return [String]
    #
    S3Object = ::Struct.new(
      :bucket_arn,
      :e_tag,
      :extension,
      :key,
      :last_modified,
      :path,
      :public_access,
      :server_side_encryption,
      :size,
      :storage_class,
      :tags,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.public_access ||= false
        self.size ||= 0
      end
    end

    # Includes enum constants for ScopeFilterKey
    #
    module ScopeFilterKey
      # No documentation available.
      #
      OBJECT_EXTENSION = "OBJECT_EXTENSION"

      # No documentation available.
      #
      OBJECT_LAST_MODIFIED_DATE = "OBJECT_LAST_MODIFIED_DATE"

      # No documentation available.
      #
      OBJECT_SIZE = "OBJECT_SIZE"

      # No documentation available.
      #
      OBJECT_KEY = "OBJECT_KEY"
    end

    # <p>Specifies one or more property- and tag-based conditions that define criteria for including or excluding S3 objects from a classification job. Exclude conditions take precedence over include conditions.</p>
    #
    # @!attribute excludes
    #   <p>The property- and tag-based conditions that determine which objects to exclude from the analysis.</p>
    #
    #   @return [JobScopingBlock]
    #
    # @!attribute includes
    #   <p>The property- and tag-based conditions that determine which objects to include in the analysis.</p>
    #
    #   @return [JobScopingBlock]
    #
    Scoping = ::Struct.new(
      :excludes,
      :includes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies property- and tag-based conditions that define filter criteria for including or excluding S3 buckets from the query results. Exclude conditions take precedence over include conditions.</p>
    #
    # @!attribute excludes
    #   <p>The property- and tag-based conditions that determine which buckets to exclude from the results.</p>
    #
    #   @return [SearchResourcesCriteriaBlock]
    #
    # @!attribute includes
    #   <p>The property- and tag-based conditions that determine which buckets to include in the results.</p>
    #
    #   @return [SearchResourcesCriteriaBlock]
    #
    SearchResourcesBucketCriteria = ::Struct.new(
      :excludes,
      :includes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SearchResourcesComparator
    #
    module SearchResourcesComparator
      # No documentation available.
      #
      EQ = "EQ"

      # No documentation available.
      #
      NE = "NE"
    end

    # <p>Specifies a property- or tag-based filter condition for including or excluding Amazon Web Services resources from the query results.</p>
    #
    # @!attribute simple_criterion
    #   <p>A property-based condition that defines a property, operator, and one or more values for including or excluding resources from the results.</p>
    #
    #   @return [SearchResourcesSimpleCriterion]
    #
    # @!attribute tag_criterion
    #   <p>A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding resources from the results.</p>
    #
    #   @return [SearchResourcesTagCriterion]
    #
    SearchResourcesCriteria = ::Struct.new(
      :simple_criterion,
      :tag_criterion,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies property- and tag-based conditions that define filter criteria for including or excluding Amazon Web Services resources from the query results.</p>
    #
    # @!attribute and
    #   <p>An array of objects, one for each property- or tag-based condition that includes or excludes resources from the query results. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>
    #
    #   @return [Array<SearchResourcesCriteria>]
    #
    SearchResourcesCriteriaBlock = ::Struct.new(
      :and,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket_criteria
    #   <p>The filter conditions that determine which S3 buckets to include or exclude from the query results.</p>
    #
    #   @return [SearchResourcesBucketCriteria]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to include in each page of the response. The default value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_criteria
    #   <p>The criteria to use to sort the results.</p>
    #
    #   @return [SearchResourcesSortCriteria]
    #
    SearchResourcesInput = ::Struct.new(
      :bucket_criteria,
      :max_results,
      :next_token,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute matching_resources
    #   <p>An array of objects, one for each resource that meets the filter criteria specified in the request.</p>
    #
    #   @return [Array<MatchingResource>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    SearchResourcesOutput = ::Struct.new(
      :matching_resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a property-based filter condition that determines which Amazon Web Services resources are included or excluded from the query results.</p>
    #
    # @!attribute comparator
    #   <p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>
    #
    #   Enum, one of: ["EQ", "NE"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The property to use in the condition.</p>
    #
    #   Enum, one of: ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array that lists one or more values to use in the condition. If you specify multiple values, Amazon Macie uses OR logic to join the values. Valid values for each supported property (key) are:</p> <ul><li><p>ACCOUNT_ID - A string that represents the unique identifier for the Amazon Web Services account that owns the resource.</p></li> <li><p>S3_BUCKET_EFFECTIVE_PERMISSION - A string that represents an enumerated value that Macie defines for the <a href="https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html datasources-s3-prop-bucketpublicaccess-effectivepermission">BucketPublicAccess.effectivePermission</a> property of an S3 bucket.</p></li> <li><p>S3_BUCKET_NAME - A string that represents the name of an S3 bucket.</p></li> <li><p>S3_BUCKET_SHARED_ACCESS - A string that represents an enumerated value that Macie defines for the <a href="https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html datasources-s3-prop-bucketmetadata-sharedaccess">BucketMetadata.sharedAccess</a> property of an S3 bucket.</p></li></ul> <p>Values are case sensitive. Also, Macie doesn't support use of partial values or wildcard characters in values.</p>
    #
    #   @return [Array<String>]
    #
    SearchResourcesSimpleCriterion = ::Struct.new(
      :comparator,
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SearchResourcesSimpleCriterionKey
    #
    module SearchResourcesSimpleCriterionKey
      # No documentation available.
      #
      ACCOUNT_ID = "ACCOUNT_ID"

      # No documentation available.
      #
      S3_BUCKET_NAME = "S3_BUCKET_NAME"

      # No documentation available.
      #
      S3_BUCKET_EFFECTIVE_PERMISSION = "S3_BUCKET_EFFECTIVE_PERMISSION"

      # No documentation available.
      #
      S3_BUCKET_SHARED_ACCESS = "S3_BUCKET_SHARED_ACCESS"
    end

    # Includes enum constants for SearchResourcesSortAttributeName
    #
    module SearchResourcesSortAttributeName
      # No documentation available.
      #
      ACCOUNT_ID = "ACCOUNT_ID"

      # No documentation available.
      #
      RESOURCE_NAME = "RESOURCE_NAME"

      # No documentation available.
      #
      S3_CLASSIFIABLE_OBJECT_COUNT = "S3_CLASSIFIABLE_OBJECT_COUNT"

      # No documentation available.
      #
      S3_CLASSIFIABLE_SIZE_IN_BYTES = "S3_CLASSIFIABLE_SIZE_IN_BYTES"
    end

    # <p>Specifies criteria for sorting the results of a query for information about Amazon Web Services resources that Amazon Macie monitors and analyzes.</p>
    #
    # @!attribute attribute_name
    #   <p>The property to sort the results by.</p>
    #
    #   Enum, one of: ["ACCOUNT_ID", "RESOURCE_NAME", "S3_CLASSIFIABLE_OBJECT_COUNT", "S3_CLASSIFIABLE_SIZE_IN_BYTES"]
    #
    #   @return [String]
    #
    # @!attribute order_by
    #   <p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    SearchResourcesSortCriteria = ::Struct.new(
      :attribute_name,
      :order_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a tag-based filter condition that determines which Amazon Web Services resources are included or excluded from the query results.</p>
    #
    # @!attribute comparator
    #   <p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>
    #
    #   Enum, one of: ["EQ", "NE"]
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>The tag keys, tag values, or tag key and value pairs to use in the condition.</p>
    #
    #   @return [Array<SearchResourcesTagCriterionPair>]
    #
    SearchResourcesTagCriterion = ::Struct.new(
      :comparator,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a tag key, a tag value, or a tag key and value (as a pair) to use in a tag-based filter condition for a query. Tag keys and values are case sensitive. Also, Amazon Macie doesn't support use of partial values or wildcard characters in tag-based filter conditions.</p>
    #
    # @!attribute key
    #   <p>The value for the tag key to use in the condition.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value to use in the condition.</p>
    #
    #   @return [String]
    #
    SearchResourcesTagCriterionPair = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies configuration settings that determine which findings are published to Security Hub automatically. For information about how Macie publishes findings to Security Hub, see <a href="https://docs.aws.amazon.com/macie/latest/user/securityhub-integration.html">Amazon Macie integration with Security Hub</a> in the <i>Amazon Macie User Guide</i>.</p>
    #
    # @!attribute publish_classification_findings
    #   <p>Specifies whether to publish sensitive data findings to Security Hub. If you set this value to true, Amazon Macie automatically publishes all sensitive data findings that weren't suppressed by a findings filter. The default value is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute publish_policy_findings
    #   <p>Specifies whether to publish policy findings to Security Hub. If you set this value to true, Amazon Macie automatically publishes all new and updated policy findings that weren't suppressed by a findings filter. The default value is true.</p>
    #
    #   @return [Boolean]
    #
    SecurityHubConfiguration = ::Struct.new(
      :publish_classification_findings,
      :publish_policy_findings,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.publish_classification_findings ||= false
        self.publish_policy_findings ||= false
      end
    end

    # <p>Provides information about the category, types, and occurrences of sensitive data that produced a sensitive data finding.</p>
    #
    # @!attribute category
    #   <p>The category of sensitive data that was detected. For example: CREDENTIALS, for credentials data such as private keys or Amazon Web Services secret access keys; FINANCIAL_INFORMATION, for financial data such as credit card numbers; or, PERSONAL_INFORMATION, for personal health information, such as health insurance identification numbers, or personally identifiable information, such as passport numbers.</p>
    #
    #   Enum, one of: ["FINANCIAL_INFORMATION", "PERSONAL_INFORMATION", "CREDENTIALS", "CUSTOM_IDENTIFIER"]
    #
    #   @return [String]
    #
    # @!attribute detections
    #   <p>An array of objects, one for each type of sensitive data that was detected. Each object reports the number of occurrences of a specific type of sensitive data that was detected, and the location of up to 15 of those occurrences.</p>
    #
    #   @return [Array<DefaultDetection>]
    #
    # @!attribute total_count
    #   <p>The total number of occurrences of the sensitive data that was detected.</p>
    #
    #   @return [Integer]
    #
    SensitiveDataItem = ::Struct.new(
      :category,
      :detections,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_count ||= 0
      end
    end

    # Includes enum constants for SensitiveDataItemCategory
    #
    module SensitiveDataItemCategory
      # No documentation available.
      #
      FINANCIAL_INFORMATION = "FINANCIAL_INFORMATION"

      # No documentation available.
      #
      PERSONAL_INFORMATION = "PERSONAL_INFORMATION"

      # No documentation available.
      #
      CREDENTIALS = "CREDENTIALS"

      # No documentation available.
      #
      CUSTOM_IDENTIFIER = "CUSTOM_IDENTIFIER"
    end

    # <p>Provides information about the server-side encryption settings for an S3 bucket or S3 object.</p>
    #
    # @!attribute encryption_type
    #   <p>The server-side encryption algorithm that's used when storing data in the bucket or object. If default encryption is disabled for the bucket or the object isn't encrypted using server-side encryption, this value is NONE.</p>
    #
    #   Enum, one of: ["NONE", "AES256", "aws:kms", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute kms_master_key_id
    #   <p>The Amazon Resource Name (ARN) or unique identifier (key ID) for the KMS key that's used to encrypt data in the bucket or the object. This value is null if an KMS key isn't used to encrypt the data.</p>
    #
    #   @return [String]
    #
    ServerSideEncryption = ::Struct.new(
      :encryption_type,
      :kms_master_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a current quota for an Amazon Macie account.</p>
    #
    # @!attribute is_service_limited
    #   <p>Specifies whether the account has met the quota that corresponds to the metric specified by the UsageByAccount.type field in the response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute unit
    #   <p>The unit of measurement for the value specified by the value field.</p>
    #
    #   Enum, one of: ["TERABYTES"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the metric specified by the UsageByAccount.type field in the response.</p>
    #
    #   @return [Integer]
    #
    ServiceLimit = ::Struct.new(
      :is_service_limited,
      :unit,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_service_limited ||= false
        self.value ||= 0
      end
    end

    # <p>Provides information about an error that occurred due to one or more service quotas for an account.</p>
    #
    # @!attribute message
    #   <p>The explanation of the error that occurred.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a session that was created for an entity that performed an action by using temporary security credentials.</p>
    #
    # @!attribute attributes
    #   <p>The date and time when the credentials were issued, and whether the credentials were authenticated with a multi-factor authentication (MFA) device.</p>
    #
    #   @return [SessionContextAttributes]
    #
    # @!attribute session_issuer
    #   <p>The source and type of credentials that were issued to the entity.</p>
    #
    #   @return [SessionIssuer]
    #
    SessionContext = ::Struct.new(
      :attributes,
      :session_issuer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the context in which temporary security credentials were issued to an entity.</p>
    #
    # @!attribute creation_date
    #   <p>The date and time, in UTC and ISO 8601 format, when the credentials were issued.</p>
    #
    #   @return [Time]
    #
    # @!attribute mfa_authenticated
    #   <p>Specifies whether the credentials were authenticated with a multi-factor authentication (MFA) device.</p>
    #
    #   @return [Boolean]
    #
    SessionContextAttributes = ::Struct.new(
      :creation_date,
      :mfa_authenticated,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.mfa_authenticated ||= false
      end
    end

    # <p>Provides information about the source and type of temporary security credentials that were issued to an entity.</p>
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account that owns the entity that was used to get the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the source account, IAM user, or role that was used to get the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The unique identifier for the entity that was used to get the credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The source of the temporary security credentials, such as Root, IAMUser, or Role.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name or alias of the user or role that issued the session. This value is null if the credentials were obtained from a root account that doesn't have an alias.</p>
    #
    #   @return [String]
    #
    SessionIssuer = ::Struct.new(
      :account_id,
      :arn,
      :principal_id,
      :type,
      :user_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the numerical and qualitative representations of a finding's severity.</p>
    #
    # @!attribute description
    #   <p>The qualitative representation of the finding's severity, ranging from Low (least severe) to High (most severe).</p>
    #
    #   Enum, one of: ["Low", "Medium", "High"]
    #
    #   @return [String]
    #
    # @!attribute score
    #   <p>The numerical representation of the finding's severity, ranging from 1 (least severe) to 3 (most severe).</p>
    #
    #   @return [Integer]
    #
    Severity = ::Struct.new(
      :description,
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.score ||= 0
      end
    end

    # Includes enum constants for SeverityDescription
    #
    module SeverityDescription
      # No documentation available.
      #
      Low = "Low"

      # No documentation available.
      #
      Medium = "Medium"

      # No documentation available.
      #
      High = "High"
    end

    # <p>Specifies a severity level for findings that a custom data identifier produces. A severity level determines which severity is assigned to the findings, based on the number of occurrences of text that matches the custom data identifier's detection criteria.</p>
    #
    # @!attribute occurrences_threshold
    #   <p>The minimum number of occurrences of text that must match the custom data identifier's detection criteria in order to produce a finding with the specified severity (severity).</p>
    #
    #   @return [Integer]
    #
    # @!attribute severity
    #   <p>The severity to assign to a finding: if the number of occurrences is greater than or equal to the specified threshold (occurrencesThreshold); and, if applicable, the number of occurrences is less than the threshold for the next consecutive severity level for the custom data identifier, moving from LOW to HIGH.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    SeverityLevel = ::Struct.new(
      :occurrences_threshold,
      :severity,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.occurrences_threshold ||= 0
      end
    end

    # Includes enum constants for SharedAccess
    #
    module SharedAccess
      # No documentation available.
      #
      EXTERNAL = "EXTERNAL"

      # No documentation available.
      #
      INTERNAL = "INTERNAL"

      # No documentation available.
      #
      NOT_SHARED = "NOT_SHARED"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # <p>Specifies a property-based condition that determines whether an S3 bucket is included or excluded from a classification job.</p>
    #
    # @!attribute comparator
    #   <p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>
    #
    #   Enum, one of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The property to use in the condition.</p>
    #
    #   Enum, one of: ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array that lists one or more values to use in the condition. If you specify multiple values, Amazon Macie uses OR logic to join the values. Valid values for each supported property (key) are:</p> <ul><li><p>ACCOUNT_ID - A string that represents the unique identifier for the Amazon Web Services account that owns the bucket.</p></li> <li><p>S3_BUCKET_EFFECTIVE_PERMISSION - A string that represents an enumerated value that Macie defines for the <a href="https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html datasources-s3-prop-bucketpublicaccess-effectivepermission">BucketPublicAccess.effectivePermission</a> property of a bucket.</p></li> <li><p>S3_BUCKET_NAME - A string that represents the name of a bucket.</p></li> <li><p>S3_BUCKET_SHARED_ACCESS - A string that represents an enumerated value that Macie defines for the <a href="https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html datasources-s3-prop-bucketmetadata-sharedaccess">BucketMetadata.sharedAccess</a> property of a bucket.</p></li></ul> <p>Values are case sensitive. Also, Macie doesn't support use of partial values or wildcard characters in these values.</p>
    #
    #   @return [Array<String>]
    #
    SimpleCriterionForJob = ::Struct.new(
      :comparator,
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SimpleCriterionKeyForJob
    #
    module SimpleCriterionKeyForJob
      # No documentation available.
      #
      ACCOUNT_ID = "ACCOUNT_ID"

      # No documentation available.
      #
      S3_BUCKET_NAME = "S3_BUCKET_NAME"

      # No documentation available.
      #
      S3_BUCKET_EFFECTIVE_PERMISSION = "S3_BUCKET_EFFECTIVE_PERMISSION"

      # No documentation available.
      #
      S3_BUCKET_SHARED_ACCESS = "S3_BUCKET_SHARED_ACCESS"
    end

    # <p>Specifies a property-based condition that determines whether an S3 object is included or excluded from a classification job.</p>
    #
    # @!attribute comparator
    #   <p>The operator to use in the condition. Valid values for each supported property (key) are:</p> <ul><li><p>OBJECT_EXTENSION - EQ (equals) or NE (not equals)</p></li> <li><p>OBJECT_KEY - STARTS_WITH</p></li> <li><p>OBJECT_LAST_MODIFIED_DATE - Any operator except CONTAINS</p></li> <li><p>OBJECT_SIZE - Any operator except CONTAINS</p></li></ul>
    #
    #   Enum, one of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The object property to use in the condition.</p>
    #
    #   Enum, one of: ["OBJECT_EXTENSION", "OBJECT_LAST_MODIFIED_DATE", "OBJECT_SIZE", "OBJECT_KEY"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array that lists the values to use in the condition. If the value for the key property is OBJECT_EXTENSION or OBJECT_KEY, this array can specify multiple values and Amazon Macie uses OR logic to join the values. Otherwise, this array can specify only one value.</p> <p>Valid values for each supported property (key) are:</p> <ul><li><p>OBJECT_EXTENSION - A string that represents the file name extension of an object. For example: docx or pdf</p></li> <li><p>OBJECT_KEY - A string that represents the key prefix (folder name or path) of an object. For example: logs or awslogs/eventlogs. This value applies a condition to objects whose keys (names) begin with the specified value.</p></li> <li><p>OBJECT_LAST_MODIFIED_DATE - The date and time (in UTC and extended ISO 8601 format) when an object was created or last changed, whichever is latest. For example: 2020-09-28T14:31:13Z</p></li> <li><p>OBJECT_SIZE - An integer that represents the storage size (in bytes) of an object.</p></li></ul> <p>Macie doesn't support use of wildcard characters in these values. Also, string values are case sensitive.</p>
    #
    #   @return [Array<String>]
    #
    SimpleScopeTerm = ::Struct.new(
      :comparator,
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies criteria for sorting the results of a request for findings.</p>
    #
    # @!attribute attribute_name
    #   <p>The name of the property to sort the results by. This value can be the name of any property that Amazon Macie defines for a finding.</p>
    #
    #   @return [String]
    #
    # @!attribute order_by
    #   <p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    SortCriteria = ::Struct.new(
      :attribute_name,
      :order_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides processing statistics for a classification job.</p>
    #
    # @!attribute approximate_number_of_objects_to_process
    #   <p>The approximate number of objects that the job has yet to process during its current run.</p>
    #
    #   @return [Float]
    #
    # @!attribute number_of_runs
    #   <p>The number of times that the job has run.</p>
    #
    #   @return [Float]
    #
    Statistics = ::Struct.new(
      :approximate_number_of_objects_to_process,
      :number_of_runs,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.approximate_number_of_objects_to_process ||= 0
        self.number_of_runs ||= 0
      end
    end

    # Includes enum constants for StorageClass
    #
    module StorageClass
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY"

      # No documentation available.
      #
      STANDARD_IA = "STANDARD_IA"

      # No documentation available.
      #
      INTELLIGENT_TIERING = "INTELLIGENT_TIERING"

      # No documentation available.
      #
      DEEP_ARCHIVE = "DEEP_ARCHIVE"

      # No documentation available.
      #
      ONEZONE_IA = "ONEZONE_IA"

      # No documentation available.
      #
      GLACIER = "GLACIER"
    end

    # <p>Specifies a tag-based condition that determines whether an S3 bucket is included or excluded from a classification job.</p>
    #
    # @!attribute comparator
    #   <p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>
    #
    #   Enum, one of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>The tag keys, tag values, or tag key and value pairs to use in the condition.</p>
    #
    #   @return [Array<TagCriterionPairForJob>]
    #
    TagCriterionForJob = ::Struct.new(
      :comparator,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a tag key, a tag value, or a tag key and value (as a pair) to use in a tag-based condition that determines whether an S3 bucket is included or excluded from a classification job. Tag keys and values are case sensitive. Also, Amazon Macie doesn't support use of partial values or wildcard characters in tag-based conditions.</p>
    #
    # @!attribute key
    #   <p>The value for the tag key to use in the condition.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value to use in the condition.</p>
    #
    #   @return [String]
    #
    TagCriterionPairForJob = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the resource.</p> <p>A resource can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
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

    # <p>Specifies a tag-based condition that determines whether an S3 object is included or excluded from a classification job.</p>
    #
    # @!attribute comparator
    #   <p>The operator to use in the condition. Valid values are EQ (equals) or NE (not equals).</p>
    #
    #   Enum, one of: ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The object property to use in the condition. The only valid value is TAG.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>The tag keys or tag key and value pairs to use in the condition. To specify only tag keys in a condition, specify the keys in this array and set the value for each associated tag value to an empty string.</p>
    #
    #   @return [Array<TagValuePair>]
    #
    # @!attribute target
    #   <p>The type of object to apply the condition to.</p>
    #
    #   Enum, one of: ["S3_OBJECT"]
    #
    #   @return [String]
    #
    TagScopeTerm = ::Struct.new(
      :comparator,
      :key,
      :tag_values,
      :target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TagTarget
    #
    module TagTarget
      # No documentation available.
      #
      S3_OBJECT = "S3_OBJECT"
    end

    # <p>Specifies a tag key or tag key and value pair to use in a tag-based condition that determines whether an S3 object is included or excluded from a classification job. Tag keys and values are case sensitive. Also, Amazon Macie doesn't support use of partial values or wildcard characters in tag-based conditions.</p>
    #
    # @!attribute key
    #   <p>The value for the tag key to use in the condition.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value, associated with the specified tag key (key), to use in the condition. To specify only a tag key for a condition, specify the tag key for the key property and set this value to an empty string.</p>
    #
    #   @return [String]
    #
    TagValuePair = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ignore_words
    #   <p>An array that lists specific character sequences (<i>ignore words</i>) to exclude from the results. If the text matched by the regular expression contains any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4-90 UTF-8 characters. Ignore words are case sensitive.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute keywords
    #   <p>An array that lists specific character sequences (<i>keywords</i>), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3-90 UTF-8 characters. Keywords aren't case sensitive.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute maximum_match_distance
    #   <p>The maximum number of characters that can exist between text that matches the regular expression and the character sequences specified by the keywords array. Amazon Macie includes or excludes a result based on the proximity of a keyword to text that matches the regular expression. The distance can be 1-300 characters. The default value is 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute regex
    #   <p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_text
    #   <p>The sample text to inspect by using the custom data identifier. The text can contain as many as 1,000 characters.</p>
    #
    #   @return [String]
    #
    TestCustomDataIdentifierInput = ::Struct.new(
      :ignore_words,
      :keywords,
      :maximum_match_distance,
      :regex,
      :sample_text,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.maximum_match_distance ||= 0
      end
    end

    # @!attribute match_count
    #   <p>The number of occurrences of sample text that matched the criteria specified by the custom data identifier.</p>
    #
    #   @return [Integer]
    #
    TestCustomDataIdentifierOutput = ::Struct.new(
      :match_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.match_count ||= 0
      end
    end

    # <p>Provides information about an error that occurred because too many requests were sent during a certain amount of time.</p>
    #
    # @!attribute message
    #   <p>The explanation of the error that occurred.</p>
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TimeRange
    #
    module TimeRange
      # No documentation available.
      #
      MONTH_TO_DATE = "MONTH_TO_DATE"

      # No documentation available.
      #
      PAST_30_DAYS = "PAST_30_DAYS"
    end

    # Includes enum constants for Type
    #
    module Type
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      AES256 = "AES256"

      # No documentation available.
      #
      aws_kms = "aws:kms"
    end

    # Includes enum constants for Unit
    #
    module Unit
      # No documentation available.
      #
      TERABYTES = "TERABYTES"
    end

    # <p>Provides information about an account-related request that hasn't been processed.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the account that the request applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The source of the issue or delay in processing the request.</p>
    #
    #   Enum, one of: ["ClientError", "InternalError"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The reason why the request hasn't been processed.</p>
    #
    #   @return [String]
    #
    UnprocessedAccount = ::Struct.new(
      :account_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>One or more tags (keys) to remove from the resource. In an HTTP request to remove multiple tags, append the tagKeys parameter and argument for each tag to remove, and separate them with an ampersand (&amp;).</p>
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

    # @!attribute job_id
    #   <p>The unique identifier for the classification job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The new status for the job. Valid values are:</p> <ul><li><p>CANCELLED - Stops the job permanently and cancels it. This value is valid only if the job's current status is IDLE, PAUSED, RUNNING, or USER_PAUSED.</p> <p>If you specify this value and the job's current status is RUNNING, Amazon Macie immediately begins to stop all processing tasks for the job. You can't resume or restart a job after you cancel it.</p></li> <li><p>RUNNING - Resumes the job. This value is valid only if the job's current status is USER_PAUSED.</p> <p>If you paused the job while it was actively running and you specify this value less than 30 days after you paused the job, Macie immediately resumes processing from the point where you paused the job. Otherwise, Macie resumes the job according to the schedule and other settings for the job.</p></li> <li><p>USER_PAUSED - Pauses the job temporarily. This value is valid only if the job's current status is IDLE, PAUSED, or RUNNING. If you specify this value and the job's current status is RUNNING, Macie immediately begins to pause all processing tasks for the job.</p> <p>If you pause a one-time job and you don't resume it within 30 days, the job expires and Macie cancels the job. If you pause a recurring job when its status is RUNNING and you don't resume it within 30 days, the job run expires and Macie cancels the run. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>
    #
    #   Enum, one of: ["RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"]
    #
    #   @return [String]
    #
    UpdateClassificationJobInput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateClassificationJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #   <p>The action to perform on findings that meet the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>
    #
    #   Enum, one of: ["ARCHIVE", "NOOP"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_criteria
    #   <p>The criteria to use to filter findings.</p>
    #
    #   @return [FindingCriteria]
    #
    # @!attribute id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    #   @return [String]
    #
    # @!attribute position
    #   <p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    UpdateFindingsFilterInput = ::Struct.new(
      :action,
      :description,
      :finding_criteria,
      :id,
      :name,
      :position,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.position ||= 0
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the filter that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the filter that was updated.</p>
    #
    #   @return [String]
    #
    UpdateFindingsFilterOutput = ::Struct.new(
      :arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute finding_publishing_frequency
    #   <p>Specifies how often to publish updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events).</p>
    #
    #   Enum, one of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies a new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>
    #
    #   Enum, one of: ["PAUSED", "ENABLED"]
    #
    #   @return [String]
    #
    UpdateMacieSessionInput = ::Struct.new(
      :finding_publishing_frequency,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateMacieSessionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies the new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>
    #
    #   Enum, one of: ["PAUSED", "ENABLED"]
    #
    #   @return [String]
    #
    UpdateMemberSessionInput = ::Struct.new(
      :id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateMemberSessionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_enable
    #   <p>Specifies whether to enable Amazon Macie automatically for an account when the account is added to the organization in Organizations.</p>
    #
    #   @return [Boolean]
    #
    UpdateOrganizationConfigurationInput = ::Struct.new(
      :auto_enable,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_enable ||= false
      end
    end

    UpdateOrganizationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides data for a specific usage metric and the corresponding quota for an Amazon Macie account.</p>
    #
    # @!attribute currency
    #   <p>The type of currency that the value for the metric (estimatedCost) is reported in.</p>
    #
    #   Enum, one of: ["USD"]
    #
    #   @return [String]
    #
    # @!attribute estimated_cost
    #   <p>The estimated value for the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute service_limit
    #   <p>The current value for the quota that corresponds to the metric specified by the type field.</p>
    #
    #   @return [ServiceLimit]
    #
    # @!attribute type
    #   <p>The name of the metric. Possible values are: DATA_INVENTORY_EVALUATION, for monitoring S3 buckets; and, SENSITIVE_DATA_DISCOVERY, for analyzing S3 objects to detect sensitive data.</p>
    #
    #   Enum, one of: ["DATA_INVENTORY_EVALUATION", "SENSITIVE_DATA_DISCOVERY"]
    #
    #   @return [String]
    #
    UsageByAccount = ::Struct.new(
      :currency,
      :estimated_cost,
      :service_limit,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides quota and aggregated usage data for an Amazon Macie account.</p>
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account that the data applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute free_trial_start_date
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the free trial started for the account.</p>
    #
    #   @return [Time]
    #
    # @!attribute usage
    #   <p>An array of objects that contains usage data and quotas for the account. Each object contains the data for a specific usage metric and the corresponding quota.</p>
    #
    #   @return [Array<UsageByAccount>]
    #
    UsageRecord = ::Struct.new(
      :account_id,
      :free_trial_start_date,
      :usage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a condition for filtering the results of a query for quota and usage data for one or more Amazon Macie accounts.</p>
    #
    # @!attribute comparator
    #   <p>The operator to use in the condition. If the value for the key property is accountId, this value must be CONTAINS. If the value for the key property is any other supported field, this value can be EQ, GT, GTE, LT, LTE, or NE.</p>
    #
    #   Enum, one of: ["GT", "GTE", "LT", "LTE", "EQ", "NE", "CONTAINS"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The field to use in the condition.</p>
    #
    #   Enum, one of: ["accountId", "serviceLimit", "freeTrialStartDate", "total"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array that lists values to use in the condition, based on the value for the field specified by the key property. If the value for the key property is accountId, this array can specify multiple values. Otherwise, this array can specify only one value.</p> <p>Valid values for each supported field are:</p> <ul><li><p>accountId - The unique identifier for an Amazon Web Services account.</p></li> <li><p>freeTrialStartDate - The date and time, in UTC and extended ISO 8601 format, when the free trial started for an account.</p></li> <li><p>serviceLimit - A Boolean (true or false) value that indicates whether an account has reached its monthly quota.</p></li> <li><p>total - A string that represents the current estimated cost for an account.</p></li></ul>
    #
    #   @return [Array<String>]
    #
    UsageStatisticsFilter = ::Struct.new(
      :comparator,
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UsageStatisticsFilterComparator
    #
    module UsageStatisticsFilterComparator
      # No documentation available.
      #
      GT = "GT"

      # No documentation available.
      #
      GTE = "GTE"

      # No documentation available.
      #
      LT = "LT"

      # No documentation available.
      #
      LTE = "LTE"

      # No documentation available.
      #
      EQ = "EQ"

      # No documentation available.
      #
      NE = "NE"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"
    end

    # Includes enum constants for UsageStatisticsFilterKey
    #
    module UsageStatisticsFilterKey
      # No documentation available.
      #
      accountId = "accountId"

      # No documentation available.
      #
      serviceLimit = "serviceLimit"

      # No documentation available.
      #
      freeTrialStartDate = "freeTrialStartDate"

      # No documentation available.
      #
      total = "total"
    end

    # <p>Specifies criteria for sorting the results of a query for Amazon Macie account quotas and usage data.</p>
    #
    # @!attribute key
    #   <p>The field to sort the results by.</p>
    #
    #   Enum, one of: ["accountId", "total", "serviceLimitValue", "freeTrialStartDate"]
    #
    #   @return [String]
    #
    # @!attribute order_by
    #   <p>The sort order to apply to the results, based on the value for the field specified by the key property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    UsageStatisticsSortBy = ::Struct.new(
      :key,
      :order_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UsageStatisticsSortKey
    #
    module UsageStatisticsSortKey
      # No documentation available.
      #
      accountId = "accountId"

      # No documentation available.
      #
      total = "total"

      # No documentation available.
      #
      serviceLimitValue = "serviceLimitValue"

      # No documentation available.
      #
      freeTrialStartDate = "freeTrialStartDate"
    end

    # <p>Provides aggregated data for an Amazon Macie usage metric. The value for the metric reports estimated usage data for an account for the preceding 30 days or the current calendar month to date, depending on the time period (timeRange) specified in the request.</p>
    #
    # @!attribute currency
    #   <p>The type of currency that the value for the metric (estimatedCost) is reported in.</p>
    #
    #   Enum, one of: ["USD"]
    #
    #   @return [String]
    #
    # @!attribute estimated_cost
    #   <p>The estimated value for the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The name of the metric. Possible values are: DATA_INVENTORY_EVALUATION, for monitoring S3 buckets; and, SENSITIVE_DATA_DISCOVERY, for analyzing S3 objects to detect sensitive data.</p>
    #
    #   Enum, one of: ["DATA_INVENTORY_EVALUATION", "SENSITIVE_DATA_DISCOVERY"]
    #
    #   @return [String]
    #
    UsageTotal = ::Struct.new(
      :currency,
      :estimated_cost,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UsageType
    #
    module UsageType
      # No documentation available.
      #
      DATA_INVENTORY_EVALUATION = "DATA_INVENTORY_EVALUATION"

      # No documentation available.
      #
      SENSITIVE_DATA_DISCOVERY = "SENSITIVE_DATA_DISCOVERY"
    end

    # <p>Provides information about the type and other characteristics of an entity that performed an action on an affected resource.</p>
    #
    # @!attribute assumed_role
    #   <p>If the action was performed with temporary security credentials that were obtained using the AssumeRole operation of the Security Token Service (STS) API, the identifiers, session context, and other details about the identity.</p>
    #
    #   @return [AssumedRole]
    #
    # @!attribute aws_account
    #   <p>If the action was performed using the credentials for another Amazon Web Services account, the details of that account.</p>
    #
    #   @return [AwsAccount]
    #
    # @!attribute aws_service
    #   <p>If the action was performed by an Amazon Web Services account that belongs to an Amazon Web Service, the name of the service.</p>
    #
    #   @return [AwsService]
    #
    # @!attribute federated_user
    #   <p>If the action was performed with temporary security credentials that were obtained using the GetFederationToken operation of the Security Token Service (STS) API, the identifiers, session context, and other details about the identity.</p>
    #
    #   @return [FederatedUser]
    #
    # @!attribute iam_user
    #   <p>If the action was performed using the credentials for an Identity and Access Management (IAM) user, the name and other details about the user.</p>
    #
    #   @return [IamUser]
    #
    # @!attribute root
    #   <p>If the action was performed using the credentials for your Amazon Web Services account, the details of your account.</p>
    #
    #   @return [UserIdentityRoot]
    #
    # @!attribute type
    #   <p>The type of entity that performed the action.</p>
    #
    #   Enum, one of: ["AssumedRole", "IAMUser", "FederatedUser", "Root", "AWSAccount", "AWSService"]
    #
    #   @return [String]
    #
    UserIdentity = ::Struct.new(
      :assumed_role,
      :aws_account,
      :aws_service,
      :federated_user,
      :iam_user,
      :root,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an Amazon Web Services account and entity that performed an action on an affected resource. The action was performed using the credentials for your Amazon Web Services account.</p>
    #
    # @!attribute account_id
    #   <p>The unique identifier for the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the principal that performed the action. The last section of the ARN contains the name of the user or role that performed the action.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The unique identifier for the entity that performed the action.</p>
    #
    #   @return [String]
    #
    UserIdentityRoot = ::Struct.new(
      :account_id,
      :arn,
      :principal_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserIdentityType
    #
    module UserIdentityType
      # No documentation available.
      #
      AssumedRole = "AssumedRole"

      # No documentation available.
      #
      IAMUser = "IAMUser"

      # No documentation available.
      #
      FederatedUser = "FederatedUser"

      # No documentation available.
      #
      Root = "Root"

      # No documentation available.
      #
      AWSAccount = "AWSAccount"

      # No documentation available.
      #
      AWSService = "AWSService"
    end

    # <p>Provides information about when a classification job was paused. For a one-time job, this object also specifies when the job will expire and be cancelled if it isn't resumed. For a recurring job, this object also specifies when the paused job run will expire and be cancelled if it isn't resumed. This object is present only if a job's current status (jobStatus) is USER_PAUSED. The information in this object applies only to a job that was paused while it had a status of RUNNING.</p>
    #
    # @!attribute job_expires_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when the job or job run will expire and be cancelled if you don't resume it first.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_imminent_expiration_health_event_arn
    #   <p>The Amazon Resource Name (ARN) of the Health event that Amazon Macie sent to notify you of the job or job run's pending expiration and cancellation. This value is null if a job has been paused for less than 23 days.</p>
    #
    #   @return [String]
    #
    # @!attribute job_paused_at
    #   <p>The date and time, in UTC and extended ISO 8601 format, when you paused the job.</p>
    #
    #   @return [Time]
    #
    UserPausedDetails = ::Struct.new(
      :job_expires_at,
      :job_imminent_expiration_health_event_arn,
      :job_paused_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an error that occurred due to a syntax error in a request.</p>
    #
    # @!attribute message
    #   <p>The explanation of the error that occurred.</p>
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a weekly recurrence pattern for running a classification job.</p>
    #
    # @!attribute day_of_week
    #   <p>The day of the week when Amazon Macie runs the job.</p>
    #
    #   Enum, one of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #
    #   @return [String]
    #
    WeeklySchedule = ::Struct.new(
      :day_of_week,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
