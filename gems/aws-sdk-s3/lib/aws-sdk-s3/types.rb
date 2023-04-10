# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  module Types

    # <p>Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will
    #          wait before permanently removing all parts of the upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config">
    #             Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute days_after_initiation
    #   <p>Specifies the number of days after which Amazon S3 aborts an incomplete multipart
    #            upload.</p>
    #
    #   @return [Integer]
    #
    AbortIncompleteMultipartUpload = ::Struct.new(
      :days_after_initiation,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.days_after_initiation ||= 0
      end
    end

    # @!attribute bucket
    #   <p>The bucket name to which the upload was taking place. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Key of the object for which the multipart upload was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id
    #   <p>Upload ID that identifies the multipart upload.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    AbortMultipartUploadInput = ::Struct.new(
      :bucket,
      :key,
      :upload_id,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    AbortMultipartUploadOutput = ::Struct.new(
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html">Amazon S3
    #             Transfer Acceleration</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute status
    #   <p>Specifies the transfer acceleration status of the bucket.</p>
    #
    #   Enum, one of: ["Enabled", "Suspended"]
    #
    #   @return [String]
    #
    AccelerateConfiguration = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    #
    # @!attribute grants
    #   <p>A list of grants.</p>
    #
    #   @return [Array<Grant>]
    #
    # @!attribute owner
    #   <p>Container for the bucket owner's display name and ID.</p>
    #
    #   @return [Owner]
    #
    AccessControlPolicy = ::Struct.new(
      :grants,
      :owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for information about access control for replicas.</p>
    #
    # @!attribute owner
    #   <p>Specifies the replica ownership. For default and valid values, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html">PUT bucket
    #               replication</a> in the <i>Amazon S3 API Reference</i>.</p>
    #
    #   Enum, one of: ["Destination"]
    #
    #   @return [String]
    #
    AccessControlTranslation = ::Struct.new(
      :owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
    #          The operator must have at least two predicates in any combination, and an object must match
    #          all of the predicates for the filter to apply.</p>
    #
    # @!attribute prefix
    #   <p>The prefix to use when evaluating an AND predicate: The prefix that an object must have
    #            to be included in the metrics results.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags to use when evaluating an AND predicate.</p>
    #
    #   @return [Array<Tag>]
    #
    AnalyticsAndOperator = ::Struct.new(
      :prefix,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration and any analyses for the analytics filter of an Amazon S3
    #          bucket.</p>
    #
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>The filter used to describe a set of objects for analyses. A filter must have exactly
    #            one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided,
    #            all objects will be considered in any analysis.</p>
    #
    #   @return [AnalyticsFilter]
    #
    # @!attribute storage_class_analysis
    #   <p> Contains data related to access patterns to be collected and made available to analyze
    #            the tradeoffs between different storage classes. </p>
    #
    #   @return [StorageClassAnalysis]
    #
    AnalyticsConfiguration = ::Struct.new(
      :id,
      :filter,
      :storage_class_analysis,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Where to publish the analytics results.</p>
    #
    # @!attribute s3_bucket_destination
    #   <p>A destination signifying output to an S3 bucket.</p>
    #
    #   @return [AnalyticsS3BucketDestination]
    #
    AnalyticsExportDestination = ::Struct.new(
      :s3_bucket_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter used to describe a set of objects for analyses. A filter must have exactly
    #          one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided,
    #          all objects will be considered in any analysis.</p>
    #
    class AnalyticsFilter < Hearth::Union
      # <p>The prefix to use when evaluating an analytics filter.</p>
      #
      class Prefix < AnalyticsFilter
        def to_h
          { prefix: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Prefix #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The tag to use when evaluating an analytics filter.</p>
      #
      class Tag < AnalyticsFilter
        def to_h
          { tag: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Tag #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A conjunction (logical AND) of predicates, which is used in evaluating an analytics
      #          filter. The operator must have at least two predicates.</p>
      #
      class And < AnalyticsFilter
        def to_h
          { and: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::And #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < AnalyticsFilter
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Contains information about where to publish the analytics results.</p>
    #
    # @!attribute format
    #   <p>Specifies the file format used when exporting data to Amazon S3.</p>
    #
    #   Enum, one of: ["CSV"]
    #
    #   @return [String]
    #
    # @!attribute bucket_account_id
    #   <p>The account ID that owns the destination S3 bucket. If no account ID is provided, the
    #            owner is not validated before exporting data.</p>
    #            <note>
    #               <p> Although this value is optional, we strongly recommend that you set it to help
    #               prevent problems if the destination bucket ownership changes. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket to which data is exported.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The prefix to use when exporting data. The prefix is prepended to all results.</p>
    #
    #   @return [String]
    #
    AnalyticsS3BucketDestination = ::Struct.new(
      :format,
      :bucket_account_id,
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AnalyticsS3ExportFileFormat
    #
    module AnalyticsS3ExportFileFormat
      # No documentation available.
      #
      CSV = "CSV"
    end

    # Includes enum constants for ArchiveStatus
    #
    module ArchiveStatus
      # No documentation available.
      #
      ARCHIVE_ACCESS = "ARCHIVE_ACCESS"

      # No documentation available.
      #
      DEEP_ARCHIVE_ACCESS = "DEEP_ARCHIVE_ACCESS"
    end

    # <p> In terms of implementation, a Bucket is a resource. An Amazon S3 bucket name is globally
    #          unique, and the namespace is shared by all Amazon Web Services accounts. </p>
    #
    # @!attribute name
    #   <p>The name of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>Date the bucket was created. This date can change when making changes to your bucket,
    #            such as editing its bucket policy.</p>
    #
    #   @return [Time]
    #
    Bucket = ::Struct.new(
      :name,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BucketAccelerateStatus
    #
    module BucketAccelerateStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Suspended = "Suspended"
    end

    # <p>The requested bucket name is not available. The bucket namespace is shared by all users
    #          of the system. Select a different name and try again.</p>
    #
    BucketAlreadyExists = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The bucket you tried to create already exists, and you own it. Amazon S3 returns this error
    #          in all Amazon Web Services Regions except in the North Virginia Region. For legacy compatibility, if you
    #          re-create an existing bucket that you already own in the North Virginia Region, Amazon S3
    #          returns 200 OK and resets the bucket access control lists (ACLs).</p>
    #
    BucketAlreadyOwnedByYou = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BucketCannedACL
    #
    module BucketCannedACL
      # No documentation available.
      #
      private = "private"

      # No documentation available.
      #
      public_read = "public-read"

      # No documentation available.
      #
      public_read_write = "public-read-write"

      # No documentation available.
      #
      authenticated_read = "authenticated-read"
    end

    # <p>Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object Lifecycle Management</a>
    #          in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute rules
    #   <p>A lifecycle rule for individual objects in an Amazon S3 bucket.</p>
    #
    #   @return [Array<LifecycleRule>]
    #
    BucketLifecycleConfiguration = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BucketLocationConstraint
    #
    module BucketLocationConstraint
      # No documentation available.
      #
      af_south_1 = "af-south-1"

      # No documentation available.
      #
      ap_east_1 = "ap-east-1"

      # No documentation available.
      #
      ap_northeast_1 = "ap-northeast-1"

      # No documentation available.
      #
      ap_northeast_2 = "ap-northeast-2"

      # No documentation available.
      #
      ap_northeast_3 = "ap-northeast-3"

      # No documentation available.
      #
      ap_south_1 = "ap-south-1"

      # No documentation available.
      #
      ap_southeast_1 = "ap-southeast-1"

      # No documentation available.
      #
      ap_southeast_2 = "ap-southeast-2"

      # No documentation available.
      #
      ap_southeast_3 = "ap-southeast-3"

      # No documentation available.
      #
      ca_central_1 = "ca-central-1"

      # No documentation available.
      #
      cn_north_1 = "cn-north-1"

      # No documentation available.
      #
      cn_northwest_1 = "cn-northwest-1"

      # No documentation available.
      #
      EU = "EU"

      # No documentation available.
      #
      eu_central_1 = "eu-central-1"

      # No documentation available.
      #
      eu_north_1 = "eu-north-1"

      # No documentation available.
      #
      eu_south_1 = "eu-south-1"

      # No documentation available.
      #
      eu_west_1 = "eu-west-1"

      # No documentation available.
      #
      eu_west_2 = "eu-west-2"

      # No documentation available.
      #
      eu_west_3 = "eu-west-3"

      # No documentation available.
      #
      me_south_1 = "me-south-1"

      # No documentation available.
      #
      sa_east_1 = "sa-east-1"

      # No documentation available.
      #
      us_east_2 = "us-east-2"

      # No documentation available.
      #
      us_gov_east_1 = "us-gov-east-1"

      # No documentation available.
      #
      us_gov_west_1 = "us-gov-west-1"

      # No documentation available.
      #
      us_west_1 = "us-west-1"

      # No documentation available.
      #
      us_west_2 = "us-west-2"
    end

    # <p>Container for logging status information.</p>
    #
    # @!attribute logging_enabled
    #   <p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys
    #            for a bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html">PUT Bucket logging</a> in the
    #               <i>Amazon S3 API Reference</i>.</p>
    #
    #   @return [LoggingEnabled]
    #
    BucketLoggingStatus = ::Struct.new(
      :logging_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BucketLogsPermission
    #
    module BucketLogsPermission
      # No documentation available.
      #
      FULL_CONTROL = "FULL_CONTROL"

      # No documentation available.
      #
      READ = "READ"

      # No documentation available.
      #
      WRITE = "WRITE"
    end

    # Includes enum constants for BucketVersioningStatus
    #
    module BucketVersioningStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Suspended = "Suspended"
    end

    # <p>Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling
    #             Cross-Origin Resource Sharing</a> in the
    #          <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute cors_rules
    #   <p>A set of origins and methods (cross-origin access that you want to allow). You can add
    #            up to 100 rules to the configuration.</p>
    #
    #   @return [Array<CORSRule>]
    #
    CORSConfiguration = ::Struct.new(
      :cors_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a cross-origin access rule for an Amazon S3 bucket.</p>
    #
    # @!attribute id
    #   <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_headers
    #   <p>Headers that are specified in the <code>Access-Control-Request-Headers</code> header.
    #            These headers are allowed in a preflight OPTIONS request. In response to any preflight
    #            OPTIONS request, Amazon S3 returns any requested headers that are allowed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_methods
    #   <p>An HTTP method that you allow the origin to execute. Valid values are <code>GET</code>,
    #               <code>PUT</code>, <code>HEAD</code>, <code>POST</code>, and <code>DELETE</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_origins
    #   <p>One or more origins you want customers to be able to access the bucket from.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute expose_headers
    #   <p>One or more headers in the response that you want customers to be able to access from
    #            their applications (for example, from a JavaScript <code>XMLHttpRequest</code>
    #            object).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_age_seconds
    #   <p>The time in seconds that your browser is to cache the preflight response for the
    #            specified resource.</p>
    #
    #   @return [Integer]
    #
    CORSRule = ::Struct.new(
      :id,
      :allowed_headers,
      :allowed_methods,
      :allowed_origins,
      :expose_headers,
      :max_age_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_age_seconds ||= 0
      end
    end

    # <p>Describes how an uncompressed comma-separated values (CSV)-formatted input object is
    #          formatted.</p>
    #
    # @!attribute file_header_info
    #   <p>Describes the first line of input. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: First line is not a header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IGNORE</code>: First line is a header, but you can't use the header values
    #                  to indicate the column in an expression. You can use column position (such as _1, _2,
    #                  …) to indicate the column (<code>SELECT s._1 FROM OBJECT s</code>).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Use</code>: First line is a header, and you can use the header value to
    #                  identify a column in an expression (<code>SELECT "name" FROM OBJECT</code>). </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["USE", "IGNORE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute comments
    #   <p>A single character used to indicate that a row should be ignored when the character is
    #            present at the start of that row. You can specify any character to indicate a comment line.
    #            The default character is <code> </code>.</p>
    #            <p>Default: <code> </code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute quote_escape_character
    #   <p>A single character used for escaping the quotation mark character inside an already
    #            escaped value. For example, the value <code>""" a , b """</code> is parsed as <code>" a , b
    #               "</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute record_delimiter
    #   <p>A single character used to separate individual records in the input. Instead of the
    #            default value, you can specify an arbitrary delimiter.</p>
    #
    #   @return [String]
    #
    # @!attribute field_delimiter
    #   <p>A single character used to separate individual fields in a record. You can specify an
    #            arbitrary delimiter.</p>
    #
    #   @return [String]
    #
    # @!attribute quote_character
    #   <p>A single character used for escaping when the field delimiter is part of the value. For
    #            example, if the value is <code>a, b</code>, Amazon S3 wraps this field value in quotation marks,
    #            as follows: <code>" a , b "</code>.</p>
    #            <p>Type: String</p>
    #            <p>Default: <code>"</code>
    #            </p>
    #            <p>Ancestors: <code>CSV</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute allow_quoted_record_delimiter
    #   <p>Specifies that CSV field values may contain quoted record delimiters and such records
    #            should be allowed. Default value is FALSE. Setting this value to TRUE may lower
    #            performance.</p>
    #
    #   @return [Boolean]
    #
    CSVInput = ::Struct.new(
      :file_header_info,
      :comments,
      :quote_escape_character,
      :record_delimiter,
      :field_delimiter,
      :quote_character,
      :allow_quoted_record_delimiter,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_quoted_record_delimiter ||= false
      end
    end

    # <p>Describes how uncompressed comma-separated values (CSV)-formatted results are
    #          formatted.</p>
    #
    # @!attribute quote_fields
    #   <p>Indicates whether to use quotation marks around output fields. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALWAYS</code>: Always use quotation marks for output fields.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASNEEDED</code>: Use quotation marks for output fields when needed.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ALWAYS", "ASNEEDED"]
    #
    #   @return [String]
    #
    # @!attribute quote_escape_character
    #   <p>The single character used for escaping the quote character inside an already escaped
    #            value.</p>
    #
    #   @return [String]
    #
    # @!attribute record_delimiter
    #   <p>A single character used to separate individual records in the output. Instead of the
    #            default value, you can specify an arbitrary delimiter.</p>
    #
    #   @return [String]
    #
    # @!attribute field_delimiter
    #   <p>The value used to separate individual fields in a record. You can specify an arbitrary
    #            delimiter.</p>
    #
    #   @return [String]
    #
    # @!attribute quote_character
    #   <p>A single character used for escaping when the field delimiter is part of the value. For
    #            example, if the value is <code>a, b</code>, Amazon S3 wraps this field value in quotation marks,
    #            as follows: <code>" a , b "</code>.</p>
    #
    #   @return [String]
    #
    CSVOutput = ::Struct.new(
      :quote_fields,
      :quote_escape_character,
      :record_delimiter,
      :field_delimiter,
      :quote_character,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains all the possible checksum or digest values for an object.</p>
    #
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    Checksum = ::Struct.new(
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChecksumAlgorithm
    #
    module ChecksumAlgorithm
      # No documentation available.
      #
      CRC32 = "CRC32"

      # No documentation available.
      #
      CRC32C = "CRC32C"

      # No documentation available.
      #
      SHA1 = "SHA1"

      # No documentation available.
      #
      SHA256 = "SHA256"
    end

    # Includes enum constants for ChecksumMode
    #
    module ChecksumMode
      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # <p>Container for all (if there are any) keys between Prefix and the next occurrence of the
    #          string specified by a delimiter. CommonPrefixes lists keys that act like subdirectories in
    #          the directory specified by Prefix. For example, if the prefix is notes/ and the delimiter
    #          is a slash (/) as in notes/summer/july, the common prefix is notes/summer/. </p>
    #
    # @!attribute prefix
    #   <p>Container for the specified common prefix.</p>
    #
    #   @return [String]
    #
    CommonPrefix = ::Struct.new(
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>Name of the bucket to which the multipart upload was initiated.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute multipart_upload
    #   <p>The container for the multipart upload request information.</p>
    #
    #   @return [CompletedMultipartUpload]
    #
    # @!attribute upload_id
    #   <p>ID for the initiated multipart upload.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created
    #       using a checksum algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    CompleteMultipartUploadInput = ::Struct.new(
      :bucket,
      :key,
      :multipart_upload,
      :upload_id,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      :request_payer,
      :expected_bucket_owner,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::S3::Types::CompleteMultipartUploadInput "\
          "bucket=#{bucket || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "multipart_upload=#{multipart_upload || 'nil'}, "\
          "upload_id=#{upload_id || 'nil'}, "\
          "checksum_crc32=#{checksum_crc32 || 'nil'}, "\
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, "\
          "checksum_sha1=#{checksum_sha1 || 'nil'}, "\
          "checksum_sha256=#{checksum_sha256 || 'nil'}, "\
          "request_payer=#{request_payer || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}>"
      end
    end

    # @!attribute location
    #   <p>The URI that identifies the newly created object.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket that contains the newly created object. Does not return the access point
    #            ARN or access point alias if used.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The object key of the newly created object.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>If the object expiration is configured, this will contain the expiration date
    #               (<code>expiry-date</code>) and rule ID (<code>rule-id</code>). The value of
    #               <code>rule-id</code> is URL-encoded.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>Entity tag that identifies the newly created object's data. Objects with different
    #            object data will have different entity tags. The entity tag is an opaque string. The entity
    #            tag may or may not be an MD5 digest of the object data. If the entity tag is not an MD5
    #            digest of the object data, it will contain one or more nonhexadecimal characters and/or
    #            will consist of less than 32 or more than 32 hexadecimal digits. For more information about
    #            how the entity tag is calculated, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>Version ID of the newly created object, in case the bucket has versioning turned
    #            on.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption
    #            with Amazon Web Services KMS (SSE-KMS).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    CompleteMultipartUploadOutput = ::Struct.new(
      :location,
      :bucket,
      :key,
      :expiration,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      :server_side_encryption,
      :version_id,
      :ssekms_key_id,
      :bucket_key_enabled,
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bucket_key_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::CompleteMultipartUploadOutput "\
          "location=#{location || 'nil'}, "\
          "bucket=#{bucket || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "expiration=#{expiration || 'nil'}, "\
          "e_tag=#{e_tag || 'nil'}, "\
          "checksum_crc32=#{checksum_crc32 || 'nil'}, "\
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, "\
          "checksum_sha1=#{checksum_sha1 || 'nil'}, "\
          "checksum_sha256=#{checksum_sha256 || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "request_charged=#{request_charged || 'nil'}>"
      end
    end

    # <p>The container for the completed multipart upload details.</p>
    #
    # @!attribute parts
    #   <p>Array of CompletedPart data types.</p>
    #            <p>If you do not supply a valid <code>Part</code> with your request, the service sends back
    #            an HTTP 400 response.</p>
    #
    #   @return [Array<CompletedPart>]
    #
    CompletedMultipartUpload = ::Struct.new(
      :parts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the parts that were uploaded.</p>
    #
    # @!attribute e_tag
    #   <p>Entity tag returned when the part was uploaded.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute part_number
    #   <p>Part number that identifies the part. This is a positive integer between 1 and
    #            10,000.</p>
    #
    #   @return [Integer]
    #
    CompletedPart = ::Struct.new(
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      :part_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.part_number ||= 0
      end
    end

    # Includes enum constants for CompressionType
    #
    module CompressionType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      GZIP = "GZIP"

      # No documentation available.
      #
      BZIP2 = "BZIP2"
    end

    # <p>A container for describing a condition that must be met for the specified redirect to
    #          apply. For example, 1. If request is for pages in the <code>/docs</code> folder, redirect
    #          to the <code>/documents</code> folder. 2. If request results in HTTP error 4xx, redirect
    #          request to another host where you might process the error.</p>
    #
    # @!attribute http_error_code_returned_equals
    #   <p>The HTTP error code when the redirect is applied. In the event of an error, if the error
    #            code equals this value, then the specified redirect is applied. Required when parent
    #            element <code>Condition</code> is specified and sibling <code>KeyPrefixEquals</code> is not
    #            specified. If both are specified, then both must be true for the redirect to be
    #            applied.</p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix_equals
    #   <p>The object key name prefix when the redirect is applied. For example, to redirect
    #            requests for <code>ExamplePage.html</code>, the key prefix will be
    #               <code>ExamplePage.html</code>. To redirect request for all pages with the prefix
    #               <code>docs/</code>, the key prefix will be <code>/docs</code>, which identifies all
    #            objects in the <code>docs/</code> folder. Required when the parent element
    #               <code>Condition</code> is specified and sibling <code>HttpErrorCodeReturnedEquals</code>
    #            is not specified. If both conditions are specified, both must be true for the redirect to
    #            be applied.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    Condition = ::Struct.new(
      :http_error_code_returned_equals,
      :key_prefix_equals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    ContinuationEvent = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the destination bucket.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm you want Amazon S3 to use to create the checksum for the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #
    #   @return [String]
    #
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source
    #   <p>Specifies the source object for the copy operation. You specify the value in one of two
    #            formats, depending on whether you want to access the source object through an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">access point</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>For objects not accessed through an access point, specify the name of the source bucket
    #                  and the key of the source object, separated by a slash (/). For example, to copy the
    #                  object <code>reports/january.pdf</code> from the bucket
    #                  <code>awsexamplebucket</code>, use <code>awsexamplebucket/reports/january.pdf</code>.
    #                  The value must be URL-encoded.</p>
    #               </li>
    #               <li>
    #                  <p>For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format <code>arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through access point <code>my-access-point</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf</code>. The value must be URL encoded.</p>
    #                  <note>
    #                     <p>Amazon S3 supports copy operations using access points only when the source and destination buckets are in the same Amazon Web Services Region.</p>
    #                  </note>
    #                  <p>Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>. The value must be URL-encoded.  </p>
    #               </li>
    #            </ul>
    #            <p>To copy a specific version of an object, append <code>?versionId=<version-id></code>
    #            to the value (for example,
    #               <code>awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>).
    #            If you don't specify a version ID, Amazon S3 copies the latest version of the source
    #            object.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_if_match
    #   <p>Copies the object if its entity tag (ETag) matches the specified tag.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_if_modified_since
    #   <p>Copies the object if it has been modified since the specified time.</p>
    #
    #   @return [Time]
    #
    # @!attribute copy_source_if_none_match
    #   <p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_if_unmodified_since
    #   <p>Copies the object if it hasn't been modified since the specified time.</p>
    #
    #   @return [Time]
    #
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #
    #   @return [Time]
    #
    # @!attribute grant_full_control
    #   <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read
    #   <p>Allows grantee to read the object data and its metadata.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the object ACL.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key of the destination object.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute metadata_directive
    #   <p>Specifies whether the metadata is copied from the source object or replaced with
    #            metadata provided in the request.</p>
    #
    #   Enum, one of: ["COPY", "REPLACE"]
    #
    #   @return [String]
    #
    # @!attribute tagging_directive
    #   <p>Specifies whether the object tag-set are copied from the source object or replaced with
    #            tag-set provided in the request.</p>
    #
    #   Enum, one of: ["COPY", "REPLACE"]
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute storage_class
    #   <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
    #            STANDARD storage class provides high durability and high availability. Depending on
    #            performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses
    #            the OUTPOSTS Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata. This value is unique to each object and is not copied when using the
    #               <code>x-amz-metadata-directive</code> header. Instead, you may opt to provide this
    #            header in combination with the directive.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>Specifies the Amazon Web Services KMS key ID to use for object encryption. All GET and PUT requests
    #            for an object protected by Amazon Web Services KMS will fail if not made via SSL or using SigV4. For
    #            information about configuring using any of the officially supported Amazon Web Services SDKs and Amazon Web Services
    #            CLI, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html specify-signature-version">Specifying the
    #               Signature Version in Request Authentication</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a base64-encoded UTF-8 string holding JSON with the encryption context
    #            key-value pairs.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using AWS KMS (SSE-KMS). Setting this header to <code>true</code>
    #            causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS. </p>
    #            <p>Specifying this header with a COPY action doesn’t affect bucket-level settings for S3
    #            Bucket Key.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_source_sse_customer_algorithm
    #   <p>Specifies the algorithm to use when decrypting the source object (for example,
    #            AES256).</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source
    #            object. The encryption key provided in this header must be one that was used when the
    #            source object was created.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute tagging
    #   <p>The tag-set for the object destination object this value must be used in conjunction
    #            with the <code>TaggingDirective</code>. The tag-set must be encoded as URL Query
    #            parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode that you want to apply to the copied object.</p>
    #
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when you want the copied object's Object Lock to expire.</p>
    #
    #   @return [Time]
    #
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether you want to apply a legal hold to the copied object.</p>
    #
    #   Enum, one of: ["ON", "OFF"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected destination bucket owner. If the destination bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute expected_source_bucket_owner
    #   <p>The account ID of the expected source bucket owner. If the source bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    CopyObjectInput = ::Struct.new(
      :acl,
      :bucket,
      :cache_control,
      :checksum_algorithm,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_type,
      :copy_source,
      :copy_source_if_match,
      :copy_source_if_modified_since,
      :copy_source_if_none_match,
      :copy_source_if_unmodified_since,
      :expires,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write_acp,
      :key,
      :metadata,
      :metadata_directive,
      :tagging_directive,
      :server_side_encryption,
      :storage_class,
      :website_redirect_location,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :copy_source_sse_customer_algorithm,
      :copy_source_sse_customer_key,
      :copy_source_sse_customer_key_md5,
      :request_payer,
      :tagging,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :object_lock_legal_hold_status,
      :expected_bucket_owner,
      :expected_source_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bucket_key_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::CopyObjectInput "\
          "acl=#{acl || 'nil'}, "\
          "bucket=#{bucket || 'nil'}, "\
          "cache_control=#{cache_control || 'nil'}, "\
          "checksum_algorithm=#{checksum_algorithm || 'nil'}, "\
          "content_disposition=#{content_disposition || 'nil'}, "\
          "content_encoding=#{content_encoding || 'nil'}, "\
          "content_language=#{content_language || 'nil'}, "\
          "content_type=#{content_type || 'nil'}, "\
          "copy_source=#{copy_source || 'nil'}, "\
          "copy_source_if_match=#{copy_source_if_match || 'nil'}, "\
          "copy_source_if_modified_since=#{copy_source_if_modified_since || 'nil'}, "\
          "copy_source_if_none_match=#{copy_source_if_none_match || 'nil'}, "\
          "copy_source_if_unmodified_since=#{copy_source_if_unmodified_since || 'nil'}, "\
          "expires=#{expires || 'nil'}, "\
          "grant_full_control=#{grant_full_control || 'nil'}, "\
          "grant_read=#{grant_read || 'nil'}, "\
          "grant_read_acp=#{grant_read_acp || 'nil'}, "\
          "grant_write_acp=#{grant_write_acp || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "metadata=#{metadata || 'nil'}, "\
          "metadata_directive=#{metadata_directive || 'nil'}, "\
          "tagging_directive=#{tagging_directive || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "storage_class=#{storage_class || 'nil'}, "\
          "website_redirect_location=#{website_redirect_location || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "ssekms_encryption_context=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "copy_source_sse_customer_algorithm=#{copy_source_sse_customer_algorithm || 'nil'}, "\
          "copy_source_sse_customer_key=\"[SENSITIVE]\", "\
          "copy_source_sse_customer_key_md5=#{copy_source_sse_customer_key_md5 || 'nil'}, "\
          "request_payer=#{request_payer || 'nil'}, "\
          "tagging=#{tagging || 'nil'}, "\
          "object_lock_mode=#{object_lock_mode || 'nil'}, "\
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, "\
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, "\
          "expected_source_bucket_owner=#{expected_source_bucket_owner || 'nil'}>"
      end
    end

    # @!attribute copy_object_result
    #   <p>Container for all response elements.</p>
    #
    #   @return [CopyObjectResult]
    #
    # @!attribute expiration
    #   <p>If the object expiration is configured, the response includes this header.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_version_id
    #   <p>Version of the copied object in the destination bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>Version ID of the newly created copy.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header confirming the encryption algorithm used.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_encryption_context
    #   <p>If present, specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The
    #            value of this header is a base64-encoded UTF-8 string holding JSON with the encryption
    #            context key-value pairs.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the copied object uses an S3 Bucket Key for server-side encryption
    #            with Amazon Web Services KMS (SSE-KMS).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    CopyObjectOutput = ::Struct.new(
      :copy_object_result,
      :expiration,
      :copy_source_version_id,
      :version_id,
      :server_side_encryption,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bucket_key_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::CopyObjectOutput "\
          "copy_object_result=#{copy_object_result || 'nil'}, "\
          "expiration=#{expiration || 'nil'}, "\
          "copy_source_version_id=#{copy_source_version_id || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "ssekms_encryption_context=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "request_charged=#{request_charged || 'nil'}>"
      end
    end

    # <p>Container for all response elements.</p>
    #
    # @!attribute e_tag
    #   <p>Returns the ETag of the new object. The ETag reflects only changes to the contents of an
    #            object, not its metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>Creation date of the object.</p>
    #
    #   @return [Time]
    #
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    CopyObjectResult = ::Struct.new(
      :e_tag,
      :last_modified,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for all response elements.</p>
    #
    # @!attribute e_tag
    #   <p>Entity tag of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>Date and time at which the object was uploaded.</p>
    #
    #   @return [Time]
    #
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    CopyPartResult = ::Struct.new(
      :e_tag,
      :last_modified,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration information for the bucket.</p>
    #
    # @!attribute location_constraint
    #   <p>Specifies the Region where the bucket will be created. If you don't specify a Region,
    #            the bucket is created in the US East (N. Virginia) Region (us-east-1).</p>
    #
    #   Enum, one of: ["af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ca-central-1", "cn-north-1", "cn-northwest-1", "EU", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1", "us-east-2", "us-gov-east-1", "us-gov-west-1", "us-west-1", "us-west-2"]
    #
    #   @return [String]
    #
    CreateBucketConfiguration = ::Struct.new(
      :location_constraint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read"]
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket to create.</p>
    #
    #   @return [String]
    #
    # @!attribute create_bucket_configuration
    #   <p>The configuration information for the bucket.</p>
    #
    #   @return [CreateBucketConfiguration]
    #
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and
    #            overwrites of those objects.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute object_lock_enabled_for_bucket
    #   <p>Specifies whether you want S3 Object Lock to be enabled for the new bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute object_ownership
    #   <p>The container element for object ownership for a bucket's ownership controls.</p>
    #            <p>BucketOwnerPreferred - Objects uploaded to the bucket change ownership to the bucket
    #            owner if the objects are uploaded with the <code>bucket-owner-full-control</code> canned
    #            ACL.</p>
    #            <p>ObjectWriter - The uploading account will own the object if the object is uploaded with
    #            the <code>bucket-owner-full-control</code> canned ACL.</p>
    #            <p>BucketOwnerEnforced - Access control lists (ACLs) are disabled and no longer affect
    #            permissions. The bucket owner automatically owns and has full control over every object in
    #            the bucket. The bucket only accepts PUT requests that don't specify an ACL or bucket owner
    #            full control ACLs, such as the <code>bucket-owner-full-control</code> canned ACL or an
    #            equivalent form of this ACL expressed in the XML format.</p>
    #
    #   Enum, one of: ["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"]
    #
    #   @return [String]
    #
    CreateBucketInput = ::Struct.new(
      :acl,
      :bucket,
      :create_bucket_configuration,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write,
      :grant_write_acp,
      :object_lock_enabled_for_bucket,
      :object_ownership,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.object_lock_enabled_for_bucket ||= false
      end
    end

    # @!attribute location
    #   <p>A forward slash followed by the name of the bucket.</p>
    #
    #   @return [String]
    #
    CreateBucketOutput = ::Struct.new(
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket to which to initiate the upload</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #
    #   @return [String]
    #
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #
    #   @return [String]
    #
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #
    #   @return [String]
    #
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #
    #   @return [Time]
    #
    # @!attribute grant_full_control
    #   <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read
    #   <p>Allows grantee to read the object data and its metadata.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the object ACL.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Object key for which the multipart upload is to be initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute storage_class
    #   <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
    #            STANDARD storage class provides high durability and high availability. Depending on
    #            performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses
    #            the OUTPOSTS Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>Specifies the ID of the symmetric encryption customer managed key to use for object encryption.
    #            All GET and PUT requests for an object protected by Amazon Web Services KMS will fail if not made via SSL
    #            or using SigV4. For information about configuring using any of the officially supported
    #            Amazon Web Services SDKs and Amazon Web Services CLI, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html specify-signature-version">Specifying the Signature Version in Request Authentication</a>
    #            in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a base64-encoded UTF-8 string holding JSON with the encryption context
    #            key-value pairs.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using AWS KMS (SSE-KMS). Setting this header to <code>true</code>
    #            causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.</p>
    #            <p>Specifying this header with an object action doesn’t affect bucket-level settings for S3
    #            Bucket Key.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute tagging
    #   <p>The tag-set for the object. The tag-set must be encoded as URL Query parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute object_lock_mode
    #   <p>Specifies the Object Lock mode that you want to apply to the uploaded object.</p>
    #
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute object_lock_retain_until_date
    #   <p>Specifies the date and time when you want the Object Lock to expire.</p>
    #
    #   @return [Time]
    #
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether you want to apply a legal hold to the uploaded object.</p>
    #
    #   Enum, one of: ["ON", "OFF"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm you want Amazon S3 to use to create the checksum for the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    CreateMultipartUploadInput = ::Struct.new(
      :acl,
      :bucket,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_type,
      :expires,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write_acp,
      :key,
      :metadata,
      :server_side_encryption,
      :storage_class,
      :website_redirect_location,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :request_payer,
      :tagging,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :object_lock_legal_hold_status,
      :expected_bucket_owner,
      :checksum_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bucket_key_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::CreateMultipartUploadInput "\
          "acl=#{acl || 'nil'}, "\
          "bucket=#{bucket || 'nil'}, "\
          "cache_control=#{cache_control || 'nil'}, "\
          "content_disposition=#{content_disposition || 'nil'}, "\
          "content_encoding=#{content_encoding || 'nil'}, "\
          "content_language=#{content_language || 'nil'}, "\
          "content_type=#{content_type || 'nil'}, "\
          "expires=#{expires || 'nil'}, "\
          "grant_full_control=#{grant_full_control || 'nil'}, "\
          "grant_read=#{grant_read || 'nil'}, "\
          "grant_read_acp=#{grant_read_acp || 'nil'}, "\
          "grant_write_acp=#{grant_write_acp || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "metadata=#{metadata || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "storage_class=#{storage_class || 'nil'}, "\
          "website_redirect_location=#{website_redirect_location || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "ssekms_encryption_context=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "request_payer=#{request_payer || 'nil'}, "\
          "tagging=#{tagging || 'nil'}, "\
          "object_lock_mode=#{object_lock_mode || 'nil'}, "\
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, "\
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, "\
          "checksum_algorithm=#{checksum_algorithm || 'nil'}>"
      end
    end

    # @!attribute abort_date
    #   <p>If the bucket has a lifecycle rule configured with an action to abort incomplete
    #            multipart uploads and the prefix in the lifecycle rule matches the object name in the
    #            request, the response includes this header. The header indicates when the initiated
    #            multipart upload becomes eligible for an abort operation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html mpu-abort-incomplete-mpu-lifecycle-config">
    #               Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a>.</p>
    #            <p>The response also includes the <code>x-amz-abort-rule-id</code> header that provides the
    #            ID of the lifecycle configuration rule that defines this action.</p>
    #
    #   @return [Time]
    #
    # @!attribute abort_rule_id
    #   <p>This header is returned along with the <code>x-amz-abort-date</code> header. It
    #            identifies the applicable lifecycle configuration rule that defines the action to abort
    #            incomplete multipart uploads.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. Does not return the
    #            access point ARN or access point alias if used.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id
    #   <p>ID for the initiated multipart upload.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header confirming the encryption algorithm used.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_encryption_context
    #   <p>If present, specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The
    #            value of this header is a base64-encoded UTF-8 string holding JSON with the encryption
    #            context key-value pairs.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption
    #            with Amazon Web Services KMS (SSE-KMS).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    CreateMultipartUploadOutput = ::Struct.new(
      :abort_date,
      :abort_rule_id,
      :bucket,
      :key,
      :upload_id,
      :server_side_encryption,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :request_charged,
      :checksum_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bucket_key_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::CreateMultipartUploadOutput "\
          "abort_date=#{abort_date || 'nil'}, "\
          "abort_rule_id=#{abort_rule_id || 'nil'}, "\
          "bucket=#{bucket || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "upload_id=#{upload_id || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "ssekms_encryption_context=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "request_charged=#{request_charged || 'nil'}, "\
          "checksum_algorithm=#{checksum_algorithm || 'nil'}>"
      end
    end

    # <p>The container element for specifying the default Object Lock retention settings for new
    #          objects placed in the specified bucket.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>The <code>DefaultRetention</code> settings require both a mode and a
    #                   period.</p>
    #                </li>
    #                <li>
    #                   <p>The <code>DefaultRetention</code> period can be either <code>Days</code> or
    #                      <code>Years</code> but you must select one. You cannot specify
    #                      <code>Days</code> and <code>Years</code> at the same time.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @!attribute mode
    #   <p>The default Object Lock retention mode you want to apply to new objects placed in the
    #            specified bucket. Must be used with either <code>Days</code> or <code>Years</code>.</p>
    #
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute days
    #   <p>The number of days that you want to specify for the default retention period. Must be
    #            used with <code>Mode</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute years
    #   <p>The number of years that you want to specify for the default retention period. Must be
    #            used with <code>Mode</code>.</p>
    #
    #   @return [Integer]
    #
    DefaultRetention = ::Struct.new(
      :mode,
      :days,
      :years,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.days ||= 0
        self.years ||= 0
      end
    end

    # <p>Container for the objects to delete.</p>
    #
    # @!attribute objects
    #   <p>The objects to delete.</p>
    #
    #   @return [Array<ObjectIdentifier>]
    #
    # @!attribute quiet
    #   <p>Element to enable quiet mode for the request. When you add this element, you must set
    #            its value to true.</p>
    #
    #   @return [Boolean]
    #
    Delete = ::Struct.new(
      :objects,
      :quiet,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.quiet ||= false
      end
    end

    # @!attribute bucket
    #   <p>The name of the bucket from which an analytics configuration is deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketAnalyticsConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketAnalyticsConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>Specifies the bucket whose <code>cors</code> configuration is being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketCorsInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketCorsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the server-side encryption configuration to
    #            delete.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketEncryptionInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketEncryptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>Specifies the bucket being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #
    #   @return [String]
    #
    DeleteBucketIntelligentTieringConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketIntelligentTieringConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the inventory configuration to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketInventoryConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketInventoryConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name of the lifecycle to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketLifecycleInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketLifecycleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the metrics configuration to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketMetricsConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketMetricsConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The Amazon S3 bucket whose <code>OwnershipControls</code> you want to delete. </p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketOwnershipControlsInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketOwnershipControlsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketPolicyInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p> The bucket name. </p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketReplicationInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketReplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket that has the tag set to be removed.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketTaggingInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketTaggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which you want to remove the website configuration. </p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteBucketWebsiteInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketWebsiteOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the delete marker.</p>
    #
    # @!attribute owner
    #   <p>The account that created the delete marker.></p>
    #
    #   @return [Owner]
    #
    # @!attribute key
    #   <p>The object key.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>Version ID of an object.</p>
    #
    #   @return [String]
    #
    # @!attribute is_latest
    #   <p>Specifies whether the object is (true) or is not (false) the latest version of an
    #            object.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified
    #   <p>Date and time the object was last modified.</p>
    #
    #   @return [Time]
    #
    DeleteMarkerEntry = ::Struct.new(
      :owner,
      :key,
      :version_id,
      :is_latest,
      :last_modified,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_latest ||= false
      end
    end

    # <p>Specifies whether Amazon S3 replicates delete markers. If you specify a <code>Filter</code>
    #          in your replication configuration, you must also include a
    #             <code>DeleteMarkerReplication</code> element. If your <code>Filter</code> includes a
    #             <code>Tag</code> element, the <code>DeleteMarkerReplication</code>
    #             <code>Status</code> must be set to Disabled, because Amazon S3 does not support replicating
    #          delete markers for tag-based rules. For an example configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-config-min-rule-config">Basic Rule Configuration</a>. </p>
    #          <p>For more information about delete marker replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/delete-marker-replication.html">Basic Rule
    #             Configuration</a>. </p>
    #          <note>
    #             <p>If you are using an earlier version of the replication configuration, Amazon S3 handles
    #             replication of delete markers differently. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations">Backward Compatibility</a>.</p>
    #          </note>
    #
    # @!attribute status
    #   <p>Indicates whether to replicate delete markers.</p>
    #            <note>
    #               <p>Indicates whether to replicate delete markers.</p>
    #            </note>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    DeleteMarkerReplication = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeleteMarkerReplicationStatus
    #
    module DeleteMarkerReplicationStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # @!attribute bucket
    #   <p>The bucket name of the bucket containing the object. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Key name of the object to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device. Required to permanently delete a versioned
    #            object if versioning is configured with MFA delete enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute bypass_governance_retention
    #   <p>Indicates whether S3 Object Lock should bypass Governance-mode restrictions to process
    #            this operation. To use this header, you must have the
    #               <code>s3:BypassGovernanceRetention</code> permission.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteObjectInput = ::Struct.new(
      :bucket,
      :key,
      :mfa,
      :version_id,
      :request_payer,
      :bypass_governance_retention,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bypass_governance_retention ||= false
      end
    end

    # @!attribute delete_marker
    #   <p>Specifies whether the versioned object that was permanently deleted was (true) or was
    #            not (false) a delete marker.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute version_id
    #   <p>Returns the version ID of the delete marker created as a result of the DELETE
    #            operation.</p>
    #
    #   @return [String]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    DeleteObjectOutput = ::Struct.new(
      :delete_marker,
      :version_id,
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_marker ||= false
      end
    end

    # @!attribute bucket
    #   <p>The bucket name containing the objects from which to remove the tags. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key that identifies the object in the bucket from which to remove all tags.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The versionId of the object that the tag-set will be removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeleteObjectTaggingInput = ::Struct.new(
      :bucket,
      :key,
      :version_id,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute version_id
    #   <p>The versionId of the object the tag-set was removed from.</p>
    #
    #   @return [String]
    #
    DeleteObjectTaggingOutput = ::Struct.new(
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the objects to delete. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute delete
    #   <p>Container for the request.</p>
    #
    #   @return [Delete]
    #
    # @!attribute mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device. Required to permanently delete a versioned
    #            object if versioning is configured with MFA delete enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute bypass_governance_retention
    #   <p>Specifies whether you want to delete this object even if it has a Governance-type Object
    #            Lock in place. To use this header, you must have the
    #               <code>s3:BypassGovernanceRetention</code> permission.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #            <p>This checksum algorithm must be the same for all parts and it match the checksum value
    #            supplied in the <code>CreateMultipartUpload</code> request.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    DeleteObjectsInput = ::Struct.new(
      :bucket,
      :delete,
      :mfa,
      :request_payer,
      :bypass_governance_retention,
      :expected_bucket_owner,
      :checksum_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bypass_governance_retention ||= false
      end
    end

    # @!attribute deleted
    #   <p>Container element for a successful delete. It identifies the object that was
    #            successfully deleted.</p>
    #
    #   @return [Array<DeletedObject>]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute errors
    #   <p>Container for a failed delete action that describes the object that Amazon S3 attempted to
    #            delete and the error it encountered.</p>
    #
    #   @return [Array<Error>]
    #
    DeleteObjectsOutput = ::Struct.new(
      :deleted,
      :request_charged,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want to delete.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    DeletePublicAccessBlockInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePublicAccessBlockOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the deleted object.</p>
    #
    # @!attribute key
    #   <p>The name of the deleted object.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID of the deleted object.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_marker
    #   <p>Specifies whether the versioned object that was permanently deleted was (true) or was
    #            not (false) a delete marker. In a simple DELETE, this header indicates whether (true) or
    #            not (false) a delete marker was created.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute delete_marker_version_id
    #   <p>The version ID of the delete marker created as a result of the DELETE operation. If you
    #            delete a specific object version, the value returned by this header is the version ID of
    #            the object version deleted.</p>
    #
    #   @return [String]
    #
    DeletedObject = ::Struct.new(
      :key,
      :version_id,
      :delete_marker,
      :delete_marker_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_marker ||= false
      end
    end

    # <p>Specifies information about where to publish analysis or configuration results for an
    #          Amazon S3 bucket and S3 Replication Time Control (S3 RTC).</p>
    #
    # @!attribute bucket
    #   <p> The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to store the
    #            results.</p>
    #
    #   @return [String]
    #
    # @!attribute account
    #   <p>Destination bucket owner account ID. In a cross-account scenario, if you direct Amazon S3 to
    #            change replica ownership to the Amazon Web Services account that owns the destination bucket by
    #            specifying the <code>AccessControlTranslation</code> property, this is the account ID of
    #            the destination bucket owner. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html">Replication Additional
    #               Configuration: Changing the Replica Owner</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_class
    #   <p> The storage class to use when replicating objects, such as S3 Standard or reduced
    #            redundancy. By default, Amazon S3 uses the storage class of the source object to create the
    #            object replica. </p>
    #            <p>For valid values, see the <code>StorageClass</code> element of the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html">PUT Bucket
    #               replication</a> action in the <i>Amazon S3 API Reference</i>.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute access_control_translation
    #   <p>Specify this only in a cross-account scenario (where source and destination bucket
    #            owners are not the same), and you want to change replica ownership to the Amazon Web Services account
    #            that owns the destination bucket. If this is not specified in the replication
    #            configuration, the replicas are owned by same Amazon Web Services account that owns the source
    #            object.</p>
    #
    #   @return [AccessControlTranslation]
    #
    # @!attribute encryption_configuration
    #   <p>A container that provides information about encryption. If
    #               <code>SourceSelectionCriteria</code> is specified, you must specify this element.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute replication_time
    #   <p> A container specifying S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time
    #            when all objects and operations on objects must be replicated. Must be specified together
    #            with a <code>Metrics</code> block. </p>
    #
    #   @return [ReplicationTime]
    #
    # @!attribute metrics
    #   <p> A container specifying replication metrics-related settings enabling replication
    #            metrics and events. </p>
    #
    #   @return [Metrics]
    #
    Destination = ::Struct.new(
      :bucket,
      :account,
      :storage_class,
      :access_control_translation,
      :encryption_configuration,
      :replication_time,
      :metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncodingType
    #
    module EncodingType
      # No documentation available.
      #
      url = "url"
    end

    # <p>Contains the type of server-side encryption used.</p>
    #
    # @!attribute encryption_type
    #   <p>The server-side encryption algorithm used when storing job results in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>If the encryption type is <code>aws:kms</code>, this optional value specifies the ID of
    #            the symmetric encryption customer managed key to use for encryption of job results. Amazon S3 only
    #            supports symmetric encryption KMS keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric keys in Amazon Web Services KMS</a> in the <i>Amazon Web Services Key Management Service
    #               Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_context
    #   <p>If the encryption type is <code>aws:kms</code>, this optional value can be used to
    #            specify the encryption context for the restore results.</p>
    #
    #   @return [String]
    #
    Encryption = ::Struct.new(
      :encryption_type,
      :kms_key_id,
      :kms_context,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::S3::Types::Encryption "\
          "encryption_type=#{encryption_type || 'nil'}, "\
          "kms_key_id=\"[SENSITIVE]\", "\
          "kms_context=#{kms_context || 'nil'}>"
      end
    end

    # <p>Specifies encryption-related information for an Amazon S3 bucket that is a destination for
    #          replicated objects.</p>
    #
    # @!attribute replica_kms_key_id
    #   <p>Specifies the ID (Key ARN or Alias ARN) of the customer managed Amazon Web Services KMS key stored in
    #            Amazon Web Services Key Management Service (KMS) for the destination bucket. Amazon S3 uses this key to
    #            encrypt replica objects. Amazon S3 only supports symmetric encryption KMS keys. For more
    #            information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric keys in Amazon Web Services
    #               KMS</a> in the <i>Amazon Web Services Key Management Service Developer
    #            Guide</i>.</p>
    #
    #   @return [String]
    #
    EncryptionConfiguration = ::Struct.new(
      :replica_kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A message that indicates the request is complete and no more messages will be sent. You
    #          should not assume that the request is complete until the client receives an
    #             <code>EndEvent</code>.</p>
    #
    EndEvent = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for all error elements.</p>
    #
    # @!attribute key
    #   <p>The error key.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The error code is a string that uniquely identifies an error condition. It is meant to
    #            be read and understood by programs that detect and handle errors by type. </p>
    #            <p class="title">
    #               <b>Amazon S3 error codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> AccessDenied </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Access Denied</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> AccountProblem</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> There is a problem with your Amazon Web Services account
    #                        that prevents the action from completing successfully. Contact Amazon Web Services Support
    #                        for further assistance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> AllAccessDisabled</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> All access to this Amazon S3 resource has been
    #                        disabled. Contact Amazon Web Services Support for further assistance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> AmbiguousGrantByEmailAddress</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The email address you provided is
    #                        associated with more than one account.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> AuthorizationHeaderMalformed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The authorization header you provided is
    #                        invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> BadDigest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The Content-MD5 you specified did not
    #                        match what we received.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> BucketAlreadyExists</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The requested bucket name is not
    #                        available. The bucket namespace is shared by all users of the system. Please
    #                        select a different name and try again.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 409 Conflict</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> BucketAlreadyOwnedByYou</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The bucket you tried to create already
    #                        exists, and you own it. Amazon S3 returns this error in all Amazon Web Services Regions except in
    #                        the North Virginia Region. For legacy compatibility, if you re-create an
    #                        existing bucket that you already own in the North Virginia Region, Amazon S3 returns
    #                        200 OK and resets the bucket access control lists (ACLs).</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> 409 Conflict (in all Regions except the North
    #                        Virginia Region) </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> BucketNotEmpty</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The bucket you tried to delete is not
    #                        empty.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 409 Conflict</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> CredentialsNotSupported</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> This request does not support
    #                        credentials.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> CrossLocationLoggingProhibited</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Cross-location logging not allowed.
    #                        Buckets in one geographic location cannot log information to a bucket in
    #                        another location.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> EntityTooSmall</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your proposed upload is smaller than the
    #                        minimum allowed object size.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> EntityTooLarge</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your proposed upload exceeds the maximum
    #                        allowed object size.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> ExpiredToken</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The provided token has expired.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> IllegalVersioningConfigurationException </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Indicates that the versioning
    #                        configuration specified in the request is invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> IncompleteBody</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> You did not provide the number of bytes
    #                        specified by the Content-Length HTTP header</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> IncorrectNumberOfFilesInPostRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> POST requires exactly one file upload per
    #                        request.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InlineDataTooLarge</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Inline data exceeds the maximum allowed
    #                        size.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InternalError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> We encountered an internal error. Please
    #                        try again.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 500 Internal Server Error</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Server</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidAccessKeyId</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The Amazon Web Services access key ID you provided does
    #                        not exist in our records.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidAddressingHeader</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> You must specify the Anonymous
    #                        role.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> N/A</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidArgument</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Invalid Argument</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidBucketName</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified bucket is not valid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidBucketState</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The request is not valid with the current
    #                        state of the bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 409 Conflict</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidDigest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The Content-MD5 you specified is not
    #                        valid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidEncryptionAlgorithmError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The encryption request you specified is
    #                        not valid. The valid value is AES256.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidLocationConstraint</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified location constraint is not
    #                        valid. For more information about Regions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html access-bucket-intro">How to Select
    #                           a Region for Your Buckets</a>. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidObjectState</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The action is not valid for the current
    #                        state of the object.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidPart</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> One or more of the specified parts could
    #                        not be found. The part might not have been uploaded, or the specified entity
    #                        tag might not have matched the part's entity tag.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidPartOrder</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The list of parts was not in ascending
    #                        order. Parts list must be specified in order by part number.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidPayer</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> All access to this object has been
    #                        disabled. Please contact Amazon Web Services Support for further assistance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidPolicyDocument</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The content of the form does not meet the
    #                        conditions specified in the policy document.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRange</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The requested range cannot be
    #                        satisfied.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 416 Requested Range Not
    #                        Satisfiable</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Please use
    #                        <code>AWS4-HMAC-SHA256</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> SOAP requests must be made over an HTTPS
    #                        connection.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Acceleration is not
    #                        supported for buckets with non-DNS compliant names.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Acceleration is not
    #                        supported for buckets with periods (.) in their names.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Accelerate endpoint only
    #                        supports virtual style requests.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Accelerate is not configured
    #                        on this bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Accelerate is disabled on
    #                        this bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Acceleration is not
    #                        supported on this bucket. Contact Amazon Web Services Support for more information.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Acceleration cannot be
    #                        enabled on this bucket. Contact Amazon Web Services Support for more information.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidSecurity</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The provided security credentials are not
    #                        valid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidSOAPRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The SOAP request body is invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidStorageClass</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The storage class you specified is not
    #                        valid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidTargetBucketForLogging</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The target bucket for logging does not
    #                        exist, is not owned by you, or does not have the appropriate grants for the
    #                        log-delivery group. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidToken</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The provided token is malformed or
    #                        otherwise invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidURI</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Couldn't parse the specified URI.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> KeyTooLongError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your key is too long.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MalformedACLError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The XML you provided was not well-formed
    #                        or did not validate against our published schema.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MalformedPOSTRequest </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The body of your POST request is not
    #                        well-formed multipart/form-data.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MalformedXML</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> This happens when the user sends malformed
    #                        XML (XML that doesn't conform to the published XSD) for the configuration. The
    #                        error message is, "The XML you provided was not well-formed or did not validate
    #                        against our published schema." </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MaxMessageLengthExceeded</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your request was too big.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MaxPostPreDataLengthExceededError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your POST request fields preceding the
    #                        upload file were too large.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MetadataTooLarge</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your metadata headers exceed the maximum
    #                        allowed metadata size.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MethodNotAllowed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified method is not allowed
    #                        against this resource.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 405 Method Not Allowed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MissingAttachment</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> A SOAP attachment was expected, but none
    #                        were found.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> N/A</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MissingContentLength</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> You must provide the Content-Length HTTP
    #                        header.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 411 Length Required</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MissingRequestBodyError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> This happens when the user sends an empty
    #                        XML document as a request. The error message is, "Request body is empty."
    #                     </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MissingSecurityElement</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The SOAP 1.1 request is missing a security
    #                        element.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MissingSecurityHeader</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your request is missing a required
    #                        header.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoLoggingStatusForKey</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> There is no such thing as a logging status
    #                        subresource for a key.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchBucket</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified bucket does not
    #                        exist.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchBucketPolicy</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified bucket does not have a
    #                        bucket policy.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchKey</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified key does not exist.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchLifecycleConfiguration</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The lifecycle configuration does not
    #                        exist. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchUpload</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified multipart upload does not
    #                        exist. The upload ID might be invalid, or the multipart upload might have been
    #                        aborted or completed.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchVersion </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Indicates that the version ID specified in
    #                        the request does not match an existing version.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NotImplemented</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> A header you provided implies
    #                        functionality that is not implemented.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 501 Not Implemented</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Server</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NotSignedUp</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your account is not signed up for the Amazon S3
    #                        service. You must sign up before you can use Amazon S3. You can sign up at the
    #                        following URL: <a href="http://aws.amazon.com/s3">Amazon S3</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> OperationAborted</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> A conflicting conditional action is
    #                        currently in progress against this resource. Try again.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 409 Conflict</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> PermanentRedirect</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The bucket you are attempting to access
    #                        must be addressed using the specified endpoint. Send all future requests to
    #                        this endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 301 Moved Permanently</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> PreconditionFailed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> At least one of the preconditions you
    #                        specified did not hold.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 412 Precondition Failed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> Redirect</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Temporary redirect.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 307 Moved Temporarily</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> RestoreAlreadyInProgress</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Object restore is already in
    #                        progress.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 409 Conflict</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> RequestIsNotMultiPartContent</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Bucket POST must be of the enclosure-type
    #                        multipart/form-data.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> RequestTimeout</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your socket connection to the server was
    #                        not read from or written to within the timeout period.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> RequestTimeTooSkewed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The difference between the request time
    #                        and the server's time is too large.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> RequestTorrentOfBucketError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Requesting the torrent file of a bucket is
    #                        not permitted.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> SignatureDoesNotMatch</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The request signature we calculated does
    #                        not match the signature you provided. Check your Amazon Web Services secret access key and
    #                        signing method. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST
    #                           Authentication</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/SOAPAuthentication.html">SOAP
    #                           Authentication</a> for details.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> ServiceUnavailable</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Service is unable to handle
    #                        request.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 503 Service Unavailable</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Server</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> SlowDown</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Reduce your request rate.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 503 Slow Down</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Server</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> TemporaryRedirect</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> You are being redirected to the bucket
    #                        while DNS updates.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 307 Moved Temporarily</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> TokenRefreshRequired</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The provided token must be
    #                        refreshed.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> TooManyBuckets</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> You have attempted to create more buckets
    #                        than allowed.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> UnexpectedContent</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> This request does not support
    #                        content.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> UnresolvableGrantByEmailAddress</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The email address you provided does not
    #                        match any account on record.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> UserKeyMustBeSpecified</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The bucket POST must contain the specified
    #                        field name. If it is specified, check the order of the fields.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p></p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message contains a generic description of the error condition in English. It
    #            is intended for a human audience. Simple programs display the message directly to the end
    #            user if they encounter an error condition they don't know how or don't care to handle.
    #            Sophisticated programs with more exhaustive error handling and proper internationalization
    #            are more likely to ignore the error message.</p>
    #
    #   @return [String]
    #
    Error = ::Struct.new(
      :key,
      :version_id,
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The error information.</p>
    #
    # @!attribute key
    #   <p>The object key name to use when a 4XX class error occurs.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    ErrorDocument = ::Struct.new(
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Event
    #
    module Event
      # No documentation available.
      #
      s3_ReducedRedundancyLostObject = "s3:ReducedRedundancyLostObject"

      # No documentation available.
      #
      s3_ObjectCreated_ = "s3:ObjectCreated:*"

      # No documentation available.
      #
      s3_ObjectCreated_Put = "s3:ObjectCreated:Put"

      # No documentation available.
      #
      s3_ObjectCreated_Post = "s3:ObjectCreated:Post"

      # No documentation available.
      #
      s3_ObjectCreated_Copy = "s3:ObjectCreated:Copy"

      # No documentation available.
      #
      s3_ObjectCreated_CompleteMultipartUpload = "s3:ObjectCreated:CompleteMultipartUpload"

      # No documentation available.
      #
      s3_ObjectRemoved_ = "s3:ObjectRemoved:*"

      # No documentation available.
      #
      s3_ObjectRemoved_Delete = "s3:ObjectRemoved:Delete"

      # No documentation available.
      #
      s3_ObjectRemoved_DeleteMarkerCreated = "s3:ObjectRemoved:DeleteMarkerCreated"

      # No documentation available.
      #
      s3_ObjectRestore_ = "s3:ObjectRestore:*"

      # No documentation available.
      #
      s3_ObjectRestore_Post = "s3:ObjectRestore:Post"

      # No documentation available.
      #
      s3_ObjectRestore_Completed = "s3:ObjectRestore:Completed"

      # No documentation available.
      #
      s3_Replication_ = "s3:Replication:*"

      # No documentation available.
      #
      s3_Replication_OperationFailedReplication = "s3:Replication:OperationFailedReplication"

      # No documentation available.
      #
      s3_Replication_OperationNotTracked = "s3:Replication:OperationNotTracked"

      # No documentation available.
      #
      s3_Replication_OperationMissedThreshold = "s3:Replication:OperationMissedThreshold"

      # No documentation available.
      #
      s3_Replication_OperationReplicatedAfterThreshold = "s3:Replication:OperationReplicatedAfterThreshold"

      # No documentation available.
      #
      s3_ObjectRestore_Delete = "s3:ObjectRestore:Delete"

      # No documentation available.
      #
      s3_LifecycleTransition = "s3:LifecycleTransition"

      # No documentation available.
      #
      s3_IntelligentTiering = "s3:IntelligentTiering"

      # No documentation available.
      #
      s3_ObjectAcl_Put = "s3:ObjectAcl:Put"

      # No documentation available.
      #
      s3_LifecycleExpiration_ = "s3:LifecycleExpiration:*"

      # No documentation available.
      #
      s3_LifecycleExpiration_Delete = "s3:LifecycleExpiration:Delete"

      # No documentation available.
      #
      s3_LifecycleExpiration_DeleteMarkerCreated = "s3:LifecycleExpiration:DeleteMarkerCreated"

      # No documentation available.
      #
      s3_ObjectTagging_ = "s3:ObjectTagging:*"

      # No documentation available.
      #
      s3_ObjectTagging_Put = "s3:ObjectTagging:Put"

      # No documentation available.
      #
      s3_ObjectTagging_Delete = "s3:ObjectTagging:Delete"
    end

    # <p>A container for specifying the configuration for Amazon EventBridge.</p>
    #
    EventBridgeConfiguration = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Optional configuration to replicate existing source bucket objects. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication">Replicating Existing Objects</a> in the <i>Amazon S3 User Guide</i>.
    #       </p>
    #
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates existing source bucket objects. </p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    ExistingObjectReplication = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExistingObjectReplicationStatus
    #
    module ExistingObjectReplicationStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # Includes enum constants for ExpirationStatus
    #
    module ExpirationStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # Includes enum constants for ExpressionType
    #
    module ExpressionType
      # No documentation available.
      #
      SQL = "SQL"
    end

    # Includes enum constants for FileHeaderInfo
    #
    module FileHeaderInfo
      # No documentation available.
      #
      USE = "USE"

      # No documentation available.
      #
      IGNORE = "IGNORE"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>Specifies the Amazon S3 object key name to filter on and whether to filter on the suffix or
    #          prefix of the key name.</p>
    #
    # @!attribute name
    #   <p>The object key name prefix or suffix identifying one or more objects to which the
    #            filtering rule applies. The maximum length is 1,024 characters. Overlapping prefixes and
    #            suffixes are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a>
    #            in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["prefix", "suffix"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value that the filter searches for in object key names.</p>
    #
    #   @return [String]
    #
    FilterRule = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterRuleName
    #
    module FilterRuleName
      # No documentation available.
      #
      prefix = "prefix"

      # No documentation available.
      #
      suffix = "suffix"
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which the accelerate configuration is retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketAccelerateConfigurationInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The accelerate configuration of the bucket.</p>
    #
    #   Enum, one of: ["Enabled", "Suspended"]
    #
    #   @return [String]
    #
    GetBucketAccelerateConfigurationOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>Specifies the S3 bucket whose ACL is being requested.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketAclInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner
    #   <p>Container for the bucket owner's display name and ID.</p>
    #
    #   @return [Owner]
    #
    # @!attribute grants
    #   <p>A list of grants.</p>
    #
    #   @return [Array<Grant>]
    #
    GetBucketAclOutput = ::Struct.new(
      :owner,
      :grants,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket from which an analytics configuration is retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketAnalyticsConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute analytics_configuration
    #   <p>The configuration and any analyses for the analytics filter.</p>
    #
    #   @return [AnalyticsConfiguration]
    #
    GetBucketAnalyticsConfigurationOutput = ::Struct.new(
      :analytics_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which to get the cors configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketCorsInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cors_rules
    #   <p>A set of origins and methods (cross-origin access that you want to allow). You can add
    #            up to 100 rules to the configuration.</p>
    #
    #   @return [Array<CORSRule>]
    #
    GetBucketCorsOutput = ::Struct.new(
      :cors_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket from which the server-side encryption configuration is
    #            retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketEncryptionInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_side_encryption_configuration
    #   <p>Specifies the default server-side-encryption configuration.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    GetBucketEncryptionOutput = ::Struct.new(
      :server_side_encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #
    #   @return [String]
    #
    GetBucketIntelligentTieringConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute intelligent_tiering_configuration
    #   <p>Container for S3 Intelligent-Tiering configuration.</p>
    #
    #   @return [IntelligentTieringConfiguration]
    #
    GetBucketIntelligentTieringConfigurationOutput = ::Struct.new(
      :intelligent_tiering_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the inventory configuration to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketInventoryConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute inventory_configuration
    #   <p>Specifies the inventory configuration.</p>
    #
    #   @return [InventoryConfiguration]
    #
    GetBucketInventoryConfigurationOutput = ::Struct.new(
      :inventory_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the lifecycle information.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketLifecycleConfigurationInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rules
    #   <p>Container for a lifecycle rule.</p>
    #
    #   @return [Array<LifecycleRule>]
    #
    GetBucketLifecycleConfigurationOutput = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the location.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketLocationInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_constraint
    #   <p>Specifies the Region where the bucket resides. For a list of all the Amazon S3 supported
    #            location constraints by Region, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html s3_region">Regions and Endpoints</a>. Buckets in
    #            Region <code>us-east-1</code> have a LocationConstraint of <code>null</code>.</p>
    #
    #   Enum, one of: ["af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ca-central-1", "cn-north-1", "cn-northwest-1", "EU", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1", "us-east-2", "us-gov-east-1", "us-gov-west-1", "us-west-1", "us-west-2"]
    #
    #   @return [String]
    #
    GetBucketLocationOutput = ::Struct.new(
      :location_constraint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which to get the logging information.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketLoggingInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logging_enabled
    #   <p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys
    #            for a bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html">PUT Bucket logging</a> in the
    #               <i>Amazon S3 API Reference</i>.</p>
    #
    #   @return [LoggingEnabled]
    #
    GetBucketLoggingOutput = ::Struct.new(
      :logging_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the metrics configuration to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketMetricsConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metrics_configuration
    #   <p>Specifies the metrics configuration.</p>
    #
    #   @return [MetricsConfiguration]
    #
    GetBucketMetricsConfigurationOutput = ::Struct.new(
      :metrics_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the notification configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketNotificationConfigurationInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for specifying the notification configuration of the bucket. If this element
    #          is empty, notifications are turned off for the bucket.</p>
    #
    # @!attribute topic_configurations
    #   <p>The topic to which notifications are sent and the events for which notifications are
    #            generated.</p>
    #
    #   @return [Array<TopicConfiguration>]
    #
    # @!attribute queue_configurations
    #   <p>The Amazon Simple Queue Service queues to publish messages to and the events for which
    #            to publish messages.</p>
    #
    #   @return [Array<QueueConfiguration>]
    #
    # @!attribute lambda_function_configurations
    #   <p>Describes the Lambda functions to invoke and the events for which to invoke
    #            them.</p>
    #
    #   @return [Array<LambdaFunctionConfiguration>]
    #
    # @!attribute event_bridge_configuration
    #   <p>Enables delivery of events to Amazon EventBridge.</p>
    #
    #   @return [EventBridgeConfiguration]
    #
    GetBucketNotificationConfigurationOutput = ::Struct.new(
      :topic_configurations,
      :queue_configurations,
      :lambda_function_configurations,
      :event_bridge_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>OwnershipControls</code> you want to retrieve.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketOwnershipControlsInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ownership_controls
    #   <p>The <code>OwnershipControls</code> (BucketOwnerEnforced, BucketOwnerPreferred, or
    #            ObjectWriter) currently in effect for this Amazon S3 bucket.</p>
    #
    #   @return [OwnershipControls]
    #
    GetBucketOwnershipControlsOutput = ::Struct.new(
      :ownership_controls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which to get the bucket policy.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketPolicyInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The bucket policy as a JSON document.</p>
    #
    #   @return [String]
    #
    GetBucketPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose policy status you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketPolicyStatusInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_status
    #   <p>The policy status for the specified bucket.</p>
    #
    #   @return [PolicyStatus]
    #
    GetBucketPolicyStatusOutput = ::Struct.new(
      :policy_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which to get the replication information.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketReplicationInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_configuration
    #   <p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a
    #            replication configuration is 2 MB.</p>
    #
    #   @return [ReplicationConfiguration]
    #
    GetBucketReplicationOutput = ::Struct.new(
      :replication_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the payment request configuration</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketRequestPaymentInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute payer
    #   <p>Specifies who pays for the download and request fees.</p>
    #
    #   Enum, one of: ["Requester", "BucketOwner"]
    #
    #   @return [String]
    #
    GetBucketRequestPaymentOutput = ::Struct.new(
      :payer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the tagging information.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketTaggingInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_set
    #   <p>Contains the tag set.</p>
    #
    #   @return [Array<Tag>]
    #
    GetBucketTaggingOutput = ::Struct.new(
      :tag_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the versioning information.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketVersioningInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The versioning state of the bucket.</p>
    #
    #   Enum, one of: ["Enabled", "Suspended"]
    #
    #   @return [String]
    #
    # @!attribute mfa_delete
    #   <p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This
    #            element is only returned if the bucket has been configured with MFA delete. If the bucket
    #            has never been so configured, this element is not returned.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    GetBucketVersioningOutput = ::Struct.new(
      :status,
      :mfa_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which to get the website configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetBucketWebsiteInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute redirect_all_requests_to
    #   <p>Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3
    #            bucket.</p>
    #
    #   @return [RedirectAllRequestsTo]
    #
    # @!attribute index_document
    #   <p>The name of the index document for the website (for example
    #            <code>index.html</code>).</p>
    #
    #   @return [IndexDocument]
    #
    # @!attribute error_document
    #   <p>The object key name of the website error document to use for 4XX class errors.</p>
    #
    #   @return [ErrorDocument]
    #
    # @!attribute routing_rules
    #   <p>Rules that define when a redirect is applied and the redirect behavior.</p>
    #
    #   @return [Array<RoutingRule>]
    #
    GetBucketWebsiteOutput = ::Struct.new(
      :redirect_all_requests_to,
      :index_document,
      :error_document,
      :routing_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name that contains the object for which to get the ACL information. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key of the object for which to get the ACL information.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetObjectAclInput = ::Struct.new(
      :bucket,
      :key,
      :version_id,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute owner
    #   <p> Container for the bucket owner's display name and ID.</p>
    #
    #   @return [Owner]
    #
    # @!attribute grants
    #   <p>A list of grants.</p>
    #
    #   @return [Array<Grant>]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    GetObjectAclOutput = ::Struct.new(
      :owner,
      :grants,
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket that contains the object.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The object key.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID used to reference a specific version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute max_parts
    #   <p>Sets the maximum number of parts to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute part_number_marker
    #   <p>Specifies the part after which listing should begin. Only parts with higher part numbers
    #            will be listed.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example, AES256).</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute object_attributes
    #   <p>An XML header that specifies the fields at the root level that you want returned in the
    #            response. Fields that you do not specify are not returned.</p>
    #
    #   @return [Array<String>]
    #
    GetObjectAttributesInput = ::Struct.new(
      :bucket,
      :key,
      :version_id,
      :max_parts,
      :part_number_marker,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :request_payer,
      :expected_bucket_owner,
      :object_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_parts ||= 0
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::GetObjectAttributesInput "\
          "bucket=#{bucket || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "max_parts=#{max_parts || 'nil'}, "\
          "part_number_marker=#{part_number_marker || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "request_payer=#{request_payer || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, "\
          "object_attributes=#{object_attributes || 'nil'}>"
      end
    end

    # @!attribute delete_marker
    #   <p>Specifies whether the object retrieved was (<code>true</code>) or was not
    #               (<code>false</code>) a delete marker. If <code>false</code>, this response header does
    #            not appear in the response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified
    #   <p>The creation date of the object.</p>
    #
    #   @return [Time]
    #
    # @!attribute version_id
    #   <p>The version ID of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>An ETag is an opaque identifier assigned by a web server to a specific version of a
    #            resource found at a URL.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>The checksum or digest of the object.</p>
    #
    #   @return [Checksum]
    #
    # @!attribute object_parts
    #   <p>A collection of parts associated with a multipart upload.</p>
    #
    #   @return [GetObjectAttributesParts]
    #
    # @!attribute storage_class
    #   <p>Provides the storage class information of the object. Amazon S3 returns this header for all
    #            objects except for S3 Standard storage class objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute object_size
    #   <p>The size of the object in bytes.</p>
    #
    #   @return [Integer]
    #
    GetObjectAttributesOutput = ::Struct.new(
      :delete_marker,
      :last_modified,
      :version_id,
      :request_charged,
      :e_tag,
      :checksum,
      :object_parts,
      :storage_class,
      :object_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_marker ||= false
        self.object_size ||= 0
      end
    end

    # <p>A collection of parts associated with a multipart upload.</p>
    #
    # @!attribute total_parts_count
    #   <p>The total number of parts.</p>
    #
    #   @return [Integer]
    #
    # @!attribute part_number_marker
    #   <p>The marker for the current part.</p>
    #
    #   @return [String]
    #
    # @!attribute next_part_number_marker
    #   <p>When a list is truncated, this element specifies the last part in the list, as well as
    #            the value to use for the <code>PartNumberMarker</code> request parameter in a subsequent
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_parts
    #   <p>The maximum number of parts allowed in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of parts is truncated. A value of <code>true</code>
    #            indicates that the list was truncated. A list can be truncated if the number of parts
    #            exceeds the limit returned in the <code>MaxParts</code> element.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parts
    #   <p>A container for elements related to a particular part. A response can contain zero or
    #            more <code>Parts</code> elements.</p>
    #
    #   @return [Array<ObjectPart>]
    #
    GetObjectAttributesParts = ::Struct.new(
      :total_parts_count,
      :part_number_marker,
      :next_part_number_marker,
      :max_parts,
      :is_truncated,
      :parts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_parts_count ||= 0
        self.max_parts ||= 0
        self.is_truncated ||= false
      end
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When using an Object Lambda access point the hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-object-lambda.<i>Region</i>.amazonaws.com.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>Return the object only if its entity tag (ETag) is the same as the one specified;
    #            otherwise, return a 412 (precondition failed) error.</p>
    #
    #   @return [String]
    #
    # @!attribute if_modified_since
    #   <p>Return the object only if it has been modified since the specified time; otherwise,
    #            return a 304 (not modified) error.</p>
    #
    #   @return [Time]
    #
    # @!attribute if_none_match
    #   <p>Return the object only if its entity tag (ETag) is different from the one specified;
    #            otherwise, return a 304 (not modified) error.</p>
    #
    #   @return [String]
    #
    # @!attribute if_unmodified_since
    #   <p>Return the object only if it has not been modified since the specified time; otherwise,
    #            return a 412 (precondition failed) error.</p>
    #
    #   @return [Time]
    #
    # @!attribute key
    #   <p>Key of the object to get.</p>
    #
    #   @return [String]
    #
    # @!attribute range
    #   <p>Downloads the specified range bytes of an object. For more information about the HTTP
    #            Range header, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html name-range">https://www.rfc-editor.org/rfc/rfc9110.html name-range</a>.</p>
    #            <note>
    #               <p>Amazon S3 doesn't support retrieving multiple ranges of data per <code>GET</code>
    #               request.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute response_cache_control
    #   <p>Sets the <code>Cache-Control</code> header of the response.</p>
    #
    #   @return [String]
    #
    # @!attribute response_content_disposition
    #   <p>Sets the <code>Content-Disposition</code> header of the response</p>
    #
    #   @return [String]
    #
    # @!attribute response_content_encoding
    #   <p>Sets the <code>Content-Encoding</code> header of the response.</p>
    #
    #   @return [String]
    #
    # @!attribute response_content_language
    #   <p>Sets the <code>Content-Language</code> header of the response.</p>
    #
    #   @return [String]
    #
    # @!attribute response_content_type
    #   <p>Sets the <code>Content-Type</code> header of the response.</p>
    #
    #   @return [String]
    #
    # @!attribute response_expires
    #   <p>Sets the <code>Expires</code> header of the response.</p>
    #
    #   @return [Time]
    #
    # @!attribute version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when decrypting the object (for example,
    #            AES256).</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 used to encrypt the data. This
    #            value is used to decrypt the object when recovering it and must match the one used when
    #            storing the data. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute part_number
    #   <p>Part number of the object being read. This is a positive integer between 1 and 10,000.
    #            Effectively performs a 'ranged' GET request for the part specified. Useful for downloading
    #            just a part of an object.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_mode
    #   <p>To retrieve the checksum, this mode must be enabled.</p>
    #
    #   Enum, one of: ["ENABLED"]
    #
    #   @return [String]
    #
    GetObjectInput = ::Struct.new(
      :bucket,
      :if_match,
      :if_modified_since,
      :if_none_match,
      :if_unmodified_since,
      :key,
      :range,
      :response_cache_control,
      :response_content_disposition,
      :response_content_encoding,
      :response_content_language,
      :response_content_type,
      :response_expires,
      :version_id,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :request_payer,
      :part_number,
      :expected_bucket_owner,
      :checksum_mode,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.part_number ||= 0
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::GetObjectInput "\
          "bucket=#{bucket || 'nil'}, "\
          "if_match=#{if_match || 'nil'}, "\
          "if_modified_since=#{if_modified_since || 'nil'}, "\
          "if_none_match=#{if_none_match || 'nil'}, "\
          "if_unmodified_since=#{if_unmodified_since || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "range=#{range || 'nil'}, "\
          "response_cache_control=#{response_cache_control || 'nil'}, "\
          "response_content_disposition=#{response_content_disposition || 'nil'}, "\
          "response_content_encoding=#{response_content_encoding || 'nil'}, "\
          "response_content_language=#{response_content_language || 'nil'}, "\
          "response_content_type=#{response_content_type || 'nil'}, "\
          "response_expires=#{response_expires || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "request_payer=#{request_payer || 'nil'}, "\
          "part_number=#{part_number || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, "\
          "checksum_mode=#{checksum_mode || 'nil'}>"
      end
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object whose legal hold status you want to retrieve. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key name for the object whose legal hold status you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID of the object whose legal hold status you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetObjectLegalHoldInput = ::Struct.new(
      :bucket,
      :key,
      :version_id,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute legal_hold
    #   <p>The current legal hold status for the specified object.</p>
    #
    #   @return [ObjectLockLegalHold]
    #
    GetObjectLegalHoldOutput = ::Struct.new(
      :legal_hold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket whose Object Lock configuration you want to retrieve.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetObjectLockConfigurationInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute object_lock_configuration
    #   <p>The specified bucket's Object Lock configuration.</p>
    #
    #   @return [ObjectLockConfiguration]
    #
    GetObjectLockConfigurationOutput = ::Struct.new(
      :object_lock_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute body
    #   <p>Object data.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_marker
    #   <p>Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If
    #            false, this response header does not appear in the response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute accept_ranges
    #   <p>Indicates that a range of bytes was specified.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>If the object expiration is configured (see PUT Bucket lifecycle), the response includes
    #            this header. It includes the <code>expiry-date</code> and <code>rule-id</code> key-value
    #            pairs providing object expiration information. The value of the <code>rule-id</code> is
    #            URL-encoded.</p>
    #
    #   @return [String]
    #
    # @!attribute restore
    #   <p>Provides information about object restoration action and expiration time of the restored
    #            object copy.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>Creation date of the object.</p>
    #
    #   @return [Time]
    #
    # @!attribute content_length
    #   <p>Size of the body in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute e_tag
    #   <p>An entity tag (ETag) is an opaque identifier assigned by a web server to a specific
    #            version of a resource found at a URL.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute missing_meta
    #   <p>This is set to the number of metadata entries not returned in <code>x-amz-meta</code>
    #            headers. This can happen if you create metadata using an API like SOAP that supports more
    #            flexible metadata than the REST API. For example, using SOAP, you can create metadata whose
    #            values are not legal HTTP headers.</p>
    #
    #   @return [Integer]
    #
    # @!attribute version_id
    #   <p>Version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #
    #   @return [String]
    #
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #
    #   @return [String]
    #
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #
    #   @return [String]
    #
    # @!attribute content_range
    #   <p>The portion of the object returned in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #
    #   @return [String]
    #
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #
    #   @return [Time]
    #
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header confirming the encryption algorithm used.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the object uses an S3 Bucket Key for server-side encryption with Amazon Web Services
    #            KMS (SSE-KMS).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute storage_class
    #   <p>Provides storage class information of the object. Amazon S3 returns this header for all
    #            objects except for S3 Standard storage class objects.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute replication_status
    #   <p>Amazon S3 can return this if your request involves a bucket that is either a source or
    #            destination in a replication rule.</p>
    #
    #   Enum, one of: ["COMPLETE", "PENDING", "FAILED", "REPLICA"]
    #
    #   @return [String]
    #
    # @!attribute parts_count
    #   <p>The count of parts this object has. This value is only returned if you specify
    #               <code>partNumber</code> in your request and the object was uploaded as a multipart
    #            upload.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tag_count
    #   <p>The number of tags, if any, on the object.</p>
    #
    #   @return [Integer]
    #
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode currently in place for this object.</p>
    #
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when this object's Object Lock will expire.</p>
    #
    #   @return [Time]
    #
    # @!attribute object_lock_legal_hold_status
    #   <p>Indicates whether this object has an active legal hold. This field is only returned if
    #            you have permission to view an object's legal hold status. </p>
    #
    #   Enum, one of: ["ON", "OFF"]
    #
    #   @return [String]
    #
    GetObjectOutput = ::Struct.new(
      :body,
      :delete_marker,
      :accept_ranges,
      :expiration,
      :restore,
      :last_modified,
      :content_length,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      :missing_meta,
      :version_id,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_range,
      :content_type,
      :expires,
      :website_redirect_location,
      :server_side_encryption,
      :metadata,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :bucket_key_enabled,
      :storage_class,
      :request_charged,
      :replication_status,
      :parts_count,
      :tag_count,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :object_lock_legal_hold_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_marker ||= false
        self.content_length ||= 0
        self.missing_meta ||= 0
        self.bucket_key_enabled ||= false
        self.parts_count ||= 0
        self.tag_count ||= 0
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::GetObjectOutput "\
          "body=#{body || 'nil'}, "\
          "delete_marker=#{delete_marker || 'nil'}, "\
          "accept_ranges=#{accept_ranges || 'nil'}, "\
          "expiration=#{expiration || 'nil'}, "\
          "restore=#{restore || 'nil'}, "\
          "last_modified=#{last_modified || 'nil'}, "\
          "content_length=#{content_length || 'nil'}, "\
          "e_tag=#{e_tag || 'nil'}, "\
          "checksum_crc32=#{checksum_crc32 || 'nil'}, "\
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, "\
          "checksum_sha1=#{checksum_sha1 || 'nil'}, "\
          "checksum_sha256=#{checksum_sha256 || 'nil'}, "\
          "missing_meta=#{missing_meta || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "cache_control=#{cache_control || 'nil'}, "\
          "content_disposition=#{content_disposition || 'nil'}, "\
          "content_encoding=#{content_encoding || 'nil'}, "\
          "content_language=#{content_language || 'nil'}, "\
          "content_range=#{content_range || 'nil'}, "\
          "content_type=#{content_type || 'nil'}, "\
          "expires=#{expires || 'nil'}, "\
          "website_redirect_location=#{website_redirect_location || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "metadata=#{metadata || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "storage_class=#{storage_class || 'nil'}, "\
          "request_charged=#{request_charged || 'nil'}, "\
          "replication_status=#{replication_status || 'nil'}, "\
          "parts_count=#{parts_count || 'nil'}, "\
          "tag_count=#{tag_count || 'nil'}, "\
          "object_lock_mode=#{object_lock_mode || 'nil'}, "\
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, "\
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}>"
      end
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object whose retention settings you want to retrieve. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key name for the object whose retention settings you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID for the object whose retention settings you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetObjectRetentionInput = ::Struct.new(
      :bucket,
      :key,
      :version_id,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute retention
    #   <p>The container element for an object's retention settings.</p>
    #
    #   @return [ObjectLockRetention]
    #
    GetObjectRetentionOutput = ::Struct.new(
      :retention,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object for which to get the tagging information. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Object key for which to get the tagging information.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The versionId of the object for which to get the tagging information.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    GetObjectTaggingInput = ::Struct.new(
      :bucket,
      :key,
      :version_id,
      :expected_bucket_owner,
      :request_payer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute version_id
    #   <p>The versionId of the object for which you got the tagging information.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_set
    #   <p>Contains the tag set.</p>
    #
    #   @return [Array<Tag>]
    #
    GetObjectTaggingOutput = ::Struct.new(
      :version_id,
      :tag_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the object for which to get the torrent files.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The object key for which to get the information.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetObjectTorrentInput = ::Struct.new(
      :bucket,
      :key,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute body
    #   <p>A Bencoded dictionary as defined by the BitTorrent specification</p>
    #
    #   @return [String]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    GetObjectTorrentOutput = ::Struct.new(
      :body,
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want
    #            to retrieve. </p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    GetPublicAccessBlockInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration currently in effect for this Amazon S3
    #            bucket.</p>
    #
    #   @return [PublicAccessBlockConfiguration]
    #
    GetPublicAccessBlockOutput = ::Struct.new(
      :public_access_block_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for S3 Glacier job parameters.</p>
    #
    # @!attribute tier
    #   <p>Retrieval tier at which the restore will be processed.</p>
    #
    #   Enum, one of: ["Standard", "Bulk", "Expedited"]
    #
    #   @return [String]
    #
    GlacierJobParameters = ::Struct.new(
      :tier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for grant information.</p>
    #
    # @!attribute grantee
    #   <p>The person being granted permissions.</p>
    #
    #   @return [Grantee]
    #
    # @!attribute permission
    #   <p>Specifies the permission given to the grantee.</p>
    #
    #   Enum, one of: ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #
    #   @return [String]
    #
    Grant = ::Struct.new(
      :grantee,
      :permission,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the person being granted permissions.</p>
    #
    # @!attribute display_name
    #   <p>Screen name of the grantee.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>Email address of the grantee.</p>
    #            <note>
    #               <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #               <ul>
    #                  <li>
    #                     <p>US East (N. Virginia)</p>
    #                  </li>
    #                  <li>
    #                     <p>US West (N. California)</p>
    #                  </li>
    #                  <li>
    #                     <p> US West (Oregon)</p>
    #                  </li>
    #                  <li>
    #                     <p> Asia Pacific (Singapore)</p>
    #                  </li>
    #                  <li>
    #                     <p>Asia Pacific (Sydney)</p>
    #                  </li>
    #                  <li>
    #                     <p>Asia Pacific (Tokyo)</p>
    #                  </li>
    #                  <li>
    #                     <p>Europe (Ireland)</p>
    #                  </li>
    #                  <li>
    #                     <p>South America (São Paulo)</p>
    #                  </li>
    #               </ul>
    #               <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The canonical user ID of the grantee.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>URI of the grantee group.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Type of grantee</p>
    #
    #   Enum, one of: ["CanonicalUser", "AmazonCustomerByEmail", "Group"]
    #
    #   @return [String]
    #
    Grantee = ::Struct.new(
      :display_name,
      :email_address,
      :id,
      :uri,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    HeadBucketInput = ::Struct.new(
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    HeadBucketOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the object.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute if_match
    #   <p>Return the object only if its entity tag (ETag) is the same as the one specified;
    #            otherwise, return a 412 (precondition failed) error.</p>
    #
    #   @return [String]
    #
    # @!attribute if_modified_since
    #   <p>Return the object only if it has been modified since the specified time; otherwise,
    #            return a 304 (not modified) error.</p>
    #
    #   @return [Time]
    #
    # @!attribute if_none_match
    #   <p>Return the object only if its entity tag (ETag) is different from the one specified;
    #            otherwise, return a 304 (not modified) error.</p>
    #
    #   @return [String]
    #
    # @!attribute if_unmodified_since
    #   <p>Return the object only if it has not been modified since the specified time; otherwise,
    #            return a 412 (precondition failed) error.</p>
    #
    #   @return [Time]
    #
    # @!attribute key
    #   <p>The object key.</p>
    #
    #   @return [String]
    #
    # @!attribute range
    #   <p>HeadObject returns only the metadata for an object. If the Range is satisfiable, only
    #            the <code>ContentLength</code> is affected in the response. If the Range is not
    #            satisfiable, S3 returns a <code>416 - Requested Range Not Satisfiable</code> error.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute part_number
    #   <p>Part number of the object being read. This is a positive integer between 1 and 10,000.
    #            Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about
    #            the size of the part and the number of parts in this object.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_mode
    #   <p>To retrieve the checksum, this parameter must be enabled.</p>
    #            <p>In addition, if you enable <code>ChecksumMode</code> and the object is encrypted with
    #            Amazon Web Services Key Management Service (Amazon Web Services KMS), you must have permission to use the
    #               <code>kms:Decrypt</code> action for the request to succeed.</p>
    #
    #   Enum, one of: ["ENABLED"]
    #
    #   @return [String]
    #
    HeadObjectInput = ::Struct.new(
      :bucket,
      :if_match,
      :if_modified_since,
      :if_none_match,
      :if_unmodified_since,
      :key,
      :range,
      :version_id,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :request_payer,
      :part_number,
      :expected_bucket_owner,
      :checksum_mode,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.part_number ||= 0
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::HeadObjectInput "\
          "bucket=#{bucket || 'nil'}, "\
          "if_match=#{if_match || 'nil'}, "\
          "if_modified_since=#{if_modified_since || 'nil'}, "\
          "if_none_match=#{if_none_match || 'nil'}, "\
          "if_unmodified_since=#{if_unmodified_since || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "range=#{range || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "request_payer=#{request_payer || 'nil'}, "\
          "part_number=#{part_number || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, "\
          "checksum_mode=#{checksum_mode || 'nil'}>"
      end
    end

    # @!attribute delete_marker
    #   <p>Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If
    #            false, this response header does not appear in the response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute accept_ranges
    #   <p>Indicates that a range of bytes was specified.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>If the object expiration is configured (see PUT Bucket lifecycle), the response includes
    #            this header. It includes the <code>expiry-date</code> and <code>rule-id</code> key-value
    #            pairs providing object expiration information. The value of the <code>rule-id</code> is
    #            URL-encoded.</p>
    #
    #   @return [String]
    #
    # @!attribute restore
    #   <p>If the object is an archived object (an object whose storage class is GLACIER), the
    #            response includes this header if either the archive restoration is in progress (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html">RestoreObject</a> or an archive copy is already restored.</p>
    #            <p> If an archive copy is already restored, the header value indicates when Amazon S3 is
    #            scheduled to delete the object copy. For example:</p>
    #            <p>
    #               <code>x-amz-restore: ongoing-request="false", expiry-date="Fri, 21 Dec 2012 00:00:00
    #               GMT"</code>
    #            </p>
    #            <p>If the object restoration is in progress, the header returns the value
    #               <code>ongoing-request="true"</code>.</p>
    #            <p>For more information about archiving objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html lifecycle-transition-general-considerations">Transitioning Objects: General Considerations</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute archive_status
    #   <p>The archive state of the head object.</p>
    #
    #   Enum, one of: ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>Creation date of the object.</p>
    #
    #   @return [Time]
    #
    # @!attribute content_length
    #   <p>Size of the body in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>An entity tag (ETag) is an opaque identifier assigned by a web server to a specific
    #            version of a resource found at a URL.</p>
    #
    #   @return [String]
    #
    # @!attribute missing_meta
    #   <p>This is set to the number of metadata entries not returned in <code>x-amz-meta</code>
    #            headers. This can happen if you create metadata using an API like SOAP that supports more
    #            flexible metadata than the REST API. For example, using SOAP, you can create metadata whose
    #            values are not legal HTTP headers.</p>
    #
    #   @return [Integer]
    #
    # @!attribute version_id
    #   <p>Version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #
    #   @return [String]
    #
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #
    #   @return [String]
    #
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #
    #   @return [String]
    #
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #
    #   @return [Time]
    #
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header confirming the encryption algorithm used.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the object uses an S3 Bucket Key for server-side encryption with Amazon Web Services
    #            KMS (SSE-KMS).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute storage_class
    #   <p>Provides storage class information of the object. Amazon S3 returns this header for all
    #            objects except for S3 Standard storage class objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute replication_status
    #   <p>Amazon S3 can return this header if your request involves a bucket that is either a source or
    #            a destination in a replication rule.</p>
    #            <p>In replication, you have a source bucket on which you configure replication and
    #            destination bucket or buckets where Amazon S3 stores object replicas. When you request an object
    #               (<code>GetObject</code>) or object metadata (<code>HeadObject</code>) from these
    #            buckets, Amazon S3 will return the <code>x-amz-replication-status</code> header in the response
    #            as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>If requesting an object from the source bucket</b>,
    #                  Amazon S3 will return the <code>x-amz-replication-status</code> header if the object in
    #                  your request is eligible for replication.</p>
    #                  <p> For example, suppose that in your replication configuration, you specify object
    #                  prefix <code>TaxDocs</code> requesting Amazon S3 to replicate objects with key prefix
    #                     <code>TaxDocs</code>. Any objects you upload with this key name prefix, for
    #                  example <code>TaxDocs/document1.pdf</code>, are eligible for replication. For any
    #                  object request with this key name prefix, Amazon S3 will return the
    #                     <code>x-amz-replication-status</code> header with value PENDING, COMPLETED or
    #                  FAILED indicating object replication status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>If requesting an object from a destination
    #                  bucket</b>, Amazon S3 will return the <code>x-amz-replication-status</code> header
    #                  with value REPLICA if the object in your request is a replica that Amazon S3 created and
    #                  there is no replica modification replication in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>When replicating objects to multiple destination
    #                     buckets</b>, the <code>x-amz-replication-status</code> header acts
    #                  differently. The header of the source object will only return a value of COMPLETED
    #                  when replication is successful to all destinations. The header will remain at value
    #                  PENDING until replication has completed for all destinations. If one or more
    #                  destinations fails replication the header will return FAILED. </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Replication</a>.</p>
    #
    #   Enum, one of: ["COMPLETE", "PENDING", "FAILED", "REPLICA"]
    #
    #   @return [String]
    #
    # @!attribute parts_count
    #   <p>The count of parts this object has. This value is only returned if you specify
    #               <code>partNumber</code> in your request and the object was uploaded as a multipart
    #            upload.</p>
    #
    #   @return [Integer]
    #
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode, if any, that's in effect for this object. This header is only
    #            returned if the requester has the <code>s3:GetObjectRetention</code> permission. For more
    #            information about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Object Lock</a>. </p>
    #
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when the Object Lock retention period expires. This header is only
    #            returned if the requester has the <code>s3:GetObjectRetention</code> permission.</p>
    #
    #   @return [Time]
    #
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether a legal hold is in effect for this object. This header is only
    #            returned if the requester has the <code>s3:GetObjectLegalHold</code> permission. This
    #            header is not returned if the specified version of this object has never had a legal hold
    #            applied. For more information about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Object Lock</a>.</p>
    #
    #   Enum, one of: ["ON", "OFF"]
    #
    #   @return [String]
    #
    HeadObjectOutput = ::Struct.new(
      :delete_marker,
      :accept_ranges,
      :expiration,
      :restore,
      :archive_status,
      :last_modified,
      :content_length,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      :e_tag,
      :missing_meta,
      :version_id,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_type,
      :expires,
      :website_redirect_location,
      :server_side_encryption,
      :metadata,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :bucket_key_enabled,
      :storage_class,
      :request_charged,
      :replication_status,
      :parts_count,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :object_lock_legal_hold_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_marker ||= false
        self.content_length ||= 0
        self.missing_meta ||= 0
        self.bucket_key_enabled ||= false
        self.parts_count ||= 0
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::HeadObjectOutput "\
          "delete_marker=#{delete_marker || 'nil'}, "\
          "accept_ranges=#{accept_ranges || 'nil'}, "\
          "expiration=#{expiration || 'nil'}, "\
          "restore=#{restore || 'nil'}, "\
          "archive_status=#{archive_status || 'nil'}, "\
          "last_modified=#{last_modified || 'nil'}, "\
          "content_length=#{content_length || 'nil'}, "\
          "checksum_crc32=#{checksum_crc32 || 'nil'}, "\
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, "\
          "checksum_sha1=#{checksum_sha1 || 'nil'}, "\
          "checksum_sha256=#{checksum_sha256 || 'nil'}, "\
          "e_tag=#{e_tag || 'nil'}, "\
          "missing_meta=#{missing_meta || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "cache_control=#{cache_control || 'nil'}, "\
          "content_disposition=#{content_disposition || 'nil'}, "\
          "content_encoding=#{content_encoding || 'nil'}, "\
          "content_language=#{content_language || 'nil'}, "\
          "content_type=#{content_type || 'nil'}, "\
          "expires=#{expires || 'nil'}, "\
          "website_redirect_location=#{website_redirect_location || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "metadata=#{metadata || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "storage_class=#{storage_class || 'nil'}, "\
          "request_charged=#{request_charged || 'nil'}, "\
          "replication_status=#{replication_status || 'nil'}, "\
          "parts_count=#{parts_count || 'nil'}, "\
          "object_lock_mode=#{object_lock_mode || 'nil'}, "\
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, "\
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}>"
      end
    end

    # <p>Container for the <code>Suffix</code> element.</p>
    #
    # @!attribute suffix
    #   <p>A suffix that is appended to a request that is for a directory on the website endpoint
    #            (for example,if the suffix is index.html and you make a request to samplebucket/images/ the
    #            data that is returned will be for the object with the key name images/index.html) The
    #            suffix must not be empty and must not include a slash character.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    IndexDocument = ::Struct.new(
      :suffix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container element that identifies who initiated the multipart upload. </p>
    #
    # @!attribute id
    #   <p>If the principal is an Amazon Web Services account, it provides the Canonical User ID. If the
    #            principal is an IAM User, it provides a user ARN value.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>Name of the Principal.</p>
    #
    #   @return [String]
    #
    Initiator = ::Struct.new(
      :id,
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the serialization format of the object.</p>
    #
    # @!attribute csv
    #   <p>Describes the serialization of a CSV-encoded object.</p>
    #
    #   @return [CSVInput]
    #
    # @!attribute compression_type
    #   <p>Specifies object's compression format. Valid values: NONE, GZIP, BZIP2. Default Value:
    #            NONE.</p>
    #
    #   Enum, one of: ["NONE", "GZIP", "BZIP2"]
    #
    #   @return [String]
    #
    # @!attribute json
    #   <p>Specifies JSON as object's input serialization format.</p>
    #
    #   @return [JSONInput]
    #
    # @!attribute parquet
    #   <p>Specifies Parquet as object's input serialization format.</p>
    #
    #   @return [ParquetInput]
    #
    InputSerialization = ::Struct.new(
      :csv,
      :compression_type,
      :json,
      :parquet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IntelligentTieringAccessTier
    #
    module IntelligentTieringAccessTier
      # No documentation available.
      #
      ARCHIVE_ACCESS = "ARCHIVE_ACCESS"

      # No documentation available.
      #
      DEEP_ARCHIVE_ACCESS = "DEEP_ARCHIVE_ACCESS"
    end

    # <p>A container for specifying S3 Intelligent-Tiering filters. The filters determine the
    #          subset of objects to which the rule applies.</p>
    #
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects to which the
    #            configuration applies.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>All of these tags must exist in the object's tag set in order for the configuration to
    #            apply.</p>
    #
    #   @return [Array<Tag>]
    #
    IntelligentTieringAndOperator = ::Struct.new(
      :prefix,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the S3 Intelligent-Tiering configuration for an Amazon S3 bucket.</p>
    #          <p>For information about the S3 Intelligent-Tiering storage class, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access">Storage class
    #             for automatically optimizing frequently and infrequently accessed
    #          objects</a>.</p>
    #
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Specifies a bucket filter. The configuration only includes objects that meet the
    #            filter's criteria.</p>
    #
    #   @return [IntelligentTieringFilter]
    #
    # @!attribute status
    #   <p>Specifies the status of the configuration.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute tierings
    #   <p>Specifies the S3 Intelligent-Tiering storage class tier of the configuration.</p>
    #
    #   @return [Array<Tiering>]
    #
    IntelligentTieringConfiguration = ::Struct.new(
      :id,
      :filter,
      :status,
      :tierings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>Filter</code> is used to identify objects that the S3 Intelligent-Tiering
    #          configuration applies to.</p>
    #
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects to which the rule
    #            applies.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute tag
    #   <p>A container of a key value name pair.</p>
    #
    #   @return [Tag]
    #
    # @!attribute and
    #   <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
    #            The operator must have at least two predicates, and an object must match all of the
    #            predicates in order for the filter to apply.</p>
    #
    #   @return [IntelligentTieringAndOperator]
    #
    IntelligentTieringFilter = ::Struct.new(
      :prefix,
      :tag,
      :and,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IntelligentTieringStatus
    #
    module IntelligentTieringStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # <p>Object is archived and inaccessible until restored.</p>
    #
    # @!attribute storage_class
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute access_tier
    #   Enum, one of: ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    #
    #   @return [String]
    #
    InvalidObjectState = ::Struct.new(
      :storage_class,
      :access_tier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the inventory configuration for an Amazon S3 bucket. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html">GET Bucket inventory</a> in the <i>Amazon S3 API Reference</i>. </p>
    #
    # @!attribute destination
    #   <p>Contains information about where to publish the inventory results.</p>
    #
    #   @return [InventoryDestination]
    #
    # @!attribute is_enabled
    #   <p>Specifies whether the inventory is enabled or disabled. If set to <code>True</code>, an
    #            inventory list is generated. If set to <code>False</code>, no inventory list is
    #            generated.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute filter
    #   <p>Specifies an inventory filter. The inventory only includes objects that meet the
    #            filter's criteria.</p>
    #
    #   @return [InventoryFilter]
    #
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute included_object_versions
    #   <p>Object versions to include in the inventory list. If set to <code>All</code>, the list
    #            includes all the object versions, which adds the version-related fields
    #               <code>VersionId</code>, <code>IsLatest</code>, and <code>DeleteMarker</code> to the
    #            list. If set to <code>Current</code>, the list does not contain these version-related
    #            fields.</p>
    #
    #   Enum, one of: ["All", "Current"]
    #
    #   @return [String]
    #
    # @!attribute optional_fields
    #   <p>Contains the optional fields that are included in the inventory results.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute schedule
    #   <p>Specifies the schedule for generating inventory results.</p>
    #
    #   @return [InventorySchedule]
    #
    InventoryConfiguration = ::Struct.new(
      :destination,
      :is_enabled,
      :filter,
      :id,
      :included_object_versions,
      :optional_fields,
      :schedule,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_enabled ||= false
      end
    end

    # <p>Specifies the inventory configuration for an Amazon S3 bucket.</p>
    #
    # @!attribute s3_bucket_destination
    #   <p>Contains the bucket name, file format, bucket owner (optional), and prefix (optional)
    #            where inventory results are published.</p>
    #
    #   @return [InventoryS3BucketDestination]
    #
    InventoryDestination = ::Struct.new(
      :s3_bucket_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the type of server-side encryption used to encrypt the inventory
    #          results.</p>
    #
    # @!attribute sses3
    #   <p>Specifies the use of SSE-S3 to encrypt delivered inventory reports.</p>
    #
    #   @return [SSES3]
    #
    # @!attribute ssekms
    #   <p>Specifies the use of SSE-KMS to encrypt delivered inventory reports.</p>
    #
    #   @return [SSEKMS]
    #
    InventoryEncryption = ::Struct.new(
      :sses3,
      :ssekms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an inventory filter. The inventory only includes objects that meet the
    #          filter's criteria.</p>
    #
    # @!attribute prefix
    #   <p>The prefix that an object must have to be included in the inventory results.</p>
    #
    #   @return [String]
    #
    InventoryFilter = ::Struct.new(
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InventoryFormat
    #
    module InventoryFormat
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      ORC = "ORC"

      # No documentation available.
      #
      Parquet = "Parquet"
    end

    # Includes enum constants for InventoryFrequency
    #
    module InventoryFrequency
      # No documentation available.
      #
      Daily = "Daily"

      # No documentation available.
      #
      Weekly = "Weekly"
    end

    # Includes enum constants for InventoryIncludedObjectVersions
    #
    module InventoryIncludedObjectVersions
      # No documentation available.
      #
      All = "All"

      # No documentation available.
      #
      Current = "Current"
    end

    # Includes enum constants for InventoryOptionalField
    #
    module InventoryOptionalField
      # No documentation available.
      #
      Size = "Size"

      # No documentation available.
      #
      LastModifiedDate = "LastModifiedDate"

      # No documentation available.
      #
      StorageClass = "StorageClass"

      # No documentation available.
      #
      ETag = "ETag"

      # No documentation available.
      #
      IsMultipartUploaded = "IsMultipartUploaded"

      # No documentation available.
      #
      ReplicationStatus = "ReplicationStatus"

      # No documentation available.
      #
      EncryptionStatus = "EncryptionStatus"

      # No documentation available.
      #
      ObjectLockRetainUntilDate = "ObjectLockRetainUntilDate"

      # No documentation available.
      #
      ObjectLockMode = "ObjectLockMode"

      # No documentation available.
      #
      ObjectLockLegalHoldStatus = "ObjectLockLegalHoldStatus"

      # No documentation available.
      #
      IntelligentTieringAccessTier = "IntelligentTieringAccessTier"

      # No documentation available.
      #
      BucketKeyStatus = "BucketKeyStatus"

      # No documentation available.
      #
      ChecksumAlgorithm = "ChecksumAlgorithm"
    end

    # <p>Contains the bucket name, file format, bucket owner (optional), and prefix (optional)
    #          where inventory results are published.</p>
    #
    # @!attribute account_id
    #   <p>The account ID that owns the destination S3 bucket. If no account ID is provided, the
    #            owner is not validated before exporting data. </p>
    #            <note>
    #               <p> Although this value is optional, we strongly recommend that you set it to help
    #               prevent problems if the destination bucket ownership changes. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket where inventory results will be
    #            published.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>Specifies the output format of the inventory results.</p>
    #
    #   Enum, one of: ["CSV", "ORC", "Parquet"]
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The prefix that is prepended to all inventory results.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   <p>Contains the type of server-side encryption used to encrypt the inventory
    #            results.</p>
    #
    #   @return [InventoryEncryption]
    #
    InventoryS3BucketDestination = ::Struct.new(
      :account_id,
      :bucket,
      :format,
      :prefix,
      :encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the schedule for generating inventory results.</p>
    #
    # @!attribute frequency
    #   <p>Specifies how frequently inventory results are produced.</p>
    #
    #   Enum, one of: ["Daily", "Weekly"]
    #
    #   @return [String]
    #
    InventorySchedule = ::Struct.new(
      :frequency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies JSON as object's input serialization format.</p>
    #
    # @!attribute type
    #   <p>The type of JSON. Valid values: Document, Lines.</p>
    #
    #   Enum, one of: ["DOCUMENT", "LINES"]
    #
    #   @return [String]
    #
    JSONInput = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies JSON as request's output serialization format.</p>
    #
    # @!attribute record_delimiter
    #   <p>The value used to separate individual records in the output. If no value is specified,
    #            Amazon S3 uses a newline character ('\n').</p>
    #
    #   @return [String]
    #
    JSONOutput = ::Struct.new(
      :record_delimiter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JSONType
    #
    module JSONType
      # No documentation available.
      #
      DOCUMENT = "DOCUMENT"

      # No documentation available.
      #
      LINES = "LINES"
    end

    # <p>A container for specifying the configuration for Lambda notifications.</p>
    #
    # @!attribute id
    #   <p>An optional unique identifier for configurations in a notification configuration. If you
    #            don't provide one, Amazon S3 will assign an ID.</p>
    #
    #   @return [String]
    #
    # @!attribute lambda_function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function that Amazon S3 invokes when the
    #            specified event type occurs.</p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>The Amazon S3 bucket event for which to invoke the Lambda function. For more information,
    #            see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Supported
    #               Event Types</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filter
    #   <p>Specifies object key name filtering rules. For information about key name filtering, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring
    #               Event Notifications</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [NotificationConfigurationFilter]
    #
    LambdaFunctionConfiguration = ::Struct.new(
      :id,
      :lambda_function_arn,
      :events,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the expiration for the lifecycle of the object.</p>
    #          <p>For more information see, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html">Managing your storage
    #             lifecycle</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute date
    #   <p>Indicates at what date the object is to be moved or deleted. Should be in GMT ISO 8601
    #            Format.</p>
    #
    #   @return [Time]
    #
    # @!attribute days
    #   <p>Indicates the lifetime, in days, of the objects that are subject to the rule. The value
    #            must be a non-zero positive integer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expired_object_delete_marker
    #   <p>Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set
    #            to true, the delete marker will be expired; if set to false the policy takes no action.
    #            This cannot be specified with Days or Date in a Lifecycle Expiration Policy.</p>
    #
    #   @return [Boolean]
    #
    LifecycleExpiration = ::Struct.new(
      :date,
      :days,
      :expired_object_delete_marker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.days ||= 0
        self.expired_object_delete_marker ||= false
      end
    end

    # <p>A lifecycle rule for individual objects in an Amazon S3 bucket.</p>
    #          <p>For more information see, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html">Managing your storage
    #             lifecycle</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute expiration
    #   <p>Specifies the expiration for the lifecycle of the object in the form of date, days and,
    #            whether the object has a delete marker.</p>
    #
    #   @return [LifecycleExpiration]
    #
    # @!attribute id
    #   <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>Prefix identifying one or more objects to which the rule applies. This is
    #            no longer used; use <code>Filter</code> instead.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>The <code>Filter</code> is used to identify objects that a Lifecycle Rule applies to. A
    #               <code>Filter</code> must have exactly one of <code>Prefix</code>, <code>Tag</code>, or
    #               <code>And</code> specified. <code>Filter</code> is required if the
    #               <code>LifecycleRule</code> does not contain a <code>Prefix</code> element.</p>
    #
    #   @return [LifecycleRuleFilter]
    #
    # @!attribute status
    #   <p>If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not
    #            currently being applied.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute transitions
    #   <p>Specifies when an Amazon S3 object transitions to a specified storage class.</p>
    #
    #   @return [Array<Transition>]
    #
    # @!attribute noncurrent_version_transitions
    #   <p> Specifies the transition rule for the lifecycle rule that describes when noncurrent
    #            objects transition to a specific storage class. If your bucket is versioning-enabled (or
    #            versioning is suspended), you can set this action to request that Amazon S3 transition
    #            noncurrent object versions to a specific storage class at a set period in the object's
    #            lifetime. </p>
    #
    #   @return [Array<NoncurrentVersionTransition>]
    #
    # @!attribute noncurrent_version_expiration
    #   <p>Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently
    #            deletes the noncurrent object versions. You set this lifecycle configuration action on a
    #            bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent
    #            object versions at a specific period in the object's lifetime.</p>
    #
    #   @return [NoncurrentVersionExpiration]
    #
    # @!attribute abort_incomplete_multipart_upload
    #   <p>Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will
    #            wait before permanently removing all parts of the upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html mpu-abort-incomplete-mpu-lifecycle-config">
    #               Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [AbortIncompleteMultipartUpload]
    #
    LifecycleRule = ::Struct.new(
      :expiration,
      :id,
      :prefix,
      :filter,
      :status,
      :transitions,
      :noncurrent_version_transitions,
      :noncurrent_version_expiration,
      :abort_incomplete_multipart_upload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This is used in a Lifecycle Rule Filter to apply a logical AND to two or more
    #          predicates. The Lifecycle Rule will apply to any object matching all of the predicates
    #          configured inside the And operator.</p>
    #
    # @!attribute prefix
    #   <p>Prefix identifying one or more objects to which the rule applies.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>All of these tags must exist in the object's tag set in order for the rule to
    #            apply.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute object_size_greater_than
    #   <p>Minimum object size to which the rule applies.</p>
    #
    #   @return [Integer]
    #
    # @!attribute object_size_less_than
    #   <p>Maximum object size to which the rule applies.</p>
    #
    #   @return [Integer]
    #
    LifecycleRuleAndOperator = ::Struct.new(
      :prefix,
      :tags,
      :object_size_greater_than,
      :object_size_less_than,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.object_size_greater_than ||= 0
        self.object_size_less_than ||= 0
      end
    end

    # <p>The <code>Filter</code> is used to identify objects that a Lifecycle Rule applies to. A
    #             <code>Filter</code> must have exactly one of <code>Prefix</code>, <code>Tag</code>, or
    #             <code>And</code> specified.</p>
    #
    class LifecycleRuleFilter < Hearth::Union
      # <p>Prefix identifying one or more objects to which the rule applies.</p>
      #          <important>
      #             <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
      #          XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
      #             XML related object key constraints</a>.</p>
      #          </important>
      #
      class Prefix < LifecycleRuleFilter
        def to_h
          { prefix: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Prefix #{__getobj__ || 'nil'}>"
        end
      end

      # <p>This tag must exist in the object's tag set in order for the rule to apply.</p>
      #
      class Tag < LifecycleRuleFilter
        def to_h
          { tag: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Tag #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Minimum object size to which the rule applies.</p>
      #
      class ObjectSizeGreaterThan < LifecycleRuleFilter
        def to_h
          { object_size_greater_than: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::ObjectSizeGreaterThan #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Maximum object size to which the rule applies.</p>
      #
      class ObjectSizeLessThan < LifecycleRuleFilter
        def to_h
          { object_size_less_than: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::ObjectSizeLessThan #{__getobj__ || 'nil'}>"
        end
      end

      # <p>This is used in a Lifecycle Rule Filter to apply a logical AND to two or more
      #          predicates. The Lifecycle Rule will apply to any object matching all of the predicates
      #          configured inside the And operator.</p>
      #
      class And < LifecycleRuleFilter
        def to_h
          { and: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::And #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < LifecycleRuleFilter
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # @!attribute bucket
    #   <p>The name of the bucket from which analytics configurations are retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute continuation_token
    #   <p>The ContinuationToken that represents a placeholder from where this request should
    #            begin.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    ListBucketAnalyticsConfigurationsInput = ::Struct.new(
      :bucket,
      :continuation_token,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of analytics configurations is complete. A value of
    #            true indicates that the list is not complete and the NextContinuationToken will be provided
    #            for a subsequent request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute continuation_token
    #   <p>The marker that is used as a starting point for this analytics configuration list
    #            response. This value is present if it was sent in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute next_continuation_token
    #   <p>
    #               <code>NextContinuationToken</code> is sent when <code>isTruncated</code> is true, which
    #            indicates that there are more analytics configurations to list. The next request must
    #            include this <code>NextContinuationToken</code>. The token is obfuscated and is not a
    #            usable value.</p>
    #
    #   @return [String]
    #
    # @!attribute analytics_configuration_list
    #   <p>The list of analytics configurations for a bucket.</p>
    #
    #   @return [Array<AnalyticsConfiguration>]
    #
    ListBucketAnalyticsConfigurationsOutput = ::Struct.new(
      :is_truncated,
      :continuation_token,
      :next_continuation_token,
      :analytics_configuration_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_truncated ||= false
      end
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute continuation_token
    #   <p>The <code>ContinuationToken</code> that represents a placeholder from where this request
    #            should begin.</p>
    #
    #   @return [String]
    #
    ListBucketIntelligentTieringConfigurationsInput = ::Struct.new(
      :bucket,
      :continuation_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of analytics configurations is complete. A value of
    #               <code>true</code> indicates that the list is not complete and the
    #               <code>NextContinuationToken</code> will be provided for a subsequent request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute continuation_token
    #   <p>The <code>ContinuationToken</code> that represents a placeholder from where this request
    #            should begin.</p>
    #
    #   @return [String]
    #
    # @!attribute next_continuation_token
    #   <p>The marker used to continue this inventory configuration listing. Use the
    #               <code>NextContinuationToken</code> from this response to continue the listing in a
    #            subsequent request. The continuation token is an opaque value that Amazon S3 understands.</p>
    #
    #   @return [String]
    #
    # @!attribute intelligent_tiering_configuration_list
    #   <p>The list of S3 Intelligent-Tiering configurations for a bucket.</p>
    #
    #   @return [Array<IntelligentTieringConfiguration>]
    #
    ListBucketIntelligentTieringConfigurationsOutput = ::Struct.new(
      :is_truncated,
      :continuation_token,
      :next_continuation_token,
      :intelligent_tiering_configuration_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_truncated ||= false
      end
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the inventory configurations to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute continuation_token
    #   <p>The marker used to continue an inventory configuration listing that has been truncated.
    #            Use the NextContinuationToken from a previously truncated list response to continue the
    #            listing. The continuation token is an opaque value that Amazon S3 understands.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    ListBucketInventoryConfigurationsInput = ::Struct.new(
      :bucket,
      :continuation_token,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute continuation_token
    #   <p>If sent in the request, the marker that is used as a starting point for this inventory
    #            configuration list response.</p>
    #
    #   @return [String]
    #
    # @!attribute inventory_configuration_list
    #   <p>The list of inventory configurations for a bucket.</p>
    #
    #   @return [Array<InventoryConfiguration>]
    #
    # @!attribute is_truncated
    #   <p>Tells whether the returned list of inventory configurations is complete. A value of true
    #            indicates that the list is not complete and the NextContinuationToken is provided for a
    #            subsequent request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_continuation_token
    #   <p>The marker used to continue this inventory configuration listing. Use the
    #               <code>NextContinuationToken</code> from this response to continue the listing in a
    #            subsequent request. The continuation token is an opaque value that Amazon S3 understands.</p>
    #
    #   @return [String]
    #
    ListBucketInventoryConfigurationsOutput = ::Struct.new(
      :continuation_token,
      :inventory_configuration_list,
      :is_truncated,
      :next_continuation_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_truncated ||= false
      end
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the metrics configurations to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute continuation_token
    #   <p>The marker that is used to continue a metrics configuration listing that has been
    #            truncated. Use the NextContinuationToken from a previously truncated list response to
    #            continue the listing. The continuation token is an opaque value that Amazon S3
    #            understands.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    ListBucketMetricsConfigurationsInput = ::Struct.new(
      :bucket,
      :continuation_token,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of metrics configurations is complete. A value of
    #            true indicates that the list is not complete and the NextContinuationToken will be provided
    #            for a subsequent request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute continuation_token
    #   <p>The marker that is used as a starting point for this metrics configuration list
    #            response. This value is present if it was sent in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute next_continuation_token
    #   <p>The marker used to continue a metrics configuration listing that has been truncated. Use
    #            the <code>NextContinuationToken</code> from a previously truncated list response to
    #            continue the listing. The continuation token is an opaque value that Amazon S3
    #            understands.</p>
    #
    #   @return [String]
    #
    # @!attribute metrics_configuration_list
    #   <p>The list of metrics configurations for a bucket.</p>
    #
    #   @return [Array<MetricsConfiguration>]
    #
    ListBucketMetricsConfigurationsOutput = ::Struct.new(
      :is_truncated,
      :continuation_token,
      :next_continuation_token,
      :metrics_configuration_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_truncated ||= false
      end
    end

    ListBucketsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute buckets
    #   <p>The list of buckets owned by the requester.</p>
    #
    #   @return [Array<Bucket>]
    #
    # @!attribute owner
    #   <p>The owner of the buckets listed.</p>
    #
    #   @return [Owner]
    #
    ListBucketsOutput = ::Struct.new(
      :buckets,
      :owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>Character you use to group keys.</p>
    #            <p>All keys that contain the same string between the prefix, if specified, and the first
    #            occurrence of the delimiter after the prefix are grouped under a single result element,
    #               <code>CommonPrefixes</code>. If you don't specify the prefix parameter, then the
    #            substring starts at the beginning of the key. The keys that are grouped under
    #               <code>CommonPrefixes</code> result element are not returned elsewhere in the
    #            response.</p>
    #
    #   @return [String]
    #
    # @!attribute encoding_type
    #   <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
    #            method to use. An object key may contain any Unicode character; however, XML 1.0 parser
    #            cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
    #            characters that are not supported in XML 1.0, you can add this parameter to request that
    #            Amazon S3 encode the keys in the response.</p>
    #
    #   Enum, one of: ["url"]
    #
    #   @return [String]
    #
    # @!attribute key_marker
    #   <p>Together with upload-id-marker, this parameter specifies the multipart upload after
    #            which listing should begin.</p>
    #            <p>If <code>upload-id-marker</code> is not specified, only the keys lexicographically
    #            greater than the specified <code>key-marker</code> will be included in the list.</p>
    #            <p>If <code>upload-id-marker</code> is specified, any multipart uploads for a key equal to
    #            the <code>key-marker</code> might also be included, provided those multipart uploads have
    #            upload IDs lexicographically greater than the specified
    #            <code>upload-id-marker</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_uploads
    #   <p>Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response
    #            body. 1,000 is the maximum number of uploads that can be returned in a response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute prefix
    #   <p>Lists in-progress uploads only for those keys that begin with the specified prefix. You
    #            can use prefixes to separate a bucket into different grouping of keys. (You can think of
    #            using prefix to make groups in the same way you'd use a folder in a file system.)</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id_marker
    #   <p>Together with key-marker, specifies the multipart upload after which listing should
    #            begin. If key-marker is not specified, the upload-id-marker parameter is ignored.
    #            Otherwise, any multipart uploads for a key equal to the key-marker might be included in the
    #            list only if they have an upload ID lexicographically greater than the specified
    #               <code>upload-id-marker</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    ListMultipartUploadsInput = ::Struct.new(
      :bucket,
      :delimiter,
      :encoding_type,
      :key_marker,
      :max_uploads,
      :prefix,
      :upload_id_marker,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_uploads ||= 0
      end
    end

    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. Does not return the
    #            access point ARN or access point alias if used.</p>
    #
    #   @return [String]
    #
    # @!attribute key_marker
    #   <p>The key at or after which the listing began.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id_marker
    #   <p>Upload ID after which listing began.</p>
    #
    #   @return [String]
    #
    # @!attribute next_key_marker
    #   <p>When a list is truncated, this element specifies the value that should be used for the
    #            key-marker request parameter in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>When a prefix is provided in the request, this field contains the specified prefix. The
    #            result contains only keys starting with the specified prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>Contains the delimiter you specified in the request. If you don't specify a delimiter in
    #            your request, this element is absent from the response.</p>
    #
    #   @return [String]
    #
    # @!attribute next_upload_id_marker
    #   <p>When a list is truncated, this element specifies the value that should be used for the
    #               <code>upload-id-marker</code> request parameter in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_uploads
    #   <p>Maximum number of multipart uploads that could have been included in the
    #            response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of multipart uploads is truncated. A value of true
    #            indicates that the list was truncated. The list can be truncated if the number of multipart
    #            uploads exceeds the limit allowed or specified by max uploads.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute uploads
    #   <p>Container for elements related to a particular multipart upload. A response can contain
    #            zero or more <code>Upload</code> elements.</p>
    #
    #   @return [Array<MultipartUpload>]
    #
    # @!attribute common_prefixes
    #   <p>If you specify a delimiter in the request, then the result returns each distinct key
    #            prefix containing the delimiter in a <code>CommonPrefixes</code> element. The distinct key
    #            prefixes are returned in the <code>Prefix</code> child element.</p>
    #
    #   @return [Array<CommonPrefix>]
    #
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
    #            <p>If you specify <code>encoding-type</code> request parameter, Amazon S3 includes this element
    #            in the response, and returns encoded key name values in the following response
    #            elements:</p>
    #            <p>
    #               <code>Delimiter</code>, <code>KeyMarker</code>, <code>Prefix</code>,
    #               <code>NextKeyMarker</code>, <code>Key</code>.</p>
    #
    #   Enum, one of: ["url"]
    #
    #   @return [String]
    #
    ListMultipartUploadsOutput = ::Struct.new(
      :bucket,
      :key_marker,
      :upload_id_marker,
      :next_key_marker,
      :prefix,
      :delimiter,
      :next_upload_id_marker,
      :max_uploads,
      :is_truncated,
      :uploads,
      :common_prefixes,
      :encoding_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_uploads ||= 0
        self.is_truncated ||= false
      end
    end

    # @!attribute bucket
    #   <p>The bucket name that contains the objects. </p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>A delimiter is a character that you specify to group keys. All keys that contain the
    #            same string between the <code>prefix</code> and the first occurrence of the delimiter are
    #            grouped under a single result element in CommonPrefixes. These groups are counted as one
    #            result against the max-keys limitation. These keys are not returned elsewhere in the
    #            response.</p>
    #
    #   @return [String]
    #
    # @!attribute encoding_type
    #   <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
    #            method to use. An object key may contain any Unicode character; however, XML 1.0 parser
    #            cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
    #            characters that are not supported in XML 1.0, you can add this parameter to request that
    #            Amazon S3 encode the keys in the response.</p>
    #
    #   Enum, one of: ["url"]
    #
    #   @return [String]
    #
    # @!attribute key_marker
    #   <p>Specifies the key to start with when listing objects in a bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain more.
    #            If additional keys satisfy the search criteria, but were not returned because max-keys was
    #            exceeded, the response contains <isTruncated>true</isTruncated>. To return the
    #            additional keys, see key-marker and version-id-marker.</p>
    #
    #   @return [Integer]
    #
    # @!attribute prefix
    #   <p>Use this parameter to select only those keys that begin with the specified prefix. You
    #            can use prefixes to separate a bucket into different groupings of keys. (You can think of
    #            using prefix to make groups in the same way you'd use a folder in a file system.) You can
    #            use prefix with delimiter to roll up numerous objects into a single result under
    #            CommonPrefixes. </p>
    #
    #   @return [String]
    #
    # @!attribute version_id_marker
    #   <p>Specifies the object version you want to start listing from.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    ListObjectVersionsInput = ::Struct.new(
      :bucket,
      :delimiter,
      :encoding_type,
      :key_marker,
      :max_keys,
      :prefix,
      :version_id_marker,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_keys ||= 0
      end
    end

    # @!attribute is_truncated
    #   <p>A flag that indicates whether Amazon S3 returned all of the results that satisfied the search
    #            criteria. If your results were truncated, you can make a follow-up paginated request using
    #            the NextKeyMarker and NextVersionIdMarker response parameters as a starting place in
    #            another request to return the rest of the results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute key_marker
    #   <p>Marks the last key returned in a truncated response.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id_marker
    #   <p>Marks the last version of the key returned in a truncated response.</p>
    #
    #   @return [String]
    #
    # @!attribute next_key_marker
    #   <p>When the number of responses exceeds the value of <code>MaxKeys</code>,
    #               <code>NextKeyMarker</code> specifies the first key not returned that satisfies the
    #            search criteria. Use this value for the key-marker request parameter in a subsequent
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute next_version_id_marker
    #   <p>When the number of responses exceeds the value of <code>MaxKeys</code>,
    #               <code>NextVersionIdMarker</code> specifies the first object version not returned that
    #            satisfies the search criteria. Use this value for the version-id-marker request parameter
    #            in a subsequent request.</p>
    #
    #   @return [String]
    #
    # @!attribute versions
    #   <p>Container for version information.</p>
    #
    #   @return [Array<ObjectVersion>]
    #
    # @!attribute delete_markers
    #   <p>Container for an object that is a delete marker.</p>
    #
    #   @return [Array<DeleteMarkerEntry>]
    #
    # @!attribute name
    #   <p>The bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>Selects objects that start with the value supplied by this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>The delimiter grouping the included keys. A delimiter is a character that you specify to
    #            group keys. All keys that contain the same string between the prefix and the first
    #            occurrence of the delimiter are grouped under a single result element in
    #               <code>CommonPrefixes</code>. These groups are counted as one result against the max-keys
    #            limitation. These keys are not returned elsewhere in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_keys
    #   <p>Specifies the maximum number of objects to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute common_prefixes
    #   <p>All of the keys rolled up into a common prefix count as a single return when calculating
    #            the number of returns.</p>
    #
    #   @return [Array<CommonPrefix>]
    #
    # @!attribute encoding_type
    #   <p> Encoding type used by Amazon S3 to encode object key names in the XML response.</p>
    #            <p>If you specify encoding-type request parameter, Amazon S3 includes this element in the
    #            response, and returns encoded key name values in the following response elements:</p>
    #            <p>
    #               <code>KeyMarker, NextKeyMarker, Prefix, Key</code>, and <code>Delimiter</code>.</p>
    #
    #   Enum, one of: ["url"]
    #
    #   @return [String]
    #
    ListObjectVersionsOutput = ::Struct.new(
      :is_truncated,
      :key_marker,
      :version_id_marker,
      :next_key_marker,
      :next_version_id_marker,
      :versions,
      :delete_markers,
      :name,
      :prefix,
      :delimiter,
      :max_keys,
      :common_prefixes,
      :encoding_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_truncated ||= false
        self.max_keys ||= 0
      end
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the objects.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>A delimiter is a character you use to group keys.</p>
    #
    #   @return [String]
    #
    # @!attribute encoding_type
    #   <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
    #            method to use. An object key may contain any Unicode character; however, XML 1.0 parser
    #            cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
    #            characters that are not supported in XML 1.0, you can add this parameter to request that
    #            Amazon S3 encode the keys in the response.</p>
    #
    #   Enum, one of: ["url"]
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>Marker is where you want Amazon S3 to start listing from. Amazon S3 starts listing after
    #            this specified key. Marker can be any key in the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain more.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute prefix
    #   <p>Limits the response to keys that begin with the specified prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that she or he will be charged for the list objects
    #            request. Bucket owners need not specify this parameter in their requests.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    ListObjectsInput = ::Struct.new(
      :bucket,
      :delimiter,
      :encoding_type,
      :marker,
      :max_keys,
      :prefix,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_keys ||= 0
      end
    end

    # @!attribute is_truncated
    #   <p>A flag that indicates whether Amazon S3 returned all of the results that satisfied the search
    #            criteria.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute marker
    #   <p>Indicates where in the bucket listing begins. Marker is included in the response if it
    #            was sent with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute next_marker
    #   <p>When response is truncated (the IsTruncated element value in the response is true), you
    #            can use the key name in this field as marker in the subsequent request to get next set of
    #            objects. Amazon S3 lists objects in alphabetical order Note: This element is returned only if
    #            you have delimiter request parameter specified. If response does not include the NextMarker
    #            and it is truncated, you can use the value of the last Key in the response as the marker in
    #            the subsequent request to get the next set of object keys.</p>
    #
    #   @return [String]
    #
    # @!attribute contents
    #   <p>Metadata about each object returned.</p>
    #
    #   @return [Array<Object>]
    #
    # @!attribute name
    #   <p>The bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>Keys that begin with the indicated prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>Causes keys that contain the same string between the prefix and the first occurrence of
    #            the delimiter to be rolled up into a single result element in the
    #               <code>CommonPrefixes</code> collection. These rolled-up keys are not returned elsewhere
    #            in the response. Each rolled-up result counts as only one return against the
    #               <code>MaxKeys</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_keys
    #   <p>The maximum number of keys returned in the response body.</p>
    #
    #   @return [Integer]
    #
    # @!attribute common_prefixes
    #   <p>All of the keys (up to 1,000) rolled up in a common prefix count as a single return when
    #            calculating the number of returns. </p>
    #            <p>A response can contain CommonPrefixes only if you specify a delimiter.</p>
    #            <p>CommonPrefixes contains all (if there are any) keys between Prefix and the next
    #            occurrence of the string specified by the delimiter.</p>
    #            <p> CommonPrefixes lists keys that act like subdirectories in the directory specified by
    #            Prefix.</p>
    #            <p>For example, if the prefix is notes/ and the delimiter is a slash (/) as in
    #            notes/summer/july, the common prefix is notes/summer/. All of the keys that roll up into a
    #            common prefix count as a single return when calculating the number of returns.</p>
    #
    #   @return [Array<CommonPrefix>]
    #
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
    #
    #   Enum, one of: ["url"]
    #
    #   @return [String]
    #
    ListObjectsOutput = ::Struct.new(
      :is_truncated,
      :marker,
      :next_marker,
      :contents,
      :name,
      :prefix,
      :delimiter,
      :max_keys,
      :common_prefixes,
      :encoding_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_truncated ||= false
        self.max_keys ||= 0
      end
    end

    # @!attribute bucket
    #   <p>Bucket name to list. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>A delimiter is a character you use to group keys.</p>
    #
    #   @return [String]
    #
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
    #
    #   Enum, one of: ["url"]
    #
    #   @return [String]
    #
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain
    #            more.</p>
    #
    #   @return [Integer]
    #
    # @!attribute prefix
    #   <p>Limits the response to keys that begin with the specified prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute continuation_token
    #   <p>ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a
    #            token. ContinuationToken is obfuscated and is not a real key.</p>
    #
    #   @return [String]
    #
    # @!attribute fetch_owner
    #   <p>The owner field is not present in listV2 by default, if you want to return owner field
    #            with each key in the result then set the fetch owner field to true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute start_after
    #   <p>StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this
    #            specified key. StartAfter can be any key in the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that she or he will be charged for the list objects
    #            request in V2 style. Bucket owners need not specify this parameter in their
    #            requests.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    ListObjectsV2Input = ::Struct.new(
      :bucket,
      :delimiter,
      :encoding_type,
      :max_keys,
      :prefix,
      :continuation_token,
      :fetch_owner,
      :start_after,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_keys ||= 0
        self.fetch_owner ||= false
      end
    end

    # @!attribute is_truncated
    #   <p>Set to false if all of the results were returned. Set to true if more keys are available
    #            to return. If the number of results exceeds that specified by MaxKeys, all of the results
    #            might not be returned.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute contents
    #   <p>Metadata about each object returned.</p>
    #
    #   @return [Array<Object>]
    #
    # @!attribute name
    #   <p>The bucket name.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p> Keys that begin with the indicated prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute delimiter
    #   <p>Causes keys that contain the same string between the prefix and the first occurrence of
    #            the delimiter to be rolled up into a single result element in the CommonPrefixes
    #            collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up
    #            result counts as only one return against the <code>MaxKeys</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain
    #            more.</p>
    #
    #   @return [Integer]
    #
    # @!attribute common_prefixes
    #   <p>All of the keys (up to 1,000) rolled up into a common prefix count as a single return
    #            when calculating the number of returns.</p>
    #            <p>A response can contain <code>CommonPrefixes</code> only if you specify a
    #            delimiter.</p>
    #            <p>
    #               <code>CommonPrefixes</code> contains all (if there are any) keys between
    #               <code>Prefix</code> and the next occurrence of the string specified by a
    #            delimiter.</p>
    #            <p>
    #               <code>CommonPrefixes</code> lists keys that act like subdirectories in the directory
    #            specified by <code>Prefix</code>.</p>
    #            <p>For example, if the prefix is <code>notes/</code> and the delimiter is a slash
    #               (<code>/</code>) as in <code>notes/summer/july</code>, the common prefix is
    #               <code>notes/summer/</code>. All of the keys that roll up into a common prefix count as a
    #            single return when calculating the number of returns. </p>
    #
    #   @return [Array<CommonPrefix>]
    #
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object key names in the XML response.</p>
    #            <p>If you specify the encoding-type request parameter, Amazon S3 includes this element in the
    #            response, and returns encoded key name values in the following response elements:</p>
    #            <p>
    #               <code>Delimiter, Prefix, Key,</code> and <code>StartAfter</code>.</p>
    #
    #   Enum, one of: ["url"]
    #
    #   @return [String]
    #
    # @!attribute key_count
    #   <p>KeyCount is the number of keys returned with this request. KeyCount will always be less
    #            than or equal to the <code>MaxKeys</code> field. Say you ask for 50 keys, your result will
    #            include 50 keys or fewer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute continuation_token
    #   <p> If ContinuationToken was sent with the request, it is included in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute next_continuation_token
    #   <p>
    #               <code>NextContinuationToken</code> is sent when <code>isTruncated</code> is true, which
    #            means there are more keys in the bucket that can be listed. The next list requests to Amazon S3
    #            can be continued with this <code>NextContinuationToken</code>.
    #               <code>NextContinuationToken</code> is obfuscated and is not a real key</p>
    #
    #   @return [String]
    #
    # @!attribute start_after
    #   <p>If StartAfter was sent with the request, it is included in the response.</p>
    #
    #   @return [String]
    #
    ListObjectsV2Output = ::Struct.new(
      :is_truncated,
      :contents,
      :name,
      :prefix,
      :delimiter,
      :max_keys,
      :common_prefixes,
      :encoding_type,
      :key_count,
      :continuation_token,
      :next_continuation_token,
      :start_after,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_truncated ||= false
        self.max_keys ||= 0
        self.key_count ||= 0
      end
    end

    # @!attribute bucket
    #   <p>The name of the bucket to which the parts are being uploaded. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute max_parts
    #   <p>Sets the maximum number of parts to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute part_number_marker
    #   <p>Specifies the part after which listing should begin. Only parts with higher part numbers
    #            will be listed.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose parts are being listed.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created
    #       using a checksum algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    ListPartsInput = ::Struct.new(
      :bucket,
      :key,
      :max_parts,
      :part_number_marker,
      :upload_id,
      :request_payer,
      :expected_bucket_owner,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_parts ||= 0
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::ListPartsInput "\
          "bucket=#{bucket || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "max_parts=#{max_parts || 'nil'}, "\
          "part_number_marker=#{part_number_marker || 'nil'}, "\
          "upload_id=#{upload_id || 'nil'}, "\
          "request_payer=#{request_payer || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}>"
      end
    end

    # @!attribute abort_date
    #   <p>If the bucket has a lifecycle rule configured with an action to abort incomplete
    #            multipart uploads and the prefix in the lifecycle rule matches the object name in the
    #            request, then the response includes this header indicating when the initiated multipart
    #            upload will become eligible for abort operation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html mpu-abort-incomplete-mpu-lifecycle-config">Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a>.</p>
    #            <p>The response will also include the <code>x-amz-abort-rule-id</code> header that will
    #            provide the ID of the lifecycle configuration rule that defines this action.</p>
    #
    #   @return [Time]
    #
    # @!attribute abort_rule_id
    #   <p>This header is returned along with the <code>x-amz-abort-date</code> header. It
    #            identifies applicable lifecycle configuration rule that defines the action to abort
    #            incomplete multipart uploads.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. Does not return the
    #            access point ARN or access point alias if used.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose parts are being listed.</p>
    #
    #   @return [String]
    #
    # @!attribute part_number_marker
    #   <p>When a list is truncated, this element specifies the last part in the list, as well as
    #            the value to use for the part-number-marker request parameter in a subsequent
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute next_part_number_marker
    #   <p>When a list is truncated, this element specifies the last part in the list, as well as
    #            the value to use for the part-number-marker request parameter in a subsequent
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_parts
    #   <p>Maximum number of parts that were allowed in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute is_truncated
    #   <p> Indicates whether the returned list of parts is truncated. A true value indicates that
    #            the list was truncated. A list can be truncated if the number of parts exceeds the limit
    #            returned in the MaxParts element.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parts
    #   <p> Container for elements related to a particular part. A response can contain zero or
    #            more <code>Part</code> elements.</p>
    #
    #   @return [Array<Part>]
    #
    # @!attribute initiator
    #   <p>Container element that identifies who initiated the multipart upload. If the initiator
    #            is an Amazon Web Services account, this element provides the same information as the <code>Owner</code>
    #            element. If the initiator is an IAM User, this element provides the user ARN and display
    #            name.</p>
    #
    #   @return [Initiator]
    #
    # @!attribute owner
    #   <p> Container element that identifies the object owner, after the object is created. If
    #            multipart upload is initiated by an IAM user, this element provides the parent account ID
    #            and display name.</p>
    #
    #   @return [Owner]
    #
    # @!attribute storage_class
    #   <p>Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the uploaded
    #            object.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    ListPartsOutput = ::Struct.new(
      :abort_date,
      :abort_rule_id,
      :bucket,
      :key,
      :upload_id,
      :part_number_marker,
      :next_part_number_marker,
      :max_parts,
      :is_truncated,
      :parts,
      :initiator,
      :owner,
      :storage_class,
      :request_charged,
      :checksum_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_parts ||= 0
        self.is_truncated ||= false
      end
    end

    # <p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys
    #          for a bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html">PUT Bucket logging</a> in the
    #             <i>Amazon S3 API Reference</i>.</p>
    #
    # @!attribute target_bucket
    #   <p>Specifies the bucket where you want Amazon S3 to store server access logs. You can have your
    #            logs delivered to any bucket that you own, including the same bucket that is being logged.
    #            You can also configure multiple buckets to deliver their logs to the same target bucket. In
    #            this case, you should choose a different <code>TargetPrefix</code> for each source bucket
    #            so that the delivered log files can be distinguished by key.</p>
    #
    #   @return [String]
    #
    # @!attribute target_grants
    #   <p>Container for granting information.</p>
    #            <p>Buckets that use the bucket owner enforced setting for Object Ownership don't support
    #            target grants. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html grant-log-delivery-permissions-general">Permissions for server access log delivery</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Array<TargetGrant>]
    #
    # @!attribute target_prefix
    #   <p>A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a
    #            single bucket, you can use a prefix to distinguish which log files came from which
    #            bucket.</p>
    #
    #   @return [String]
    #
    LoggingEnabled = ::Struct.new(
      :target_bucket,
      :target_grants,
      :target_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MFADelete
    #
    module MFADelete
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # Includes enum constants for MFADeleteStatus
    #
    module MFADeleteStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # Includes enum constants for MetadataDirective
    #
    module MetadataDirective
      # No documentation available.
      #
      COPY = "COPY"

      # No documentation available.
      #
      REPLACE = "REPLACE"
    end

    # <p>A metadata key-value pair to store with an object.</p>
    #
    # @!attribute name
    #   <p>Name of the Object.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Value of the Object.</p>
    #
    #   @return [String]
    #
    MetadataEntry = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A container specifying replication metrics-related settings enabling replication
    #          metrics and events.</p>
    #
    # @!attribute status
    #   <p> Specifies whether the replication metrics are enabled. </p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute event_threshold
    #   <p> A container specifying the time threshold for emitting the
    #               <code>s3:Replication:OperationMissedThreshold</code> event. </p>
    #
    #   @return [ReplicationTimeValue]
    #
    Metrics = ::Struct.new(
      :status,
      :event_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
    #          The operator must have at least two predicates, and an object must match all of the
    #          predicates in order for the filter to apply.</p>
    #
    # @!attribute prefix
    #   <p>The prefix used when evaluating an AND predicate.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags used when evaluating an AND predicate.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute access_point_arn
    #   <p>The access point ARN used when evaluating an <code>AND</code> predicate.</p>
    #
    #   @return [String]
    #
    MetricsAndOperator = ::Struct.new(
      :prefix,
      :tags,
      :access_point_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a metrics configuration for the CloudWatch request metrics (specified by the
    #          metrics configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics
    #          configuration, note that this is a full replacement of the existing metrics configuration.
    #          If you don't include the elements you want to keep, they are erased. For more information,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html">PutBucketMetricsConfiguration</a>.</p>
    #
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Specifies a metrics configuration filter. The metrics configuration will only include
    #            objects that meet the filter's criteria. A filter must be a prefix, an object tag, an
    #            access point ARN, or a conjunction (MetricsAndOperator).</p>
    #
    #   @return [MetricsFilter]
    #
    MetricsConfiguration = ::Struct.new(
      :id,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a metrics configuration filter. The metrics configuration only includes
    #          objects that meet the filter's criteria. A filter must be a prefix, an object tag, an
    #          access point ARN, or a conjunction (MetricsAndOperator). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html">PutBucketMetricsConfiguration</a>.</p>
    #
    class MetricsFilter < Hearth::Union
      # <p>The prefix used when evaluating a metrics filter.</p>
      #
      class Prefix < MetricsFilter
        def to_h
          { prefix: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Prefix #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The tag used when evaluating a metrics filter.</p>
      #
      class Tag < MetricsFilter
        def to_h
          { tag: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Tag #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The access point ARN used when evaluating a metrics filter.</p>
      #
      class AccessPointArn < MetricsFilter
        def to_h
          { access_point_arn: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::AccessPointArn #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
      #          The operator must have at least two predicates, and an object must match all of the
      #          predicates in order for the filter to apply.</p>
      #
      class And < MetricsFilter
        def to_h
          { and: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::And #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < MetricsFilter
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for MetricsStatus
    #
    module MetricsStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # <p>Container for the <code>MultipartUpload</code> for the Amazon S3 object.</p>
    #
    # @!attribute upload_id
    #   <p>Upload ID that identifies the multipart upload.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Key of the object for which the multipart upload was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute initiated
    #   <p>Date and time at which the multipart upload was initiated.</p>
    #
    #   @return [Time]
    #
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>Specifies the owner of the object that is part of the multipart upload. </p>
    #
    #   @return [Owner]
    #
    # @!attribute initiator
    #   <p>Identifies who initiated the multipart upload.</p>
    #
    #   @return [Initiator]
    #
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    MultipartUpload = ::Struct.new(
      :upload_id,
      :key,
      :initiated,
      :storage_class,
      :owner,
      :initiator,
      :checksum_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified bucket does not exist.</p>
    #
    NoSuchBucket = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified key does not exist.</p>
    #
    NoSuchKey = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified multipart upload does not exist.</p>
    #
    NoSuchUpload = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently
    #          deletes the noncurrent object versions. You set this lifecycle configuration action on a
    #          bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent
    #          object versions at a specific period in the object's lifetime.</p>
    #
    # @!attribute noncurrent_days
    #   <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
    #            associated action. The value must be a non-zero positive integer. For information about the
    #            noncurrent days calculations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html non-current-days-calculations">How
    #               Amazon S3 Calculates When an Object Became Noncurrent</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute newer_noncurrent_versions
    #   <p>Specifies how many noncurrent versions Amazon S3 will retain. If there are this many more
    #            recent noncurrent versions, Amazon S3 will take the associated action. For more information
    #            about noncurrent versions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html">Lifecycle configuration
    #               elements</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    NoncurrentVersionExpiration = ::Struct.new(
      :noncurrent_days,
      :newer_noncurrent_versions,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.noncurrent_days ||= 0
        self.newer_noncurrent_versions ||= 0
      end
    end

    # <p>Container for the transition rule that describes when noncurrent objects transition to
    #          the <code>STANDARD_IA</code>, <code>ONEZONE_IA</code>, <code>INTELLIGENT_TIERING</code>,
    #             <code>GLACIER_IR</code>, <code>GLACIER</code>, or <code>DEEP_ARCHIVE</code> storage
    #          class. If your bucket is versioning-enabled (or versioning is suspended), you can set this
    #          action to request that Amazon S3 transition noncurrent object versions to the
    #             <code>STANDARD_IA</code>, <code>ONEZONE_IA</code>, <code>INTELLIGENT_TIERING</code>,
    #             <code>GLACIER_IR</code>, <code>GLACIER</code>, or <code>DEEP_ARCHIVE</code> storage
    #          class at a specific period in the object's lifetime.</p>
    #
    # @!attribute noncurrent_days
    #   <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
    #            associated action. For information about the noncurrent days calculations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html non-current-days-calculations">How
    #               Amazon S3 Calculates How Long an Object Has Been Noncurrent</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #
    #   Enum, one of: ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute newer_noncurrent_versions
    #   <p>Specifies how many noncurrent versions Amazon S3 will retain. If there are this many more
    #            recent noncurrent versions, Amazon S3 will take the associated action. For more information
    #            about noncurrent versions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html">Lifecycle configuration
    #               elements</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    NoncurrentVersionTransition = ::Struct.new(
      :noncurrent_days,
      :storage_class,
      :newer_noncurrent_versions,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.noncurrent_days ||= 0
        self.newer_noncurrent_versions ||= 0
      end
    end

    # <p>The specified content does not exist.</p>
    #
    NotFound = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for specifying the notification configuration of the bucket. If this element
    #          is empty, notifications are turned off for the bucket.</p>
    #
    # @!attribute topic_configurations
    #   <p>The topic to which notifications are sent and the events for which notifications are
    #            generated.</p>
    #
    #   @return [Array<TopicConfiguration>]
    #
    # @!attribute queue_configurations
    #   <p>The Amazon Simple Queue Service queues to publish messages to and the events for which
    #            to publish messages.</p>
    #
    #   @return [Array<QueueConfiguration>]
    #
    # @!attribute lambda_function_configurations
    #   <p>Describes the Lambda functions to invoke and the events for which to invoke
    #            them.</p>
    #
    #   @return [Array<LambdaFunctionConfiguration>]
    #
    # @!attribute event_bridge_configuration
    #   <p>Enables delivery of events to Amazon EventBridge.</p>
    #
    #   @return [EventBridgeConfiguration]
    #
    NotificationConfiguration = ::Struct.new(
      :topic_configurations,
      :queue_configurations,
      :lambda_function_configurations,
      :event_bridge_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies object key name filtering rules. For information about key name filtering, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring
    #             Event Notifications</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute key
    #   <p>A container for object key name prefix and suffix filtering rules.</p>
    #
    #   @return [S3KeyFilter]
    #
    NotificationConfigurationFilter = ::Struct.new(
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object consists of data and its descriptive metadata.</p>
    #
    # @!attribute key
    #   <p>The name that you assign to an object. You use the object key to retrieve the
    #            object.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>Creation date of the object.</p>
    #
    #   @return [Time]
    #
    # @!attribute e_tag
    #   <p>The entity tag is a hash of the object. The ETag reflects changes only to the contents
    #            of an object, not its metadata. The ETag may or may not be an MD5 digest of the object
    #            data. Whether or not it is depends on how the object was created and how it is encrypted as
    #            described below:</p>
    #            <ul>
    #               <li>
    #                  <p>Objects created by the PUT Object, POST Object, or Copy operation, or through the
    #                  Amazon Web Services Management Console, and are encrypted by SSE-S3 or plaintext, have ETags that
    #                  are an MD5 digest of their object data.</p>
    #               </li>
    #               <li>
    #                  <p>Objects created by the PUT Object, POST Object, or Copy operation, or through the
    #                  Amazon Web Services Management Console, and are encrypted by SSE-C or SSE-KMS, have ETags that are
    #                  not an MD5 digest of their object data.</p>
    #               </li>
    #               <li>
    #                  <p>If an object is created by either the Multipart Upload or Part Copy operation, the
    #                  ETag is not an MD5 digest, regardless of the method of encryption. If an object is
    #                  larger than 16 MB, the Amazon Web Services Management Console will upload or copy that object as a
    #                  Multipart Upload, and therefore the ETag will not be an MD5 digest.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute size
    #   <p>Size in bytes of the object</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the object</p>
    #
    #   @return [Owner]
    #
    Object = ::Struct.new(
      :key,
      :last_modified,
      :e_tag,
      :checksum_algorithm,
      :size,
      :storage_class,
      :owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
      end
    end

    # <p>This action is not allowed against this storage tier.</p>
    #
    ObjectAlreadyInActiveTierError = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObjectAttributes
    #
    module ObjectAttributes
      # No documentation available.
      #
      ETAG = "ETag"

      # No documentation available.
      #
      CHECKSUM = "Checksum"

      # No documentation available.
      #
      OBJECT_PARTS = "ObjectParts"

      # No documentation available.
      #
      STORAGE_CLASS = "StorageClass"

      # No documentation available.
      #
      OBJECT_SIZE = "ObjectSize"
    end

    # Includes enum constants for ObjectCannedACL
    #
    module ObjectCannedACL
      # No documentation available.
      #
      private = "private"

      # No documentation available.
      #
      public_read = "public-read"

      # No documentation available.
      #
      public_read_write = "public-read-write"

      # No documentation available.
      #
      authenticated_read = "authenticated-read"

      # No documentation available.
      #
      aws_exec_read = "aws-exec-read"

      # No documentation available.
      #
      bucket_owner_read = "bucket-owner-read"

      # No documentation available.
      #
      bucket_owner_full_control = "bucket-owner-full-control"
    end

    # <p>Object Identifier is unique value to identify objects.</p>
    #
    # @!attribute key
    #   <p>Key name of the object.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>VersionId for the specific version of the object to delete.</p>
    #
    #   @return [String]
    #
    ObjectIdentifier = ::Struct.new(
      :key,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container element for Object Lock configuration parameters.</p>
    #
    # @!attribute object_lock_enabled
    #   <p>Indicates whether this bucket has an Object Lock configuration enabled. Enable
    #               <code>ObjectLockEnabled</code> when you apply <code>ObjectLockConfiguration</code> to a
    #            bucket. </p>
    #
    #   Enum, one of: ["Enabled"]
    #
    #   @return [String]
    #
    # @!attribute rule
    #   <p>Specifies the Object Lock rule for the specified object. Enable the this rule when you
    #            apply <code>ObjectLockConfiguration</code> to a bucket. Bucket settings require both a mode
    #            and a period. The period can be either <code>Days</code> or <code>Years</code> but you must
    #            select one. You cannot specify <code>Days</code> and <code>Years</code> at the same
    #            time.</p>
    #
    #   @return [ObjectLockRule]
    #
    ObjectLockConfiguration = ::Struct.new(
      :object_lock_enabled,
      :rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObjectLockEnabled
    #
    module ObjectLockEnabled
      # No documentation available.
      #
      Enabled = "Enabled"
    end

    # <p>A legal hold configuration for an object.</p>
    #
    # @!attribute status
    #   <p>Indicates whether the specified object has a legal hold in place.</p>
    #
    #   Enum, one of: ["ON", "OFF"]
    #
    #   @return [String]
    #
    ObjectLockLegalHold = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObjectLockLegalHoldStatus
    #
    module ObjectLockLegalHoldStatus
      # No documentation available.
      #
      ON = "ON"

      # No documentation available.
      #
      OFF = "OFF"
    end

    # Includes enum constants for ObjectLockMode
    #
    module ObjectLockMode
      # No documentation available.
      #
      GOVERNANCE = "GOVERNANCE"

      # No documentation available.
      #
      COMPLIANCE = "COMPLIANCE"
    end

    # <p>A Retention configuration for an object.</p>
    #
    # @!attribute mode
    #   <p>Indicates the Retention mode for the specified object.</p>
    #
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute retain_until_date
    #   <p>The date on which this Object Lock Retention will expire.</p>
    #
    #   @return [Time]
    #
    ObjectLockRetention = ::Struct.new(
      :mode,
      :retain_until_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObjectLockRetentionMode
    #
    module ObjectLockRetentionMode
      # No documentation available.
      #
      GOVERNANCE = "GOVERNANCE"

      # No documentation available.
      #
      COMPLIANCE = "COMPLIANCE"
    end

    # <p>The container element for an Object Lock rule.</p>
    #
    # @!attribute default_retention
    #   <p>The default Object Lock retention mode and period that you want to apply to new objects
    #            placed in the specified bucket. Bucket settings require both a mode and a period. The
    #            period can be either <code>Days</code> or <code>Years</code> but you must select one. You
    #            cannot specify <code>Days</code> and <code>Years</code> at the same time.</p>
    #
    #   @return [DefaultRetention]
    #
    ObjectLockRule = ::Struct.new(
      :default_retention,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source object of the COPY action is not in the active tier and is only stored in
    #          Amazon S3 Glacier.</p>
    #
    ObjectNotInActiveTierError = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObjectOwnership
    #
    module ObjectOwnership
      # No documentation available.
      #
      BucketOwnerPreferred = "BucketOwnerPreferred"

      # No documentation available.
      #
      ObjectWriter = "ObjectWriter"

      # No documentation available.
      #
      BucketOwnerEnforced = "BucketOwnerEnforced"
    end

    # <p>A container for elements related to an individual part.</p>
    #
    # @!attribute part_number
    #   <p>The part number identifying the part. This value is a positive integer between 1 and
    #            10,000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute size
    #   <p>The size of the uploaded part in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    ObjectPart = ::Struct.new(
      :part_number,
      :size,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.part_number ||= 0
        self.size ||= 0
      end
    end

    # Includes enum constants for ObjectStorageClass
    #
    module ObjectStorageClass
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY"

      # No documentation available.
      #
      GLACIER = "GLACIER"

      # No documentation available.
      #
      STANDARD_IA = "STANDARD_IA"

      # No documentation available.
      #
      ONEZONE_IA = "ONEZONE_IA"

      # No documentation available.
      #
      INTELLIGENT_TIERING = "INTELLIGENT_TIERING"

      # No documentation available.
      #
      DEEP_ARCHIVE = "DEEP_ARCHIVE"

      # No documentation available.
      #
      OUTPOSTS = "OUTPOSTS"

      # No documentation available.
      #
      GLACIER_IR = "GLACIER_IR"
    end

    # <p>The version of an object.</p>
    #
    # @!attribute e_tag
    #   <p>The entity tag is an MD5 hash of that version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute size
    #   <p>Size in bytes of the object.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #
    #   Enum, one of: ["STANDARD"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The object key.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>Version ID of an object.</p>
    #
    #   @return [String]
    #
    # @!attribute is_latest
    #   <p>Specifies whether the object is (true) or is not (false) the latest version of an
    #            object.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_modified
    #   <p>Date and time the object was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute owner
    #   <p>Specifies the owner of the object.</p>
    #
    #   @return [Owner]
    #
    ObjectVersion = ::Struct.new(
      :e_tag,
      :checksum_algorithm,
      :size,
      :storage_class,
      :key,
      :version_id,
      :is_latest,
      :last_modified,
      :owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
        self.is_latest ||= false
      end
    end

    # Includes enum constants for ObjectVersionStorageClass
    #
    module ObjectVersionStorageClass
      # No documentation available.
      #
      STANDARD = "STANDARD"
    end

    # <p>Describes the location where the restore job's output is stored.</p>
    #
    # @!attribute s3
    #   <p>Describes an S3 location that will receive the results of the restore request.</p>
    #
    #   @return [S3Location]
    #
    OutputLocation = ::Struct.new(
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes how results of the Select job are serialized.</p>
    #
    # @!attribute csv
    #   <p>Describes the serialization of CSV-encoded Select results.</p>
    #
    #   @return [CSVOutput]
    #
    # @!attribute json
    #   <p>Specifies JSON as request's output serialization format.</p>
    #
    #   @return [JSONOutput]
    #
    OutputSerialization = ::Struct.new(
      :csv,
      :json,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the owner's display name and ID.</p>
    #
    # @!attribute display_name
    #   <p>Container for the display name of the owner. This value is only supported in the
    #            following Amazon Web Services Regions:</p>
    #            <ul>
    #               <li>
    #                  <p>US East (N. Virginia)</p>
    #               </li>
    #               <li>
    #                  <p>US West (N. California)</p>
    #               </li>
    #               <li>
    #                  <p>US West (Oregon)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Singapore)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Sydney)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Tokyo)</p>
    #               </li>
    #               <li>
    #                  <p>Europe (Ireland)</p>
    #               </li>
    #               <li>
    #                  <p>South America (São Paulo)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Container for the ID of the owner.</p>
    #
    #   @return [String]
    #
    Owner = ::Struct.new(
      :display_name,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OwnerOverride
    #
    module OwnerOverride
      # No documentation available.
      #
      Destination = "Destination"
    end

    # <p>The container element for a bucket's ownership controls.</p>
    #
    # @!attribute rules
    #   <p>The container element for an ownership control rule.</p>
    #
    #   @return [Array<OwnershipControlsRule>]
    #
    OwnershipControls = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container element for an ownership control rule.</p>
    #
    # @!attribute object_ownership
    #   <p>The container element for object ownership for a bucket's ownership controls.</p>
    #            <p>BucketOwnerPreferred - Objects uploaded to the bucket change ownership to the bucket
    #            owner if the objects are uploaded with the <code>bucket-owner-full-control</code> canned
    #            ACL.</p>
    #            <p>ObjectWriter - The uploading account will own the object if the object is uploaded with
    #            the <code>bucket-owner-full-control</code> canned ACL.</p>
    #            <p>BucketOwnerEnforced - Access control lists (ACLs) are disabled and no longer affect
    #            permissions. The bucket owner automatically owns and has full control over every object in
    #            the bucket. The bucket only accepts PUT requests that don't specify an ACL or bucket owner
    #            full control ACLs, such as the <code>bucket-owner-full-control</code> canned ACL or an
    #            equivalent form of this ACL expressed in the XML format.</p>
    #
    #   Enum, one of: ["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"]
    #
    #   @return [String]
    #
    OwnershipControlsRule = ::Struct.new(
      :object_ownership,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for Parquet.</p>
    #
    ParquetInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for elements related to a part.</p>
    #
    # @!attribute part_number
    #   <p>Part number identifying the part. This is a positive integer between 1 and
    #            10,000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified
    #   <p>Date and time at which the part was uploaded.</p>
    #
    #   @return [Time]
    #
    # @!attribute e_tag
    #   <p>Entity tag returned when the part was uploaded.</p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>Size in bytes of the uploaded part data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    Part = ::Struct.new(
      :part_number,
      :last_modified,
      :e_tag,
      :size,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.part_number ||= 0
        self.size ||= 0
      end
    end

    # Includes enum constants for Payer
    #
    module Payer
      # No documentation available.
      #
      Requester = "Requester"

      # No documentation available.
      #
      BucketOwner = "BucketOwner"
    end

    # Includes enum constants for Permission
    #
    module Permission
      # No documentation available.
      #
      FULL_CONTROL = "FULL_CONTROL"

      # No documentation available.
      #
      WRITE = "WRITE"

      # No documentation available.
      #
      WRITE_ACP = "WRITE_ACP"

      # No documentation available.
      #
      READ = "READ"

      # No documentation available.
      #
      READ_ACP = "READ_ACP"
    end

    # <p>The container element for a bucket's policy status.</p>
    #
    # @!attribute is_public
    #   <p>The policy status for this bucket. <code>TRUE</code> indicates that this bucket is
    #            public. <code>FALSE</code> indicates that the bucket is not public.</p>
    #
    #   @return [Boolean]
    #
    PolicyStatus = ::Struct.new(
      :is_public,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_public ||= false
      end
    end

    # <p>This data type contains information about progress of an operation.</p>
    #
    # @!attribute bytes_scanned
    #   <p>The current number of object bytes scanned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bytes_processed
    #   <p>The current number of uncompressed object bytes processed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bytes_returned
    #   <p>The current number of bytes of records payload data returned.</p>
    #
    #   @return [Integer]
    #
    Progress = ::Struct.new(
      :bytes_scanned,
      :bytes_processed,
      :bytes_returned,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bytes_scanned ||= 0
        self.bytes_processed ||= 0
        self.bytes_returned ||= 0
      end
    end

    # <p>This data type contains information about the progress event of an operation.</p>
    #
    # @!attribute details
    #   <p>The Progress event details.</p>
    #
    #   @return [Progress]
    #
    ProgressEvent = ::Struct.new(
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Protocol
    #
    module Protocol
      # No documentation available.
      #
      http = "http"

      # No documentation available.
      #
      https = "https"
    end

    # <p>The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can
    #          enable the configuration options in any combination. For more information about when Amazon S3
    #          considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>. </p>
    #
    # @!attribute block_public_acls
    #   <p>Specifies whether Amazon S3 should block public access control lists (ACLs) for this bucket
    #            and objects in this bucket. Setting this element to <code>TRUE</code> causes the following
    #            behavior:</p>
    #            <ul>
    #               <li>
    #                  <p>PUT Bucket ACL and PUT Object ACL calls fail if the specified ACL is
    #                  public.</p>
    #               </li>
    #               <li>
    #                  <p>PUT Object calls fail if the request includes a public ACL.</p>
    #               </li>
    #               <li>
    #                  <p>PUT Bucket calls fail if the request includes a public ACL.</p>
    #               </li>
    #            </ul>
    #            <p>Enabling this setting doesn't affect existing policies or ACLs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ignore_public_acls
    #   <p>Specifies whether Amazon S3 should ignore public ACLs for this bucket and objects in this
    #            bucket. Setting this element to <code>TRUE</code> causes Amazon S3 to ignore all public ACLs on
    #            this bucket and objects in this bucket.</p>
    #            <p>Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't
    #            prevent new public ACLs from being set.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute block_public_policy
    #   <p>Specifies whether Amazon S3 should block public bucket policies for this bucket. Setting this
    #            element to <code>TRUE</code> causes Amazon S3 to reject calls to PUT Bucket policy if the
    #            specified bucket policy allows public access. </p>
    #            <p>Enabling this setting doesn't affect existing bucket policies.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute restrict_public_buckets
    #   <p>Specifies whether Amazon S3 should restrict public bucket policies for this bucket. Setting
    #            this element to <code>TRUE</code> restricts access to this bucket to only Amazon Web Service principals and authorized users within this account if the bucket has
    #            a public policy.</p>
    #            <p>Enabling this setting doesn't affect previously stored bucket policies, except that
    #            public and cross-account access within any public bucket policy, including non-public
    #            delegation to specific accounts, is blocked.</p>
    #
    #   @return [Boolean]
    #
    PublicAccessBlockConfiguration = ::Struct.new(
      :block_public_acls,
      :ignore_public_acls,
      :block_public_policy,
      :restrict_public_buckets,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.block_public_acls ||= false
        self.ignore_public_acls ||= false
        self.block_public_policy ||= false
        self.restrict_public_buckets ||= false
      end
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which the accelerate configuration is set.</p>
    #
    #   @return [String]
    #
    # @!attribute accelerate_configuration
    #   <p>Container for setting the transfer acceleration state.</p>
    #
    #   @return [AccelerateConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    PutBucketAccelerateConfigurationInput = ::Struct.new(
      :bucket,
      :accelerate_configuration,
      :expected_bucket_owner,
      :checksum_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketAccelerateConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read"]
    #
    #   @return [String]
    #
    # @!attribute access_control_policy
    #   <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    #
    #   @return [AccessControlPolicy]
    #
    # @!attribute bucket
    #   <p>The bucket to which to apply the ACL.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864.</a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and
    #            overwrites of those objects.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketAclInput = ::Struct.new(
      :acl,
      :access_control_policy,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write,
      :grant_write_acp,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketAclOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket to which an analytics configuration is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute analytics_configuration
    #   <p>The configuration and any analyses for the analytics filter.</p>
    #
    #   @return [AnalyticsConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketAnalyticsConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      :analytics_configuration,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketAnalyticsConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>Specifies the bucket impacted by the <code>cors</code>configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute cors_configuration
    #   <p>Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling
    #               Cross-Origin Resource Sharing</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [CORSConfiguration]
    #
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864.</a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketCorsInput = ::Struct.new(
      :bucket,
      :cors_configuration,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketCorsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>Specifies default encryption for a bucket using server-side encryption with different
    #            key options. By default, all buckets have a default encryption configuration that
    #            uses server-side encryption with Amazon S3 managed keys (SSE-S3). You can optionally configure default encryption for a bucket by using server-side
    #            encryption with an Amazon Web Services KMS key (SSE-KMS) or a customer-provided key (SSE-C). For information about the bucket default
    #            encryption feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon S3 Bucket Default Encryption</a>
    #            in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the server-side encryption
    #            configuration.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>Specifies the default server-side-encryption configuration.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketEncryptionInput = ::Struct.new(
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :server_side_encryption_configuration,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketEncryptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute intelligent_tiering_configuration
    #   <p>Container for S3 Intelligent-Tiering configuration.</p>
    #
    #   @return [IntelligentTieringConfiguration]
    #
    PutBucketIntelligentTieringConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      :intelligent_tiering_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketIntelligentTieringConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket where the inventory configuration will be stored.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute inventory_configuration
    #   <p>Specifies the inventory configuration.</p>
    #
    #   @return [InventoryConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketInventoryConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      :inventory_configuration,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketInventoryConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to set the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute lifecycle_configuration
    #   <p>Container for lifecycle rules. You can add as many as 1,000 rules.</p>
    #
    #   @return [BucketLifecycleConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketLifecycleConfigurationInput = ::Struct.new(
      :bucket,
      :checksum_algorithm,
      :lifecycle_configuration,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketLifecycleConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to set the logging parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_logging_status
    #   <p>Container for logging status information.</p>
    #
    #   @return [BucketLoggingStatus]
    #
    # @!attribute content_md5
    #   <p>The MD5 hash of the <code>PutBucketLogging</code> request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketLoggingInput = ::Struct.new(
      :bucket,
      :bucket_logging_status,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketLoggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which the metrics configuration is set.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #
    #   @return [String]
    #
    # @!attribute metrics_configuration
    #   <p>Specifies the metrics configuration.</p>
    #
    #   @return [MetricsConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketMetricsConfigurationInput = ::Struct.new(
      :bucket,
      :id,
      :metrics_configuration,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketMetricsConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_configuration
    #   <p>A container for specifying the notification configuration of the bucket. If this element
    #            is empty, notifications are turned off for the bucket.</p>
    #
    #   @return [NotificationConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute skip_destination_validation
    #   <p>Skips validation of Amazon SQS, Amazon SNS, and Lambda
    #            destinations. True or false value.</p>
    #
    #   @return [Boolean]
    #
    PutBucketNotificationConfigurationInput = ::Struct.new(
      :bucket,
      :notification_configuration,
      :expected_bucket_owner,
      :skip_destination_validation,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.skip_destination_validation ||= false
      end
    end

    PutBucketNotificationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>OwnershipControls</code> you want to set.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The MD5 hash of the <code>OwnershipControls</code> request body. </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute ownership_controls
    #   <p>The <code>OwnershipControls</code> (BucketOwnerEnforced, BucketOwnerPreferred, or
    #            ObjectWriter) that you want to apply to this Amazon S3 bucket.</p>
    #
    #   @return [OwnershipControls]
    #
    PutBucketOwnershipControlsInput = ::Struct.new(
      :bucket,
      :content_md5,
      :expected_bucket_owner,
      :ownership_controls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketOwnershipControlsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The MD5 hash of the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute confirm_remove_self_bucket_access
    #   <p>Set this parameter to true to confirm that you want to remove your permissions to change
    #            this bucket policy in the future.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute policy
    #   <p>The bucket policy as a JSON document.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketPolicyInput = ::Struct.new(
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :confirm_remove_self_bucket_access,
      :policy,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.confirm_remove_self_bucket_access ||= false
      end
    end

    PutBucketPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute replication_configuration
    #   <p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a
    #            replication configuration is 2 MB.</p>
    #
    #   @return [ReplicationConfiguration]
    #
    # @!attribute token
    #   <p>A token to allow Object Lock to be enabled for an existing bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketReplicationInput = ::Struct.new(
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :replication_configuration,
      :token,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketReplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute request_payment_configuration
    #   <p>Container for Payer.</p>
    #
    #   @return [RequestPaymentConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketRequestPaymentInput = ::Struct.new(
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :request_payment_configuration,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketRequestPaymentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute tagging
    #   <p>Container for the <code>TagSet</code> and <code>Tag</code> elements.</p>
    #
    #   @return [Tagging]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketTaggingInput = ::Struct.new(
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :tagging,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketTaggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a
    #            message integrity check to verify that the request body was not corrupted in transit. For
    #            more information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device.</p>
    #
    #   @return [String]
    #
    # @!attribute versioning_configuration
    #   <p>Container for setting the versioning state.</p>
    #
    #   @return [VersioningConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketVersioningInput = ::Struct.new(
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :mfa,
      :versioning_configuration,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketVersioningOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute website_configuration
    #   <p>Container for the request.</p>
    #
    #   @return [WebsiteConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutBucketWebsiteInput = ::Struct.new(
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :website_configuration,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBucketWebsiteOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html CannedACL">Canned
    #               ACL</a>.</p>
    #
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #
    #   @return [String]
    #
    # @!attribute access_control_policy
    #   <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    #
    #   @return [AccessControlPolicy]
    #
    # @!attribute bucket
    #   <p>The bucket name that contains the object to which you want to attach the ACL. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864.></a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and
    #            overwrites of those objects.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Key for which the PUT action was initiated.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutObjectAclInput = ::Struct.new(
      :acl,
      :access_control_policy,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write,
      :grant_write_acp,
      :key,
      :request_payer,
      :version_id,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    PutObjectAclOutput = ::Struct.new(
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html CannedACL">Canned
    #               ACL</a>.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>Object data.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The bucket name to which the PUT action was initiated. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_control
    #   <p> Can be used to specify caching behavior along the request/reply chain. For more
    #            information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html sec14.9">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html sec14.9</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc6266 section-4">https://www.rfc-editor.org/rfc/rfc6266 section-4</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html field.content-encoding">https://www.rfc-editor.org/rfc/rfc9110.html field.content-encoding</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #
    #   @return [String]
    #
    # @!attribute content_length
    #   <p>Size of the body in bytes. This parameter is useful when the size of the body cannot be
    #            determined automatically. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html name-content-length">https://www.rfc-editor.org/rfc/rfc9110.html name-content-length</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the message (without the headers) according to
    #            RFC 1864. This header can be used as a message integrity check to verify that the data is
    #            the same data that was originally sent. Although it is optional, we recommend using the
    #            Content-MD5 mechanism as an end-to-end integrity check. For more information about REST
    #            request authentication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST Authentication</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the contents. For more information, see
    #               <a href="https://www.rfc-editor.org/rfc/rfc9110.html name-content-type">https://www.rfc-editor.org/rfc/rfc9110.html name-content-type</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable. For more information, see
    #               <a href="https://www.rfc-editor.org/rfc/rfc7234 section-5.3">https://www.rfc-editor.org/rfc/rfc7234 section-5.3</a>.</p>
    #
    #   @return [Time]
    #
    # @!attribute grant_full_control
    #   <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read
    #   <p>Allows grantee to read the object data and its metadata.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the object ACL.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Object key for which the PUT action was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute storage_class
    #   <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
    #            STANDARD storage class provides high durability and high availability. Depending on
    #            performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses
    #            the OUTPOSTS Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata. For information about object metadata, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html">Object Key and Metadata</a>.</p>
    #            <p>In the following example, the request header sets the redirect to an object
    #            (anotherPage.html) in the same bucket:</p>
    #            <p>
    #               <code>x-amz-website-redirect-location: /anotherPage.html</code>
    #            </p>
    #            <p>In the following example, the request header sets the object redirect to another
    #            website:</p>
    #            <p>
    #               <code>x-amz-website-redirect-location: http://www.example.com/</code>
    #            </p>
    #            <p>For more information about website hosting in Amazon S3, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Hosting Websites on Amazon S3</a> and
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html">How to
    #               Configure Website Page Redirects</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>If <code>x-amz-server-side-encryption</code> has a valid value of <code>aws:kms</code>,
    #            this header specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for the object. If you specify
    #               <code>x-amz-server-side-encryption:aws:kms</code>, but do not provide<code>
    #               x-amz-server-side-encryption-aws-kms-key-id</code>, Amazon S3 uses the Amazon Web Services managed key to
    #            protect the data. If the KMS key does not exist in the same account issuing the command,
    #            you must use the full ARN and not just the ID. </p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a base64-encoded UTF-8 string holding JSON with the encryption context
    #            key-value pairs. This value is stored as object metadata and automatically gets passed on to
    #            Amazon Web Services KMS for future <code>GetObject</code> or <code>CopyObject</code> operations on this
    #            object.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using AWS KMS (SSE-KMS). Setting this header to <code>true</code>
    #            causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.</p>
    #            <p>Specifying this header with a PUT action doesn’t affect bucket-level settings for S3
    #            Bucket Key.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute tagging
    #   <p>The tag-set for the object. The tag-set must be encoded as URL Query parameters. (For
    #            example, "Key1=Value1")</p>
    #
    #   @return [String]
    #
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode that you want to apply to this object.</p>
    #
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when you want this object's Object Lock to expire. Must be formatted
    #            as a timestamp parameter.</p>
    #
    #   @return [Time]
    #
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether a legal hold will be applied to this object. For more information
    #            about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Object Lock</a>.</p>
    #
    #   Enum, one of: ["ON", "OFF"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutObjectInput = ::Struct.new(
      :acl,
      :body,
      :bucket,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_length,
      :content_md5,
      :content_type,
      :checksum_algorithm,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      :expires,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write_acp,
      :key,
      :metadata,
      :server_side_encryption,
      :storage_class,
      :website_redirect_location,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :request_payer,
      :tagging,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :object_lock_legal_hold_status,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.content_length ||= 0
        self.bucket_key_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::PutObjectInput "\
          "acl=#{acl || 'nil'}, "\
          "body=#{body || 'nil'}, "\
          "bucket=#{bucket || 'nil'}, "\
          "cache_control=#{cache_control || 'nil'}, "\
          "content_disposition=#{content_disposition || 'nil'}, "\
          "content_encoding=#{content_encoding || 'nil'}, "\
          "content_language=#{content_language || 'nil'}, "\
          "content_length=#{content_length || 'nil'}, "\
          "content_md5=#{content_md5 || 'nil'}, "\
          "content_type=#{content_type || 'nil'}, "\
          "checksum_algorithm=#{checksum_algorithm || 'nil'}, "\
          "checksum_crc32=#{checksum_crc32 || 'nil'}, "\
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, "\
          "checksum_sha1=#{checksum_sha1 || 'nil'}, "\
          "checksum_sha256=#{checksum_sha256 || 'nil'}, "\
          "expires=#{expires || 'nil'}, "\
          "grant_full_control=#{grant_full_control || 'nil'}, "\
          "grant_read=#{grant_read || 'nil'}, "\
          "grant_read_acp=#{grant_read_acp || 'nil'}, "\
          "grant_write_acp=#{grant_write_acp || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "metadata=#{metadata || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "storage_class=#{storage_class || 'nil'}, "\
          "website_redirect_location=#{website_redirect_location || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "ssekms_encryption_context=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "request_payer=#{request_payer || 'nil'}, "\
          "tagging=#{tagging || 'nil'}, "\
          "object_lock_mode=#{object_lock_mode || 'nil'}, "\
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, "\
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}>"
      end
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object that you want to place a legal hold on. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key name for the object that you want to place a legal hold on.</p>
    #
    #   @return [String]
    #
    # @!attribute legal_hold
    #   <p>Container element for the legal hold configuration you want to apply to the specified
    #            object.</p>
    #
    #   @return [ObjectLockLegalHold]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID of the object that you want to place a legal hold on.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutObjectLegalHoldInput = ::Struct.new(
      :bucket,
      :key,
      :legal_hold,
      :request_payer,
      :version_id,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    PutObjectLegalHoldOutput = ::Struct.new(
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket whose Object Lock configuration you want to create or replace.</p>
    #
    #   @return [String]
    #
    # @!attribute object_lock_configuration
    #   <p>The Object Lock configuration that you want to apply to the specified bucket.</p>
    #
    #   @return [ObjectLockConfiguration]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>A token to allow Object Lock to be enabled for an existing bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutObjectLockConfigurationInput = ::Struct.new(
      :bucket,
      :object_lock_configuration,
      :request_payer,
      :token,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    PutObjectLockConfigurationOutput = ::Struct.new(
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute expiration
    #   <p>If the expiration is configured for the object (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>), the response includes this header. It
    #            includes the <code>expiry-date</code> and <code>rule-id</code> key-value pairs that provide
    #            information about object expiration. The value of the <code>rule-id</code> is
    #            URL-encoded.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>Entity tag for the uploaded object.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>Version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header confirming the encryption algorithm used.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>If <code>x-amz-server-side-encryption</code> is has a valid value of
    #               <code>aws:kms</code>, this header specifies the ID of the Amazon Web Services Key Management Service
    #            (Amazon Web Services KMS) symmetric encryption customer managed key that was used for the object. </p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_encryption_context
    #   <p>If present, specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The
    #            value of this header is a base64-encoded UTF-8 string holding JSON with the encryption
    #            context key-value pairs. This value is stored as object metadata and automatically gets passed
    #            on to Amazon Web Services KMS for future <code>GetObject</code> or <code>CopyObject</code> operations on
    #            this object.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the uploaded object uses an S3 Bucket Key for server-side encryption
    #            with Amazon Web Services KMS (SSE-KMS).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    PutObjectOutput = ::Struct.new(
      :expiration,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      :server_side_encryption,
      :version_id,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bucket_key_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::PutObjectOutput "\
          "expiration=#{expiration || 'nil'}, "\
          "e_tag=#{e_tag || 'nil'}, "\
          "checksum_crc32=#{checksum_crc32 || 'nil'}, "\
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, "\
          "checksum_sha1=#{checksum_sha1 || 'nil'}, "\
          "checksum_sha256=#{checksum_sha256 || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "ssekms_encryption_context=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "request_charged=#{request_charged || 'nil'}>"
      end
    end

    # @!attribute bucket
    #   <p>The bucket name that contains the object you want to apply this Object Retention
    #            configuration to. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key name for the object that you want to apply this Object Retention configuration
    #            to.</p>
    #
    #   @return [String]
    #
    # @!attribute retention
    #   <p>The container element for the Object Retention configuration.</p>
    #
    #   @return [ObjectLockRetention]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID for the object that you want to apply this Object Retention configuration
    #            to.</p>
    #
    #   @return [String]
    #
    # @!attribute bypass_governance_retention
    #   <p>Indicates whether this action should bypass Governance-mode restrictions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutObjectRetentionInput = ::Struct.new(
      :bucket,
      :key,
      :retention,
      :request_payer,
      :version_id,
      :bypass_governance_retention,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bypass_governance_retention ||= false
      end
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    PutObjectRetentionOutput = ::Struct.new(
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Name of the object key.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The versionId of the object that the tag-set will be added to.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute tagging
    #   <p>Container for the <code>TagSet</code> and <code>Tag</code> elements</p>
    #
    #   @return [Tagging]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    PutObjectTaggingInput = ::Struct.new(
      :bucket,
      :key,
      :version_id,
      :content_md5,
      :checksum_algorithm,
      :tagging,
      :expected_bucket_owner,
      :request_payer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute version_id
    #   <p>The versionId of the object the tag-set was added to.</p>
    #
    #   @return [String]
    #
    PutObjectTaggingOutput = ::Struct.new(
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want
    #            to set.</p>
    #
    #   @return [String]
    #
    # @!attribute content_md5
    #   <p>The MD5 hash of the <code>PutPublicAccessBlock</code> request body. </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #            bucket. You can enable the configuration options in any combination. For more information
    #            about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [PublicAccessBlockConfiguration]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    PutPublicAccessBlockInput = ::Struct.new(
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :public_access_block_configuration,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutPublicAccessBlockOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration for publishing messages to an Amazon Simple Queue Service
    #          (Amazon SQS) queue when Amazon S3 detects specified events.</p>
    #
    # @!attribute id
    #   <p>An optional unique identifier for configurations in a notification configuration. If you
    #            don't provide one, Amazon S3 will assign an ID.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message
    #            when it detects events of the specified type.</p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>A collection of bucket events for which to send notifications</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filter
    #   <p>Specifies object key name filtering rules. For information about key name filtering, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring
    #               Event Notifications</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [NotificationConfigurationFilter]
    #
    QueueConfiguration = ::Struct.new(
      :id,
      :queue_arn,
      :events,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QuoteFields
    #
    module QuoteFields
      # No documentation available.
      #
      ALWAYS = "ALWAYS"

      # No documentation available.
      #
      ASNEEDED = "ASNEEDED"
    end

    # <p>The container for the records event.</p>
    #
    # @!attribute payload
    #   <p>The byte array of partial, one or more result records.</p>
    #
    #   @return [String]
    #
    RecordsEvent = ::Struct.new(
      :payload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies how requests are redirected. In the event of an error, you can specify a
    #          different error code to return.</p>
    #
    # @!attribute host_name
    #   <p>The host name to use in the redirect request.</p>
    #
    #   @return [String]
    #
    # @!attribute http_redirect_code
    #   <p>The HTTP redirect code to use on the response. Not required if one of the siblings is
    #            present.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>Protocol to use when redirecting requests. The default is the protocol that is used in
    #            the original request.</p>
    #
    #   Enum, one of: ["http", "https"]
    #
    #   @return [String]
    #
    # @!attribute replace_key_prefix_with
    #   <p>The object key prefix to use in the redirect request. For example, to redirect requests
    #            for all pages with prefix <code>docs/</code> (objects in the <code>docs/</code> folder) to
    #               <code>documents/</code>, you can set a condition block with <code>KeyPrefixEquals</code>
    #            set to <code>docs/</code> and in the Redirect set <code>ReplaceKeyPrefixWith</code> to
    #               <code>/documents</code>. Not required if one of the siblings is present. Can be present
    #            only if <code>ReplaceKeyWith</code> is not provided.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute replace_key_with
    #   <p>The specific object key to use in the redirect request. For example, redirect request to
    #               <code>error.html</code>. Not required if one of the siblings is present. Can be present
    #            only if <code>ReplaceKeyPrefixWith</code> is not provided.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    Redirect = ::Struct.new(
      :host_name,
      :http_redirect_code,
      :protocol,
      :replace_key_prefix_with,
      :replace_key_with,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3
    #          bucket.</p>
    #
    # @!attribute host_name
    #   <p>Name of the host where requests are redirected.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>Protocol to use when redirecting requests. The default is the protocol that is used in
    #            the original request.</p>
    #
    #   Enum, one of: ["http", "https"]
    #
    #   @return [String]
    #
    RedirectAllRequestsTo = ::Struct.new(
      :host_name,
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter that you can specify for selection for modifications on replicas. Amazon S3 doesn't
    #          replicate replica modifications by default. In the latest version of replication
    #          configuration (when <code>Filter</code> is specified), you can specify this element and set
    #          the status to <code>Enabled</code> to replicate modifications on replicas. </p>
    #          <note>
    #             <p> If you don't specify the <code>Filter</code> element, Amazon S3 assumes that the
    #             replication configuration is the earlier version, V1. In the earlier version, this
    #             element is not allowed.</p>
    #          </note>
    #
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates modifications on replicas.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    ReplicaModifications = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReplicaModificationsStatus
    #
    module ReplicaModificationsStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # <p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a
    #          replication configuration is 2 MB.</p>
    #
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that Amazon S3 assumes when
    #            replicating objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html">How to Set Up Replication</a>
    #            in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>A container for one or more replication rules. A replication configuration must have at
    #            least one rule and can contain a maximum of 1,000 rules. </p>
    #
    #   @return [Array<ReplicationRule>]
    #
    ReplicationConfiguration = ::Struct.new(
      :role,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies which Amazon S3 objects to replicate and where to store the replicas.</p>
    #
    # @!attribute id
    #   <p>A unique identifier for the rule. The maximum value is 255 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority indicates which rule has precedence whenever two or more replication rules
    #            conflict. Amazon S3 will attempt to replicate objects according to all replication rules.
    #            However, if there are two or more rules with the same destination bucket, then objects will
    #            be replicated according to the rule with the highest priority. The higher the number, the
    #            higher the priority. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html">Replication</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the object or objects to which the rule
    #            applies. The maximum prefix length is 1,024 characters. To include all objects in a bucket,
    #            specify an empty string. </p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>A filter that identifies the subset of objects to which the replication rule applies. A
    #               <code>Filter</code> must specify exactly one <code>Prefix</code>, <code>Tag</code>, or
    #            an <code>And</code> child element.</p>
    #
    #   @return [ReplicationRuleFilter]
    #
    # @!attribute status
    #   <p>Specifies whether the rule is enabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute source_selection_criteria
    #   <p>A container that describes additional filters for identifying the source objects that
    #            you want to replicate. You can choose to enable or disable the replication of these
    #            objects. Currently, Amazon S3 supports only the filter that you can specify for objects created
    #            with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service
    #            (SSE-KMS).</p>
    #
    #   @return [SourceSelectionCriteria]
    #
    # @!attribute existing_object_replication
    #   <p>Optional configuration to replicate existing source bucket objects. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html existing-object-replication">Replicating Existing Objects</a> in the <i>Amazon S3 User Guide</i>.
    #         </p>
    #
    #   @return [ExistingObjectReplication]
    #
    # @!attribute destination
    #   <p>A container for information about the replication destination and its configurations
    #            including enabling the S3 Replication Time Control (S3 RTC).</p>
    #
    #   @return [Destination]
    #
    # @!attribute delete_marker_replication
    #   <p>Specifies whether Amazon S3 replicates delete markers. If you specify a <code>Filter</code>
    #            in your replication configuration, you must also include a
    #               <code>DeleteMarkerReplication</code> element. If your <code>Filter</code> includes a
    #               <code>Tag</code> element, the <code>DeleteMarkerReplication</code>
    #               <code>Status</code> must be set to Disabled, because Amazon S3 does not support replicating
    #            delete markers for tag-based rules. For an example configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html replication-config-min-rule-config">Basic Rule Configuration</a>. </p>
    #            <p>For more information about delete marker replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/delete-marker-replication.html">Basic Rule
    #               Configuration</a>. </p>
    #            <note>
    #               <p>If you are using an earlier version of the replication configuration, Amazon S3 handles
    #               replication of delete markers differently. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html replication-backward-compat-considerations">Backward Compatibility</a>.</p>
    #            </note>
    #
    #   @return [DeleteMarkerReplication]
    #
    ReplicationRule = ::Struct.new(
      :id,
      :priority,
      :prefix,
      :filter,
      :status,
      :source_selection_criteria,
      :existing_object_replication,
      :destination,
      :delete_marker_replication,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # <p>A container for specifying rule filters. The filters determine the subset of objects to
    #          which the rule applies. This element is required only if you specify more than one filter. </p>
    #          <p>For example:</p>
    #          <ul>
    #             <li>
    #                <p>If you specify both a <code>Prefix</code> and a <code>Tag</code> filter, wrap
    #                these filters in an <code>And</code> tag. </p>
    #             </li>
    #             <li>
    #                <p>If you specify a filter based on multiple tags, wrap the <code>Tag</code> elements
    #                in an <code>And</code> tag.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects to which the rule
    #            applies.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of tags containing key and value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    ReplicationRuleAndOperator = ::Struct.new(
      :prefix,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter that identifies the subset of objects to which the replication rule applies. A
    #             <code>Filter</code> must specify exactly one <code>Prefix</code>, <code>Tag</code>, or
    #          an <code>And</code> child element.</p>
    #
    class ReplicationRuleFilter < Hearth::Union
      # <p>An object key name prefix that identifies the subset of objects to which the rule
      #          applies.</p>
      #          <important>
      #             <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
      #          XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
      #             XML related object key constraints</a>.</p>
      #          </important>
      #
      class Prefix < ReplicationRuleFilter
        def to_h
          { prefix: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Prefix #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A container for specifying a tag key and value. </p>
      #          <p>The rule applies only to objects that have the tag in their tag set.</p>
      #
      class Tag < ReplicationRuleFilter
        def to_h
          { tag: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Tag #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A container for specifying rule filters. The filters determine the subset of objects to
      #          which the rule applies. This element is required only if you specify more than one filter.
      #          For example: </p>
      #          <ul>
      #             <li>
      #                <p>If you specify both a <code>Prefix</code> and a <code>Tag</code> filter, wrap
      #                these filters in an <code>And</code> tag.</p>
      #             </li>
      #             <li>
      #                <p>If you specify a filter based on multiple tags, wrap the <code>Tag</code> elements
      #                in an <code>And</code> tag.</p>
      #             </li>
      #          </ul>
      #
      class And < ReplicationRuleFilter
        def to_h
          { and: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::And #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ReplicationRuleFilter
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for ReplicationRuleStatus
    #
    module ReplicationRuleStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # Includes enum constants for ReplicationStatus
    #
    module ReplicationStatus
      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      REPLICA = "REPLICA"
    end

    # <p> A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is
    #          enabled and the time when all objects and operations on objects must be replicated. Must be
    #          specified together with a <code>Metrics</code> block. </p>
    #
    # @!attribute status
    #   <p> Specifies whether the replication time is enabled. </p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute time
    #   <p> A container specifying the time by which replication should be complete for all objects
    #            and operations on objects. </p>
    #
    #   @return [ReplicationTimeValue]
    #
    ReplicationTime = ::Struct.new(
      :status,
      :time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReplicationTimeStatus
    #
    module ReplicationTimeStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # <p> A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics
    #             <code>EventThreshold</code>. </p>
    #
    # @!attribute minutes
    #   <p> Contains an integer specifying time in minutes. </p>
    #            <p> Valid value: 15</p>
    #
    #   @return [Integer]
    #
    ReplicationTimeValue = ::Struct.new(
      :minutes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.minutes ||= 0
      end
    end

    # Includes enum constants for RequestCharged
    #
    module RequestCharged
      # No documentation available.
      #
      requester = "requester"
    end

    # Includes enum constants for RequestPayer
    #
    module RequestPayer
      # No documentation available.
      #
      requester = "requester"
    end

    # <p>Container for Payer.</p>
    #
    # @!attribute payer
    #   <p>Specifies who pays for the download and request fees.</p>
    #
    #   Enum, one of: ["Requester", "BucketOwner"]
    #
    #   @return [String]
    #
    RequestPaymentConfiguration = ::Struct.new(
      :payer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for specifying if periodic <code>QueryProgress</code> messages should be
    #          sent.</p>
    #
    # @!attribute enabled
    #   <p>Specifies whether periodic QueryProgress frames should be sent. Valid values: TRUE,
    #            FALSE. Default value: FALSE.</p>
    #
    #   @return [Boolean]
    #
    RequestProgress = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object to restore. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Object key for which the action was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute restore_request
    #   <p>Container for restore job parameters.</p>
    #
    #   @return [RestoreRequest]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    RestoreObjectInput = ::Struct.new(
      :bucket,
      :key,
      :version_id,
      :restore_request,
      :request_payer,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute restore_output_path
    #   <p>Indicates the path in the provided S3 output location where Select results will be
    #            restored to.</p>
    #
    #   @return [String]
    #
    RestoreObjectOutput = ::Struct.new(
      :request_charged,
      :restore_output_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for restore job parameters.</p>
    #
    # @!attribute days
    #   <p>Lifetime of the active copy in days. Do not use with restores that specify
    #               <code>OutputLocation</code>.</p>
    #            <p>The Days element is required for regular restores, and must not be provided for select
    #            requests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute glacier_job_parameters
    #   <p>S3 Glacier related parameters pertaining to this job. Do not use with restores that
    #            specify <code>OutputLocation</code>.</p>
    #
    #   @return [GlacierJobParameters]
    #
    # @!attribute type
    #   <p>Type of restore request.</p>
    #
    #   Enum, one of: ["SELECT"]
    #
    #   @return [String]
    #
    # @!attribute tier
    #   <p>Retrieval tier at which the restore will be processed.</p>
    #
    #   Enum, one of: ["Standard", "Bulk", "Expedited"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The optional description for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute select_parameters
    #   <p>Describes the parameters for Select job types.</p>
    #
    #   @return [SelectParameters]
    #
    # @!attribute output_location
    #   <p>Describes the location where the restore job's output is stored.</p>
    #
    #   @return [OutputLocation]
    #
    RestoreRequest = ::Struct.new(
      :days,
      :glacier_job_parameters,
      :type,
      :tier,
      :description,
      :select_parameters,
      :output_location,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.days ||= 0
      end
    end

    # Includes enum constants for RestoreRequestType
    #
    module RestoreRequestType
      # No documentation available.
      #
      SELECT = "SELECT"
    end

    # <p>Specifies the redirect behavior and when a redirect is applied. For more information
    #          about routing rules, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html#advanced-conditional-redirects">Configuring advanced conditional redirects</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute condition
    #   <p>A container for describing a condition that must be met for the specified redirect to
    #            apply. For example, 1. If request is for pages in the <code>/docs</code> folder, redirect
    #            to the <code>/documents</code> folder. 2. If request results in HTTP error 4xx, redirect
    #            request to another host where you might process the error.</p>
    #
    #   @return [Condition]
    #
    # @!attribute redirect
    #   <p>Container for redirect information. You can redirect requests to another host, to
    #            another page, or with another protocol. In the event of an error, you can specify a
    #            different error code to return.</p>
    #
    #   @return [Redirect]
    #
    RoutingRule = ::Struct.new(
      :condition,
      :redirect,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for object key name prefix and suffix filtering rules.</p>
    #
    # @!attribute filter_rules
    #   <p>A list of containers for the key-value pair that defines the criteria for the filter
    #            rule.</p>
    #
    #   @return [Array<FilterRule>]
    #
    S3KeyFilter = ::Struct.new(
      :filter_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon S3 location that will receive the results of the restore request.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the bucket where the restore results will be placed.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The prefix that is prepended to the restore results for this request.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   <p>Contains the type of server-side encryption used.</p>
    #
    #   @return [Encryption]
    #
    # @!attribute canned_acl
    #   <p>The canned ACL to apply to the restore results.</p>
    #
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #
    #   @return [String]
    #
    # @!attribute access_control_list
    #   <p>A list of grants that control access to the staged results.</p>
    #
    #   @return [Array<Grant>]
    #
    # @!attribute tagging
    #   <p>The tag-set that is applied to the restore results.</p>
    #
    #   @return [Tagging]
    #
    # @!attribute user_metadata
    #   <p>A list of metadata to store with the restore results in S3.</p>
    #
    #   @return [Array<MetadataEntry>]
    #
    # @!attribute storage_class
    #   <p>The class of storage used to store the restore results.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket_name,
      :prefix,
      :encryption,
      :canned_acl,
      :access_control_list,
      :tagging,
      :user_metadata,
      :storage_class,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the use of SSE-KMS to encrypt delivered inventory reports.</p>
    #
    # @!attribute key_id
    #   <p>Specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric encryption
    #            customer managed key to use for encrypting inventory reports.</p>
    #
    #   @return [String]
    #
    SSEKMS = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::S3::Types::SSEKMS "\
          "key_id=\"[SENSITIVE]\">"
      end
    end

    # <p>Specifies the use of SSE-S3 to encrypt delivered inventory reports.</p>
    #
    SSES3 = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the byte range of the object to get the records from. A record is processed
    #          when its first byte is contained by the range. This parameter is optional, but when
    #          specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the
    #          start and end of the range.</p>
    #
    # @!attribute start
    #   <p>Specifies the start of the byte range. This parameter is optional. Valid values:
    #            non-negative integers. The default value is 0. If only <code>start</code> is supplied, it
    #            means scan from that point to the end of the file. For example,
    #               <code><scanrange><start>50</start></scanrange></code> means scan
    #            from byte 50 until the end of the file.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end
    #   <p>Specifies the end of the byte range. This parameter is optional. Valid values:
    #            non-negative integers. The default value is one less than the size of the object being
    #            queried. If only the End parameter is supplied, it is interpreted to mean scan the last N
    #            bytes of the file. For example,
    #               <code><scanrange><end>50</end></scanrange></code> means scan the
    #            last 50 bytes.</p>
    #
    #   @return [Integer]
    #
    ScanRange = ::Struct.new(
      :start,
      :end,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.start ||= 0
        self.end ||= 0
      end
    end

    # <p>The container for selecting objects from a content event stream.</p>
    #
    class SelectObjectContentEventStream < Hearth::Union
      # <p>The Records Event.</p>
      #
      class Records < SelectObjectContentEventStream
        def to_h
          { records: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Records #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The Stats Event.</p>
      #
      class Stats < SelectObjectContentEventStream
        def to_h
          { stats: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Stats #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The Progress Event.</p>
      #
      class Progress < SelectObjectContentEventStream
        def to_h
          { progress: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Progress #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The Continuation Event.</p>
      #
      class Cont < SelectObjectContentEventStream
        def to_h
          { cont: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Cont #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The End Event.</p>
      #
      class End < SelectObjectContentEventStream
        def to_h
          { end: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::End #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < SelectObjectContentEventStream
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Request to filter the contents of an Amazon S3 object based on a simple Structured Query
    #          Language (SQL) statement. In the request, along with the SQL expression, you must specify a
    #          data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data
    #          into records. It returns only records that match the specified SQL expression. You must
    #          also specify the data serialization format for the response. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectSELECTContent.html">S3Select API Documentation</a>.</p>
    #
    # @!attribute bucket
    #   <p>The S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The object key.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created
    #       using a checksum algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The expression that is used to query the object.</p>
    #
    #   @return [String]
    #
    # @!attribute expression_type
    #   <p>The type of the provided expression (for example, SQL).</p>
    #
    #   Enum, one of: ["SQL"]
    #
    #   @return [String]
    #
    # @!attribute request_progress
    #   <p>Specifies if periodic request progress information should be enabled.</p>
    #
    #   @return [RequestProgress]
    #
    # @!attribute input_serialization
    #   <p>Describes the format of the data in the object that is being queried.</p>
    #
    #   @return [InputSerialization]
    #
    # @!attribute output_serialization
    #   <p>Describes the format of the data that you want Amazon S3 to return in response.</p>
    #
    #   @return [OutputSerialization]
    #
    # @!attribute scan_range
    #   <p>Specifies the byte range of the object to get the records from. A record is processed
    #            when its first byte is contained by the range. This parameter is optional, but when
    #            specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the
    #            start and end of the range.</p>
    #            <p>
    #               <code>ScanRange</code>may be used in the following ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code><scanrange><start>50</start><end>100</end></scanrange></code>
    #                  - process only the records starting between the bytes 50 and 100 (inclusive, counting
    #                  from zero)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code><scanrange><start>50</start></scanrange></code> -
    #                  process only the records starting after the byte 50</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code><scanrange><end>50</end></scanrange></code> -
    #                  process only the records within the last 50 bytes of the file.</p>
    #               </li>
    #            </ul>
    #
    #   @return [ScanRange]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    SelectObjectContentInput = ::Struct.new(
      :bucket,
      :key,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :expression,
      :expression_type,
      :request_progress,
      :input_serialization,
      :output_serialization,
      :scan_range,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::S3::Types::SelectObjectContentInput "\
          "bucket=#{bucket || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "expression=#{expression || 'nil'}, "\
          "expression_type=#{expression_type || 'nil'}, "\
          "request_progress=#{request_progress || 'nil'}, "\
          "input_serialization=#{input_serialization || 'nil'}, "\
          "output_serialization=#{output_serialization || 'nil'}, "\
          "scan_range=#{scan_range || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}>"
      end
    end

    # @!attribute payload
    #   <p>The array of results.</p>
    #
    #   @return [SelectObjectContentEventStream]
    #
    SelectObjectContentOutput = ::Struct.new(
      :payload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the parameters for Select job types.</p>
    #
    # @!attribute input_serialization
    #   <p>Describes the serialization format of the object.</p>
    #
    #   @return [InputSerialization]
    #
    # @!attribute expression_type
    #   <p>The type of the provided expression (for example, SQL).</p>
    #
    #   Enum, one of: ["SQL"]
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The expression that is used to query the object.</p>
    #
    #   @return [String]
    #
    # @!attribute output_serialization
    #   <p>Describes how the results of the Select job are serialized.</p>
    #
    #   @return [OutputSerialization]
    #
    SelectParameters = ::Struct.new(
      :input_serialization,
      :expression_type,
      :expression,
      :output_serialization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServerSideEncryption
    #
    module ServerSideEncryption
      # No documentation available.
      #
      AES256 = "AES256"

      # No documentation available.
      #
      aws_kms = "aws:kms"
    end

    # <p>Describes the default server-side encryption to apply to new objects in the bucket. If a
    #          PUT Object request doesn't specify any server-side encryption, this default encryption will
    #          be applied. If you don't specify a customer managed key at configuration, Amazon S3 automatically creates
    #          an Amazon Web Services KMS key in your Amazon Web Services account the first time that you add an object encrypted
    #          with SSE-KMS to a bucket. By default, Amazon S3 uses this KMS key for SSE-KMS. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html">PUT Bucket encryption</a> in
    #          the <i>Amazon S3 API Reference</i>.</p>
    #
    # @!attribute sse_algorithm
    #   <p>Server-side encryption algorithm to use for the default encryption.</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute kms_master_key_id
    #   <p>Amazon Web Services Key Management Service (KMS) customer Amazon Web Services KMS key ID to use for the default
    #            encryption. This parameter is allowed if and only if <code>SSEAlgorithm</code> is set to
    #               <code>aws:kms</code>.</p>
    #            <p>You can specify the key ID or the Amazon Resource Name (ARN) of the KMS key. However, if
    #            you are using encryption with cross-account or Amazon Web Services service operations you must use a
    #            fully qualified KMS key ARN. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html bucket-encryption-update-bucket-policy">Using encryption for cross-account operations</a>. </p>
    #            <p>
    #               <b>For example:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN:
    #                     <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>Amazon S3 only supports symmetric encryption KMS keys. For
    #               more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric keys in Amazon Web Services KMS</a> in the <i>Amazon Web Services Key Management Service Developer
    #                  Guide</i>.</p>
    #            </important>
    #
    #   @return [String]
    #
    ServerSideEncryptionByDefault = ::Struct.new(
      :sse_algorithm,
      :kms_master_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::S3::Types::ServerSideEncryptionByDefault "\
          "sse_algorithm=#{sse_algorithm || 'nil'}, "\
          "kms_master_key_id=\"[SENSITIVE]\">"
      end
    end

    # <p>Specifies the default server-side-encryption configuration.</p>
    #
    # @!attribute rules
    #   <p>Container for information about a particular server-side encryption configuration
    #            rule.</p>
    #
    #   @return [Array<ServerSideEncryptionRule>]
    #
    ServerSideEncryptionConfiguration = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the default server-side encryption configuration.</p>
    #
    # @!attribute apply_server_side_encryption_by_default
    #   <p>Specifies the default server-side encryption to apply to new objects in the bucket. If a
    #            PUT Object request doesn't specify any server-side encryption, this default encryption will
    #            be applied.</p>
    #
    #   @return [ServerSideEncryptionByDefault]
    #
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key with server-side encryption using KMS
    #            (SSE-KMS) for new objects in the bucket. Existing objects are not affected. Setting the
    #               <code>BucketKeyEnabled</code> element to <code>true</code> causes Amazon S3 to use an S3
    #            Bucket Key. By default, S3 Bucket Key is not enabled.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html">Amazon S3 Bucket Keys</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    ServerSideEncryptionRule = ::Struct.new(
      :apply_server_side_encryption_by_default,
      :bucket_key_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bucket_key_enabled ||= false
      end
    end

    # <p>A container that describes additional filters for identifying the source objects that
    #          you want to replicate. You can choose to enable or disable the replication of these
    #          objects. Currently, Amazon S3 supports only the filter that you can specify for objects created
    #          with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service
    #          (SSE-KMS).</p>
    #
    # @!attribute sse_kms_encrypted_objects
    #   <p> A container for filter information for the selection of Amazon S3 objects encrypted with
    #            Amazon Web Services KMS. If you include <code>SourceSelectionCriteria</code> in the replication
    #            configuration, this element is required. </p>
    #
    #   @return [SseKmsEncryptedObjects]
    #
    # @!attribute replica_modifications
    #   <p>A filter that you can specify for selections for modifications on replicas. Amazon S3 doesn't
    #            replicate replica modifications by default. In the latest version of replication
    #            configuration (when <code>Filter</code> is specified), you can specify this element and set
    #            the status to <code>Enabled</code> to replicate modifications on replicas. </p>
    #            <note>
    #               <p> If you don't specify the <code>Filter</code> element, Amazon S3 assumes that the
    #               replication configuration is the earlier version, V1. In the earlier version, this
    #               element is not allowed</p>
    #            </note>
    #
    #   @return [ReplicaModifications]
    #
    SourceSelectionCriteria = ::Struct.new(
      :sse_kms_encrypted_objects,
      :replica_modifications,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for filter information for the selection of S3 objects encrypted with Amazon Web Services
    #          KMS.</p>
    #
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates objects created with server-side encryption using an
    #            Amazon Web Services KMS key stored in Amazon Web Services Key Management Service.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    SseKmsEncryptedObjects = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SseKmsEncryptedObjectsStatus
    #
    module SseKmsEncryptedObjectsStatus
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # <p>Container for the stats details.</p>
    #
    # @!attribute bytes_scanned
    #   <p>The total number of object bytes scanned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bytes_processed
    #   <p>The total number of uncompressed object bytes processed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bytes_returned
    #   <p>The total number of bytes of records payload data returned.</p>
    #
    #   @return [Integer]
    #
    Stats = ::Struct.new(
      :bytes_scanned,
      :bytes_processed,
      :bytes_returned,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bytes_scanned ||= 0
        self.bytes_processed ||= 0
        self.bytes_returned ||= 0
      end
    end

    # <p>Container for the Stats Event.</p>
    #
    # @!attribute details
    #   <p>The Stats event details.</p>
    #
    #   @return [Stats]
    #
    StatsEvent = ::Struct.new(
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
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
      ONEZONE_IA = "ONEZONE_IA"

      # No documentation available.
      #
      INTELLIGENT_TIERING = "INTELLIGENT_TIERING"

      # No documentation available.
      #
      GLACIER = "GLACIER"

      # No documentation available.
      #
      DEEP_ARCHIVE = "DEEP_ARCHIVE"

      # No documentation available.
      #
      OUTPOSTS = "OUTPOSTS"

      # No documentation available.
      #
      GLACIER_IR = "GLACIER_IR"
    end

    # <p>Specifies data related to access patterns to be collected and made available to analyze
    #          the tradeoffs between different storage classes for an Amazon S3 bucket.</p>
    #
    # @!attribute data_export
    #   <p>Specifies how data related to the storage class analysis for an Amazon S3 bucket should be
    #            exported.</p>
    #
    #   @return [StorageClassAnalysisDataExport]
    #
    StorageClassAnalysis = ::Struct.new(
      :data_export,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for data related to the storage class analysis for an Amazon S3 bucket for
    #          export.</p>
    #
    # @!attribute output_schema_version
    #   <p>The version of the output schema to use when exporting data. Must be
    #            <code>V_1</code>.</p>
    #
    #   Enum, one of: ["V_1"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The place to store the data for an analysis.</p>
    #
    #   @return [AnalyticsExportDestination]
    #
    StorageClassAnalysisDataExport = ::Struct.new(
      :output_schema_version,
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StorageClassAnalysisSchemaVersion
    #
    module StorageClassAnalysisSchemaVersion
      # No documentation available.
      #
      V_1 = "V_1"
    end

    # <p>A container of a key value name pair.</p>
    #
    # @!attribute key
    #   <p>Name of the object key.</p>
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

    # <p>Container for <code>TagSet</code> elements.</p>
    #
    # @!attribute tag_set
    #   <p>A collection for a set of tags</p>
    #
    #   @return [Array<Tag>]
    #
    Tagging = ::Struct.new(
      :tag_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaggingDirective
    #
    module TaggingDirective
      # No documentation available.
      #
      COPY = "COPY"

      # No documentation available.
      #
      REPLACE = "REPLACE"
    end

    # <p>Container for granting information.</p>
    #          <p>Buckets that use the bucket owner enforced setting for Object Ownership don't support
    #          target grants. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general">Permissions server access log delivery</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute grantee
    #   <p>Container for the person being granted permissions.</p>
    #
    #   @return [Grantee]
    #
    # @!attribute permission
    #   <p>Logging permissions assigned to the grantee for the bucket.</p>
    #
    #   Enum, one of: ["FULL_CONTROL", "READ", "WRITE"]
    #
    #   @return [String]
    #
    TargetGrant = ::Struct.new(
      :grantee,
      :permission,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Tier
    #
    module Tier
      # No documentation available.
      #
      Standard = "Standard"

      # No documentation available.
      #
      Bulk = "Bulk"

      # No documentation available.
      #
      Expedited = "Expedited"
    end

    # <p>The S3 Intelligent-Tiering storage class is designed to optimize storage costs by
    #          automatically moving data to the most cost-effective storage access tier, without
    #          additional operational overhead.</p>
    #
    # @!attribute days
    #   <p>The number of consecutive days of no access after which an object will be eligible to be
    #            transitioned to the corresponding tier. The minimum number of days specified for
    #            Archive Access tier must be at least 90 days and Deep Archive Access tier must be at least
    #            180 days. The maximum can be up to 2 years (730 days).</p>
    #
    #   @return [Integer]
    #
    # @!attribute access_tier
    #   <p>S3 Intelligent-Tiering access tier. See <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html sc-dynamic-data-access">Storage class
    #               for automatically optimizing frequently and infrequently accessed objects</a> for a
    #            list of access tiers in the S3 Intelligent-Tiering storage class.</p>
    #
    #   Enum, one of: ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    #
    #   @return [String]
    #
    Tiering = ::Struct.new(
      :days,
      :access_tier,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.days ||= 0
      end
    end

    # <p>A container for specifying the configuration for publication of messages to an Amazon
    #          Simple Notification Service (Amazon SNS) topic when Amazon S3 detects specified events.</p>
    #
    # @!attribute id
    #   <p>An optional unique identifier for configurations in a notification configuration. If you
    #            don't provide one, Amazon S3 will assign an ID.</p>
    #
    #   @return [String]
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which Amazon S3 publishes a message
    #            when it detects events of the specified type.</p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>The Amazon S3 bucket event about which to send notifications. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Supported
    #               Event Types</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filter
    #   <p>Specifies object key name filtering rules. For information about key name filtering, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring
    #               Event Notifications</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [NotificationConfigurationFilter]
    #
    TopicConfiguration = ::Struct.new(
      :id,
      :topic_arn,
      :events,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies when an object transitions to a specified storage class. For more information
    #          about Amazon S3 lifecycle configuration rules, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html">Transitioning
    #             Objects Using Amazon S3 Lifecycle</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute date
    #   <p>Indicates when objects are transitioned to the specified storage class. The date value
    #            must be in ISO 8601 format. The time is always midnight UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute days
    #   <p>Indicates the number of days after creation when objects are transitioned to the
    #            specified storage class. The value must be a positive integer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_class
    #   <p>The storage class to which you want the object to transition.</p>
    #
    #   Enum, one of: ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #
    #   @return [String]
    #
    Transition = ::Struct.new(
      :date,
      :days,
      :storage_class,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.days ||= 0
      end
    end

    # Includes enum constants for TransitionStorageClass
    #
    module TransitionStorageClass
      # No documentation available.
      #
      GLACIER = "GLACIER"

      # No documentation available.
      #
      STANDARD_IA = "STANDARD_IA"

      # No documentation available.
      #
      ONEZONE_IA = "ONEZONE_IA"

      # No documentation available.
      #
      INTELLIGENT_TIERING = "INTELLIGENT_TIERING"

      # No documentation available.
      #
      DEEP_ARCHIVE = "DEEP_ARCHIVE"

      # No documentation available.
      #
      GLACIER_IR = "GLACIER_IR"
    end

    # Includes enum constants for Type
    #
    module Type
      # No documentation available.
      #
      CanonicalUser = "CanonicalUser"

      # No documentation available.
      #
      AmazonCustomerByEmail = "AmazonCustomerByEmail"

      # No documentation available.
      #
      Group = "Group"
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source
    #   <p>Specifies the source object for the copy operation. You specify the value in one of two
    #            formats, depending on whether you want to access the source object through an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">access point</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>For objects not accessed through an access point, specify the name of the source bucket
    #                  and key of the source object, separated by a slash (/). For example, to copy the
    #                  object <code>reports/january.pdf</code> from the bucket
    #                  <code>awsexamplebucket</code>, use <code>awsexamplebucket/reports/january.pdf</code>.
    #                  The value must be URL-encoded.</p>
    #               </li>
    #               <li>
    #                  <p>For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format <code>arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through access point <code>my-access-point</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf</code>. The value must be URL encoded.</p>
    #                  <note>
    #                     <p>Amazon S3 supports copy operations using access points only when the source and destination buckets are in the same Amazon Web Services Region.</p>
    #                  </note>
    #                  <p>Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>. The value must be URL-encoded.  </p>
    #               </li>
    #            </ul>
    #            <p>To copy a specific version of an object, append <code>?versionId=<version-id></code>
    #            to the value (for example,
    #               <code>awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>).
    #            If you don't specify a version ID, Amazon S3 copies the latest version of the source
    #            object.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_if_match
    #   <p>Copies the object if its entity tag (ETag) matches the specified tag.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_if_modified_since
    #   <p>Copies the object if it has been modified since the specified time.</p>
    #
    #   @return [Time]
    #
    # @!attribute copy_source_if_none_match
    #   <p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_if_unmodified_since
    #   <p>Copies the object if it hasn't been modified since the specified time.</p>
    #
    #   @return [Time]
    #
    # @!attribute copy_source_range
    #   <p>The range of bytes to copy from the source object. The range value must use the form
    #            bytes=first-last, where the first and last are the zero-based byte offsets to copy. For
    #            example, bytes=0-9 indicates that you want to copy the first 10 bytes of the source. You
    #            can copy a range only if the source object is greater than 5 MB.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute part_number
    #   <p>Part number of part being copied. This is a positive integer between 1 and
    #            10,000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose part is being copied.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header. This must be the
    #            same encryption key specified in the initiate multipart upload request.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_sse_customer_algorithm
    #   <p>Specifies the algorithm to use when decrypting the source object (for example,
    #            AES256).</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source
    #            object. The encryption key provided in this header must be one that was used when the
    #            source object was created.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_source_sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected destination bucket owner. If the destination bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    # @!attribute expected_source_bucket_owner
    #   <p>The account ID of the expected source bucket owner. If the source bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    UploadPartCopyInput = ::Struct.new(
      :bucket,
      :copy_source,
      :copy_source_if_match,
      :copy_source_if_modified_since,
      :copy_source_if_none_match,
      :copy_source_if_unmodified_since,
      :copy_source_range,
      :key,
      :part_number,
      :upload_id,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :copy_source_sse_customer_algorithm,
      :copy_source_sse_customer_key,
      :copy_source_sse_customer_key_md5,
      :request_payer,
      :expected_bucket_owner,
      :expected_source_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.part_number ||= 0
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::UploadPartCopyInput "\
          "bucket=#{bucket || 'nil'}, "\
          "copy_source=#{copy_source || 'nil'}, "\
          "copy_source_if_match=#{copy_source_if_match || 'nil'}, "\
          "copy_source_if_modified_since=#{copy_source_if_modified_since || 'nil'}, "\
          "copy_source_if_none_match=#{copy_source_if_none_match || 'nil'}, "\
          "copy_source_if_unmodified_since=#{copy_source_if_unmodified_since || 'nil'}, "\
          "copy_source_range=#{copy_source_range || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "part_number=#{part_number || 'nil'}, "\
          "upload_id=#{upload_id || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "copy_source_sse_customer_algorithm=#{copy_source_sse_customer_algorithm || 'nil'}, "\
          "copy_source_sse_customer_key=\"[SENSITIVE]\", "\
          "copy_source_sse_customer_key_md5=#{copy_source_sse_customer_key_md5 || 'nil'}, "\
          "request_payer=#{request_payer || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, "\
          "expected_source_bucket_owner=#{expected_source_bucket_owner || 'nil'}>"
      end
    end

    # @!attribute copy_source_version_id
    #   <p>The version of the source object that was copied, if you have enabled versioning on the
    #            source bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_part_result
    #   <p>Container for all response elements.</p>
    #
    #   @return [CopyPartResult]
    #
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header confirming the encryption algorithm used.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption
    #            with Amazon Web Services KMS (SSE-KMS).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    UploadPartCopyOutput = ::Struct.new(
      :copy_source_version_id,
      :copy_part_result,
      :server_side_encryption,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :bucket_key_enabled,
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bucket_key_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::UploadPartCopyOutput "\
          "copy_source_version_id=#{copy_source_version_id || 'nil'}, "\
          "copy_part_result=#{copy_part_result || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "request_charged=#{request_charged || 'nil'}>"
      end
    end

    # @!attribute body
    #   <p>Object data.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute content_length
    #   <p>Size of the body in bytes. This parameter is useful when the size of the body cannot be
    #            determined automatically.</p>
    #
    #   @return [Integer]
    #
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the part data. This parameter is auto-populated
    #            when using the command from the CLI. This parameter is required if object lock parameters
    #            are specified.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #            <p>This checksum algorithm must be the same for all parts and it match the checksum value
    #            supplied in the <code>CreateMultipartUpload</code> request.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute part_number
    #   <p>Part number of part being uploaded. This is a positive integer between 1 and
    #            10,000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose part is being uploaded.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm header</code>. This must be the
    #            same encryption key specified in the initiate multipart upload request.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    #   @return [String]
    #
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    #   @return [String]
    #
    UploadPartInput = ::Struct.new(
      :body,
      :bucket,
      :content_length,
      :content_md5,
      :checksum_algorithm,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      :key,
      :part_number,
      :upload_id,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.content_length ||= 0
        self.part_number ||= 0
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::UploadPartInput "\
          "body=#{body || 'nil'}, "\
          "bucket=#{bucket || 'nil'}, "\
          "content_length=#{content_length || 'nil'}, "\
          "content_md5=#{content_md5 || 'nil'}, "\
          "checksum_algorithm=#{checksum_algorithm || 'nil'}, "\
          "checksum_crc32=#{checksum_crc32 || 'nil'}, "\
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, "\
          "checksum_sha1=#{checksum_sha1 || 'nil'}, "\
          "checksum_sha256=#{checksum_sha256 || 'nil'}, "\
          "key=#{key || 'nil'}, "\
          "part_number=#{part_number || 'nil'}, "\
          "upload_id=#{upload_id || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "request_payer=#{request_payer || 'nil'}, "\
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}>"
      end
    end

    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>Entity tag for the uploaded object.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header confirming the encryption algorithm used.</p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p>If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key was used for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption
    #            with Amazon Web Services KMS (SSE-KMS).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    UploadPartOutput = ::Struct.new(
      :server_side_encryption,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :bucket_key_enabled,
      :request_charged,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bucket_key_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::UploadPartOutput "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "e_tag=#{e_tag || 'nil'}, "\
          "checksum_crc32=#{checksum_crc32 || 'nil'}, "\
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, "\
          "checksum_sha1=#{checksum_sha1 || 'nil'}, "\
          "checksum_sha256=#{checksum_sha256 || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, "\
          "request_charged=#{request_charged || 'nil'}>"
      end
    end

    # <p>Describes the versioning state of an Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html">PUT
    #             Bucket versioning</a> in the <i>Amazon S3 API Reference</i>.</p>
    #
    # @!attribute mfa_delete
    #   <p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This
    #            element is only returned if the bucket has been configured with MFA delete. If the bucket
    #            has never been so configured, this element is not returned.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The versioning state of the bucket.</p>
    #
    #   Enum, one of: ["Enabled", "Suspended"]
    #
    #   @return [String]
    #
    VersioningConfiguration = ::Struct.new(
      :mfa_delete,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies website configuration parameters for an Amazon S3 bucket.</p>
    #
    # @!attribute error_document
    #   <p>The name of the error document for the website.</p>
    #
    #   @return [ErrorDocument]
    #
    # @!attribute index_document
    #   <p>The name of the index document for the website.</p>
    #
    #   @return [IndexDocument]
    #
    # @!attribute redirect_all_requests_to
    #   <p>The redirect behavior for every request to this bucket's website endpoint.</p>
    #            <important>
    #               <p>If you specify this property, you can't specify any other property.</p>
    #            </important>
    #
    #   @return [RedirectAllRequestsTo]
    #
    # @!attribute routing_rules
    #   <p>Rules that define when a redirect is applied and the redirect behavior.</p>
    #
    #   @return [Array<RoutingRule>]
    #
    WebsiteConfiguration = ::Struct.new(
      :error_document,
      :index_document,
      :redirect_all_requests_to,
      :routing_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_route
    #   <p>Route prefix to the HTTP URL generated.</p>
    #
    #   @return [String]
    #
    # @!attribute request_token
    #   <p>A single use encrypted token that maps <code>WriteGetObjectResponse</code> to the end
    #            user <code>GetObject</code> request.</p>
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The object data.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The integer status code for an HTTP response of a corresponding <code>GetObject</code>
    #            request.</p>
    #            <p class="title">
    #               <b>Status Codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>200 - OK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>206 - Partial Content</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>304 - Not Modified</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>400 - Bad Request</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>401 - Unauthorized</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>403 - Forbidden</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>404 - Not Found</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>405 - Method Not Allowed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>409 - Conflict</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>411 - Length Required</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>412 - Precondition Failed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>416 - Range Not Satisfiable</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>500 - Internal Server Error</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>503 - Service Unavailable</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute error_code
    #   <p>A string that uniquely identifies an error condition. Returned in the <Code> tag
    #            of the error XML response for a corresponding <code>GetObject</code> call. Cannot be used
    #            with a successful <code>StatusCode</code> header or when the transformed object is provided
    #            in the body. All error codes from S3 are sentence-cased. The regular expression (regex)
    #            value is <code>"^[A-Z][a-zA-Z]+$"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>Contains a generic description of the error condition. Returned in the <Message>
    #            tag of the error XML response for a corresponding <code>GetObject</code> call. Cannot be
    #            used with a successful <code>StatusCode</code> header or when the transformed object is
    #            provided in body.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_ranges
    #   <p>Indicates that a range of bytes was specified.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #
    #   @return [String]
    #
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #
    #   @return [String]
    #
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #
    #   @return [String]
    #
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #
    #   @return [String]
    #
    # @!attribute content_length
    #   <p>The size of the content body in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute content_range
    #   <p>The portion of the object returned in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is
    #            the same data that was originally sent. This specifies the base64-encoded, 32-bit CRC32
    #            checksum of the object returned by the Object Lambda function. This may not match the
    #            checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values
    #            only when the original <code>GetObject</code> request required checksum validation. For
    #            more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum
    #            headers, this request will fail.</p>
    #            <p></p>
    #
    #   @return [String]
    #
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is
    #            the same data that was originally sent. This specifies the base64-encoded, 32-bit CRC32C
    #            checksum of the object returned by the Object Lambda function. This may not match the
    #            checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values
    #            only when the original <code>GetObject</code> request required checksum validation. For
    #            more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum
    #            headers, this request will fail.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is
    #            the same data that was originally sent. This specifies the base64-encoded, 160-bit SHA-1
    #            digest of the object returned by the Object Lambda function. This may not match the
    #            checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values
    #            only when the original <code>GetObject</code> request required checksum validation. For
    #            more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum
    #            headers, this request will fail.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is
    #            the same data that was originally sent. This specifies the base64-encoded, 256-bit SHA-256
    #            digest of the object returned by the Object Lambda function. This may not match the
    #            checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values
    #            only when the original <code>GetObject</code> request required checksum validation. For
    #            more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum
    #            headers, this request will fail.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_marker
    #   <p>Specifies whether an object stored in Amazon S3 is (<code>true</code>) or is not
    #               (<code>false</code>) a delete marker. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute e_tag
    #   <p>An opaque identifier assigned by a web server to a specific version of a resource found
    #            at a URL. </p>
    #
    #   @return [String]
    #
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #
    #   @return [Time]
    #
    # @!attribute expiration
    #   <p>If the object expiration is configured (see PUT Bucket lifecycle), the response includes
    #            this header. It includes the <code>expiry-date</code> and <code>rule-id</code> key-value
    #            pairs that provide the object expiration information. The value of the <code>rule-id</code>
    #            is URL-encoded. </p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time that the object was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute missing_meta
    #   <p>Set to the number of metadata entries not returned in <code>x-amz-meta</code> headers.
    #            This can happen if you create metadata using an API like SOAP that supports more flexible
    #            metadata than the REST API. For example, using SOAP, you can create metadata whose values
    #            are not legal HTTP headers.</p>
    #
    #   @return [Integer]
    #
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute object_lock_mode
    #   <p>Indicates whether an object stored in Amazon S3 has Object Lock enabled. For more information
    #            about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html">Object Lock</a>.</p>
    #
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #
    #   @return [String]
    #
    # @!attribute object_lock_legal_hold_status
    #   <p>Indicates whether an object stored in Amazon S3 has an active legal hold.</p>
    #
    #   Enum, one of: ["ON", "OFF"]
    #
    #   @return [String]
    #
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when Object Lock is configured to expire.</p>
    #
    #   @return [Time]
    #
    # @!attribute parts_count
    #   <p>The count of parts this object has.</p>
    #
    #   @return [Integer]
    #
    # @!attribute replication_status
    #   <p>Indicates if request involves bucket that is either a source or destination in a
    #            Replication rule. For more information about S3 Replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html">Replication</a>.</p>
    #
    #   Enum, one of: ["COMPLETE", "PENDING", "FAILED", "REPLICA"]
    #
    #   @return [String]
    #
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    #   Enum, one of: ["requester"]
    #
    #   @return [String]
    #
    # @!attribute restore
    #   <p>Provides information about object restoration operation and expiration time of the
    #            restored object copy.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption
    #   <p> The server-side encryption algorithm used when storing requested object in Amazon S3 (for
    #            example, AES256, <code>aws:kms</code>).</p>
    #
    #   Enum, one of: ["AES256", "aws:kms"]
    #
    #   @return [String]
    #
    # @!attribute sse_customer_algorithm
    #   <p>Encryption algorithm used if server-side encryption with a customer-provided encryption
    #            key was specified for object stored in Amazon S3.</p>
    #
    #   @return [String]
    #
    # @!attribute ssekms_key_id
    #   <p> If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for stored in Amazon S3 object. </p>
    #
    #   @return [String]
    #
    # @!attribute sse_customer_key_md5
    #   <p> 128-bit MD5 digest of customer-provided encryption key used in Amazon S3 to encrypt data
    #            stored in S3. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting data
    #               using server-side encryption with customer-provided encryption keys
    #            (SSE-C)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_class
    #   <p>Provides storage class information of the object. Amazon S3 returns this header for all
    #            objects except for S3 Standard storage class objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>.</p>
    #
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute tag_count
    #   <p>The number of tags, if any, on the object.</p>
    #
    #   @return [Integer]
    #
    # @!attribute version_id
    #   <p>An ID used to reference a specific version of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key_enabled
    #   <p> Indicates whether the object stored in Amazon S3 uses an S3 bucket key for server-side
    #            encryption with Amazon Web Services KMS (SSE-KMS).</p>
    #
    #   @return [Boolean]
    #
    WriteGetObjectResponseInput = ::Struct.new(
      :request_route,
      :request_token,
      :body,
      :status_code,
      :error_code,
      :error_message,
      :accept_ranges,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_length,
      :content_range,
      :content_type,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_sha1,
      :checksum_sha256,
      :delete_marker,
      :e_tag,
      :expires,
      :expiration,
      :last_modified,
      :missing_meta,
      :metadata,
      :object_lock_mode,
      :object_lock_legal_hold_status,
      :object_lock_retain_until_date,
      :parts_count,
      :replication_status,
      :request_charged,
      :restore,
      :server_side_encryption,
      :sse_customer_algorithm,
      :ssekms_key_id,
      :sse_customer_key_md5,
      :storage_class,
      :tag_count,
      :version_id,
      :bucket_key_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.status_code ||= 0
        self.content_length ||= 0
        self.delete_marker ||= false
        self.missing_meta ||= 0
        self.parts_count ||= 0
        self.tag_count ||= 0
        self.bucket_key_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::S3::Types::WriteGetObjectResponseInput "\
          "request_route=#{request_route || 'nil'}, "\
          "request_token=#{request_token || 'nil'}, "\
          "body=#{body || 'nil'}, "\
          "status_code=#{status_code || 'nil'}, "\
          "error_code=#{error_code || 'nil'}, "\
          "error_message=#{error_message || 'nil'}, "\
          "accept_ranges=#{accept_ranges || 'nil'}, "\
          "cache_control=#{cache_control || 'nil'}, "\
          "content_disposition=#{content_disposition || 'nil'}, "\
          "content_encoding=#{content_encoding || 'nil'}, "\
          "content_language=#{content_language || 'nil'}, "\
          "content_length=#{content_length || 'nil'}, "\
          "content_range=#{content_range || 'nil'}, "\
          "content_type=#{content_type || 'nil'}, "\
          "checksum_crc32=#{checksum_crc32 || 'nil'}, "\
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, "\
          "checksum_sha1=#{checksum_sha1 || 'nil'}, "\
          "checksum_sha256=#{checksum_sha256 || 'nil'}, "\
          "delete_marker=#{delete_marker || 'nil'}, "\
          "e_tag=#{e_tag || 'nil'}, "\
          "expires=#{expires || 'nil'}, "\
          "expiration=#{expiration || 'nil'}, "\
          "last_modified=#{last_modified || 'nil'}, "\
          "missing_meta=#{missing_meta || 'nil'}, "\
          "metadata=#{metadata || 'nil'}, "\
          "object_lock_mode=#{object_lock_mode || 'nil'}, "\
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}, "\
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, "\
          "parts_count=#{parts_count || 'nil'}, "\
          "replication_status=#{replication_status || 'nil'}, "\
          "request_charged=#{request_charged || 'nil'}, "\
          "restore=#{restore || 'nil'}, "\
          "server_side_encryption=#{server_side_encryption || 'nil'}, "\
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, "\
          "ssekms_key_id=\"[SENSITIVE]\", "\
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, "\
          "storage_class=#{storage_class || 'nil'}, "\
          "tag_count=#{tag_count || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}>"
      end
    end

    WriteGetObjectResponseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
