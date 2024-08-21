# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  module Types

    # <p>Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will
    #          wait before permanently removing all parts of the upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config">
    #             Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration</a> in
    #          the <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :days_after_initiation
    # @!attribute days_after_initiation
    #   <p>Specifies the number of days after which Amazon S3 aborts an incomplete multipart
    #            upload.</p>
    #   @return [Integer]
    class AbortIncompleteMultipartUpload
      include Hearth::Structure

      MEMBERS = %i[
        days_after_initiation
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :upload_id
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name to which the upload was taking place. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key of the object for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>Upload ID that identifies the multipart upload.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class AbortMultipartUploadInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        upload_id
        request_payer
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :request_charged
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class AbortMultipartUploadOutput
      include Hearth::Structure

      MEMBERS = %i[
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html">Amazon S3
    #             Transfer Acceleration</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status
    # @!attribute status
    #   <p>Specifies the transfer acceleration status of the bucket.</p>
    #   Enum, one of: ["Enabled", "Suspended"]
    #   @return [String]
    class AccelerateConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Grant>] :grants
    #   @option params [Owner] :owner
    # @!attribute grants
    #   <p>A list of grants.</p>
    #   @return [Array<Grant>]
    # @!attribute owner
    #   <p>Container for the bucket owner's display name and ID.</p>
    #   @return [Owner]
    class AccessControlPolicy
      include Hearth::Structure

      MEMBERS = %i[
        grants
        owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A container for information about access control for replicas.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :owner (0)
    # @!attribute owner
    #   <p>Specifies the replica ownership. For default and valid values, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html">PUT bucket
    #               replication</a> in the <i>Amazon S3 API Reference</i>.</p>
    #   Enum, one of: ["Destination"]
    #   @return [String]
    class AccessControlTranslation
      include Hearth::Structure

      MEMBERS = %i[
        owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
    #          The operator must have at least two predicates in any combination, and an object must match
    #          all of the predicates for the filter to apply.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :prefix
    #   @option params [Array<Tag>] :tags
    # @!attribute prefix
    #   <p>The prefix to use when evaluating an AND predicate: The prefix that an object must have
    #            to be included in the metrics results.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags to use when evaluating an AND predicate.</p>
    #   @return [Array<Tag>]
    class AnalyticsAndOperator
      include Hearth::Structure

      MEMBERS = %i[
        prefix
        tags
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the configuration and any analyses for the analytics filter of an Amazon S3
    #          bucket.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id (0)
    #   @option params [AnalyticsFilter] :filter
    #   @option params [StorageClassAnalysis] :storage_class_analysis (0)
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>The filter used to describe a set of objects for analyses. A filter must have exactly
    #            one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided,
    #            all objects will be considered in any analysis.</p>
    #   @return [AnalyticsFilter]
    # @!attribute storage_class_analysis
    #   <p> Contains data related to access patterns to be collected and made available to analyze
    #            the tradeoffs between different storage classes. </p>
    #   @return [StorageClassAnalysis]
    class AnalyticsConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        id
        filter
        storage_class_analysis
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Where to publish the analytics results.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [AnalyticsS3BucketDestination] :s3_bucket_destination (0)
    # @!attribute s3_bucket_destination
    #   <p>A destination signifying output to an S3 bucket.</p>
    #   @return [AnalyticsS3BucketDestination]
    class AnalyticsExportDestination
      include Hearth::Structure

      MEMBERS = %i[
        s3_bucket_destination
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The filter used to describe a set of objects for analyses. A filter must have exactly
    #          one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided,
    #          all objects will be considered in any analysis.</p>
    class AnalyticsFilter < Hearth::Union
      # <p>The prefix to use when evaluating an analytics filter.</p>
      class Prefix < AnalyticsFilter
        def to_h
          { prefix: super(__getobj__) }
        end
      end

      # <p>The tag to use when evaluating an analytics filter.</p>
      class Tag < AnalyticsFilter
        def to_h
          { tag: super(__getobj__) }
        end
      end

      # <p>A conjunction (logical AND) of predicates, which is used in evaluating an analytics
      #          filter. The operator must have at least two predicates.</p>
      class And < AnalyticsFilter
        def to_h
          { and: super(__getobj__) }
        end
      end

      class Unknown < AnalyticsFilter
        def initialize(name:, value:)
          super({name: name, value: value})
        end

        def to_h
          { unknown: super(__getobj__) }
        end
      end
    end

    # <p>Contains information about where to publish the analytics results.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :format (0)
    #   @option params [String] :bucket_account_id
    #   @option params [String] :bucket (0)
    #   @option params [String] :prefix
    # @!attribute format
    #   <p>Specifies the file format used when exporting data to Amazon S3.</p>
    #   Enum, one of: ["CSV"]
    #   @return [String]
    # @!attribute bucket_account_id
    #   <p>The account ID that owns the destination S3 bucket. If no account ID is provided, the
    #            owner is not validated before exporting data.</p>
    #            <note>
    #               <p> Although this value is optional, we strongly recommend that you set it to help
    #               prevent problems if the destination bucket ownership changes. </p>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket to which data is exported.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix to use when exporting data. The prefix is prepended to all results.</p>
    #   @return [String]
    class AnalyticsS3BucketDestination
      include Hearth::Structure

      MEMBERS = %i[
        format
        bucket_account_id
        bucket
        prefix
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for AnalyticsS3ExportFileFormat
    module AnalyticsS3ExportFileFormat
      CSV = "CSV"
    end

    # Enum constants for ArchiveStatus
    module ArchiveStatus
      ARCHIVE_ACCESS = "ARCHIVE_ACCESS"

      DEEP_ARCHIVE_ACCESS = "DEEP_ARCHIVE_ACCESS"
    end

    # <p> In terms of implementation, a Bucket is a resource.  </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name
    #   @option params [Time] :creation_date
    # @!attribute name
    #   <p>The name of the bucket.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>Date the bucket was created. This date can change when making changes to your bucket,
    #            such as editing its bucket policy.</p>
    #   @return [Time]
    class Bucket
      include Hearth::Structure

      MEMBERS = %i[
        name
        creation_date
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for BucketAccelerateStatus
    module BucketAccelerateStatus
      ENABLED = "Enabled"

      SUSPENDED = "Suspended"
    end

    # <p>The requested bucket name is not available. The bucket namespace is shared by all users
    #          of the system. Select a different name and try again.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class BucketAlreadyExists
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The bucket you tried to create already exists, and you own it. Amazon S3 returns this error
    #          in all Amazon Web Services Regions except in the North Virginia Region. For legacy compatibility, if you
    #          re-create an existing bucket that you already own in the North Virginia Region, Amazon S3
    #          returns 200 OK and resets the bucket access control lists (ACLs).</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class BucketAlreadyOwnedByYou
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for BucketCannedACL
    module BucketCannedACL
      PRIVATE = "private"

      PUBLIC_READ = "public-read"

      PUBLIC_READ_WRITE = "public-read-write"

      AUTHENTICATED_READ = "authenticated-read"
    end

    # <p>Specifies the information about the bucket that will be created. For more information about directory buckets, see
    #          <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">Directory buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>This functionality is only supported by directory buckets.</p>
    #          </note>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :data_redundancy
    #   @option params [String] :type
    # @!attribute data_redundancy
    #   <p>The number of Availability Zone that's used for redundancy for the bucket.</p>
    #   Enum, one of: ["SingleAvailabilityZone"]
    #   @return [String]
    # @!attribute type
    #   <p>The type of bucket.</p>
    #   Enum, one of: ["Directory"]
    #   @return [String]
    class BucketInfo
      include Hearth::Structure

      MEMBERS = %i[
        data_redundancy
        type
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object Lifecycle Management</a>
    #          in the <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<LifecycleRule>] :rules (0)
    # @!attribute rules
    #   <p>A lifecycle rule for individual objects in an Amazon S3 bucket.</p>
    #   @return [Array<LifecycleRule>]
    class BucketLifecycleConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        rules
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for BucketLocationConstraint
    module BucketLocationConstraint
      AF_SOUTH_1 = "af-south-1"

      AP_EAST_1 = "ap-east-1"

      AP_NORTHEAST_1 = "ap-northeast-1"

      AP_NORTHEAST_2 = "ap-northeast-2"

      AP_NORTHEAST_3 = "ap-northeast-3"

      AP_SOUTH_1 = "ap-south-1"

      AP_SOUTH_2 = "ap-south-2"

      AP_SOUTHEAST_1 = "ap-southeast-1"

      AP_SOUTHEAST_2 = "ap-southeast-2"

      AP_SOUTHEAST_3 = "ap-southeast-3"

      CA_CENTRAL_1 = "ca-central-1"

      CN_NORTH_1 = "cn-north-1"

      CN_NORTHWEST_1 = "cn-northwest-1"

      EU = "EU"

      EU_CENTRAL_1 = "eu-central-1"

      EU_NORTH_1 = "eu-north-1"

      EU_SOUTH_1 = "eu-south-1"

      EU_SOUTH_2 = "eu-south-2"

      EU_WEST_1 = "eu-west-1"

      EU_WEST_2 = "eu-west-2"

      EU_WEST_3 = "eu-west-3"

      ME_SOUTH_1 = "me-south-1"

      SA_EAST_1 = "sa-east-1"

      US_EAST_2 = "us-east-2"

      US_GOV_EAST_1 = "us-gov-east-1"

      US_GOV_WEST_1 = "us-gov-west-1"

      US_WEST_1 = "us-west-1"

      US_WEST_2 = "us-west-2"
    end

    # <p>Container for logging status information.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [LoggingEnabled] :logging_enabled
    # @!attribute logging_enabled
    #   <p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys
    #            for a bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html">PUT Bucket logging</a> in the
    #               <i>Amazon S3 API Reference</i>.</p>
    #   @return [LoggingEnabled]
    class BucketLoggingStatus
      include Hearth::Structure

      MEMBERS = %i[
        logging_enabled
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for BucketLogsPermission
    module BucketLogsPermission
      FULL_CONTROL = "FULL_CONTROL"

      READ = "READ"

      WRITE = "WRITE"
    end

    # Enum constants for BucketType
    module BucketType
      DIRECTORY = "Directory"
    end

    # Enum constants for BucketVersioningStatus
    module BucketVersioningStatus
      ENABLED = "Enabled"

      SUSPENDED = "Suspended"
    end

    # <p>Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling
    #             Cross-Origin Resource Sharing</a> in the
    #          <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<CORSRule>] :cors_rules (0)
    # @!attribute cors_rules
    #   <p>A set of origins and methods (cross-origin access that you want to allow). You can add
    #            up to 100 rules to the configuration.</p>
    #   @return [Array<CORSRule>]
    class CORSConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        cors_rules
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies a cross-origin access rule for an Amazon S3 bucket.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id
    #   @option params [Array<String>] :allowed_headers
    #   @option params [Array<String>] :allowed_methods (0)
    #   @option params [Array<String>] :allowed_origins (0)
    #   @option params [Array<String>] :expose_headers
    #   @option params [Integer] :max_age_seconds
    # @!attribute id
    #   <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
    #   @return [String]
    # @!attribute allowed_headers
    #   <p>Headers that are specified in the <code>Access-Control-Request-Headers</code> header.
    #            These headers are allowed in a preflight OPTIONS request. In response to any preflight
    #            OPTIONS request, Amazon S3 returns any requested headers that are allowed.</p>
    #   @return [Array<String>]
    # @!attribute allowed_methods
    #   <p>An HTTP method that you allow the origin to execute. Valid values are <code>GET</code>,
    #               <code>PUT</code>, <code>HEAD</code>, <code>POST</code>, and <code>DELETE</code>.</p>
    #   @return [Array<String>]
    # @!attribute allowed_origins
    #   <p>One or more origins you want customers to be able to access the bucket from.</p>
    #   @return [Array<String>]
    # @!attribute expose_headers
    #   <p>One or more headers in the response that you want customers to be able to access from
    #            their applications (for example, from a JavaScript <code>XMLHttpRequest</code>
    #            object).</p>
    #   @return [Array<String>]
    # @!attribute max_age_seconds
    #   <p>The time in seconds that your browser is to cache the preflight response for the
    #            specified resource.</p>
    #   @return [Integer]
    class CORSRule
      include Hearth::Structure

      MEMBERS = %i[
        id
        allowed_headers
        allowed_methods
        allowed_origins
        expose_headers
        max_age_seconds
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Describes how an uncompressed comma-separated values (CSV)-formatted input object is
    #          formatted.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :file_header_info
    #   @option params [String] :comments
    #   @option params [String] :quote_escape_character
    #   @option params [String] :record_delimiter
    #   @option params [String] :field_delimiter
    #   @option params [String] :quote_character
    #   @option params [Boolean] :allow_quoted_record_delimiter
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
    #   Enum, one of: ["USE", "IGNORE", "NONE"]
    #   @return [String]
    # @!attribute comments
    #   <p>A single character used to indicate that a row should be ignored when the character is
    #            present at the start of that row. You can specify any character to indicate a comment line.
    #            The default character is <code>#</code>.</p>
    #            <p>Default: <code>#</code>
    #            </p>
    #   @return [String]
    # @!attribute quote_escape_character
    #   <p>A single character used for escaping the quotation mark character inside an already
    #            escaped value. For example, the value <code>""" a , b """</code> is parsed as <code>" a , b
    #               "</code>.</p>
    #   @return [String]
    # @!attribute record_delimiter
    #   <p>A single character used to separate individual records in the input. Instead of the
    #            default value, you can specify an arbitrary delimiter.</p>
    #   @return [String]
    # @!attribute field_delimiter
    #   <p>A single character used to separate individual fields in a record. You can specify an
    #            arbitrary delimiter.</p>
    #   @return [String]
    # @!attribute quote_character
    #   <p>A single character used for escaping when the field delimiter is part of the value. For
    #            example, if the value is <code>a, b</code>, Amazon S3 wraps this field value in quotation marks,
    #            as follows: <code>" a , b "</code>.</p>
    #            <p>Type: String</p>
    #            <p>Default: <code>"</code>
    #            </p>
    #            <p>Ancestors: <code>CSV</code>
    #            </p>
    #   @return [String]
    # @!attribute allow_quoted_record_delimiter
    #   <p>Specifies that CSV field values may contain quoted record delimiters and such records
    #            should be allowed. Default value is FALSE. Setting this value to TRUE may lower
    #            performance.</p>
    #   @return [Boolean]
    class CSVInput
      include Hearth::Structure

      MEMBERS = %i[
        file_header_info
        comments
        quote_escape_character
        record_delimiter
        field_delimiter
        quote_character
        allow_quoted_record_delimiter
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Describes how uncompressed comma-separated values (CSV)-formatted results are
    #          formatted.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :quote_fields
    #   @option params [String] :quote_escape_character
    #   @option params [String] :record_delimiter
    #   @option params [String] :field_delimiter
    #   @option params [String] :quote_character
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
    #   Enum, one of: ["ALWAYS", "ASNEEDED"]
    #   @return [String]
    # @!attribute quote_escape_character
    #   <p>The single character used for escaping the quote character inside an already escaped
    #            value.</p>
    #   @return [String]
    # @!attribute record_delimiter
    #   <p>A single character used to separate individual records in the output. Instead of the
    #            default value, you can specify an arbitrary delimiter.</p>
    #   @return [String]
    # @!attribute field_delimiter
    #   <p>The value used to separate individual fields in a record. You can specify an arbitrary
    #            delimiter.</p>
    #   @return [String]
    # @!attribute quote_character
    #   <p>A single character used for escaping when the field delimiter is part of the value. For
    #            example, if the value is <code>a, b</code>, Amazon S3 wraps this field value in quotation marks,
    #            as follows: <code>" a , b "</code>.</p>
    #   @return [String]
    class CSVOutput
      include Hearth::Structure

      MEMBERS = %i[
        quote_fields
        quote_escape_character
        record_delimiter
        field_delimiter
        quote_character
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Contains all the possible checksum or digest values for an object.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class Checksum
      include Hearth::Structure

      MEMBERS = %i[
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ChecksumAlgorithm
    module ChecksumAlgorithm
      CRC32 = "CRC32"

      CRC32_C = "CRC32C"

      SHA1 = "SHA1"

      SHA256 = "SHA256"
    end

    # Enum constants for ChecksumMode
    module ChecksumMode
      ENABLED = "ENABLED"
    end

    # <p>Container for all (if there are any) keys between Prefix and the next occurrence of the
    #          string specified by a delimiter. CommonPrefixes lists keys that act like subdirectories in
    #          the directory specified by Prefix. For example, if the prefix is notes/ and the delimiter
    #          is a slash (/) as in notes/summer/july, the common prefix is notes/summer/. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :prefix
    # @!attribute prefix
    #   <p>Container for the specified common prefix.</p>
    #   @return [String]
    class CommonPrefix
      include Hearth::Structure

      MEMBERS = %i[
        prefix
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [CompletedMultipartUpload] :multipart_upload
    #   @option params [String] :upload_id
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    # @!attribute bucket
    #   <p>Name of the bucket to which the multipart upload was initiated.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute multipart_upload
    #   <p>The container for the multipart upload request information.</p>
    #   @return [CompletedMultipartUpload]
    # @!attribute upload_id
    #   <p>ID for the initiated multipart upload.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is
    #            required only when the object was created using a checksum algorithm or if
    #            your bucket policy requires the use of SSE-C. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html#ssec-require-condition-key">Protecting data
    #               using SSE-C keys</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class CompleteMultipartUploadInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        multipart_upload
        upload_id
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
        request_payer
        expected_bucket_owner
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::CompleteMultipartUploadInput ' \
          "bucket=#{bucket || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "multipart_upload=#{multipart_upload || 'nil'}, " \
          "upload_id=#{upload_id || 'nil'}, " \
          "checksum_crc32=#{checksum_crc32 || 'nil'}, " \
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, " \
          "checksum_sha1=#{checksum_sha1 || 'nil'}, " \
          "checksum_sha256=#{checksum_sha256 || 'nil'}, " \
          "request_payer=#{request_payer || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :location
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :expiration
    #   @option params [String] :e_tag
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    #   @option params [String] :server_side_encryption
    #   @option params [String] :version_id
    #   @option params [String] :ssekms_key_id
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :request_charged
    # @!attribute location
    #   <p>The URI that identifies the newly created object.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket that contains the newly created object. Does not return the access point
    #            ARN or access point alias if used.</p>
    #            <note>
    #               <p>Access points are not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute key
    #   <p>The object key of the newly created object.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>If the object expiration is configured, this will contain the expiration date
    #               (<code>expiry-date</code>) and rule ID (<code>rule-id</code>). The value of
    #               <code>rule-id</code> is URL-encoded.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute e_tag
    #   <p>Entity tag that identifies the newly created object's data. Objects with different
    #            object data will have different entity tags. The entity tag is an opaque string. The entity
    #            tag may or may not be an MD5 digest of the object data. If the entity tag is not an MD5
    #            digest of the object data, it will contain one or more nonhexadecimal characters and/or
    #            will consist of less than 32 or more than 32 hexadecimal digits. For more information about
    #            how the entity tag is calculated, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #               <code>AES256</code>, <code>aws:kms</code>).</p>
    #            <note>
    #               <p>For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #            </note>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of the newly created object, in case the bucket has versioning turned
    #            on.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the Key Management Service (KMS) symmetric encryption customer managed key
    #            that was used for the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption
    #            with Key Management Service (KMS) keys (SSE-KMS).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class CompleteMultipartUploadOutput
      include Hearth::Structure

      MEMBERS = %i[
        location
        bucket
        key
        expiration
        e_tag
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
        server_side_encryption
        version_id
        ssekms_key_id
        bucket_key_enabled
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::CompleteMultipartUploadOutput ' \
          "location=#{location || 'nil'}, " \
          "bucket=#{bucket || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "expiration=#{expiration || 'nil'}, " \
          "e_tag=#{e_tag || 'nil'}, " \
          "checksum_crc32=#{checksum_crc32 || 'nil'}, " \
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, " \
          "checksum_sha1=#{checksum_sha1 || 'nil'}, " \
          "checksum_sha256=#{checksum_sha256 || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "version_id=#{version_id || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "request_charged=#{request_charged || 'nil'}>"
      end
    end

    # <p>The container for the completed multipart upload details.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<CompletedPart>] :parts
    # @!attribute parts
    #   <p>Array of CompletedPart data types.</p>
    #            <p>If you do not supply a valid <code>Part</code> with your request, the service sends back
    #            an HTTP 400 response.</p>
    #   @return [Array<CompletedPart>]
    class CompletedMultipartUpload
      include Hearth::Structure

      MEMBERS = %i[
        parts
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Details of the parts that were uploaded.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :e_tag
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    #   @option params [Integer] :part_number
    # @!attribute e_tag
    #   <p>Entity tag returned when the part was uploaded.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute part_number
    #   <p>Part number that identifies the part. This is a positive integer between 1 and
    #            10,000.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>General purpose buckets</b> - In <code>CompleteMultipartUpload</code>, when a additional checksum (including <code>x-amz-checksum-crc32</code>, <code>x-amz-checksum-crc32c</code>, <code>x-amz-checksum-sha1</code>, or
    #                  <code>x-amz-checksum-sha256</code>) is applied to each part, the <code>PartNumber</code> must start at 1 and
    #                  the part numbers must be consecutive. Otherwise, Amazon S3 generates an HTTP <code>400 Bad Request</code> status code and an <code>InvalidPartOrder</code> error code.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - In <code>CompleteMultipartUpload</code>, the <code>PartNumber</code> must start at 1 and
    #                  the part numbers must be consecutive.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Integer]
    class CompletedPart
      include Hearth::Structure

      MEMBERS = %i[
        e_tag
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
        part_number
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for CompressionType
    module CompressionType
      NONE = "NONE"

      GZIP = "GZIP"

      BZIP2 = "BZIP2"
    end

    # <p>A container for describing a condition that must be met for the specified redirect to
    #          apply. For example, 1. If request is for pages in the <code>/docs</code> folder, redirect
    #          to the <code>/documents</code> folder. 2. If request results in HTTP error 4xx, redirect
    #          request to another host where you might process the error.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :http_error_code_returned_equals
    #   @option params [String] :key_prefix_equals
    # @!attribute http_error_code_returned_equals
    #   <p>The HTTP error code when the redirect is applied. In the event of an error, if the error
    #            code equals this value, then the specified redirect is applied. Required when parent
    #            element <code>Condition</code> is specified and sibling <code>KeyPrefixEquals</code> is not
    #            specified. If both are specified, then both must be true for the redirect to be
    #            applied.</p>
    #   @return [String]
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
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    class Condition
      include Hearth::Structure

      MEMBERS = %i[
        http_error_code_returned_equals
        key_prefix_equals
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p></p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class ContinuationEvent
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :acl
    #   @option params [String] :bucket
    #   @option params [String] :cache_control
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :content_disposition
    #   @option params [String] :content_encoding
    #   @option params [String] :content_language
    #   @option params [String] :content_type
    #   @option params [String] :copy_source
    #   @option params [String] :copy_source_if_match
    #   @option params [Time] :copy_source_if_modified_since
    #   @option params [String] :copy_source_if_none_match
    #   @option params [Time] :copy_source_if_unmodified_since
    #   @option params [Time] :expires
    #   @option params [String] :grant_full_control
    #   @option params [String] :grant_read
    #   @option params [String] :grant_read_acp
    #   @option params [String] :grant_write_acp
    #   @option params [String] :key
    #   @option params [Hash<String, String>] :metadata
    #   @option params [String] :metadata_directive
    #   @option params [String] :tagging_directive
    #   @option params [String] :server_side_encryption
    #   @option params [String] :storage_class
    #   @option params [String] :website_redirect_location
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :ssekms_key_id
    #   @option params [String] :ssekms_encryption_context
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :copy_source_sse_customer_algorithm
    #   @option params [String] :copy_source_sse_customer_key
    #   @option params [String] :copy_source_sse_customer_key_md5
    #   @option params [String] :request_payer
    #   @option params [String] :tagging
    #   @option params [String] :object_lock_mode
    #   @option params [Time] :object_lock_retain_until_date
    #   @option params [String] :object_lock_legal_hold_status
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :expected_source_bucket_owner
    # @!attribute acl
    #   <p>The canned access control list (ACL) to apply to the object.</p>
    #            <p>When you copy an object, the ACL metadata is not preserved and is set
    #            to <code>private</code> by default. Only the owner has full access
    #            control. To override the default ACL setting,
    #            specify a new ACL when you generate a copy request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using
    #               ACLs</a>. </p>
    #            <p>If the destination bucket that you're copying objects to uses the bucket owner enforced
    #            setting for S3 Object Ownership, ACLs are disabled and no longer affect
    #            permissions. Buckets that use this setting only accept <code>PUT</code> requests
    #            that don't specify an ACL or <code>PUT</code> requests that specify bucket owner
    #            full control ACLs, such as the <code>bucket-owner-full-control</code> canned ACL
    #            or an equivalent form of this ACL expressed in the XML format. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling
    #            ownership of objects and disabling ACLs</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>If your destination bucket uses the bucket owner enforced setting for Object Ownership,
    #                     all objects written to the bucket by any account will be owned by the bucket
    #                     owner.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the destination bucket.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Specifies the caching behavior along the request/reply chain.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm that you want Amazon S3 to use to create the checksum for the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you copy an object, if the source object has a checksum, that checksum value will be copied to
    #            the new object by default. If the <code>CopyObject</code> request does not include this <code>x-amz-checksum-algorithm</code> header, the checksum algorithm will be copied from the source object to the destination object (if it's present on the source object). You can optionally
    #            specify a different checksum algorithm to use with the
    #            <code>x-amz-checksum-algorithm</code> header. Unrecognized or unsupported values will respond with the HTTP status code <code>400 Bad Request</code>.</p>
    #            <note>
    #               <p>For directory buckets, when you use Amazon Web Services SDKs, <code>CRC32</code> is the default checksum algorithm that's used for performance.</p>
    #            </note>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object. Indicates whether an object should be displayed in a web browser or downloaded as a file. It allows specifying the desired filename for the downloaded file.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #            <note>
    #               <p>For directory buckets, only the <code>aws-chunked</code> value is supported in this header field.</p>
    #            </note>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type that describes the format of the object data.</p>
    #   @return [String]
    # @!attribute copy_source
    #   <p>Specifies the source object for the copy operation. The source object
    #            can be up to 5 GB. If the source object is an object that was uploaded by using a multipart upload, the object copy will be a single part object after the source object is copied to the destination bucket.</p>
    #            <p>You specify the value of the copy source in one of two
    #            formats, depending on whether you want to access the source object through an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">access point</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>For objects not accessed through an access point, specify the name of the source bucket
    #                  and the key of the source object, separated by a slash (/). For example, to copy the
    #                  object <code>reports/january.pdf</code> from the general purpose bucket
    #                  <code>awsexamplebucket</code>, use <code>awsexamplebucket/reports/january.pdf</code>.
    #                  The value must be URL-encoded. To copy the
    #                  object <code>reports/january.pdf</code> from the directory bucket
    #                  <code>awsexamplebucket--use1-az5--x-s3</code>, use <code>awsexamplebucket--use1-az5--x-s3/reports/january.pdf</code>.
    #                  The value must be URL-encoded.</p>
    #               </li>
    #               <li>
    #                  <p>For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format <code>arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through access point <code>my-access-point</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf</code>. The value must be URL encoded.</p>
    #                  <note>
    #                     <ul>
    #                        <li>
    #                           <p>Amazon S3 supports copy operations using Access points only when the source and destination buckets are in the same Amazon Web Services Region.</p>
    #                        </li>
    #                        <li>
    #                           <p>Access points are not supported by directory buckets.</p>
    #                        </li>
    #                     </ul>
    #                  </note>
    #                  <p>Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>. The value must be URL-encoded.  </p>
    #               </li>
    #            </ul>
    #            <p>If your source bucket versioning is enabled, the <code>x-amz-copy-source</code> header by default identifies the current
    #            version of an object to copy. If the current version is a delete marker, Amazon S3
    #            behaves as if the object was deleted. To copy a different version, use the
    #            <code>versionId</code> query parameter. Specifically, append <code>?versionId=<version-id></code>
    #            to the value (for example,
    #            <code>awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>).
    #            If you don't specify a version ID, Amazon S3 copies the latest version of the source
    #            object.</p>
    #            <p>If you enable versioning on the destination bucket, Amazon S3 generates a unique version
    #            ID for the copied object. This version ID is different from the version ID
    #            of the source object. Amazon S3 returns the version ID of the copied object in the
    #            <code>x-amz-version-id</code> response header in the response.</p>
    #            <p>If you do not enable versioning or suspend it on the destination bucket, the version
    #            ID that Amazon S3 generates in the
    #            <code>x-amz-version-id</code> response header is always null.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - S3 Versioning isn't enabled and supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_if_match
    #   <p>Copies the object if its entity tag (ETag) matches the specified tag.</p>
    #            <p> If both the <code>x-amz-copy-source-if-match</code> and
    #            <code>x-amz-copy-source-if-unmodified-since</code> headers are present in the
    #            request and evaluate as follows, Amazon S3 returns <code>200 OK</code> and copies the
    #            data:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-match</code> condition evaluates to
    #                  true</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to
    #                  false</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute copy_source_if_modified_since
    #   <p>Copies the object if it has been modified since the specified time.</p>
    #            <p>If both the <code>x-amz-copy-source-if-none-match</code> and
    #            <code>x-amz-copy-source-if-modified-since</code> headers are present in the
    #            request and evaluate as follows, Amazon S3 returns the <code>412 Precondition
    #               Failed</code> response code:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-none-match</code> condition evaluates to
    #                  false</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-modified-since</code> condition evaluates to
    #                  true</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute copy_source_if_none_match
    #   <p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>
    #            <p>If both the <code>x-amz-copy-source-if-none-match</code> and
    #            <code>x-amz-copy-source-if-modified-since</code> headers are present in the
    #            request and evaluate as follows, Amazon S3 returns the <code>412 Precondition
    #               Failed</code> response code:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-none-match</code> condition evaluates to
    #                  false</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-modified-since</code> condition evaluates to
    #                  true</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute copy_source_if_unmodified_since
    #   <p>Copies the object if it hasn't been modified since the specified time.</p>
    #            <p> If both the <code>x-amz-copy-source-if-match</code> and
    #            <code>x-amz-copy-source-if-unmodified-since</code> headers are present in the
    #            request and evaluate as follows, Amazon S3 returns <code>200 OK</code> and copies the
    #            data:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-match</code> condition evaluates to
    #                  true</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to
    #                  false</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #   @return [Time]
    # @!attribute grant_full_control
    #   <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to read the object data and its metadata.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the object ACL.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable object.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute key
    #   <p>The key of the destination object.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute metadata_directive
    #   <p>Specifies whether the metadata is copied from the source object or replaced with
    #            metadata that's provided in the request.
    #           When copying an object, you can preserve all metadata (the default) or specify
    #           new metadata. If this header isn’t specified, <code>COPY</code> is the default behavior.
    #         </p>
    #            <p>
    #               <b>General purpose bucket</b> - For general purpose buckets, when you grant permissions, you
    #            can use the <code>s3:x-amz-metadata-directive</code> condition key to enforce
    #            certain metadata behavior when objects are uploaded. For more information, see
    #            <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/amazon-s3-policy-keys.html">Amazon S3 condition key examples</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>
    #                  <code>x-amz-website-redirect-location</code> is unique to each object and is not copied when using the
    #               <code>x-amz-metadata-directive</code> header. To copy the value, you
    #               must specify <code>x-amz-website-redirect-location</code> in the request header.</p>
    #            </note>
    #   Enum, one of: ["COPY", "REPLACE"]
    #   @return [String]
    # @!attribute tagging_directive
    #   <p>Specifies whether the object tag-set is copied from the source object or replaced with
    #            the tag-set that's provided in the request.</p>
    #            <p>The default value is <code>COPY</code>.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets in a <code>CopyObject</code> operation, only the empty tag-set is supported. Any requests that attempt to write non-empty tags into directory buckets will receive a <code>501 Not Implemented</code> status code.
    #   When the destination bucket is a directory bucket, you will receive a <code>501 Not Implemented</code> response in any of the following situations:</p>
    #               <ul>
    #                  <li>
    #                     <p>When you attempt to <code>COPY</code> the tag-set from an S3 source object that has non-empty tags.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a source object and set a non-empty value to <code>x-amz-tagging</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you don't set the <code>x-amz-tagging-directive</code> header and the source object has non-empty tags. This is because the default value of <code>x-amz-tagging-directive</code> is <code>COPY</code>.</p>
    #                  </li>
    #               </ul>
    #               <p>Because only the empty tag-set is supported for directory buckets in a <code>CopyObject</code> operation, the following situations are allowed:</p>
    #               <ul>
    #                  <li>
    #                     <p>When you attempt to <code>COPY</code> the tag-set from a directory bucket source object that has no tags to a general purpose bucket. It copies an empty tag-set to the destination object.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a directory bucket source object and set the <code>x-amz-tagging</code> value of the directory bucket destination object to empty.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a general purpose bucket source object that has non-empty tags and set the <code>x-amz-tagging</code> value of the directory bucket destination object to empty.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a directory bucket source object and don't set the <code>x-amz-tagging</code> value of the directory bucket destination object. This is because the default value of <code>x-amz-tagging</code> is the empty value.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   Enum, one of: ["COPY", "REPLACE"]
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            <code>AES256</code>, <code>aws:kms</code>, <code>aws:kms:dsse</code>). Unrecognized or unsupported values won’t write a destination object and will receive a <code>400 Bad Request</code> response. </p>
    #            <p>Amazon S3 automatically encrypts all new objects that are copied to an S3 bucket.
    #            When copying an object, if you don't specify encryption information in your copy
    #            request, the encryption setting of the target object is set to the default
    #            encryption configuration of the destination bucket. By default, all buckets have a
    #            base level of encryption configuration that uses server-side encryption with Amazon S3
    #            managed keys (SSE-S3). If the destination bucket has a default encryption
    #            configuration that uses server-side encryption with Key Management Service (KMS) keys
    #            (SSE-KMS), dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), or
    #            server-side encryption with customer-provided encryption keys (SSE-C), Amazon S3 uses
    #            the corresponding KMS key, or a customer-provided key to encrypt the target
    #            object copy.</p>
    #            <p>When you perform a <code>CopyObject</code> operation, if you want to use a
    #            different type of encryption setting for the target object, you can specify
    #            appropriate encryption-related headers to encrypt the target object with an Amazon S3 managed key, a
    #            KMS key, or a customer-provided key. If the encryption setting in
    #            your request is different from the default encryption configuration of the
    #            destination bucket, the encryption setting in your request takes precedence. </p>
    #            <p>With server-side
    #            encryption, Amazon S3 encrypts your data as it writes your data to disks in its data
    #            centers and decrypts the data when you access it. For more information about server-side encryption, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Using
    #               Server-Side Encryption</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #            </note>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute storage_class
    #   <p>If the <code>x-amz-storage-class</code> header is not used, the copied object will be stored in the
    #            <code>STANDARD</code> Storage Class by default. The <code>STANDARD</code> storage class provides high durability and
    #            high availability. Depending on performance needs, you can specify a different Storage
    #            Class.
    #         </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets </b> - For directory buckets, only the S3 Express One Zone storage class is supported to store newly created objects.
    #   Unsupported storage class values won't write a destination object and will respond with the HTTP status code <code>400 Bad Request</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Amazon S3 on Outposts </b> - S3 on Outposts only uses the <code>OUTPOSTS</code> Storage Class.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <p>You can use the <code>CopyObject</code> action to change the storage class of
    #            an object that is already stored in Amazon S3 by using the <code>x-amz-storage-class</code>
    #            header. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in
    #            the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Before using an object as a source object for the copy operation, you must restore a copy of it if it meets any of the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The storage class of the source object is <code>GLACIER</code> or
    #               <code>DEEP_ARCHIVE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The storage class of the source object is
    #               <code>INTELLIGENT_TIERING</code> and it's <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/intelligent-tiering-overview.html#intel-tiering-tier-definition">S3 Intelligent-Tiering access tier</a> is
    #               <code>Archive Access</code> or <code>Deep Archive Access</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html">RestoreObject</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html">Copying
    #                  Objects</a> in
    #            the <i>Amazon S3 User Guide</i>.</p>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute website_redirect_location
    #   <p>If the destination bucket is configured as a website, redirects requests for this object copy to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata. This value is unique to each object and is not copied when using the
    #               <code>x-amz-metadata-directive</code> header. Instead, you may opt to provide this
    #            header in combination with the <code>x-amz-metadata-directive</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example,
    #            <code>AES256</code>).</p>
    #            <p>When you perform a <code>CopyObject</code> operation, if you want to use a
    #            different type of encryption setting for the target object, you can specify
    #            appropriate encryption-related headers to encrypt the target object with an Amazon S3 managed key, a
    #            KMS key, or a customer-provided key. If the encryption setting in
    #            your request is different from the default encryption configuration of the
    #            destination bucket, the encryption setting in your request takes precedence. </p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded. Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>Specifies the KMS ID (Key ID, Key ARN, or Key Alias) to use for object encryption. All GET and PUT requests for an
    #            object protected by KMS will fail if they're not made via SSL or using SigV4. For
    #            information about configuring any of the officially supported Amazon Web Services SDKs and Amazon Web Services CLI, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version">Specifying the
    #               Signature Version in Request Authentication</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a base64-encoded UTF-8 string holding JSON with the encryption context
    #            key-value pairs. This value must be explicitly added to specify encryption context for
    #            <code>CopyObject</code> requests.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using Key Management Service (KMS) keys (SSE-KMS). If a target object uses SSE-KMS, you can enable an S3 Bucket Key for the
    #            object.</p>
    #            <p>Setting this header to
    #            <code>true</code> causes Amazon S3 to use an S3 Bucket Key for object encryption with
    #            SSE-KMS. Specifying this header with a COPY action doesn’t affect bucket-level settings for S3
    #            Bucket Key.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html">Amazon S3 Bucket Keys</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute copy_source_sse_customer_algorithm
    #   <p>Specifies the algorithm to use when decrypting the source object (for example,
    #            <code>AES256</code>).</p>
    #            <p>If
    #         the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the
    #         necessary encryption information in your request so that Amazon S3 can decrypt the
    #         object for copying.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source
    #            object. The encryption key provided in this header must be the same one that was used when the
    #            source object was created.</p>
    #            <p>If
    #            the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the
    #            necessary encryption information in your request so that Amazon S3 can decrypt the
    #            object for copying.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #            <p>If
    #            the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the
    #            necessary encryption information in your request so that Amazon S3 can decrypt the
    #            object for copying.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute tagging
    #   <p>The tag-set for the object copy in the destination bucket. This value must be used in conjunction
    #            with the <code>x-amz-tagging-directive</code> if you choose <code>REPLACE</code> for the <code>x-amz-tagging-directive</code>. If you choose <code>COPY</code> for the <code>x-amz-tagging-directive</code>, you don't need to set
    #            the <code>x-amz-tagging</code> header, because the tag-set will be copied from the source object directly. The tag-set must be encoded as URL Query
    #            parameters.</p>
    #            <p>The default value is the empty value.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets in a <code>CopyObject</code> operation, only the empty tag-set is supported. Any requests that attempt to write non-empty tags into directory buckets will receive a <code>501 Not Implemented</code> status code.
    #   When the destination bucket is a directory bucket, you will receive a <code>501 Not Implemented</code> response in any of the following situations:</p>
    #               <ul>
    #                  <li>
    #                     <p>When you attempt to <code>COPY</code> the tag-set from an S3 source object that has non-empty tags.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a source object and set a non-empty value to <code>x-amz-tagging</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you don't set the <code>x-amz-tagging-directive</code> header and the source object has non-empty tags. This is because the default value of <code>x-amz-tagging-directive</code> is <code>COPY</code>.</p>
    #                  </li>
    #               </ul>
    #               <p>Because only the empty tag-set is supported for directory buckets in a <code>CopyObject</code> operation, the following situations are allowed:</p>
    #               <ul>
    #                  <li>
    #                     <p>When you attempt to <code>COPY</code> the tag-set from a directory bucket source object that has no tags to a general purpose bucket. It copies an empty tag-set to the destination object.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a directory bucket source object and set the <code>x-amz-tagging</code> value of the directory bucket destination object to empty.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a general purpose bucket source object that has non-empty tags and set the <code>x-amz-tagging</code> value of the directory bucket destination object to empty.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a directory bucket source object and don't set the <code>x-amz-tagging</code> value of the directory bucket destination object. This is because the default value of <code>x-amz-tagging</code> is the empty value.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode that you want to apply to the object copy.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when you want the Object Lock of the object copy to expire.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether you want to apply a legal hold to the object copy.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["ON", "OFF"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected destination bucket owner. If the account ID that you provide does not match the actual owner of the destination bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute expected_source_bucket_owner
    #   <p>The account ID of the expected source bucket owner. If the account ID that you provide does not match the actual owner of the source bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class CopyObjectInput
      include Hearth::Structure

      MEMBERS = %i[
        acl
        bucket
        cache_control
        checksum_algorithm
        content_disposition
        content_encoding
        content_language
        content_type
        copy_source
        copy_source_if_match
        copy_source_if_modified_since
        copy_source_if_none_match
        copy_source_if_unmodified_since
        expires
        grant_full_control
        grant_read
        grant_read_acp
        grant_write_acp
        key
        metadata
        metadata_directive
        tagging_directive
        server_side_encryption
        storage_class
        website_redirect_location
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
        ssekms_key_id
        ssekms_encryption_context
        bucket_key_enabled
        copy_source_sse_customer_algorithm
        copy_source_sse_customer_key
        copy_source_sse_customer_key_md5
        request_payer
        tagging
        object_lock_mode
        object_lock_retain_until_date
        object_lock_legal_hold_status
        expected_bucket_owner
        expected_source_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::CopyObjectInput ' \
          "acl=#{acl || 'nil'}, " \
          "bucket=#{bucket || 'nil'}, " \
          "cache_control=#{cache_control || 'nil'}, " \
          "checksum_algorithm=#{checksum_algorithm || 'nil'}, " \
          "content_disposition=#{content_disposition || 'nil'}, " \
          "content_encoding=#{content_encoding || 'nil'}, " \
          "content_language=#{content_language || 'nil'}, " \
          "content_type=#{content_type || 'nil'}, " \
          "copy_source=#{copy_source || 'nil'}, " \
          "copy_source_if_match=#{copy_source_if_match || 'nil'}, " \
          "copy_source_if_modified_since=#{copy_source_if_modified_since || 'nil'}, " \
          "copy_source_if_none_match=#{copy_source_if_none_match || 'nil'}, " \
          "copy_source_if_unmodified_since=#{copy_source_if_unmodified_since || 'nil'}, " \
          "expires=#{expires || 'nil'}, " \
          "grant_full_control=#{grant_full_control || 'nil'}, " \
          "grant_read=#{grant_read || 'nil'}, " \
          "grant_read_acp=#{grant_read_acp || 'nil'}, " \
          "grant_write_acp=#{grant_write_acp || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "metadata=#{metadata || 'nil'}, " \
          "metadata_directive=#{metadata_directive || 'nil'}, " \
          "tagging_directive=#{tagging_directive || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "storage_class=#{storage_class || 'nil'}, " \
          "website_redirect_location=#{website_redirect_location || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          'ssekms_encryption_context=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "copy_source_sse_customer_algorithm=#{copy_source_sse_customer_algorithm || 'nil'}, " \
          'copy_source_sse_customer_key=[SENSITIVE], ' \
          "copy_source_sse_customer_key_md5=#{copy_source_sse_customer_key_md5 || 'nil'}, " \
          "request_payer=#{request_payer || 'nil'}, " \
          "tagging=#{tagging || 'nil'}, " \
          "object_lock_mode=#{object_lock_mode || 'nil'}, " \
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, " \
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, " \
          "expected_source_bucket_owner=#{expected_source_bucket_owner || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [CopyObjectResult] :copy_object_result
    #   @option params [String] :expiration
    #   @option params [String] :copy_source_version_id
    #   @option params [String] :version_id
    #   @option params [String] :server_side_encryption
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :ssekms_key_id
    #   @option params [String] :ssekms_encryption_context
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :request_charged
    # @!attribute copy_object_result
    #   <p>Container for all response elements.</p>
    #   @return [CopyObjectResult]
    # @!attribute expiration
    #   <p>If the object expiration is configured, the response includes this header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_version_id
    #   <p>Version ID of the source object that was copied.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of the newly created copy.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 (for example,
    #               <code>AES256</code>, <code>aws:kms</code>, <code>aws:kms:dsse</code>).</p>
    #            <note>
    #               <p>For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #            </note>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide the round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the Key Management Service (KMS) symmetric encryption customer managed key
    #            that was used for the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>If present, indicates the Amazon Web Services KMS Encryption Context to use for object encryption. The
    #            value of this header is a base64-encoded UTF-8 string holding JSON with the encryption
    #            context key-value pairs.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the copied object uses an S3 Bucket Key for server-side encryption
    #            with Key Management Service (KMS) keys (SSE-KMS).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class CopyObjectOutput
      include Hearth::Structure

      MEMBERS = %i[
        copy_object_result
        expiration
        copy_source_version_id
        version_id
        server_side_encryption
        sse_customer_algorithm
        sse_customer_key_md5
        ssekms_key_id
        ssekms_encryption_context
        bucket_key_enabled
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::CopyObjectOutput ' \
          "copy_object_result=#{copy_object_result || 'nil'}, " \
          "expiration=#{expiration || 'nil'}, " \
          "copy_source_version_id=#{copy_source_version_id || 'nil'}, " \
          "version_id=#{version_id || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          'ssekms_encryption_context=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "request_charged=#{request_charged || 'nil'}>"
      end
    end

    # <p>Container for all response elements.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :e_tag
    #   @option params [Time] :last_modified
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    # @!attribute e_tag
    #   <p>Returns the ETag of the new object. The ETag reflects only changes to the contents of an
    #            object, not its metadata.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Creation date of the object.</p>
    #   @return [Time]
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class CopyObjectResult
      include Hearth::Structure

      MEMBERS = %i[
        e_tag
        last_modified
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for all response elements.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :e_tag
    #   @option params [Time] :last_modified
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    # @!attribute e_tag
    #   <p>Entity tag of the object.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Date and time at which the object was uploaded.</p>
    #   @return [Time]
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class CopyPartResult
      include Hearth::Structure

      MEMBERS = %i[
        e_tag
        last_modified
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The configuration information for the bucket.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :location_constraint
    #   @option params [LocationInfo] :location
    #   @option params [BucketInfo] :bucket
    # @!attribute location_constraint
    #   <p>Specifies the Region where the bucket will be created. You might choose a Region to
    #            optimize latency, minimize costs, or address regulatory requirements. For example, if you
    #            reside in Europe, you will probably find it advantageous to create buckets in the Europe
    #            (Ireland) Region. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro">Accessing a
    #               bucket</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you don't specify a Region,
    #            the bucket is created in the US East (N. Virginia) Region (us-east-1) by default.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ca-central-1", "cn-north-1", "cn-northwest-1", "EU", "eu-central-1", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1", "us-east-2", "us-gov-east-1", "us-gov-west-1", "us-west-1", "us-west-2"]
    #   @return [String]
    # @!attribute location
    #   <p>Specifies the location where the bucket will be created.</p>
    #            <p>For directory buckets, the location type is Availability Zone.</p>
    #            <note>
    #               <p>This functionality is only supported by directory buckets.</p>
    #            </note>
    #   @return [LocationInfo]
    # @!attribute bucket
    #   <p>Specifies the information about the bucket that will be created.</p>
    #            <note>
    #               <p>This functionality is only supported by directory buckets.</p>
    #            </note>
    #   @return [BucketInfo]
    class CreateBucketConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        location_constraint
        location
        bucket
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :acl
    #   @option params [String] :bucket
    #   @option params [CreateBucketConfiguration] :create_bucket_configuration
    #   @option params [String] :grant_full_control
    #   @option params [String] :grant_read
    #   @option params [String] :grant_read_acp
    #   @option params [String] :grant_write
    #   @option params [String] :grant_write_acp
    #   @option params [Boolean] :object_lock_enabled_for_bucket
    #   @option params [String] :object_ownership
    # @!attribute acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read"]
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket to create.</p>
    #            <p>
    #               <b>General purpose buckets</b> - For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must also follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az_id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute create_bucket_configuration
    #   <p>The configuration information for the bucket.</p>
    #   @return [CreateBucketConfiguration]
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and
    #            overwrites of those objects.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_enabled_for_bucket
    #   <p>Specifies whether you want S3 Object Lock to be enabled for the new bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute object_ownership
    #   <p>The container element for object ownership for a bucket's ownership controls.</p>
    #            <p>
    #               <code>BucketOwnerPreferred</code> - Objects uploaded to the bucket change ownership to the bucket
    #            owner if the objects are uploaded with the <code>bucket-owner-full-control</code> canned
    #            ACL.</p>
    #            <p>
    #               <code>ObjectWriter</code> - The uploading account will own the object if the object is uploaded with
    #            the <code>bucket-owner-full-control</code> canned ACL.</p>
    #            <p>
    #               <code>BucketOwnerEnforced</code> - Access control lists (ACLs) are disabled and no longer affect
    #            permissions. The bucket owner automatically owns and has full control over every object in
    #            the bucket. The bucket only accepts PUT requests that don't specify an ACL or specify bucket owner
    #            full control ACLs (such as the predefined <code>bucket-owner-full-control</code> canned ACL or a custom ACL
    #            in XML format that grants the same permissions).</p>
    #            <p>By default, <code>ObjectOwnership</code> is set to <code>BucketOwnerEnforced</code> and ACLs are disabled. We recommend
    #         keeping ACLs disabled, except in uncommon use cases where you must control access for each object individually. For more information about S3 Object Ownership, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of objects and disabling ACLs for your bucket</a> in the <i>Amazon S3 User Guide</i>.
    #         </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets. Directory buckets use the bucket owner enforced setting for S3 Object Ownership.</p>
    #            </note>
    #   Enum, one of: ["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"]
    #   @return [String]
    class CreateBucketInput
      include Hearth::Structure

      MEMBERS = %i[
        acl
        bucket
        create_bucket_configuration
        grant_full_control
        grant_read
        grant_read_acp
        grant_write
        grant_write_acp
        object_lock_enabled_for_bucket
        object_ownership
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :location
    # @!attribute location
    #   <p>A forward slash followed by the name of the bucket.</p>
    #   @return [String]
    class CreateBucketOutput
      include Hearth::Structure

      MEMBERS = %i[
        location
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :acl
    #   @option params [String] :bucket
    #   @option params [String] :cache_control
    #   @option params [String] :content_disposition
    #   @option params [String] :content_encoding
    #   @option params [String] :content_language
    #   @option params [String] :content_type
    #   @option params [Time] :expires
    #   @option params [String] :grant_full_control
    #   @option params [String] :grant_read
    #   @option params [String] :grant_read_acp
    #   @option params [String] :grant_write_acp
    #   @option params [String] :key
    #   @option params [Hash<String, String>] :metadata
    #   @option params [String] :server_side_encryption
    #   @option params [String] :storage_class
    #   @option params [String] :website_redirect_location
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :ssekms_key_id
    #   @option params [String] :ssekms_encryption_context
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :request_payer
    #   @option params [String] :tagging
    #   @option params [String] :object_lock_mode
    #   @option params [Time] :object_lock_retain_until_date
    #   @option params [String] :object_lock_legal_hold_status
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :checksum_algorithm
    # @!attribute acl
    #   <p>The canned ACL to apply to the object. Amazon S3 supports a set of
    #            predefined ACLs, known as <i>canned ACLs</i>. Each canned ACL
    #            has a predefined set of grantees and permissions. For more information, see
    #            <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #               ACL</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>By default, all objects are private. Only the owner has full access
    #            control. When uploading an object, you can grant access permissions to individual
    #            Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are then
    #            added to the access control list (ACL) on the new object. For more information, see
    #            <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using ACLs</a>.  One way to
    #            grant the permissions using the request headers is to specify a canned ACL with the <code>x-amz-acl</code> request header.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket where the multipart upload is initiated and where the object is uploaded.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #            <note>
    #               <p>For directory buckets, only the <code>aws-chunked</code> value is supported in this header field.</p>
    #            </note>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language that the content is in.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #   @return [Time]
    # @!attribute grant_full_control
    #   <p>Specify access permissions explicitly to give the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <p>By default, all objects are private. Only the owner has full access
    #            control. When uploading an object, you can use this header to explicitly grant access
    #            permissions to specific Amazon Web Services accounts or groups.
    #            This header maps to specific permissions that Amazon S3 supports in an ACL. For
    #            more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #               Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>You specify each grantee as a type=value pair, where the type is one of
    #            the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code> – if the value specified is the canonical user ID
    #                  of an Amazon Web Services account</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>uri</code> – if you are granting permissions to a predefined
    #                  group</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>emailAddress</code> – if the value specified is the email
    #                  address of an Amazon Web Services account</p>
    #                  <note>
    #                     <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                     <ul>
    #                        <li>
    #                           <p>US East (N. Virginia)</p>
    #                        </li>
    #                        <li>
    #                           <p>US West (N. California)</p>
    #                        </li>
    #                        <li>
    #                           <p> US West (Oregon)</p>
    #                        </li>
    #                        <li>
    #                           <p> Asia Pacific (Singapore)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Sydney)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Tokyo)</p>
    #                        </li>
    #                        <li>
    #                           <p>Europe (Ireland)</p>
    #                        </li>
    #                        <li>
    #                           <p>South America (São Paulo)</p>
    #                        </li>
    #                     </ul>
    #                     <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For example, the following <code>x-amz-grant-read</code> header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:</p>
    #            <p>
    #               <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
    #            </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Specify access permissions explicitly to allow grantee to read the object data and its metadata.</p>
    #            <p>By default, all objects are private. Only the owner has full access
    #            control. When uploading an object, you can use this header to explicitly grant access
    #            permissions to specific Amazon Web Services accounts or groups.
    #            This header maps to specific permissions that Amazon S3 supports in an ACL. For
    #            more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #               Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>You specify each grantee as a type=value pair, where the type is one of
    #            the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code> – if the value specified is the canonical user ID
    #                  of an Amazon Web Services account</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>uri</code> – if you are granting permissions to a predefined
    #                  group</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>emailAddress</code> – if the value specified is the email
    #                  address of an Amazon Web Services account</p>
    #                  <note>
    #                     <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                     <ul>
    #                        <li>
    #                           <p>US East (N. Virginia)</p>
    #                        </li>
    #                        <li>
    #                           <p>US West (N. California)</p>
    #                        </li>
    #                        <li>
    #                           <p> US West (Oregon)</p>
    #                        </li>
    #                        <li>
    #                           <p> Asia Pacific (Singapore)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Sydney)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Tokyo)</p>
    #                        </li>
    #                        <li>
    #                           <p>Europe (Ireland)</p>
    #                        </li>
    #                        <li>
    #                           <p>South America (São Paulo)</p>
    #                        </li>
    #                     </ul>
    #                     <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For example, the following <code>x-amz-grant-read</code> header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:</p>
    #            <p>
    #               <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
    #            </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Specify access permissions explicitly to allows grantee to read the object ACL.</p>
    #            <p>By default, all objects are private. Only the owner has full access
    #            control. When uploading an object, you can use this header to explicitly grant access
    #            permissions to specific Amazon Web Services accounts or groups.
    #            This header maps to specific permissions that Amazon S3 supports in an ACL. For
    #            more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #               Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>You specify each grantee as a type=value pair, where the type is one of
    #            the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code> – if the value specified is the canonical user ID
    #                  of an Amazon Web Services account</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>uri</code> – if you are granting permissions to a predefined
    #                  group</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>emailAddress</code> – if the value specified is the email
    #                  address of an Amazon Web Services account</p>
    #                  <note>
    #                     <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                     <ul>
    #                        <li>
    #                           <p>US East (N. Virginia)</p>
    #                        </li>
    #                        <li>
    #                           <p>US West (N. California)</p>
    #                        </li>
    #                        <li>
    #                           <p> US West (Oregon)</p>
    #                        </li>
    #                        <li>
    #                           <p> Asia Pacific (Singapore)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Sydney)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Tokyo)</p>
    #                        </li>
    #                        <li>
    #                           <p>Europe (Ireland)</p>
    #                        </li>
    #                        <li>
    #                           <p>South America (São Paulo)</p>
    #                        </li>
    #                     </ul>
    #                     <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For example, the following <code>x-amz-grant-read</code> header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:</p>
    #            <p>
    #               <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
    #            </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Specify access permissions explicitly to allows grantee to allow grantee to write the ACL for the applicable object.</p>
    #            <p>By default, all objects are private. Only the owner has full access
    #            control. When uploading an object, you can use this header to explicitly grant access
    #            permissions to specific Amazon Web Services accounts or groups.
    #            This header maps to specific permissions that Amazon S3 supports in an ACL. For
    #            more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #               Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>You specify each grantee as a type=value pair, where the type is one of
    #            the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code> – if the value specified is the canonical user ID
    #                  of an Amazon Web Services account</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>uri</code> – if you are granting permissions to a predefined
    #                  group</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>emailAddress</code> – if the value specified is the email
    #                  address of an Amazon Web Services account</p>
    #                  <note>
    #                     <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                     <ul>
    #                        <li>
    #                           <p>US East (N. Virginia)</p>
    #                        </li>
    #                        <li>
    #                           <p>US West (N. California)</p>
    #                        </li>
    #                        <li>
    #                           <p> US West (Oregon)</p>
    #                        </li>
    #                        <li>
    #                           <p> Asia Pacific (Singapore)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Sydney)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Tokyo)</p>
    #                        </li>
    #                        <li>
    #                           <p>Europe (Ireland)</p>
    #                        </li>
    #                        <li>
    #                           <p>South America (São Paulo)</p>
    #                        </li>
    #                     </ul>
    #                     <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For example, the following <code>x-amz-grant-read</code> header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:</p>
    #            <p>
    #               <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
    #            </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload is to be initiated.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 (for example,
    #               <code>AES256</code>, <code>aws:kms</code>).</p>
    #            <note>
    #               <p>For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #            </note>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute storage_class
    #   <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
    #            STANDARD storage class provides high durability and high availability. Depending on
    #            performance needs, you can specify a different Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>For directory buckets, only the S3 Express One Zone storage class is supported to store newly created objects.</p>
    #                  </li>
    #                  <li>
    #                     <p>Amazon S3 on Outposts only uses
    #                  the OUTPOSTS Storage Class.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example,
    #            AES256).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the customer-provided encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>Specifies the ID (Key ID, Key ARN, or Key Alias) of the symmetric encryption customer managed key to use for object encryption.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a base64-encoded UTF-8 string holding JSON with the encryption context
    #            key-value pairs.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using Key Management Service (KMS) keys (SSE-KMS). Setting this header to
    #               <code>true</code> causes Amazon S3 to use an S3 Bucket Key for object encryption with
    #            SSE-KMS.</p>
    #            <p>Specifying this header with an object action doesn’t affect bucket-level settings for S3
    #            Bucket Key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute tagging
    #   <p>The tag-set for the object. The tag-set must be encoded as URL Query parameters.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_mode
    #   <p>Specifies the Object Lock mode that you want to apply to the uploaded object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>Specifies the date and time when you want the Object Lock to expire.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether you want to apply a legal hold to the uploaded object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["ON", "OFF"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm that you want Amazon S3 to use to create the checksum for the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    class CreateMultipartUploadInput
      include Hearth::Structure

      MEMBERS = %i[
        acl
        bucket
        cache_control
        content_disposition
        content_encoding
        content_language
        content_type
        expires
        grant_full_control
        grant_read
        grant_read_acp
        grant_write_acp
        key
        metadata
        server_side_encryption
        storage_class
        website_redirect_location
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
        ssekms_key_id
        ssekms_encryption_context
        bucket_key_enabled
        request_payer
        tagging
        object_lock_mode
        object_lock_retain_until_date
        object_lock_legal_hold_status
        expected_bucket_owner
        checksum_algorithm
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::CreateMultipartUploadInput ' \
          "acl=#{acl || 'nil'}, " \
          "bucket=#{bucket || 'nil'}, " \
          "cache_control=#{cache_control || 'nil'}, " \
          "content_disposition=#{content_disposition || 'nil'}, " \
          "content_encoding=#{content_encoding || 'nil'}, " \
          "content_language=#{content_language || 'nil'}, " \
          "content_type=#{content_type || 'nil'}, " \
          "expires=#{expires || 'nil'}, " \
          "grant_full_control=#{grant_full_control || 'nil'}, " \
          "grant_read=#{grant_read || 'nil'}, " \
          "grant_read_acp=#{grant_read_acp || 'nil'}, " \
          "grant_write_acp=#{grant_write_acp || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "metadata=#{metadata || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "storage_class=#{storage_class || 'nil'}, " \
          "website_redirect_location=#{website_redirect_location || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          'ssekms_encryption_context=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "request_payer=#{request_payer || 'nil'}, " \
          "tagging=#{tagging || 'nil'}, " \
          "object_lock_mode=#{object_lock_mode || 'nil'}, " \
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, " \
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, " \
          "checksum_algorithm=#{checksum_algorithm || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Time] :abort_date
    #   @option params [String] :abort_rule_id
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :upload_id
    #   @option params [String] :server_side_encryption
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :ssekms_key_id
    #   @option params [String] :ssekms_encryption_context
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :request_charged
    #   @option params [String] :checksum_algorithm
    # @!attribute abort_date
    #   <p>If the bucket has a lifecycle rule configured with an action to abort incomplete
    #            multipart uploads and the prefix in the lifecycle rule matches the object name in the
    #            request, the response includes this header. The header indicates when the initiated
    #            multipart upload becomes eligible for an abort operation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config">
    #               Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle
    #               Configuration</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>The response also includes the <code>x-amz-abort-rule-id</code> header that provides the
    #            ID of the lifecycle configuration rule that defines the abort action.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute abort_rule_id
    #   <p>This header is returned along with the <code>x-amz-abort-date</code> header. It
    #            identifies the applicable lifecycle configuration rule that defines the action to abort
    #            incomplete multipart uploads.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. Does not return the
    #            access point ARN or access point alias if used.</p>
    #            <note>
    #               <p>Access points are not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>ID for the initiated multipart upload.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 (for example,
    #               <code>AES256</code>, <code>aws:kms</code>).</p>
    #            <note>
    #               <p>For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #            </note>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide the round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the Key Management Service (KMS) symmetric encryption customer managed key
    #            that was used for the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>If present, indicates the Amazon Web Services KMS Encryption Context to use for object encryption. The
    #            value of this header is a base64-encoded UTF-8 string holding JSON with the encryption
    #            context key-value pairs.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption
    #            with Key Management Service (KMS) keys (SSE-KMS).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    class CreateMultipartUploadOutput
      include Hearth::Structure

      MEMBERS = %i[
        abort_date
        abort_rule_id
        bucket
        key
        upload_id
        server_side_encryption
        sse_customer_algorithm
        sse_customer_key_md5
        ssekms_key_id
        ssekms_encryption_context
        bucket_key_enabled
        request_charged
        checksum_algorithm
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::CreateMultipartUploadOutput ' \
          "abort_date=#{abort_date || 'nil'}, " \
          "abort_rule_id=#{abort_rule_id || 'nil'}, " \
          "bucket=#{bucket || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "upload_id=#{upload_id || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          'ssekms_encryption_context=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "request_charged=#{request_charged || 'nil'}, " \
          "checksum_algorithm=#{checksum_algorithm || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :session_mode
    #   @option params [String] :bucket
    # @!attribute session_mode
    #   <p>Specifies the mode of the session that will be created, either <code>ReadWrite</code> or
    #               <code>ReadOnly</code>. By default, a <code>ReadWrite</code> session is created. A
    #               <code>ReadWrite</code> session is capable of executing all the Zonal endpoint APIs on a
    #            directory bucket. A <code>ReadOnly</code> session is constrained to execute the following
    #            Zonal endpoint APIs: <code>GetObject</code>, <code>HeadObject</code>, <code>ListObjectsV2</code>,
    #               <code>GetObjectAttributes</code>, <code>ListParts</code>, and
    #               <code>ListMultipartUploads</code>.</p>
    #   Enum, one of: ["ReadOnly", "ReadWrite"]
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket that you create a session for.</p>
    #   @return [String]
    class CreateSessionInput
      include Hearth::Structure

      MEMBERS = %i[
        session_mode
        bucket
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [SessionCredentials] :credentials (0)
    # @!attribute credentials
    #   <p>The established temporary security credentials  for the created session..</p>
    #   @return [SessionCredentials]
    class CreateSessionOutput
      include Hearth::Structure

      MEMBERS = %i[
        credentials
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for DataRedundancy
    module DataRedundancy
      SINGLE_AVAILABILITY_ZONE = "SingleAvailabilityZone"
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
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :mode
    #   @option params [Integer] :days
    #   @option params [Integer] :years
    # @!attribute mode
    #   <p>The default Object Lock retention mode you want to apply to new objects placed in the
    #            specified bucket. Must be used with either <code>Days</code> or <code>Years</code>.</p>
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #   @return [String]
    # @!attribute days
    #   <p>The number of days that you want to specify for the default retention period. Must be
    #            used with <code>Mode</code>.</p>
    #   @return [Integer]
    # @!attribute years
    #   <p>The number of years that you want to specify for the default retention period. Must be
    #            used with <code>Mode</code>.</p>
    #   @return [Integer]
    class DefaultRetention
      include Hearth::Structure

      MEMBERS = %i[
        mode
        days
        years
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for the objects to delete.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ObjectIdentifier>] :objects (0)
    #   @option params [Boolean] :quiet
    # @!attribute objects
    #   <p>The object to delete.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, an object that's composed entirely of
    #         whitespace characters is not supported by the <code>DeleteObjects</code> API operation. The request will receive a <code>400 Bad Request</code> error
    #         and none of the objects in the request will be deleted.</p>
    #            </note>
    #   @return [Array<ObjectIdentifier>]
    # @!attribute quiet
    #   <p>Element to enable quiet mode for the request. When you add this element, you must set
    #            its value to <code>true</code>.</p>
    #   @return [Boolean]
    class Delete
      include Hearth::Structure

      MEMBERS = %i[
        objects
        quiet
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket from which an analytics configuration is deleted.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketAnalyticsConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketAnalyticsConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>Specifies the bucket whose <code>cors</code> configuration is being deleted.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketCorsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketCorsOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket containing the server-side encryption configuration to
    #            delete.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketEncryptionInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketEncryptionOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>Specifies the bucket being deleted.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must also follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az_id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class DeleteBucketInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #   @return [String]
    class DeleteBucketIntelligentTieringConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketIntelligentTieringConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket containing the inventory configuration to delete.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketInventoryConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketInventoryConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name of the lifecycle to delete.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketLifecycleInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketLifecycleOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket containing the metrics configuration to delete.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketMetricsConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketMetricsConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The Amazon S3 bucket whose <code>OwnershipControls</code> you want to delete. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketOwnershipControlsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketOwnershipControlsOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must also follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az_id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class DeleteBucketPolicyInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketPolicyOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p> The bucket name. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketReplicationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketReplicationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket that has the tag set to be removed.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketTaggingInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketTaggingOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name for which you want to remove the website configuration. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketWebsiteInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteBucketWebsiteOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about the delete marker.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Owner] :owner
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [Boolean] :is_latest
    #   @option params [Time] :last_modified
    # @!attribute owner
    #   <p>The account that created the delete marker.></p>
    #   @return [Owner]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of an object.</p>
    #   @return [String]
    # @!attribute is_latest
    #   <p>Specifies whether the object is (true) or is not (false) the latest version of an
    #            object.</p>
    #   @return [Boolean]
    # @!attribute last_modified
    #   <p>Date and time when the object was last modified.</p>
    #   @return [Time]
    class DeleteMarkerEntry
      include Hearth::Structure

      MEMBERS = %i[
        owner
        key
        version_id
        is_latest
        last_modified
      ].freeze

      attr_accessor(*MEMBERS)
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
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status
    # @!attribute status
    #   <p>Indicates whether to replicate delete markers.</p>
    #            <note>
    #               <p>Indicates whether to replicate delete markers.</p>
    #            </note>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    class DeleteMarkerReplication
      include Hearth::Structure

      MEMBERS = %i[
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for DeleteMarkerReplicationStatus
    module DeleteMarkerReplicationStatus
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :mfa
    #   @option params [String] :version_id
    #   @option params [String] :request_payer
    #   @option params [Boolean] :bypass_governance_retention
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name of the bucket containing the object. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key name of the object to delete.</p>
    #   @return [String]
    # @!attribute mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device. Required to permanently delete a versioned
    #            object if versioning is configured with MFA delete enabled.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID used to reference a specific version of the object.</p>
    #            <note>
    #               <p>For directory buckets in this API operation, only the <code>null</code> value of the version ID is supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute bypass_governance_retention
    #   <p>Indicates whether S3 Object Lock should bypass Governance-mode restrictions to process
    #            this operation. To use this header, you must have the
    #               <code>s3:BypassGovernanceRetention</code> permission.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteObjectInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        mfa
        version_id
        request_payer
        bypass_governance_retention
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :delete_marker
    #   @option params [String] :version_id
    #   @option params [String] :request_charged
    # @!attribute delete_marker
    #   <p>Indicates whether the specified object version that was permanently deleted was (true) or was
    #            not (false) a delete marker before deletion. In a simple DELETE, this header indicates whether (true) or
    #            not (false) the current version of the object is a delete marker.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute version_id
    #   <p>Returns the version ID of the delete marker created as a result of the DELETE
    #            operation.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class DeleteObjectOutput
      include Hearth::Structure

      MEMBERS = %i[
        delete_marker
        version_id
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name containing the objects from which to remove the tags. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key that identifies the object in the bucket from which to remove all tags.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The versionId of the object that the tag-set will be removed from.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteObjectTaggingInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        version_id
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :version_id
    # @!attribute version_id
    #   <p>The versionId of the object the tag-set was removed from.</p>
    #   @return [String]
    class DeleteObjectTaggingOutput
      include Hearth::Structure

      MEMBERS = %i[
        version_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [Delete] :delete
    #   @option params [String] :mfa
    #   @option params [String] :request_payer
    #   @option params [Boolean] :bypass_governance_retention
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :checksum_algorithm
    # @!attribute bucket
    #   <p>The bucket name containing the objects to delete. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute delete
    #   <p>Container for the request.</p>
    #   @return [Delete]
    # @!attribute mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device. Required to permanently delete a versioned
    #            object if versioning is configured with MFA delete enabled.</p>
    #            <p>When performing the <code>DeleteObjects</code> operation on an MFA delete enabled bucket, which attempts to delete the specified
    #            versioned objects, you must include an MFA token. If you don't provide an MFA token, the entire
    #            request will fail, even if there are non-versioned objects that you are trying to delete. If you
    #            provide an invalid token, whether there are versioned object keys in the request or not, the
    #            entire Multi-Object Delete request will fail. For information about MFA Delete, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete"> MFA
    #               Delete</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute bypass_governance_retention
    #   <p>Specifies whether you want to delete this object even if it has a Governance-type Object
    #            Lock in place. To use this header, you must have the
    #               <code>s3:BypassGovernanceRetention</code> permission.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum-<i>algorithm</i>
    #               </code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>.</p>
    #            <p>For the <code>x-amz-checksum-<i>algorithm</i>
    #               </code> header, replace <code>
    #                  <i>algorithm</i>
    #               </code> with the supported algorithm from the following list: </p>
    #            <ul>
    #               <li>
    #                  <p>CRC32</p>
    #               </li>
    #               <li>
    #                  <p>CRC32C</p>
    #               </li>
    #               <li>
    #                  <p>SHA1</p>
    #               </li>
    #               <li>
    #                  <p>SHA256</p>
    #               </li>
    #            </ul>
    #            <p>For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If the individual checksum value you provide through <code>x-amz-checksum-<i>algorithm</i>
    #               </code> doesn't match the checksum algorithm you set through <code>x-amz-sdk-checksum-algorithm</code>,  Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter and uses the checksum algorithm that matches the provided value in <code>x-amz-checksum-<i>algorithm</i>
    #               </code>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    class DeleteObjectsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        delete
        mfa
        request_payer
        bypass_governance_retention
        expected_bucket_owner
        checksum_algorithm
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<DeletedObject>] :deleted
    #   @option params [String] :request_charged
    #   @option params [Array<Error>] :errors
    # @!attribute deleted
    #   <p>Container element for a successful delete. It identifies the object that was
    #            successfully deleted.</p>
    #   @return [Array<DeletedObject>]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute errors
    #   <p>Container for a failed delete action that describes the object that Amazon S3 attempted to
    #            delete and the error it encountered.</p>
    #   @return [Array<Error>]
    class DeleteObjectsOutput
      include Hearth::Structure

      MEMBERS = %i[
        deleted
        request_charged
        errors
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want to delete.
    #         </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeletePublicAccessBlockInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeletePublicAccessBlockOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about the deleted object.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [Boolean] :delete_marker
    #   @option params [String] :delete_marker_version_id
    # @!attribute key
    #   <p>The name of the deleted object.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the deleted object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute delete_marker
    #   <p>Indicates whether the specified object version that was permanently deleted was (true) or was
    #            not (false) a delete marker before deletion. In a simple DELETE, this header indicates whether (true) or
    #            not (false) the current version of the object is a delete marker.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute delete_marker_version_id
    #   <p>The version ID of the delete marker created as a result of the DELETE operation. If you
    #            delete a specific object version, the value returned by this header is the version ID of
    #            the object version deleted.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class DeletedObject
      include Hearth::Structure

      MEMBERS = %i[
        key
        version_id
        delete_marker
        delete_marker_version_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies information about where to publish analysis or configuration results for an
    #          Amazon S3 bucket and S3 Replication Time Control (S3 RTC).</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket (0)
    #   @option params [String] :account
    #   @option params [String] :storage_class
    #   @option params [AccessControlTranslation] :access_control_translation
    #   @option params [EncryptionConfiguration] :encryption_configuration
    #   @option params [ReplicationTime] :replication_time
    #   @option params [Metrics] :metrics
    # @!attribute bucket
    #   <p> The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to store the
    #            results.</p>
    #   @return [String]
    # @!attribute account
    #   <p>Destination bucket owner account ID. In a cross-account scenario, if you direct Amazon S3 to
    #            change replica ownership to the Amazon Web Services account that owns the destination bucket by
    #            specifying the <code>AccessControlTranslation</code> property, this is the account ID of
    #            the destination bucket owner. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html">Replication Additional
    #               Configuration: Changing the Replica Owner</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute storage_class
    #   <p> The storage class to use when replicating objects, such as S3 Standard or reduced
    #            redundancy. By default, Amazon S3 uses the storage class of the source object to create the
    #            object replica. </p>
    #            <p>For valid values, see the <code>StorageClass</code> element of the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html">PUT Bucket
    #               replication</a> action in the <i>Amazon S3 API Reference</i>.</p>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute access_control_translation
    #   <p>Specify this only in a cross-account scenario (where source and destination bucket
    #            owners are not the same), and you want to change replica ownership to the Amazon Web Services account
    #            that owns the destination bucket. If this is not specified in the replication
    #            configuration, the replicas are owned by same Amazon Web Services account that owns the source
    #            object.</p>
    #   @return [AccessControlTranslation]
    # @!attribute encryption_configuration
    #   <p>A container that provides information about encryption. If
    #               <code>SourceSelectionCriteria</code> is specified, you must specify this element.</p>
    #   @return [EncryptionConfiguration]
    # @!attribute replication_time
    #   <p> A container specifying S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time
    #            when all objects and operations on objects must be replicated. Must be specified together
    #            with a <code>Metrics</code> block. </p>
    #   @return [ReplicationTime]
    # @!attribute metrics
    #   <p> A container specifying replication metrics-related settings enabling replication
    #            metrics and events. </p>
    #   @return [Metrics]
    class Destination
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        account
        storage_class
        access_control_translation
        encryption_configuration
        replication_time
        metrics
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for EncodingType
    # <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
    #          method to use. An object key can contain any Unicode character; however, the XML 1.0 parser
    #          cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
    #          characters that are not supported in XML 1.0, you can add this parameter to request that
    #          Amazon S3 encode the keys in the response.</p>
    module EncodingType
      URL = "url"
    end

    # <p>Contains the type of server-side encryption used.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :encryption_type (0)
    #   @option params [String] :kms_key_id
    #   @option params [String] :kms_context
    # @!attribute encryption_type
    #   <p>The server-side encryption algorithm used when storing job results in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>If the encryption type is <code>aws:kms</code>, this optional value specifies the ID of
    #            the symmetric encryption customer managed key to use for encryption of job results. Amazon S3 only
    #            supports symmetric encryption KMS keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric keys in KMS</a> in the <i>Amazon Web Services Key Management Service
    #               Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute kms_context
    #   <p>If the encryption type is <code>aws:kms</code>, this optional value can be used to
    #            specify the encryption context for the restore results.</p>
    #   @return [String]
    class Encryption
      include Hearth::Structure

      MEMBERS = %i[
        encryption_type
        kms_key_id
        kms_context
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::Encryption ' \
          "encryption_type=#{encryption_type || 'nil'}, " \
          'kms_key_id=[SENSITIVE], ' \
          "kms_context=#{kms_context || 'nil'}>"
      end
    end

    # <p>Specifies encryption-related information for an Amazon S3 bucket that is a destination for
    #          replicated objects.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :replica_kms_key_id
    # @!attribute replica_kms_key_id
    #   <p>Specifies the ID (Key ARN or Alias ARN) of the customer managed Amazon Web Services KMS key stored in
    #            Amazon Web Services Key Management Service (KMS) for the destination bucket. Amazon S3 uses this key to
    #            encrypt replica objects. Amazon S3 only supports symmetric encryption KMS keys. For more
    #            information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric keys in Amazon Web Services
    #               KMS</a> in the <i>Amazon Web Services Key Management Service Developer
    #            Guide</i>.</p>
    #   @return [String]
    class EncryptionConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        replica_kms_key_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A message that indicates the request is complete and no more messages will be sent. You
    #          should not assume that the request is complete until the client receives an
    #             <code>EndEvent</code>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class EndEvent
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for all error elements.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [String] :code
    #   @option params [String] :message
    # @!attribute key
    #   <p>The error key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute code
    #   <p>The error code is a string that uniquely identifies an error condition. It is meant to
    #            be read and understood by programs that detect and handle errors by type. The following is
    #            a list of Amazon S3 error codes. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error responses</a>.</p>
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
    #                        valid. For more information about Regions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro">How to Select
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
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error condition in English. It
    #            is intended for a human audience. Simple programs display the message directly to the end
    #            user if they encounter an error condition they don't know how or don't care to handle.
    #            Sophisticated programs with more exhaustive error handling and proper internationalization
    #            are more likely to ignore the error message.</p>
    #   @return [String]
    class Error
      include Hearth::Structure

      MEMBERS = %i[
        key
        version_id
        code
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The error information.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key (0)
    # @!attribute key
    #   <p>The object key name to use when a 4XX class error occurs.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    class ErrorDocument
      include Hearth::Structure

      MEMBERS = %i[
        key
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for Event
    # <p>The bucket event for which to send notifications.</p>
    module Event
      S3_REDUCED_REDUNDANCY_LOST_OBJECT = "s3:ReducedRedundancyLostObject"

      S3_OBJECT_CREATED_ = "s3:ObjectCreated:*"

      S3_OBJECT_CREATED_PUT = "s3:ObjectCreated:Put"

      S3_OBJECT_CREATED_POST = "s3:ObjectCreated:Post"

      S3_OBJECT_CREATED_COPY = "s3:ObjectCreated:Copy"

      S3_OBJECT_CREATED_COMPLETE_MULTIPART_UPLOAD = "s3:ObjectCreated:CompleteMultipartUpload"

      S3_OBJECT_REMOVED_ = "s3:ObjectRemoved:*"

      S3_OBJECT_REMOVED_DELETE = "s3:ObjectRemoved:Delete"

      S3_OBJECT_REMOVED_DELETE_MARKER_CREATED = "s3:ObjectRemoved:DeleteMarkerCreated"

      S3_OBJECT_RESTORE_ = "s3:ObjectRestore:*"

      S3_OBJECT_RESTORE_POST = "s3:ObjectRestore:Post"

      S3_OBJECT_RESTORE_COMPLETED = "s3:ObjectRestore:Completed"

      S3_REPLICATION_ = "s3:Replication:*"

      S3_REPLICATION_OPERATION_FAILED_REPLICATION = "s3:Replication:OperationFailedReplication"

      S3_REPLICATION_OPERATION_NOT_TRACKED = "s3:Replication:OperationNotTracked"

      S3_REPLICATION_OPERATION_MISSED_THRESHOLD = "s3:Replication:OperationMissedThreshold"

      S3_REPLICATION_OPERATION_REPLICATED_AFTER_THRESHOLD = "s3:Replication:OperationReplicatedAfterThreshold"

      S3_OBJECT_RESTORE_DELETE = "s3:ObjectRestore:Delete"

      S3_LIFECYCLE_TRANSITION = "s3:LifecycleTransition"

      S3_INTELLIGENT_TIERING = "s3:IntelligentTiering"

      S3_OBJECT_ACL_PUT = "s3:ObjectAcl:Put"

      S3_LIFECYCLE_EXPIRATION_ = "s3:LifecycleExpiration:*"

      S3_LIFECYCLE_EXPIRATION_DELETE = "s3:LifecycleExpiration:Delete"

      S3_LIFECYCLE_EXPIRATION_DELETE_MARKER_CREATED = "s3:LifecycleExpiration:DeleteMarkerCreated"

      S3_OBJECT_TAGGING_ = "s3:ObjectTagging:*"

      S3_OBJECT_TAGGING_PUT = "s3:ObjectTagging:Put"

      S3_OBJECT_TAGGING_DELETE = "s3:ObjectTagging:Delete"
    end

    # <p>A container for specifying the configuration for Amazon EventBridge.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class EventBridgeConfiguration
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Optional configuration to replicate existing source bucket objects. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication">Replicating Existing Objects</a> in the <i>Amazon S3 User Guide</i>.
    #       </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status (0)
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates existing source bucket objects. </p>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    class ExistingObjectReplication
      include Hearth::Structure

      MEMBERS = %i[
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ExistingObjectReplicationStatus
    module ExistingObjectReplicationStatus
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # Enum constants for ExpirationStatus
    module ExpirationStatus
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # Enum constants for ExpressionType
    module ExpressionType
      SQL = "SQL"
    end

    # Enum constants for FileHeaderInfo
    module FileHeaderInfo
      USE = "USE"

      IGNORE = "IGNORE"

      NONE = "NONE"
    end

    # <p>Specifies the Amazon S3 object key name to filter on and whether to filter on the suffix or
    #          prefix of the key name.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name
    #   @option params [String] :value
    # @!attribute name
    #   <p>The object key name prefix or suffix identifying one or more objects to which the
    #            filtering rule applies. The maximum length is 1,024 characters. Overlapping prefixes and
    #            suffixes are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a>
    #            in the <i>Amazon S3 User Guide</i>.</p>
    #   Enum, one of: ["prefix", "suffix"]
    #   @return [String]
    # @!attribute value
    #   <p>The value that the filter searches for in object key names.</p>
    #   @return [String]
    class FilterRule
      include Hearth::Structure

      MEMBERS = %i[
        name
        value
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for FilterRuleName
    module FilterRuleName
      PREFIX = "prefix"

      SUFFIX = "suffix"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :request_payer
    # @!attribute bucket
    #   <p>The name of the bucket for which the accelerate configuration is retrieved.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class GetBucketAccelerateConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
        request_payer
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status
    #   @option params [String] :request_charged
    # @!attribute status
    #   <p>The accelerate configuration of the bucket.</p>
    #   Enum, one of: ["Enabled", "Suspended"]
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class GetBucketAccelerateConfigurationOutput
      include Hearth::Structure

      MEMBERS = %i[
        status
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>Specifies the S3 bucket whose ACL is being requested.</p>
    #            <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #            <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketAclInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Owner] :owner
    #   @option params [Array<Grant>] :grants
    # @!attribute owner
    #   <p>Container for the bucket owner's display name and ID.</p>
    #   @return [Owner]
    # @!attribute grants
    #   <p>A list of grants.</p>
    #   @return [Array<Grant>]
    class GetBucketAclOutput
      include Hearth::Structure

      MEMBERS = %i[
        owner
        grants
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket from which an analytics configuration is retrieved.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketAnalyticsConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [AnalyticsConfiguration] :analytics_configuration
    # @!attribute analytics_configuration
    #   <p>The configuration and any analyses for the analytics filter.</p>
    #   @return [AnalyticsConfiguration]
    class GetBucketAnalyticsConfigurationOutput
      include Hearth::Structure

      MEMBERS = %i[
        analytics_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name for which to get the cors configuration.</p>
    #            <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #            <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketCorsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<CORSRule>] :cors_rules
    # @!attribute cors_rules
    #   <p>A set of origins and methods (cross-origin access that you want to allow). You can add
    #            up to 100 rules to the configuration.</p>
    #   @return [Array<CORSRule>]
    class GetBucketCorsOutput
      include Hearth::Structure

      MEMBERS = %i[
        cors_rules
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket from which the server-side encryption configuration is
    #            retrieved.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketEncryptionInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    # @!attribute server_side_encryption_configuration
    #   <p>Specifies the default server-side-encryption configuration.</p>
    #   @return [ServerSideEncryptionConfiguration]
    class GetBucketEncryptionOutput
      include Hearth::Structure

      MEMBERS = %i[
        server_side_encryption_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #   @return [String]
    class GetBucketIntelligentTieringConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [IntelligentTieringConfiguration] :intelligent_tiering_configuration
    # @!attribute intelligent_tiering_configuration
    #   <p>Container for S3 Intelligent-Tiering configuration.</p>
    #   @return [IntelligentTieringConfiguration]
    class GetBucketIntelligentTieringConfigurationOutput
      include Hearth::Structure

      MEMBERS = %i[
        intelligent_tiering_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket containing the inventory configuration to retrieve.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketInventoryConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [InventoryConfiguration] :inventory_configuration
    # @!attribute inventory_configuration
    #   <p>Specifies the inventory configuration.</p>
    #   @return [InventoryConfiguration]
    class GetBucketInventoryConfigurationOutput
      include Hearth::Structure

      MEMBERS = %i[
        inventory_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket for which to get the lifecycle information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketLifecycleConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<LifecycleRule>] :rules
    # @!attribute rules
    #   <p>Container for a lifecycle rule.</p>
    #   @return [Array<LifecycleRule>]
    class GetBucketLifecycleConfigurationOutput
      include Hearth::Structure

      MEMBERS = %i[
        rules
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket for which to get the location.</p>
    #            <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #            <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketLocationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :location_constraint
    # @!attribute location_constraint
    #   <p>Specifies the Region where the bucket resides. For a list of all the Amazon S3 supported
    #            location constraints by Region, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a>. Buckets in
    #            Region <code>us-east-1</code> have a LocationConstraint of <code>null</code>.</p>
    #   Enum, one of: ["af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ca-central-1", "cn-north-1", "cn-northwest-1", "EU", "eu-central-1", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1", "us-east-2", "us-gov-east-1", "us-gov-west-1", "us-west-1", "us-west-2"]
    #   @return [String]
    class GetBucketLocationOutput
      include Hearth::Structure

      MEMBERS = %i[
        location_constraint
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name for which to get the logging information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketLoggingInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [LoggingEnabled] :logging_enabled
    # @!attribute logging_enabled
    #   <p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys
    #            for a bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html">PUT Bucket logging</a> in the
    #               <i>Amazon S3 API Reference</i>.</p>
    #   @return [LoggingEnabled]
    class GetBucketLoggingOutput
      include Hearth::Structure

      MEMBERS = %i[
        logging_enabled
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket containing the metrics configuration to retrieve.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketMetricsConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [MetricsConfiguration] :metrics_configuration
    # @!attribute metrics_configuration
    #   <p>Specifies the metrics configuration.</p>
    #   @return [MetricsConfiguration]
    class GetBucketMetricsConfigurationOutput
      include Hearth::Structure

      MEMBERS = %i[
        metrics_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket for which to get the notification configuration.</p>
    #            <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #            <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketNotificationConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A container for specifying the notification configuration of the bucket. If this element
    #          is empty, notifications are turned off for the bucket.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<TopicConfiguration>] :topic_configurations
    #   @option params [Array<QueueConfiguration>] :queue_configurations
    #   @option params [Array<LambdaFunctionConfiguration>] :lambda_function_configurations
    #   @option params [EventBridgeConfiguration] :event_bridge_configuration
    # @!attribute topic_configurations
    #   <p>The topic to which notifications are sent and the events for which notifications are
    #            generated.</p>
    #   @return [Array<TopicConfiguration>]
    # @!attribute queue_configurations
    #   <p>The Amazon Simple Queue Service queues to publish messages to and the events for which
    #            to publish messages.</p>
    #   @return [Array<QueueConfiguration>]
    # @!attribute lambda_function_configurations
    #   <p>Describes the Lambda functions to invoke and the events for which to invoke
    #            them.</p>
    #   @return [Array<LambdaFunctionConfiguration>]
    # @!attribute event_bridge_configuration
    #   <p>Enables delivery of events to Amazon EventBridge.</p>
    #   @return [EventBridgeConfiguration]
    class GetBucketNotificationConfigurationOutput
      include Hearth::Structure

      MEMBERS = %i[
        topic_configurations
        queue_configurations
        lambda_function_configurations
        event_bridge_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>OwnershipControls</code> you want to retrieve.
    #         </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketOwnershipControlsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [OwnershipControls] :ownership_controls
    # @!attribute ownership_controls
    #   <p>The <code>OwnershipControls</code> (BucketOwnerEnforced, BucketOwnerPreferred, or
    #            ObjectWriter) currently in effect for this Amazon S3 bucket.</p>
    #   @return [OwnershipControls]
    class GetBucketOwnershipControlsOutput
      include Hearth::Structure

      MEMBERS = %i[
        ownership_controls
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name to get the bucket policy for.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must also follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az_id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #            <p>
    #               <b>Access points</b> - When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #            <p>
    #               <b>Object Lambda access points</b> - When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class GetBucketPolicyInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :policy
    # @!attribute policy
    #   <p>The bucket policy as a JSON document.</p>
    #   @return [String]
    class GetBucketPolicyOutput
      include Hearth::Structure

      MEMBERS = %i[
        policy
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose policy status you want to retrieve.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketPolicyStatusInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [PolicyStatus] :policy_status
    # @!attribute policy_status
    #   <p>The policy status for the specified bucket.</p>
    #   @return [PolicyStatus]
    class GetBucketPolicyStatusOutput
      include Hearth::Structure

      MEMBERS = %i[
        policy_status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name for which to get the replication information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketReplicationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ReplicationConfiguration] :replication_configuration
    # @!attribute replication_configuration
    #   <p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a
    #            replication configuration is 2 MB.</p>
    #   @return [ReplicationConfiguration]
    class GetBucketReplicationOutput
      include Hearth::Structure

      MEMBERS = %i[
        replication_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket for which to get the payment request configuration</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketRequestPaymentInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :payer
    # @!attribute payer
    #   <p>Specifies who pays for the download and request fees.</p>
    #   Enum, one of: ["Requester", "BucketOwner"]
    #   @return [String]
    class GetBucketRequestPaymentOutput
      include Hearth::Structure

      MEMBERS = %i[
        payer
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket for which to get the tagging information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketTaggingInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Tag>] :tag_set (0)
    # @!attribute tag_set
    #   <p>Contains the tag set.</p>
    #   @return [Array<Tag>]
    class GetBucketTaggingOutput
      include Hearth::Structure

      MEMBERS = %i[
        tag_set
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket for which to get the versioning information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketVersioningInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status
    #   @option params [String] :mfa_delete
    # @!attribute status
    #   <p>The versioning state of the bucket.</p>
    #   Enum, one of: ["Enabled", "Suspended"]
    #   @return [String]
    # @!attribute mfa_delete
    #   <p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This
    #            element is only returned if the bucket has been configured with MFA delete. If the bucket
    #            has never been so configured, this element is not returned.</p>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    class GetBucketVersioningOutput
      include Hearth::Structure

      MEMBERS = %i[
        status
        mfa_delete
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name for which to get the website configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketWebsiteInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [RedirectAllRequestsTo] :redirect_all_requests_to
    #   @option params [IndexDocument] :index_document
    #   @option params [ErrorDocument] :error_document
    #   @option params [Array<RoutingRule>] :routing_rules
    # @!attribute redirect_all_requests_to
    #   <p>Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3
    #            bucket.</p>
    #   @return [RedirectAllRequestsTo]
    # @!attribute index_document
    #   <p>The name of the index document for the website (for example
    #            <code>index.html</code>).</p>
    #   @return [IndexDocument]
    # @!attribute error_document
    #   <p>The object key name of the website error document to use for 4XX class errors.</p>
    #   @return [ErrorDocument]
    # @!attribute routing_rules
    #   <p>Rules that define when a redirect is applied and the redirect behavior.</p>
    #   @return [Array<RoutingRule>]
    class GetBucketWebsiteOutput
      include Hearth::Structure

      MEMBERS = %i[
        redirect_all_requests_to
        index_document
        error_document
        routing_rules
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name that contains the object for which to get the ACL information. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key of the object for which to get the ACL information.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID used to reference a specific version of the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetObjectAclInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        version_id
        request_payer
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Owner] :owner
    #   @option params [Array<Grant>] :grants
    #   @option params [String] :request_charged
    # @!attribute owner
    #   <p> Container for the bucket owner's display name and ID.</p>
    #   @return [Owner]
    # @!attribute grants
    #   <p>A list of grants.</p>
    #   @return [Array<Grant>]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class GetObjectAclOutput
      include Hearth::Structure

      MEMBERS = %i[
        owner
        grants
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [Integer] :max_parts
    #   @option params [String] :part_number_marker
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    #   @option params [Array<String>] :object_attributes
    # @!attribute bucket
    #   <p>The name of the bucket that contains the object.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID used to reference a specific version of the object.</p>
    #            <note>
    #               <p>S3 Versioning isn't enabled and supported for directory buckets. For this API operation, only the <code>null</code> value of the version ID is supported by directory buckets. You can only specify <code>null</code>
    #            to the <code>versionId</code> query parameter in the request.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_parts
    #   <p>Sets the maximum number of parts to return.</p>
    #   @return [Integer]
    # @!attribute part_number_marker
    #   <p>Specifies the part after which listing should begin. Only parts with higher part numbers
    #            will be listed.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example, AES256).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute object_attributes
    #   <p>Specifies the fields at the root level that you want returned in the response. Fields
    #            that you do not specify are not returned.</p>
    #   @return [Array<String>]
    class GetObjectAttributesInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        version_id
        max_parts
        part_number_marker
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
        request_payer
        expected_bucket_owner
        object_attributes
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::GetObjectAttributesInput ' \
          "bucket=#{bucket || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "version_id=#{version_id || 'nil'}, " \
          "max_parts=#{max_parts || 'nil'}, " \
          "part_number_marker=#{part_number_marker || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          "request_payer=#{request_payer || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, " \
          "object_attributes=#{object_attributes || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :delete_marker
    #   @option params [Time] :last_modified
    #   @option params [String] :version_id
    #   @option params [String] :request_charged
    #   @option params [String] :e_tag
    #   @option params [Checksum] :checksum
    #   @option params [GetObjectAttributesParts] :object_parts
    #   @option params [String] :storage_class
    #   @option params [Integer] :object_size
    # @!attribute delete_marker
    #   <p>Specifies whether the object retrieved was (<code>true</code>) or was not
    #               (<code>false</code>) a delete marker. If <code>false</code>, this response header does
    #            not appear in the response.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute last_modified
    #   <p>The creation date of the object.</p>
    #   @return [Time]
    # @!attribute version_id
    #   <p>The version ID of the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute e_tag
    #   <p>An ETag is an opaque identifier assigned by a web server to a specific version of a
    #            resource found at a URL.</p>
    #   @return [String]
    # @!attribute checksum
    #   <p>The checksum or digest of the object.</p>
    #   @return [Checksum]
    # @!attribute object_parts
    #   <p>A collection of parts associated with a multipart upload.</p>
    #   @return [GetObjectAttributesParts]
    # @!attribute storage_class
    #   <p>Provides the storage class information of the object. Amazon S3 returns this header for all
    #            objects except for S3 Standard storage class objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - Only the S3 Express One Zone storage class is supported by directory buckets to store objects.</p>
    #            </note>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute object_size
    #   <p>The size of the object in bytes.</p>
    #   @return [Integer]
    class GetObjectAttributesOutput
      include Hearth::Structure

      MEMBERS = %i[
        delete_marker
        last_modified
        version_id
        request_charged
        e_tag
        checksum
        object_parts
        storage_class
        object_size
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A collection of parts associated with a multipart upload.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :total_parts_count
    #   @option params [String] :part_number_marker
    #   @option params [String] :next_part_number_marker
    #   @option params [Integer] :max_parts
    #   @option params [Boolean] :is_truncated
    #   @option params [Array<ObjectPart>] :parts
    # @!attribute total_parts_count
    #   <p>The total number of parts.</p>
    #   @return [Integer]
    # @!attribute part_number_marker
    #   <p>The marker for the current part.</p>
    #   @return [String]
    # @!attribute next_part_number_marker
    #   <p>When a list is truncated, this element specifies the last part in the list, as well as
    #            the value to use for the <code>PartNumberMarker</code> request parameter in a subsequent
    #            request.</p>
    #   @return [String]
    # @!attribute max_parts
    #   <p>The maximum number of parts allowed in the response.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of parts is truncated. A value of <code>true</code>
    #            indicates that the list was truncated. A list can be truncated if the number of parts
    #            exceeds the limit returned in the <code>MaxParts</code> element.</p>
    #   @return [Boolean]
    # @!attribute parts
    #   <p>A container for elements related to a particular part. A response can contain zero or
    #            more <code>Parts</code> elements.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>General purpose buckets</b> - For <code>GetObjectAttributes</code>, if a additional checksum (including <code>x-amz-checksum-crc32</code>,
    #                  <code>x-amz-checksum-crc32c</code>, <code>x-amz-checksum-sha1</code>, or
    #                  <code>x-amz-checksum-sha256</code>) isn't applied to the object specified in the request, the response doesn't return <code>Part</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - For <code>GetObjectAttributes</code>, no matter whether a additional checksum is applied to the object specified in the request, the response returns <code>Part</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<ObjectPart>]
    class GetObjectAttributesParts
      include Hearth::Structure

      MEMBERS = %i[
        total_parts_count
        part_number_marker
        next_part_number_marker
        max_parts
        is_truncated
        parts
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :if_match
    #   @option params [Time] :if_modified_since
    #   @option params [String] :if_none_match
    #   @option params [Time] :if_unmodified_since
    #   @option params [String] :key
    #   @option params [String] :range
    #   @option params [String] :response_cache_control
    #   @option params [String] :response_content_disposition
    #   @option params [String] :response_content_encoding
    #   @option params [String] :response_content_language
    #   @option params [String] :response_content_type
    #   @option params [Time] :response_expires
    #   @option params [String] :version_id
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :request_payer
    #   @option params [Integer] :part_number
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :checksum_mode
    # @!attribute bucket
    #   <p>The bucket name containing the object. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Object Lambda access points</b> - When you use this action with an Object Lambda access point, you must direct requests to the Object Lambda access point hostname. The Object Lambda access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-object-lambda.<i>Region</i>.amazonaws.com.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>Return the object only if its entity tag (ETag) is the same as the one specified in this header;
    #            otherwise, return a <code>412 Precondition Failed</code> error.</p>
    #            <p>If both of the <code>If-Match</code> and <code>If-Unmodified-Since</code> headers are present in the request as follows: <code>If-Match</code> condition
    #            evaluates to <code>true</code>, and; <code>If-Unmodified-Since</code> condition evaluates to <code>false</code>; then, S3 returns <code>200 OK</code> and the data requested. </p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute if_modified_since
    #   <p>Return the object only if it has been modified since the specified time; otherwise,
    #            return a <code>304 Not Modified</code> error.</p>
    #            <p>If both of the <code>If-None-Match</code> and <code>If-Modified-Since</code> headers are present in the request as follows:<code> If-None-Match</code>
    #            condition evaluates to <code>false</code>, and; <code>If-Modified-Since</code> condition evaluates to <code>true</code>; then, S3 returns <code>304 Not Modified</code>
    #                     status code.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [Time]
    # @!attribute if_none_match
    #   <p>Return the object only if its entity tag (ETag) is different from the one specified in this header;
    #            otherwise, return a <code>304 Not Modified</code> error.</p>
    #            <p>If both of the <code>If-None-Match</code> and <code>If-Modified-Since</code>
    #            headers are present in the request as follows:<code> If-None-Match</code>
    #            condition evaluates to <code>false</code>, and; <code>If-Modified-Since</code>
    #            condition evaluates to <code>true</code>; then, S3 returns <code>304 Not Modified</code> HTTP status code.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute if_unmodified_since
    #   <p>Return the object only if it has not been modified since the specified time; otherwise,
    #            return a <code>412 Precondition Failed</code> error.</p>
    #            <p>If both of the <code>If-Match</code> and <code>If-Unmodified-Since</code>
    #                     headers are present in the request as follows: <code>If-Match</code> condition
    #                     evaluates to <code>true</code>, and; <code>If-Unmodified-Since</code> condition
    #                     evaluates to <code>false</code>; then, S3 returns <code>200 OK</code> and the data requested. </p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [Time]
    # @!attribute key
    #   <p>Key of the object to get.</p>
    #   @return [String]
    # @!attribute range
    #   <p>Downloads the specified byte range of an object. For more information about the HTTP
    #            Range header, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html#name-range">https://www.rfc-editor.org/rfc/rfc9110.html#name-range</a>.</p>
    #            <note>
    #               <p>Amazon S3 doesn't support retrieving multiple ranges of data per <code>GET</code>
    #               request.</p>
    #            </note>
    #   @return [String]
    # @!attribute response_cache_control
    #   <p>Sets the <code>Cache-Control</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_disposition
    #   <p>Sets the <code>Content-Disposition</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_encoding
    #   <p>Sets the <code>Content-Encoding</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_language
    #   <p>Sets the <code>Content-Language</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_type
    #   <p>Sets the <code>Content-Type</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_expires
    #   <p>Sets the <code>Expires</code> header of the response.</p>
    #   @return [Time]
    # @!attribute version_id
    #   <p>Version ID used to reference a specific version of the object.</p>
    #            <p>By default, the <code>GetObject</code> operation returns the current version of an object. To return a different version, use the <code>versionId</code> subresource.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>If you include a <code>versionId</code> in your request header, you must have the <code>s3:GetObjectVersion</code> permission to access a specific version of an object. The <code>s3:GetObject</code> permission is not required in this scenario.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you request the current version of an object without a specific <code>versionId</code> in the request header, only the <code>s3:GetObject</code> permission is required. The <code>s3:GetObjectVersion</code> permission is not required in this scenario.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - S3 Versioning isn't enabled and supported for directory buckets. For this API operation, only the <code>null</code> value of the version ID is supported by directory buckets. You can only specify <code>null</code>
    #                     to the <code>versionId</code> query parameter in the request.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <p>For more information about versioning, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html">PutBucketVersioning</a>.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when decrypting the object (for example,
    #            <code>AES256</code>).</p>
    #            <p>If you encrypt an object by using server-side encryption with customer-provided
    #            encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object,
    #            you must use the following headers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption
    #            (Using Customer-Provided Encryption Keys)</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key that you originally provided for Amazon S3 to encrypt the data before storing it. This
    #            value is used to decrypt the object when recovering it and must match the one used when
    #            storing the data. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <p>If you encrypt an object by using server-side encryption with customer-provided
    #            encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object,
    #            you must use the following headers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption
    #            (Using Customer-Provided Encryption Keys)</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the customer-provided encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #            <p>If you encrypt an object by using server-side encryption with customer-provided
    #            encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object,
    #            you must use the following headers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption
    #            (Using Customer-Provided Encryption Keys)</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute part_number
    #   <p>Part number of the object being read. This is a positive integer between 1 and 10,000.
    #            Effectively performs a 'ranged' GET request for the part specified. Useful for downloading
    #            just a part of an object.</p>
    #   @return [Integer]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute checksum_mode
    #   <p>To retrieve the checksum, this mode must be enabled.</p>
    #   Enum, one of: ["ENABLED"]
    #   @return [String]
    class GetObjectInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        if_match
        if_modified_since
        if_none_match
        if_unmodified_since
        key
        range
        response_cache_control
        response_content_disposition
        response_content_encoding
        response_content_language
        response_content_type
        response_expires
        version_id
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
        request_payer
        part_number
        expected_bucket_owner
        checksum_mode
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::GetObjectInput ' \
          "bucket=#{bucket || 'nil'}, " \
          "if_match=#{if_match || 'nil'}, " \
          "if_modified_since=#{if_modified_since || 'nil'}, " \
          "if_none_match=#{if_none_match || 'nil'}, " \
          "if_unmodified_since=#{if_unmodified_since || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "range=#{range || 'nil'}, " \
          "response_cache_control=#{response_cache_control || 'nil'}, " \
          "response_content_disposition=#{response_content_disposition || 'nil'}, " \
          "response_content_encoding=#{response_content_encoding || 'nil'}, " \
          "response_content_language=#{response_content_language || 'nil'}, " \
          "response_content_type=#{response_content_type || 'nil'}, " \
          "response_expires=#{response_expires || 'nil'}, " \
          "version_id=#{version_id || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          "request_payer=#{request_payer || 'nil'}, " \
          "part_number=#{part_number || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, " \
          "checksum_mode=#{checksum_mode || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name containing the object whose legal hold status you want to retrieve. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key name for the object whose legal hold status you want to retrieve.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the object whose legal hold status you want to retrieve.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetObjectLegalHoldInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        version_id
        request_payer
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ObjectLockLegalHold] :legal_hold
    # @!attribute legal_hold
    #   <p>The current legal hold status for the specified object.</p>
    #   @return [ObjectLockLegalHold]
    class GetObjectLegalHoldOutput
      include Hearth::Structure

      MEMBERS = %i[
        legal_hold
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket whose Object Lock configuration you want to retrieve.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetObjectLockConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ObjectLockConfiguration] :object_lock_configuration
    # @!attribute object_lock_configuration
    #   <p>The specified bucket's Object Lock configuration.</p>
    #   @return [ObjectLockConfiguration]
    class GetObjectLockConfigurationOutput
      include Hearth::Structure

      MEMBERS = %i[
        object_lock_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [IO] :body (0)
    #   @option params [Boolean] :delete_marker
    #   @option params [String] :accept_ranges
    #   @option params [String] :expiration
    #   @option params [String] :restore
    #   @option params [Time] :last_modified
    #   @option params [Integer] :content_length
    #   @option params [String] :e_tag
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    #   @option params [Integer] :missing_meta
    #   @option params [String] :version_id
    #   @option params [String] :cache_control
    #   @option params [String] :content_disposition
    #   @option params [String] :content_encoding
    #   @option params [String] :content_language
    #   @option params [String] :content_range
    #   @option params [String] :content_type
    #   @option params [Time] :expires
    #   @option params [String] :website_redirect_location
    #   @option params [String] :server_side_encryption
    #   @option params [Hash<String, String>] :metadata
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :ssekms_key_id
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :storage_class
    #   @option params [String] :request_charged
    #   @option params [String] :replication_status
    #   @option params [Integer] :parts_count
    #   @option params [Integer] :tag_count
    #   @option params [String] :object_lock_mode
    #   @option params [Time] :object_lock_retain_until_date
    #   @option params [String] :object_lock_legal_hold_status
    # @!attribute body
    #   <p>Object data.</p>
    #   @return [IO]
    # @!attribute delete_marker
    #   <p>Indicates whether the object retrieved was (true) or was not (false) a Delete Marker. If
    #            false, this response header does not appear in the response.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>If the current version of the object is a delete marker, Amazon S3 behaves as if the object was deleted and includes <code>x-amz-delete-marker: true</code> in the response.</p>
    #                  </li>
    #                  <li>
    #                     <p>If the specified version in the request is a delete marker, the response returns a <code>405 Method Not Allowed</code> error and the <code>Last-Modified: timestamp</code> response header.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Boolean]
    # @!attribute accept_ranges
    #   <p>Indicates that a range of bytes was specified in the request.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>If the object expiration is configured (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">
    #                  <code>PutBucketLifecycleConfiguration</code>
    #               </a>), the response includes
    #            this header. It includes the <code>expiry-date</code> and <code>rule-id</code> key-value
    #            pairs providing object expiration information. The value of the <code>rule-id</code> is
    #            URL-encoded.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute restore
    #   <p>Provides information about object restoration action and expiration time of the restored
    #            object copy.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets. Only the S3 Express One Zone storage class is supported by directory buckets to store objects.</p>
    #            </note>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Date and time when the object was last modified.</p>
    #            <p>
    #               <b>General purpose buckets </b> - When you specify a <code>versionId</code> of the object in your request, if the specified version in the request is a delete marker, the response returns a <code>405 Method Not Allowed</code> error and the <code>Last-Modified: timestamp</code> response header.</p>
    #   @return [Time]
    # @!attribute content_length
    #   <p>Size of the body in bytes.</p>
    #   @return [Integer]
    # @!attribute e_tag
    #   <p>An entity tag (ETag) is an opaque identifier assigned by a web server to a specific
    #            version of a resource found at a URL.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute missing_meta
    #   <p>This is set to the number of metadata entries not returned in the headers that are prefixed with <code>x-amz-meta-</code>. This can happen if you create metadata using an API like SOAP that supports more
    #            flexible metadata than the REST API. For example, using SOAP, you can create metadata whose
    #            values are not legal HTTP headers.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute version_id
    #   <p>Version ID of the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Indicates what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #   @return [String]
    # @!attribute content_range
    #   <p>The portion of the object returned in the response.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #   @return [Time]
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 (for example,
    #               <code>AES256</code>, <code>aws:kms</code>, <code>aws:kms:dsse</code>).</p>
    #            <note>
    #               <p>For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #            </note>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide the round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the Key Management Service (KMS) symmetric encryption customer managed key
    #            that was used for the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the object uses an S3 Bucket Key for server-side encryption
    #            with Key Management Service (KMS) keys (SSE-KMS).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute storage_class
    #   <p>Provides storage class information of the object. Amazon S3 returns this header for all
    #            objects except for S3 Standard storage class objects.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets </b> - Only the S3 Express One Zone storage class is supported by directory buckets to store objects.</p>
    #            </note>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute replication_status
    #   <p>Amazon S3 can return this if your request involves a bucket that is either a source or
    #            destination in a replication rule.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["COMPLETE", "PENDING", "FAILED", "REPLICA", "COMPLETED"]
    #   @return [String]
    # @!attribute parts_count
    #   <p>The count of parts this object has. This value is only returned if you specify
    #               <code>partNumber</code> in your request and the object was uploaded as a multipart
    #            upload.</p>
    #   @return [Integer]
    # @!attribute tag_count
    #   <p>The number of tags, if any, on the object, when you have the relevant permission to read object tags.</p>
    #            <p>You can use <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html">GetObjectTagging</a> to retrieve
    #            the tag set associated with an object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode that's currently in place for this object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when this object's Object Lock will expire.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute object_lock_legal_hold_status
    #   <p>Indicates whether this object has an active legal hold. This field is only returned if
    #            you have permission to view an object's legal hold status. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["ON", "OFF"]
    #   @return [String]
    class GetObjectOutput
      include Hearth::Structure

      MEMBERS = %i[
        body
        delete_marker
        accept_ranges
        expiration
        restore
        last_modified
        content_length
        e_tag
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
        missing_meta
        version_id
        cache_control
        content_disposition
        content_encoding
        content_language
        content_range
        content_type
        expires
        website_redirect_location
        server_side_encryption
        metadata
        sse_customer_algorithm
        sse_customer_key_md5
        ssekms_key_id
        bucket_key_enabled
        storage_class
        request_charged
        replication_status
        parts_count
        tag_count
        object_lock_mode
        object_lock_retain_until_date
        object_lock_legal_hold_status
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::GetObjectOutput ' \
          "body=#{body || 'nil'}, " \
          "delete_marker=#{delete_marker || 'nil'}, " \
          "accept_ranges=#{accept_ranges || 'nil'}, " \
          "expiration=#{expiration || 'nil'}, " \
          "restore=#{restore || 'nil'}, " \
          "last_modified=#{last_modified || 'nil'}, " \
          "content_length=#{content_length || 'nil'}, " \
          "e_tag=#{e_tag || 'nil'}, " \
          "checksum_crc32=#{checksum_crc32 || 'nil'}, " \
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, " \
          "checksum_sha1=#{checksum_sha1 || 'nil'}, " \
          "checksum_sha256=#{checksum_sha256 || 'nil'}, " \
          "missing_meta=#{missing_meta || 'nil'}, " \
          "version_id=#{version_id || 'nil'}, " \
          "cache_control=#{cache_control || 'nil'}, " \
          "content_disposition=#{content_disposition || 'nil'}, " \
          "content_encoding=#{content_encoding || 'nil'}, " \
          "content_language=#{content_language || 'nil'}, " \
          "content_range=#{content_range || 'nil'}, " \
          "content_type=#{content_type || 'nil'}, " \
          "expires=#{expires || 'nil'}, " \
          "website_redirect_location=#{website_redirect_location || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "metadata=#{metadata || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "storage_class=#{storage_class || 'nil'}, " \
          "request_charged=#{request_charged || 'nil'}, " \
          "replication_status=#{replication_status || 'nil'}, " \
          "parts_count=#{parts_count || 'nil'}, " \
          "tag_count=#{tag_count || 'nil'}, " \
          "object_lock_mode=#{object_lock_mode || 'nil'}, " \
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, " \
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}>"
      end

      private

      def _defaults
        {
          body: StringIO.new("")
        }
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name containing the object whose retention settings you want to retrieve. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key name for the object whose retention settings you want to retrieve.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID for the object whose retention settings you want to retrieve.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetObjectRetentionInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        version_id
        request_payer
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ObjectLockRetention] :retention
    # @!attribute retention
    #   <p>The container element for an object's retention settings.</p>
    #   @return [ObjectLockRetention]
    class GetObjectRetentionOutput
      include Hearth::Structure

      MEMBERS = %i[
        retention
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :request_payer
    # @!attribute bucket
    #   <p>The bucket name containing the object for which to get the tagging information. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which to get the tagging information.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The versionId of the object for which to get the tagging information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class GetObjectTaggingInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        version_id
        expected_bucket_owner
        request_payer
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :version_id
    #   @option params [Array<Tag>] :tag_set (0)
    # @!attribute version_id
    #   <p>The versionId of the object for which you got the tagging information.</p>
    #   @return [String]
    # @!attribute tag_set
    #   <p>Contains the tag set.</p>
    #   @return [Array<Tag>]
    class GetObjectTaggingOutput
      include Hearth::Structure

      MEMBERS = %i[
        version_id
        tag_set
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket containing the object for which to get the torrent files.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key for which to get the information.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetObjectTorrentInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        request_payer
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [IO] :body (0)
    #   @option params [String] :request_charged
    # @!attribute body
    #   <p>A Bencoded dictionary as defined by the BitTorrent specification</p>
    #   @return [IO]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class GetObjectTorrentOutput
      include Hearth::Structure

      MEMBERS = %i[
        body
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)

      private

      def _defaults
        {
          body: StringIO.new("")
        }
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want
    #            to retrieve. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetPublicAccessBlockInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [PublicAccessBlockConfiguration] :public_access_block_configuration
    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration currently in effect for this Amazon S3
    #            bucket.</p>
    #   @return [PublicAccessBlockConfiguration]
    class GetPublicAccessBlockOutput
      include Hearth::Structure

      MEMBERS = %i[
        public_access_block_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for S3 Glacier job parameters.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :tier (0)
    # @!attribute tier
    #   <p>Retrieval tier at which the restore will be processed.</p>
    #   Enum, one of: ["Standard", "Bulk", "Expedited"]
    #   @return [String]
    class GlacierJobParameters
      include Hearth::Structure

      MEMBERS = %i[
        tier
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for grant information.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Grantee] :grantee
    #   @option params [String] :permission
    # @!attribute grantee
    #   <p>The person being granted permissions.</p>
    #   @return [Grantee]
    # @!attribute permission
    #   <p>Specifies the permission given to the grantee.</p>
    #   Enum, one of: ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #   @return [String]
    class Grant
      include Hearth::Structure

      MEMBERS = %i[
        grantee
        permission
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for the person being granted permissions.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :display_name
    #   @option params [String] :email_address
    #   @option params [String] :id
    #   @option params [String] :uri
    #   @option params [String] :type (0)
    # @!attribute display_name
    #   <p>Screen name of the grantee.</p>
    #   @return [String]
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
    #               <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #            </note>
    #   @return [String]
    # @!attribute id
    #   <p>The canonical user ID of the grantee.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>URI of the grantee group.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of grantee</p>
    #   Enum, one of: ["CanonicalUser", "AmazonCustomerByEmail", "Group"]
    #   @return [String]
    class Grantee
      include Hearth::Structure

      MEMBERS = %i[
        display_name
        email_address
        id
        uri
        type
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Object Lambda access points</b> - When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class HeadBucketInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket_location_type
    #   @option params [String] :bucket_location_name
    #   @option params [String] :bucket_region
    #   @option params [Boolean] :access_point_alias
    # @!attribute bucket_location_type
    #   <p>The type of location where the bucket is created.</p>
    #            <note>
    #               <p>This functionality is only supported by directory buckets.</p>
    #            </note>
    #   Enum, one of: ["AvailabilityZone"]
    #   @return [String]
    # @!attribute bucket_location_name
    #   <p>The name of the location where the bucket will be created.</p>
    #            <p>For directory buckets, the AZ ID of the Availability Zone where the bucket is created. An example AZ ID value is <code>usw2-az2</code>.</p>
    #            <note>
    #               <p>This functionality is only supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_region
    #   <p>The Region that the bucket is located.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute access_point_alias
    #   <p>Indicates whether the bucket name used in the request is an access point alias.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    class HeadBucketOutput
      include Hearth::Structure

      MEMBERS = %i[
        bucket_location_type
        bucket_location_name
        bucket_region
        access_point_alias
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :if_match
    #   @option params [Time] :if_modified_since
    #   @option params [String] :if_none_match
    #   @option params [Time] :if_unmodified_since
    #   @option params [String] :key
    #   @option params [String] :range
    #   @option params [String] :version_id
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :request_payer
    #   @option params [Integer] :part_number
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :checksum_mode
    # @!attribute bucket
    #   <p>The name of the bucket that contains the object.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>Return the object only if its entity tag (ETag) is the same as the one specified;
    #            otherwise, return a 412 (precondition failed) error.</p>
    #            <p>If both of the <code>If-Match</code> and
    #            <code>If-Unmodified-Since</code> headers are present in the request as
    #            follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>If-Match</code> condition evaluates to <code>true</code>, and;</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>If-Unmodified-Since</code> condition evaluates to
    #                  <code>false</code>;</p>
    #               </li>
    #            </ul>
    #            <p>Then Amazon S3 returns <code>200 OK</code> and the data requested.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute if_modified_since
    #   <p>Return the object only if it has been modified since the specified time; otherwise,
    #            return a 304 (not modified) error.</p>
    #            <p>If both of the <code>If-None-Match</code> and
    #            <code>If-Modified-Since</code> headers are present in the request as
    #            follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>If-None-Match</code> condition evaluates to <code>false</code>,
    #                  and;</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>If-Modified-Since</code> condition evaluates to
    #                  <code>true</code>;</p>
    #               </li>
    #            </ul>
    #            <p>Then Amazon S3 returns the <code>304 Not Modified</code> response code.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [Time]
    # @!attribute if_none_match
    #   <p>Return the object only if its entity tag (ETag) is different from the one specified;
    #            otherwise, return a 304 (not modified) error.</p>
    #            <p>If both of the <code>If-None-Match</code> and
    #            <code>If-Modified-Since</code> headers are present in the request as
    #            follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>If-None-Match</code> condition evaluates to <code>false</code>,
    #                  and;</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>If-Modified-Since</code> condition evaluates to
    #                  <code>true</code>;</p>
    #               </li>
    #            </ul>
    #            <p>Then Amazon S3 returns the <code>304 Not Modified</code> response code.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute if_unmodified_since
    #   <p>Return the object only if it has not been modified since the specified time; otherwise,
    #            return a 412 (precondition failed) error.</p>
    #            <p>If both of the <code>If-Match</code> and
    #            <code>If-Unmodified-Since</code> headers are present in the request as
    #            follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>If-Match</code> condition evaluates to <code>true</code>, and;</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>If-Unmodified-Since</code> condition evaluates to
    #                  <code>false</code>;</p>
    #               </li>
    #            </ul>
    #            <p>Then Amazon S3 returns <code>200 OK</code> and the data requested.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [Time]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute range
    #   <p>HeadObject returns only the metadata for an object. If the Range is satisfiable, only
    #            the <code>ContentLength</code> is affected in the response. If the Range is not
    #            satisfiable, S3 returns a <code>416 - Requested Range Not Satisfiable</code> error.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID used to reference a specific version of the object.</p>
    #            <note>
    #               <p>For directory buckets in this API operation, only the <code>null</code> value of the version ID is supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example,
    #            AES256).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute part_number
    #   <p>Part number of the object being read. This is a positive integer between 1 and 10,000.
    #            Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about
    #            the size of the part and the number of parts in this object.</p>
    #   @return [Integer]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute checksum_mode
    #   <p>To retrieve the checksum, this parameter must be enabled.</p>
    #            <p>In addition, if you enable <code>ChecksumMode</code> and the object is encrypted with
    #            Amazon Web Services Key Management Service (Amazon Web Services KMS), you must have permission to use the
    #               <code>kms:Decrypt</code> action for the request to succeed.</p>
    #   Enum, one of: ["ENABLED"]
    #   @return [String]
    class HeadObjectInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        if_match
        if_modified_since
        if_none_match
        if_unmodified_since
        key
        range
        version_id
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
        request_payer
        part_number
        expected_bucket_owner
        checksum_mode
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::HeadObjectInput ' \
          "bucket=#{bucket || 'nil'}, " \
          "if_match=#{if_match || 'nil'}, " \
          "if_modified_since=#{if_modified_since || 'nil'}, " \
          "if_none_match=#{if_none_match || 'nil'}, " \
          "if_unmodified_since=#{if_unmodified_since || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "range=#{range || 'nil'}, " \
          "version_id=#{version_id || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          "request_payer=#{request_payer || 'nil'}, " \
          "part_number=#{part_number || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, " \
          "checksum_mode=#{checksum_mode || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :delete_marker
    #   @option params [String] :accept_ranges
    #   @option params [String] :expiration
    #   @option params [String] :restore
    #   @option params [String] :archive_status
    #   @option params [Time] :last_modified
    #   @option params [Integer] :content_length
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    #   @option params [String] :e_tag
    #   @option params [Integer] :missing_meta
    #   @option params [String] :version_id
    #   @option params [String] :cache_control
    #   @option params [String] :content_disposition
    #   @option params [String] :content_encoding
    #   @option params [String] :content_language
    #   @option params [String] :content_type
    #   @option params [Time] :expires
    #   @option params [String] :website_redirect_location
    #   @option params [String] :server_side_encryption
    #   @option params [Hash<String, String>] :metadata
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :ssekms_key_id
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :storage_class
    #   @option params [String] :request_charged
    #   @option params [String] :replication_status
    #   @option params [Integer] :parts_count
    #   @option params [String] :object_lock_mode
    #   @option params [Time] :object_lock_retain_until_date
    #   @option params [String] :object_lock_legal_hold_status
    # @!attribute delete_marker
    #   <p>Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If
    #            false, this response header does not appear in the response.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute accept_ranges
    #   <p>Indicates that a range of bytes was specified.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>If the object expiration is configured (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">
    #                  <code>PutBucketLifecycleConfiguration</code>
    #               </a>), the response includes
    #            this header. It includes the <code>expiry-date</code> and <code>rule-id</code> key-value
    #            pairs providing object expiration information. The value of the <code>rule-id</code> is
    #            URL-encoded.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
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
    #            <p>For more information about archiving objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-transition-general-considerations">Transitioning Objects: General Considerations</a>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets. Only the S3 Express One Zone storage class is supported by directory buckets to store objects.</p>
    #            </note>
    #   @return [String]
    # @!attribute archive_status
    #   <p>The archive state of the head object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    #   @return [String]
    # @!attribute last_modified
    #   <p>Date and time when the object was last modified.</p>
    #   @return [Time]
    # @!attribute content_length
    #   <p>Size of the body in bytes.</p>
    #   @return [Integer]
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>An entity tag (ETag) is an opaque identifier assigned by a web server to a specific
    #            version of a resource found at a URL.</p>
    #   @return [String]
    # @!attribute missing_meta
    #   <p>This is set to the number of metadata entries not returned in <code>x-amz-meta</code>
    #            headers. This can happen if you create metadata using an API like SOAP that supports more
    #            flexible metadata than the REST API. For example, using SOAP, you can create metadata whose
    #            values are not legal HTTP headers.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute version_id
    #   <p>Version ID of the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Indicates what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #   @return [Time]
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 (for example,
    #               <code>AES256</code>, <code>aws:kms</code>, <code>aws:kms:dsse</code>).</p>
    #            <note>
    #               <p>For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #            </note>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide the round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the Key Management Service (KMS) symmetric encryption customer managed key
    #            that was used for the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the object uses an S3 Bucket Key for server-side encryption
    #            with Key Management Service (KMS) keys (SSE-KMS).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute storage_class
    #   <p>Provides storage class information of the object. Amazon S3 returns this header for all
    #            objects except for S3 Standard storage class objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets </b> - Only the S3 Express One Zone storage class is supported by directory buckets to store objects.</p>
    #            </note>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
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
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["COMPLETE", "PENDING", "FAILED", "REPLICA", "COMPLETED"]
    #   @return [String]
    # @!attribute parts_count
    #   <p>The count of parts this object has. This value is only returned if you specify
    #               <code>partNumber</code> in your request and the object was uploaded as a multipart
    #            upload.</p>
    #   @return [Integer]
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode, if any, that's in effect for this object. This header is only
    #            returned if the requester has the <code>s3:GetObjectRetention</code> permission. For more
    #            information about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Object Lock</a>. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when the Object Lock retention period expires. This header is only
    #            returned if the requester has the <code>s3:GetObjectRetention</code> permission.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether a legal hold is in effect for this object. This header is only
    #            returned if the requester has the <code>s3:GetObjectLegalHold</code> permission. This
    #            header is not returned if the specified version of this object has never had a legal hold
    #            applied. For more information about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Object Lock</a>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["ON", "OFF"]
    #   @return [String]
    class HeadObjectOutput
      include Hearth::Structure

      MEMBERS = %i[
        delete_marker
        accept_ranges
        expiration
        restore
        archive_status
        last_modified
        content_length
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
        e_tag
        missing_meta
        version_id
        cache_control
        content_disposition
        content_encoding
        content_language
        content_type
        expires
        website_redirect_location
        server_side_encryption
        metadata
        sse_customer_algorithm
        sse_customer_key_md5
        ssekms_key_id
        bucket_key_enabled
        storage_class
        request_charged
        replication_status
        parts_count
        object_lock_mode
        object_lock_retain_until_date
        object_lock_legal_hold_status
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::HeadObjectOutput ' \
          "delete_marker=#{delete_marker || 'nil'}, " \
          "accept_ranges=#{accept_ranges || 'nil'}, " \
          "expiration=#{expiration || 'nil'}, " \
          "restore=#{restore || 'nil'}, " \
          "archive_status=#{archive_status || 'nil'}, " \
          "last_modified=#{last_modified || 'nil'}, " \
          "content_length=#{content_length || 'nil'}, " \
          "checksum_crc32=#{checksum_crc32 || 'nil'}, " \
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, " \
          "checksum_sha1=#{checksum_sha1 || 'nil'}, " \
          "checksum_sha256=#{checksum_sha256 || 'nil'}, " \
          "e_tag=#{e_tag || 'nil'}, " \
          "missing_meta=#{missing_meta || 'nil'}, " \
          "version_id=#{version_id || 'nil'}, " \
          "cache_control=#{cache_control || 'nil'}, " \
          "content_disposition=#{content_disposition || 'nil'}, " \
          "content_encoding=#{content_encoding || 'nil'}, " \
          "content_language=#{content_language || 'nil'}, " \
          "content_type=#{content_type || 'nil'}, " \
          "expires=#{expires || 'nil'}, " \
          "website_redirect_location=#{website_redirect_location || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "metadata=#{metadata || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "storage_class=#{storage_class || 'nil'}, " \
          "request_charged=#{request_charged || 'nil'}, " \
          "replication_status=#{replication_status || 'nil'}, " \
          "parts_count=#{parts_count || 'nil'}, " \
          "object_lock_mode=#{object_lock_mode || 'nil'}, " \
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, " \
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}>"
      end
    end

    # <p>Container for the <code>Suffix</code> element.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :suffix (0)
    # @!attribute suffix
    #   <p>A suffix that is appended to a request that is for a directory on the website endpoint
    #            (for example,if the suffix is index.html and you make a request to samplebucket/images/ the
    #            data that is returned will be for the object with the key name images/index.html) The
    #            suffix must not be empty and must not include a slash character.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    class IndexDocument
      include Hearth::Structure

      MEMBERS = %i[
        suffix
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container element that identifies who initiated the multipart upload. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id
    #   @option params [String] :display_name
    # @!attribute id
    #   <p>If the principal is an Amazon Web Services account, it provides the Canonical User ID. If the
    #            principal is an IAM User, it provides a user ARN value.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - If the principal is an Amazon Web Services account, it provides the Amazon Web Services account ID. If the
    #            principal is an IAM User, it provides a user ARN value.</p>
    #            </note>
    #   @return [String]
    # @!attribute display_name
    #   <p>Name of the Principal.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class Initiator
      include Hearth::Structure

      MEMBERS = %i[
        id
        display_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Describes the serialization format of the object.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [CSVInput] :csv
    #   @option params [String] :compression_type
    #   @option params [JSONInput] :json
    #   @option params [ParquetInput] :parquet
    # @!attribute csv
    #   <p>Describes the serialization of a CSV-encoded object.</p>
    #   @return [CSVInput]
    # @!attribute compression_type
    #   <p>Specifies object's compression format. Valid values: NONE, GZIP, BZIP2. Default Value:
    #            NONE.</p>
    #   Enum, one of: ["NONE", "GZIP", "BZIP2"]
    #   @return [String]
    # @!attribute json
    #   <p>Specifies JSON as object's input serialization format.</p>
    #   @return [JSONInput]
    # @!attribute parquet
    #   <p>Specifies Parquet as object's input serialization format.</p>
    #   @return [ParquetInput]
    class InputSerialization
      include Hearth::Structure

      MEMBERS = %i[
        csv
        compression_type
        json
        parquet
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for IntelligentTieringAccessTier
    module IntelligentTieringAccessTier
      ARCHIVE_ACCESS = "ARCHIVE_ACCESS"

      DEEP_ARCHIVE_ACCESS = "DEEP_ARCHIVE_ACCESS"
    end

    # <p>A container for specifying S3 Intelligent-Tiering filters. The filters determine the
    #          subset of objects to which the rule applies.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :prefix
    #   @option params [Array<Tag>] :tags
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects to which the
    #            configuration applies.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>All of these tags must exist in the object's tag set in order for the configuration to
    #            apply.</p>
    #   @return [Array<Tag>]
    class IntelligentTieringAndOperator
      include Hearth::Structure

      MEMBERS = %i[
        prefix
        tags
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the S3 Intelligent-Tiering configuration for an Amazon S3 bucket.</p>
    #          <p>For information about the S3 Intelligent-Tiering storage class, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access">Storage class
    #             for automatically optimizing frequently and infrequently accessed
    #          objects</a>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id (0)
    #   @option params [IntelligentTieringFilter] :filter
    #   @option params [String] :status (0)
    #   @option params [Array<Tiering>] :tierings (0)
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Specifies a bucket filter. The configuration only includes objects that meet the
    #            filter's criteria.</p>
    #   @return [IntelligentTieringFilter]
    # @!attribute status
    #   <p>Specifies the status of the configuration.</p>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    # @!attribute tierings
    #   <p>Specifies the S3 Intelligent-Tiering storage class tier of the configuration.</p>
    #   @return [Array<Tiering>]
    class IntelligentTieringConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        id
        filter
        status
        tierings
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The <code>Filter</code> is used to identify objects that the S3 Intelligent-Tiering
    #          configuration applies to.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :prefix
    #   @option params [Tag] :tag
    #   @option params [IntelligentTieringAndOperator] :and
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects to which the rule
    #            applies.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag
    #   <p>A container of a key value name pair.</p>
    #   @return [Tag]
    # @!attribute and
    #   <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
    #            The operator must have at least two predicates, and an object must match all of the
    #            predicates in order for the filter to apply.</p>
    #   @return [IntelligentTieringAndOperator]
    class IntelligentTieringFilter
      include Hearth::Structure

      MEMBERS = %i[
        prefix
        tag
        and
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for IntelligentTieringStatus
    module IntelligentTieringStatus
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # <p>Object is archived and inaccessible until restored.</p>
    #          <p>If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval storage class, the
    #          S3 Glacier Deep Archive storage class, the S3 Intelligent-Tiering Archive Access tier, or the
    #          S3 Intelligent-Tiering Deep Archive Access tier, before you can retrieve the object you must first restore a
    #          copy using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html">RestoreObject</a>. Otherwise, this operation returns an
    #          <code>InvalidObjectState</code> error. For information about restoring archived objects,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html">Restoring
    #             Archived Objects</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :storage_class
    #   @option params [String] :access_tier
    # @!attribute storage_class
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute access_tier
    #   Enum, one of: ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    #   @return [String]
    class InvalidObjectState
      include Hearth::Structure

      MEMBERS = %i[
        storage_class
        access_tier
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the inventory configuration for an Amazon S3 bucket. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html">GET Bucket inventory</a> in the <i>Amazon S3 API Reference</i>. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [InventoryDestination] :destination (0)
    #   @option params [Boolean] :is_enabled (false)
    #   @option params [InventoryFilter] :filter
    #   @option params [String] :id (0)
    #   @option params [String] :included_object_versions (0)
    #   @option params [Array<String>] :optional_fields
    #   @option params [InventorySchedule] :schedule (0)
    # @!attribute destination
    #   <p>Contains information about where to publish the inventory results.</p>
    #   @return [InventoryDestination]
    # @!attribute is_enabled
    #   <p>Specifies whether the inventory is enabled or disabled. If set to <code>True</code>, an
    #            inventory list is generated. If set to <code>False</code>, no inventory list is
    #            generated.</p>
    #   @return [Boolean]
    # @!attribute filter
    #   <p>Specifies an inventory filter. The inventory only includes objects that meet the
    #            filter's criteria.</p>
    #   @return [InventoryFilter]
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #   @return [String]
    # @!attribute included_object_versions
    #   <p>Object versions to include in the inventory list. If set to <code>All</code>, the list
    #            includes all the object versions, which adds the version-related fields
    #               <code>VersionId</code>, <code>IsLatest</code>, and <code>DeleteMarker</code> to the
    #            list. If set to <code>Current</code>, the list does not contain these version-related
    #            fields.</p>
    #   Enum, one of: ["All", "Current"]
    #   @return [String]
    # @!attribute optional_fields
    #   <p>Contains the optional fields that are included in the inventory results.</p>
    #   @return [Array<String>]
    # @!attribute schedule
    #   <p>Specifies the schedule for generating inventory results.</p>
    #   @return [InventorySchedule]
    class InventoryConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        destination
        is_enabled
        filter
        id
        included_object_versions
        optional_fields
        schedule
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the inventory configuration for an Amazon S3 bucket.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [InventoryS3BucketDestination] :s3_bucket_destination (0)
    # @!attribute s3_bucket_destination
    #   <p>Contains the bucket name, file format, bucket owner (optional), and prefix (optional)
    #            where inventory results are published.</p>
    #   @return [InventoryS3BucketDestination]
    class InventoryDestination
      include Hearth::Structure

      MEMBERS = %i[
        s3_bucket_destination
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Contains the type of server-side encryption used to encrypt the inventory
    #          results.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [SSES3] :sses3
    #   @option params [SSEKMS] :ssekms
    # @!attribute sses3
    #   <p>Specifies the use of SSE-S3 to encrypt delivered inventory reports.</p>
    #   @return [SSES3]
    # @!attribute ssekms
    #   <p>Specifies the use of SSE-KMS to encrypt delivered inventory reports.</p>
    #   @return [SSEKMS]
    class InventoryEncryption
      include Hearth::Structure

      MEMBERS = %i[
        sses3
        ssekms
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies an inventory filter. The inventory only includes objects that meet the
    #          filter's criteria.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :prefix (0)
    # @!attribute prefix
    #   <p>The prefix that an object must have to be included in the inventory results.</p>
    #   @return [String]
    class InventoryFilter
      include Hearth::Structure

      MEMBERS = %i[
        prefix
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for InventoryFormat
    module InventoryFormat
      CSV = "CSV"

      ORC = "ORC"

      PARQUET = "Parquet"
    end

    # Enum constants for InventoryFrequency
    module InventoryFrequency
      DAILY = "Daily"

      WEEKLY = "Weekly"
    end

    # Enum constants for InventoryIncludedObjectVersions
    module InventoryIncludedObjectVersions
      ALL = "All"

      CURRENT = "Current"
    end

    # Enum constants for InventoryOptionalField
    module InventoryOptionalField
      SIZE = "Size"

      LAST_MODIFIED_DATE = "LastModifiedDate"

      STORAGE_CLASS = "StorageClass"

      E_TAG = "ETag"

      IS_MULTIPART_UPLOADED = "IsMultipartUploaded"

      REPLICATION_STATUS = "ReplicationStatus"

      ENCRYPTION_STATUS = "EncryptionStatus"

      OBJECT_LOCK_RETAIN_UNTIL_DATE = "ObjectLockRetainUntilDate"

      OBJECT_LOCK_MODE = "ObjectLockMode"

      OBJECT_LOCK_LEGAL_HOLD_STATUS = "ObjectLockLegalHoldStatus"

      INTELLIGENT_TIERING_ACCESS_TIER = "IntelligentTieringAccessTier"

      BUCKET_KEY_STATUS = "BucketKeyStatus"

      CHECKSUM_ALGORITHM = "ChecksumAlgorithm"

      OBJECT_ACCESS_CONTROL_LIST = "ObjectAccessControlList"

      OBJECT_OWNER = "ObjectOwner"
    end

    # <p>Contains the bucket name, file format, bucket owner (optional), and prefix (optional)
    #          where inventory results are published.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :account_id
    #   @option params [String] :bucket (0)
    #   @option params [String] :format (0)
    #   @option params [String] :prefix
    #   @option params [InventoryEncryption] :encryption
    # @!attribute account_id
    #   <p>The account ID that owns the destination S3 bucket. If no account ID is provided, the
    #            owner is not validated before exporting data. </p>
    #            <note>
    #               <p> Although this value is optional, we strongly recommend that you set it to help
    #               prevent problems if the destination bucket ownership changes. </p>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket where inventory results will be
    #            published.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the output format of the inventory results.</p>
    #   Enum, one of: ["CSV", "ORC", "Parquet"]
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix that is prepended to all inventory results.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>Contains the type of server-side encryption used to encrypt the inventory
    #            results.</p>
    #   @return [InventoryEncryption]
    class InventoryS3BucketDestination
      include Hearth::Structure

      MEMBERS = %i[
        account_id
        bucket
        format
        prefix
        encryption
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the schedule for generating inventory results.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :frequency (0)
    # @!attribute frequency
    #   <p>Specifies how frequently inventory results are produced.</p>
    #   Enum, one of: ["Daily", "Weekly"]
    #   @return [String]
    class InventorySchedule
      include Hearth::Structure

      MEMBERS = %i[
        frequency
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies JSON as object's input serialization format.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :type
    # @!attribute type
    #   <p>The type of JSON. Valid values: Document, Lines.</p>
    #   Enum, one of: ["DOCUMENT", "LINES"]
    #   @return [String]
    class JSONInput
      include Hearth::Structure

      MEMBERS = %i[
        type
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies JSON as request's output serialization format.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :record_delimiter
    # @!attribute record_delimiter
    #   <p>The value used to separate individual records in the output. If no value is specified,
    #            Amazon S3 uses a newline character ('\n').</p>
    #   @return [String]
    class JSONOutput
      include Hearth::Structure

      MEMBERS = %i[
        record_delimiter
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for JSONType
    module JSONType
      DOCUMENT = "DOCUMENT"

      LINES = "LINES"
    end

    # <p>A container for specifying the configuration for Lambda notifications.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id
    #   @option params [String] :lambda_function_arn (0)
    #   @option params [Array<String>] :events (0)
    #   @option params [NotificationConfigurationFilter] :filter
    # @!attribute id
    #   <p>An optional unique identifier for configurations in a notification configuration. If you
    #            don't provide one, Amazon S3 will assign an ID.</p>
    #   @return [String]
    # @!attribute lambda_function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function that Amazon S3 invokes when the
    #            specified event type occurs.</p>
    #   @return [String]
    # @!attribute events
    #   <p>The Amazon S3 bucket event for which to invoke the Lambda function. For more information,
    #            see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Supported
    #               Event Types</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute filter
    #   <p>Specifies object key name filtering rules. For information about key name filtering, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html">Configuring event
    #               notifications using object key name filtering</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [NotificationConfigurationFilter]
    class LambdaFunctionConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        id
        lambda_function_arn
        events
        filter
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for the expiration for the lifecycle of the object.</p>
    #          <p>For more information see, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html">Managing your storage
    #             lifecycle</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Time] :date
    #   @option params [Integer] :days
    #   @option params [Boolean] :expired_object_delete_marker
    # @!attribute date
    #   <p>Indicates at what date the object is to be moved or deleted. The date value must conform
    #            to the ISO 8601 format. The time is always midnight UTC.</p>
    #   @return [Time]
    # @!attribute days
    #   <p>Indicates the lifetime, in days, of the objects that are subject to the rule. The value
    #            must be a non-zero positive integer.</p>
    #   @return [Integer]
    # @!attribute expired_object_delete_marker
    #   <p>Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set
    #            to true, the delete marker will be expired; if set to false the policy takes no action.
    #            This cannot be specified with Days or Date in a Lifecycle Expiration Policy.</p>
    #   @return [Boolean]
    class LifecycleExpiration
      include Hearth::Structure

      MEMBERS = %i[
        date
        days
        expired_object_delete_marker
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A lifecycle rule for individual objects in an Amazon S3 bucket.</p>
    #          <p>For more information see, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html">Managing your storage
    #             lifecycle</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [LifecycleExpiration] :expiration
    #   @option params [String] :id
    #   @option params [String] :prefix
    #   @option params [LifecycleRuleFilter] :filter
    #   @option params [String] :status (0)
    #   @option params [Array<Transition>] :transitions
    #   @option params [Array<NoncurrentVersionTransition>] :noncurrent_version_transitions
    #   @option params [NoncurrentVersionExpiration] :noncurrent_version_expiration
    #   @option params [AbortIncompleteMultipartUpload] :abort_incomplete_multipart_upload
    # @!attribute expiration
    #   <p>Specifies the expiration for the lifecycle of the object in the form of date, days and,
    #            whether the object has a delete marker.</p>
    #   @return [LifecycleExpiration]
    # @!attribute id
    #   <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Prefix identifying one or more objects to which the rule applies. This is
    #            no longer used; use <code>Filter</code> instead.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @deprecated
    #   @return [String]
    # @!attribute filter
    #   <p>The <code>Filter</code> is used to identify objects that a Lifecycle Rule applies to. A
    #               <code>Filter</code> must have exactly one of <code>Prefix</code>, <code>Tag</code>, or
    #               <code>And</code> specified. <code>Filter</code> is required if the
    #               <code>LifecycleRule</code> does not contain a <code>Prefix</code> element.</p>
    #   @return [LifecycleRuleFilter]
    # @!attribute status
    #   <p>If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not
    #            currently being applied.</p>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    # @!attribute transitions
    #   <p>Specifies when an Amazon S3 object transitions to a specified storage class.</p>
    #   @return [Array<Transition>]
    # @!attribute noncurrent_version_transitions
    #   <p> Specifies the transition rule for the lifecycle rule that describes when noncurrent
    #            objects transition to a specific storage class. If your bucket is versioning-enabled (or
    #            versioning is suspended), you can set this action to request that Amazon S3 transition
    #            noncurrent object versions to a specific storage class at a set period in the object's
    #            lifetime. </p>
    #   @return [Array<NoncurrentVersionTransition>]
    # @!attribute noncurrent_version_expiration
    #   <p>Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently
    #            deletes the noncurrent object versions. You set this lifecycle configuration action on a
    #            bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent
    #            object versions at a specific period in the object's lifetime.</p>
    #   @return [NoncurrentVersionExpiration]
    # @!attribute abort_incomplete_multipart_upload
    #   <p>Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will
    #            wait before permanently removing all parts of the upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config">
    #               Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration</a> in
    #            the <i>Amazon S3 User Guide</i>.</p>
    #   @return [AbortIncompleteMultipartUpload]
    class LifecycleRule
      include Hearth::Structure

      MEMBERS = %i[
        expiration
        id
        prefix
        filter
        status
        transitions
        noncurrent_version_transitions
        noncurrent_version_expiration
        abort_incomplete_multipart_upload
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>This is used in a Lifecycle Rule Filter to apply a logical AND to two or more
    #          predicates. The Lifecycle Rule will apply to any object matching all of the predicates
    #          configured inside the And operator.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :prefix
    #   @option params [Array<Tag>] :tags
    #   @option params [Integer] :object_size_greater_than
    #   @option params [Integer] :object_size_less_than
    # @!attribute prefix
    #   <p>Prefix identifying one or more objects to which the rule applies.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>All of these tags must exist in the object's tag set in order for the rule to
    #            apply.</p>
    #   @return [Array<Tag>]
    # @!attribute object_size_greater_than
    #   <p>Minimum object size to which the rule applies.</p>
    #   @return [Integer]
    # @!attribute object_size_less_than
    #   <p>Maximum object size to which the rule applies.</p>
    #   @return [Integer]
    class LifecycleRuleAndOperator
      include Hearth::Structure

      MEMBERS = %i[
        prefix
        tags
        object_size_greater_than
        object_size_less_than
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The <code>Filter</code> is used to identify objects that a Lifecycle Rule applies to. A
    #             <code>Filter</code> must have exactly one of <code>Prefix</code>, <code>Tag</code>, or
    #             <code>And</code> specified.</p>
    class LifecycleRuleFilter < Hearth::Union
      # <p>Prefix identifying one or more objects to which the rule applies.</p>
      #          <important>
      #             <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
      #          XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
      #             XML related object key constraints</a>.</p>
      #          </important>
      class Prefix < LifecycleRuleFilter
        def to_h
          { prefix: super(__getobj__) }
        end
      end

      # <p>This tag must exist in the object's tag set in order for the rule to apply.</p>
      class Tag < LifecycleRuleFilter
        def to_h
          { tag: super(__getobj__) }
        end
      end

      # <p>Minimum object size to which the rule applies.</p>
      class ObjectSizeGreaterThan < LifecycleRuleFilter
        def to_h
          { object_size_greater_than: super(__getobj__) }
        end
      end

      # <p>Maximum object size to which the rule applies.</p>
      class ObjectSizeLessThan < LifecycleRuleFilter
        def to_h
          { object_size_less_than: super(__getobj__) }
        end
      end

      # <p>This is used in a Lifecycle Rule Filter to apply a logical AND to two or more
      #          predicates. The Lifecycle Rule will apply to any object matching all of the predicates
      #          configured inside the And operator.</p>
      class And < LifecycleRuleFilter
        def to_h
          { and: super(__getobj__) }
        end
      end

      class Unknown < LifecycleRuleFilter
        def initialize(name:, value:)
          super({name: name, value: value})
        end

        def to_h
          { unknown: super(__getobj__) }
        end
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :continuation_token
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket from which analytics configurations are retrieved.</p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>The <code>ContinuationToken</code> that represents a placeholder from where this request
    #            should begin.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class ListBucketAnalyticsConfigurationsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        continuation_token
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :is_truncated
    #   @option params [String] :continuation_token
    #   @option params [String] :next_continuation_token
    #   @option params [Array<AnalyticsConfiguration>] :analytics_configuration_list
    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of analytics configurations is complete. A value of
    #            true indicates that the list is not complete and the NextContinuationToken will be provided
    #            for a subsequent request.</p>
    #   @return [Boolean]
    # @!attribute continuation_token
    #   <p>The marker that is used as a starting point for this analytics configuration list
    #            response. This value is present if it was sent in the request.</p>
    #   @return [String]
    # @!attribute next_continuation_token
    #   <p>
    #               <code>NextContinuationToken</code> is sent when <code>isTruncated</code> is true, which
    #            indicates that there are more analytics configurations to list. The next request must
    #            include this <code>NextContinuationToken</code>. The token is obfuscated and is not a
    #            usable value.</p>
    #   @return [String]
    # @!attribute analytics_configuration_list
    #   <p>The list of analytics configurations for a bucket.</p>
    #   @return [Array<AnalyticsConfiguration>]
    class ListBucketAnalyticsConfigurationsOutput
      include Hearth::Structure

      MEMBERS = %i[
        is_truncated
        continuation_token
        next_continuation_token
        analytics_configuration_list
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :continuation_token
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>The <code>ContinuationToken</code> that represents a placeholder from where this request
    #            should begin.</p>
    #   @return [String]
    class ListBucketIntelligentTieringConfigurationsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        continuation_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :is_truncated
    #   @option params [String] :continuation_token
    #   @option params [String] :next_continuation_token
    #   @option params [Array<IntelligentTieringConfiguration>] :intelligent_tiering_configuration_list
    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of analytics configurations is complete. A value of
    #               <code>true</code> indicates that the list is not complete and the
    #               <code>NextContinuationToken</code> will be provided for a subsequent request.</p>
    #   @return [Boolean]
    # @!attribute continuation_token
    #   <p>The <code>ContinuationToken</code> that represents a placeholder from where this request
    #            should begin.</p>
    #   @return [String]
    # @!attribute next_continuation_token
    #   <p>The marker used to continue this inventory configuration listing. Use the
    #               <code>NextContinuationToken</code> from this response to continue the listing in a
    #            subsequent request. The continuation token is an opaque value that Amazon S3 understands.</p>
    #   @return [String]
    # @!attribute intelligent_tiering_configuration_list
    #   <p>The list of S3 Intelligent-Tiering configurations for a bucket.</p>
    #   @return [Array<IntelligentTieringConfiguration>]
    class ListBucketIntelligentTieringConfigurationsOutput
      include Hearth::Structure

      MEMBERS = %i[
        is_truncated
        continuation_token
        next_continuation_token
        intelligent_tiering_configuration_list
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :continuation_token
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket containing the inventory configurations to retrieve.</p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>The marker used to continue an inventory configuration listing that has been truncated.
    #            Use the <code>NextContinuationToken</code> from a previously truncated list response to
    #            continue the listing. The continuation token is an opaque value that Amazon S3
    #            understands.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class ListBucketInventoryConfigurationsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        continuation_token
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :continuation_token
    #   @option params [Array<InventoryConfiguration>] :inventory_configuration_list
    #   @option params [Boolean] :is_truncated
    #   @option params [String] :next_continuation_token
    # @!attribute continuation_token
    #   <p>If sent in the request, the marker that is used as a starting point for this inventory
    #            configuration list response.</p>
    #   @return [String]
    # @!attribute inventory_configuration_list
    #   <p>The list of inventory configurations for a bucket.</p>
    #   @return [Array<InventoryConfiguration>]
    # @!attribute is_truncated
    #   <p>Tells whether the returned list of inventory configurations is complete. A value of true
    #            indicates that the list is not complete and the NextContinuationToken is provided for a
    #            subsequent request.</p>
    #   @return [Boolean]
    # @!attribute next_continuation_token
    #   <p>The marker used to continue this inventory configuration listing. Use the
    #               <code>NextContinuationToken</code> from this response to continue the listing in a
    #            subsequent request. The continuation token is an opaque value that Amazon S3 understands.</p>
    #   @return [String]
    class ListBucketInventoryConfigurationsOutput
      include Hearth::Structure

      MEMBERS = %i[
        continuation_token
        inventory_configuration_list
        is_truncated
        next_continuation_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :continuation_token
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket containing the metrics configurations to retrieve.</p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>The marker that is used to continue a metrics configuration listing that has been
    #            truncated. Use the <code>NextContinuationToken</code> from a previously truncated list
    #            response to continue the listing. The continuation token is an opaque value that Amazon S3
    #            understands.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class ListBucketMetricsConfigurationsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        continuation_token
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :is_truncated
    #   @option params [String] :continuation_token
    #   @option params [String] :next_continuation_token
    #   @option params [Array<MetricsConfiguration>] :metrics_configuration_list
    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of metrics configurations is complete. A value of
    #            true indicates that the list is not complete and the NextContinuationToken will be provided
    #            for a subsequent request.</p>
    #   @return [Boolean]
    # @!attribute continuation_token
    #   <p>The marker that is used as a starting point for this metrics configuration list
    #            response. This value is present if it was sent in the request.</p>
    #   @return [String]
    # @!attribute next_continuation_token
    #   <p>The marker used to continue a metrics configuration listing that has been truncated. Use
    #            the <code>NextContinuationToken</code> from a previously truncated list response to
    #            continue the listing. The continuation token is an opaque value that Amazon S3
    #            understands.</p>
    #   @return [String]
    # @!attribute metrics_configuration_list
    #   <p>The list of metrics configurations for a bucket.</p>
    #   @return [Array<MetricsConfiguration>]
    class ListBucketMetricsConfigurationsOutput
      include Hearth::Structure

      MEMBERS = %i[
        is_truncated
        continuation_token
        next_continuation_token
        metrics_configuration_list
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class ListBucketsInput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Bucket>] :buckets
    #   @option params [Owner] :owner
    # @!attribute buckets
    #   <p>The list of buckets owned by the requester.</p>
    #   @return [Array<Bucket>]
    # @!attribute owner
    #   <p>The owner of the buckets listed.</p>
    #   @return [Owner]
    class ListBucketsOutput
      include Hearth::Structure

      MEMBERS = %i[
        buckets
        owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :continuation_token
    #   @option params [Integer] :max_directory_buckets
    # @!attribute continuation_token
    #   <p>
    #               <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on
    #            this bucket with a token. <code>ContinuationToken</code> is obfuscated and is not a real
    #            key. You can use this <code>ContinuationToken</code> for pagination of the list results.  </p>
    #   @return [String]
    # @!attribute max_directory_buckets
    #   <p>Maximum number of buckets to be returned in response. When the number is more than the count of buckets that are owned by an Amazon Web Services account, return all the buckets in response.</p>
    #   @return [Integer]
    class ListDirectoryBucketsInput
      include Hearth::Structure

      MEMBERS = %i[
        continuation_token
        max_directory_buckets
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Bucket>] :buckets
    #   @option params [String] :continuation_token
    # @!attribute buckets
    #   <p>The list of buckets owned by the requester. </p>
    #   @return [Array<Bucket>]
    # @!attribute continuation_token
    #   <p>If <code>ContinuationToken</code> was sent with the request, it is included in the
    #            response. You can use the returned <code>ContinuationToken</code> for pagination of the list response.</p>
    #   @return [String]
    class ListDirectoryBucketsOutput
      include Hearth::Structure

      MEMBERS = %i[
        buckets
        continuation_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :delimiter
    #   @option params [String] :encoding_type
    #   @option params [String] :key_marker
    #   @option params [Integer] :max_uploads
    #   @option params [String] :prefix
    #   @option params [String] :upload_id_marker
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :request_payer
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>Character you use to group keys.</p>
    #            <p>All keys that contain the same string between the prefix, if specified, and the first
    #            occurrence of the delimiter after the prefix are grouped under a single result element,
    #               <code>CommonPrefixes</code>. If you don't specify the prefix parameter, then the
    #            substring starts at the beginning of the key. The keys that are grouped under
    #               <code>CommonPrefixes</code> result element are not returned elsewhere in the
    #            response.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, <code>/</code> is the only supported delimiter.</p>
    #            </note>
    #   @return [String]
    # @!attribute encoding_type
    #   <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
    #            method to use. An object key can contain any Unicode character; however, the XML 1.0 parser
    #            cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
    #            characters that are not supported in XML 1.0, you can add this parameter to request that
    #            Amazon S3 encode the keys in the response.</p>
    #   Enum, one of: ["url"]
    #   @return [String]
    # @!attribute key_marker
    #   <p>Specifies the multipart upload after which listing should begin.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>General purpose buckets</b> - For general purpose buckets, <code>key-marker</code>
    #                  is an object key. Together with <code>upload-id-marker</code>, this parameter specifies the multipart
    #                  upload after which listing should begin.</p>
    #                     <p>If <code>upload-id-marker</code> is not specified, only the keys lexicographically
    #                     greater than the specified <code>key-marker</code> will be included in the list.</p>
    #                     <p>If <code>upload-id-marker</code> is specified, any multipart uploads for a key equal to
    #                     the <code>key-marker</code> might also be included, provided those multipart uploads have
    #                     upload IDs lexicographically greater than the specified
    #                     <code>upload-id-marker</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - For directory buckets, <code>key-marker</code>
    #                  is obfuscated and isn't a real object key.
    #                  The <code>upload-id-marker</code> parameter isn't supported by directory buckets.
    #                  To list the additional multipart uploads, you only need to set the value of <code>key-marker</code> to the <code>NextKeyMarker</code> value from the previous response.
    #               </p>
    #                     <p>In the <code>ListMultipartUploads</code> response, the multipart uploads aren't sorted lexicographically based on the object keys.
    #
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute max_uploads
    #   <p>Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response
    #            body. 1,000 is the maximum number of uploads that can be returned in a response.</p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>Lists in-progress uploads only for those keys that begin with the specified prefix. You
    #            can use prefixes to separate a bucket into different grouping of keys. (You can think of
    #            using <code>prefix</code> to make groups in the same way that you'd use a folder in a file
    #            system.)</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute upload_id_marker
    #   <p>Together with key-marker, specifies the multipart upload after which listing should
    #            begin. If key-marker is not specified, the upload-id-marker parameter is ignored.
    #            Otherwise, any multipart uploads for a key equal to the key-marker might be included in the
    #            list only if they have an upload ID lexicographically greater than the specified
    #               <code>upload-id-marker</code>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class ListMultipartUploadsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        delimiter
        encoding_type
        key_marker
        max_uploads
        prefix
        upload_id_marker
        expected_bucket_owner
        request_payer
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key_marker
    #   @option params [String] :upload_id_marker
    #   @option params [String] :next_key_marker
    #   @option params [String] :prefix
    #   @option params [String] :delimiter
    #   @option params [String] :next_upload_id_marker
    #   @option params [Integer] :max_uploads
    #   @option params [Boolean] :is_truncated
    #   @option params [Array<MultipartUpload>] :uploads
    #   @option params [Array<CommonPrefix>] :common_prefixes
    #   @option params [String] :encoding_type
    #   @option params [String] :request_charged
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. Does not return the
    #            access point ARN or access point alias if used.</p>
    #   @return [String]
    # @!attribute key_marker
    #   <p>The key at or after which the listing began.</p>
    #   @return [String]
    # @!attribute upload_id_marker
    #   <p>Upload ID after which listing began.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute next_key_marker
    #   <p>When a list is truncated, this element specifies the value that should be used for the
    #            key-marker request parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>When a prefix is provided in the request, this field contains the specified prefix. The
    #            result contains only keys starting with the specified prefix.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute delimiter
    #   <p>Contains the delimiter you specified in the request. If you don't specify a delimiter in
    #            your request, this element is absent from the response.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, <code>/</code> is the only supported delimiter.</p>
    #            </note>
    #   @return [String]
    # @!attribute next_upload_id_marker
    #   <p>When a list is truncated, this element specifies the value that should be used for the
    #               <code>upload-id-marker</code> request parameter in a subsequent request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_uploads
    #   <p>Maximum number of multipart uploads that could have been included in the
    #            response.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of multipart uploads is truncated. A value of true
    #            indicates that the list was truncated. The list can be truncated if the number of multipart
    #            uploads exceeds the limit allowed or specified by max uploads.</p>
    #   @return [Boolean]
    # @!attribute uploads
    #   <p>Container for elements related to a particular multipart upload. A response can contain
    #            zero or more <code>Upload</code> elements.</p>
    #   @return [Array<MultipartUpload>]
    # @!attribute common_prefixes
    #   <p>If you specify a delimiter in the request, then the result returns each distinct key
    #            prefix containing the delimiter in a <code>CommonPrefixes</code> element. The distinct key
    #            prefixes are returned in the <code>Prefix</code> child element.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #            </note>
    #   @return [Array<CommonPrefix>]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
    #            <p>If you specify the <code>encoding-type</code> request parameter, Amazon S3 includes this
    #            element in the response, and returns encoded key name values in the following response
    #            elements:</p>
    #            <p>
    #               <code>Delimiter</code>, <code>KeyMarker</code>, <code>Prefix</code>,
    #               <code>NextKeyMarker</code>, <code>Key</code>.</p>
    #   Enum, one of: ["url"]
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class ListMultipartUploadsOutput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key_marker
        upload_id_marker
        next_key_marker
        prefix
        delimiter
        next_upload_id_marker
        max_uploads
        is_truncated
        uploads
        common_prefixes
        encoding_type
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :delimiter
    #   @option params [String] :encoding_type
    #   @option params [String] :key_marker
    #   @option params [Integer] :max_keys
    #   @option params [String] :prefix
    #   @option params [String] :version_id_marker
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :request_payer
    #   @option params [Array<String>] :optional_object_attributes
    # @!attribute bucket
    #   <p>The bucket name that contains the objects. </p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>A delimiter is a character that you specify to group keys. All keys that contain the
    #            same string between the <code>prefix</code> and the first occurrence of the delimiter are
    #            grouped under a single result element in <code>CommonPrefixes</code>. These groups are
    #            counted as one result against the <code>max-keys</code> limitation. These keys are not
    #            returned elsewhere in the response.</p>
    #   @return [String]
    # @!attribute encoding_type
    #   <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
    #            method to use. An object key can contain any Unicode character; however, the XML 1.0 parser
    #            cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
    #            characters that are not supported in XML 1.0, you can add this parameter to request that
    #            Amazon S3 encode the keys in the response.</p>
    #   Enum, one of: ["url"]
    #   @return [String]
    # @!attribute key_marker
    #   <p>Specifies the key to start with when listing objects in a bucket.</p>
    #   @return [String]
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default, the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain more.
    #            If additional keys satisfy the search criteria, but were not returned because
    #               <code>max-keys</code> was exceeded, the response contains
    #               <code><isTruncated>true</isTruncated></code>. To return the additional keys,
    #            see <code>key-marker</code> and <code>version-id-marker</code>.</p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>Use this parameter to select only those keys that begin with the specified prefix. You
    #            can use prefixes to separate a bucket into different groupings of keys. (You can think of
    #            using <code>prefix</code> to make groups in the same way that you'd use a folder in a file
    #            system.) You can use <code>prefix</code> with <code>delimiter</code> to roll up numerous
    #            objects into a single result under <code>CommonPrefixes</code>. </p>
    #   @return [String]
    # @!attribute version_id_marker
    #   <p>Specifies the object version you want to start listing from.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute optional_object_attributes
    #   <p>Specifies the optional fields that you want returned in the response. Fields that you do
    #            not specify are not returned.</p>
    #   @return [Array<String>]
    class ListObjectVersionsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        delimiter
        encoding_type
        key_marker
        max_keys
        prefix
        version_id_marker
        expected_bucket_owner
        request_payer
        optional_object_attributes
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :is_truncated
    #   @option params [String] :key_marker
    #   @option params [String] :version_id_marker
    #   @option params [String] :next_key_marker
    #   @option params [String] :next_version_id_marker
    #   @option params [Array<ObjectVersion>] :versions
    #   @option params [Array<DeleteMarkerEntry>] :delete_markers
    #   @option params [String] :name
    #   @option params [String] :prefix
    #   @option params [String] :delimiter
    #   @option params [Integer] :max_keys
    #   @option params [Array<CommonPrefix>] :common_prefixes
    #   @option params [String] :encoding_type
    #   @option params [String] :request_charged
    # @!attribute is_truncated
    #   <p>A flag that indicates whether Amazon S3 returned all of the results that satisfied the search
    #            criteria. If your results were truncated, you can make a follow-up paginated request by
    #            using the <code>NextKeyMarker</code> and <code>NextVersionIdMarker</code> response
    #            parameters as a starting place in another request to return the rest of the results.</p>
    #   @return [Boolean]
    # @!attribute key_marker
    #   <p>Marks the last key returned in a truncated response.</p>
    #   @return [String]
    # @!attribute version_id_marker
    #   <p>Marks the last version of the key returned in a truncated response.</p>
    #   @return [String]
    # @!attribute next_key_marker
    #   <p>When the number of responses exceeds the value of <code>MaxKeys</code>,
    #               <code>NextKeyMarker</code> specifies the first key not returned that satisfies the
    #            search criteria. Use this value for the key-marker request parameter in a subsequent
    #            request.</p>
    #   @return [String]
    # @!attribute next_version_id_marker
    #   <p>When the number of responses exceeds the value of <code>MaxKeys</code>,
    #               <code>NextVersionIdMarker</code> specifies the first object version not returned that
    #            satisfies the search criteria. Use this value for the <code>version-id-marker</code>
    #            request parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute versions
    #   <p>Container for version information.</p>
    #   @return [Array<ObjectVersion>]
    # @!attribute delete_markers
    #   <p>Container for an object that is a delete marker.</p>
    #   @return [Array<DeleteMarkerEntry>]
    # @!attribute name
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Selects objects that start with the value supplied by this parameter.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>The delimiter grouping the included keys. A delimiter is a character that you specify to
    #            group keys. All keys that contain the same string between the prefix and the first
    #            occurrence of the delimiter are grouped under a single result element in
    #               <code>CommonPrefixes</code>. These groups are counted as one result against the
    #               <code>max-keys</code> limitation. These keys are not returned elsewhere in the
    #            response.</p>
    #   @return [String]
    # @!attribute max_keys
    #   <p>Specifies the maximum number of objects to return.</p>
    #   @return [Integer]
    # @!attribute common_prefixes
    #   <p>All of the keys rolled up into a common prefix count as a single return when calculating
    #            the number of returns.</p>
    #   @return [Array<CommonPrefix>]
    # @!attribute encoding_type
    #   <p> Encoding type used by Amazon S3 to encode object key names in the XML response.</p>
    #            <p>If you specify the <code>encoding-type</code> request parameter, Amazon S3 includes this
    #            element in the response, and returns encoded key name values in the following response
    #            elements:</p>
    #            <p>
    #               <code>KeyMarker, NextKeyMarker, Prefix, Key</code>, and <code>Delimiter</code>.</p>
    #   Enum, one of: ["url"]
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class ListObjectVersionsOutput
      include Hearth::Structure

      MEMBERS = %i[
        is_truncated
        key_marker
        version_id_marker
        next_key_marker
        next_version_id_marker
        versions
        delete_markers
        name
        prefix
        delimiter
        max_keys
        common_prefixes
        encoding_type
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :delimiter
    #   @option params [String] :encoding_type
    #   @option params [String] :marker
    #   @option params [Integer] :max_keys
    #   @option params [String] :prefix
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    #   @option params [Array<String>] :optional_object_attributes
    # @!attribute bucket
    #   <p>The name of the bucket containing the objects.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>A delimiter is a character that you use to group keys.</p>
    #   @return [String]
    # @!attribute encoding_type
    #   <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
    #            method to use. An object key can contain any Unicode character; however, the XML 1.0 parser
    #            cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
    #            characters that are not supported in XML 1.0, you can add this parameter to request that
    #            Amazon S3 encode the keys in the response.</p>
    #   Enum, one of: ["url"]
    #   @return [String]
    # @!attribute marker
    #   <p>Marker is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this
    #            specified key. Marker can be any key in the bucket.</p>
    #   @return [String]
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default, the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain more.
    #         </p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>Limits the response to keys that begin with the specified prefix.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that she or he will be charged for the list objects
    #            request. Bucket owners need not specify this parameter in their requests.</p>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute optional_object_attributes
    #   <p>Specifies the optional fields that you want returned in the response. Fields that you do
    #            not specify are not returned.</p>
    #   @return [Array<String>]
    class ListObjectsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        delimiter
        encoding_type
        marker
        max_keys
        prefix
        request_payer
        expected_bucket_owner
        optional_object_attributes
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :is_truncated
    #   @option params [String] :marker
    #   @option params [String] :next_marker
    #   @option params [Array<Object>] :contents
    #   @option params [String] :name
    #   @option params [String] :prefix
    #   @option params [String] :delimiter
    #   @option params [Integer] :max_keys
    #   @option params [Array<CommonPrefix>] :common_prefixes
    #   @option params [String] :encoding_type
    #   @option params [String] :request_charged
    # @!attribute is_truncated
    #   <p>A flag that indicates whether Amazon S3 returned all of the results that satisfied the search
    #            criteria.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>Indicates where in the bucket listing begins. Marker is included in the response if it
    #            was sent with the request.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When the response is truncated (the <code>IsTruncated</code> element value in the
    #            response is <code>true</code>), you can use the key name in this field as the
    #               <code>marker</code> parameter in the subsequent request to get the next set of objects.
    #            Amazon S3 lists objects in alphabetical order. </p>
    #            <note>
    #               <p>This element is returned only if you have the <code>delimiter</code> request
    #               parameter specified. If the response does not include the <code>NextMarker</code>
    #               element and it is truncated, you can use the value of the last <code>Key</code> element
    #               in the response as the <code>marker</code> parameter in the subsequent request to get
    #               the next set of object keys.</p>
    #            </note>
    #   @return [String]
    # @!attribute contents
    #   <p>Metadata about each object returned.</p>
    #   @return [Array<Object>]
    # @!attribute name
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Keys that begin with the indicated prefix.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>Causes keys that contain the same string between the prefix and the first occurrence of
    #            the delimiter to be rolled up into a single result element in the
    #               <code>CommonPrefixes</code> collection. These rolled-up keys are not returned elsewhere
    #            in the response. Each rolled-up result counts as only one return against the
    #               <code>MaxKeys</code> value.</p>
    #   @return [String]
    # @!attribute max_keys
    #   <p>The maximum number of keys returned in the response body.</p>
    #   @return [Integer]
    # @!attribute common_prefixes
    #   <p>All of the keys (up to 1,000) rolled up in a common prefix count as a single return when
    #            calculating the number of returns. </p>
    #            <p>A response can contain <code>CommonPrefixes</code> only if you specify a
    #            delimiter.</p>
    #            <p>
    #               <code>CommonPrefixes</code> contains all (if there are any) keys between
    #               <code>Prefix</code> and the next occurrence of the string specified by the
    #            delimiter.</p>
    #            <p>
    #               <code>CommonPrefixes</code> lists keys that act like subdirectories in the directory
    #            specified by <code>Prefix</code>.</p>
    #            <p>For example, if the prefix is <code>notes/</code> and the delimiter is a slash
    #               (<code>/</code>), as in <code>notes/summer/july</code>, the common prefix is
    #               <code>notes/summer/</code>. All of the keys that roll up into a common prefix count as a
    #            single return when calculating the number of returns.</p>
    #   @return [Array<CommonPrefix>]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
    #   Enum, one of: ["url"]
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class ListObjectsOutput
      include Hearth::Structure

      MEMBERS = %i[
        is_truncated
        marker
        next_marker
        contents
        name
        prefix
        delimiter
        max_keys
        common_prefixes
        encoding_type
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :delimiter
    #   @option params [String] :encoding_type
    #   @option params [Integer] :max_keys
    #   @option params [String] :prefix
    #   @option params [String] :continuation_token
    #   @option params [Boolean] :fetch_owner
    #   @option params [String] :start_after
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    #   @option params [Array<String>] :optional_object_attributes
    # @!attribute bucket
    #   <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>A delimiter is a character that you use to group keys.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - For directory buckets, <code>/</code> is the only supported delimiter.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets </b> - When you query <code>ListObjectsV2</code> with a delimiter during in-progress multipart uploads, the
    #               <code>CommonPrefixes</code> response parameter contains the prefixes that are associated with the in-progress multipart uploads.
    #                  For more information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart Upload Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
    #   Enum, one of: ["url"]
    #   @return [String]
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default, the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain
    #            more.</p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>Limits the response to keys that begin with the specified prefix.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>
    #               <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on
    #            this bucket with a token. <code>ContinuationToken</code> is obfuscated and is not a real
    #            key. You can use this <code>ContinuationToken</code> for pagination of the list results.  </p>
    #   @return [String]
    # @!attribute fetch_owner
    #   <p>The owner field is not present in <code>ListObjectsV2</code> by default. If you want to
    #            return the owner field with each key in the result, then set the <code>FetchOwner</code>
    #            field to <code>true</code>.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, the bucket owner is returned as the object owner for all objects.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute start_after
    #   <p>StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this
    #            specified key. StartAfter can be any key in the bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that she or he will be charged for the list objects
    #            request in V2 style. Bucket owners need not specify this parameter in their
    #            requests.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute optional_object_attributes
    #   <p>Specifies the optional fields that you want returned in the response. Fields that you do
    #            not specify are not returned.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Array<String>]
    class ListObjectsV2Input
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        delimiter
        encoding_type
        max_keys
        prefix
        continuation_token
        fetch_owner
        start_after
        request_payer
        expected_bucket_owner
        optional_object_attributes
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :is_truncated
    #   @option params [Array<Object>] :contents
    #   @option params [String] :name
    #   @option params [String] :prefix
    #   @option params [String] :delimiter
    #   @option params [Integer] :max_keys
    #   @option params [Array<CommonPrefix>] :common_prefixes
    #   @option params [String] :encoding_type
    #   @option params [Integer] :key_count
    #   @option params [String] :continuation_token
    #   @option params [String] :next_continuation_token
    #   @option params [String] :start_after
    #   @option params [String] :request_charged
    # @!attribute is_truncated
    #   <p>Set to <code>false</code> if all of the results were returned. Set to <code>true</code>
    #            if more keys are available to return. If the number of results exceeds that specified by
    #               <code>MaxKeys</code>, all of the results might not be returned.</p>
    #   @return [Boolean]
    # @!attribute contents
    #   <p>Metadata about each object returned.</p>
    #   @return [Array<Object>]
    # @!attribute name
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Keys that begin with the indicated prefix.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute delimiter
    #   <p>Causes keys that contain the same string between the <code>prefix</code> and the first
    #            occurrence of the delimiter to be rolled up into a single result element in the
    #               <code>CommonPrefixes</code> collection. These rolled-up keys are not returned elsewhere
    #            in the response. Each rolled-up result counts as only one return against the
    #               <code>MaxKeys</code> value.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, <code>/</code> is the only supported delimiter.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default, the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain
    #            more.</p>
    #   @return [Integer]
    # @!attribute common_prefixes
    #   <p>All of the keys (up to 1,000) that share the same prefix are grouped together. When counting the total numbers of returns by this API operation,
    #            this group of keys is considered as one item.</p>
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
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets </b> - When you query <code>ListObjectsV2</code> with a delimiter during in-progress multipart uploads, the
    #                  <code>CommonPrefixes</code> response parameter contains the prefixes that are associated with the in-progress multipart uploads.
    #                  For more information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart Upload Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<CommonPrefix>]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object key names in the XML response.</p>
    #            <p>If you specify the <code>encoding-type</code> request parameter, Amazon S3 includes this
    #            element in the response, and returns encoded key name values in the following response
    #            elements:</p>
    #            <p>
    #               <code>Delimiter, Prefix, Key,</code> and <code>StartAfter</code>.</p>
    #   Enum, one of: ["url"]
    #   @return [String]
    # @!attribute key_count
    #   <p>
    #               <code>KeyCount</code> is the number of keys returned with this request.
    #               <code>KeyCount</code> will always be less than or equal to the <code>MaxKeys</code>
    #            field. For example, if you ask for 50 keys, your result will include 50 keys or
    #            fewer.</p>
    #   @return [Integer]
    # @!attribute continuation_token
    #   <p> If <code>ContinuationToken</code> was sent with the request, it is included in the
    #            response. You can use the returned <code>ContinuationToken</code> for pagination of the list response. You can use this <code>ContinuationToken</code> for pagination of the list results. </p>
    #   @return [String]
    # @!attribute next_continuation_token
    #   <p>
    #               <code>NextContinuationToken</code> is sent when <code>isTruncated</code> is true, which
    #            means there are more keys in the bucket that can be listed. The next list requests to Amazon S3
    #            can be continued with this <code>NextContinuationToken</code>.
    #               <code>NextContinuationToken</code> is obfuscated and is not a real key</p>
    #   @return [String]
    # @!attribute start_after
    #   <p>If StartAfter was sent with the request, it is included in the response.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class ListObjectsV2Output
      include Hearth::Structure

      MEMBERS = %i[
        is_truncated
        contents
        name
        prefix
        delimiter
        max_keys
        common_prefixes
        encoding_type
        key_count
        continuation_token
        next_continuation_token
        start_after
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [Integer] :max_parts
    #   @option params [String] :part_number_marker
    #   @option params [String] :upload_id
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    # @!attribute bucket
    #   <p>The name of the bucket to which the parts are being uploaded. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute max_parts
    #   <p>Sets the maximum number of parts to return.</p>
    #   @return [Integer]
    # @!attribute part_number_marker
    #   <p>Specifies the part after which listing should begin. Only parts with higher part numbers
    #            will be listed.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose parts are being listed.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created
    #       using a checksum algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class ListPartsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        max_parts
        part_number_marker
        upload_id
        request_payer
        expected_bucket_owner
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::ListPartsInput ' \
          "bucket=#{bucket || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "max_parts=#{max_parts || 'nil'}, " \
          "part_number_marker=#{part_number_marker || 'nil'}, " \
          "upload_id=#{upload_id || 'nil'}, " \
          "request_payer=#{request_payer || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Time] :abort_date
    #   @option params [String] :abort_rule_id
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :upload_id
    #   @option params [String] :part_number_marker
    #   @option params [String] :next_part_number_marker
    #   @option params [Integer] :max_parts
    #   @option params [Boolean] :is_truncated
    #   @option params [Array<Part>] :parts
    #   @option params [Initiator] :initiator
    #   @option params [Owner] :owner
    #   @option params [String] :storage_class
    #   @option params [String] :request_charged
    #   @option params [String] :checksum_algorithm
    # @!attribute abort_date
    #   <p>If the bucket has a lifecycle rule configured with an action to abort incomplete
    #            multipart uploads and the prefix in the lifecycle rule matches the object name in the
    #            request, then the response includes this header indicating when the initiated multipart
    #            upload will become eligible for abort operation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config">Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle
    #            Configuration</a>.</p>
    #            <p>The response will also include the <code>x-amz-abort-rule-id</code> header that will
    #            provide the ID of the lifecycle configuration rule that defines this action.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute abort_rule_id
    #   <p>This header is returned along with the <code>x-amz-abort-date</code> header. It
    #            identifies applicable lifecycle configuration rule that defines the action to abort
    #            incomplete multipart uploads.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. Does not return the
    #            access point ARN or access point alias if used.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose parts are being listed.</p>
    #   @return [String]
    # @!attribute part_number_marker
    #   <p>When a list is truncated, this element specifies the last part in the list, as well as
    #            the value to use for the part-number-marker request parameter in a subsequent
    #            request.</p>
    #   @return [String]
    # @!attribute next_part_number_marker
    #   <p>When a list is truncated, this element specifies the last part in the list, as well as
    #            the value to use for the <code>part-number-marker</code> request parameter in a subsequent
    #            request.</p>
    #   @return [String]
    # @!attribute max_parts
    #   <p>Maximum number of parts that were allowed in the response.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p> Indicates whether the returned list of parts is truncated. A true value indicates that
    #            the list was truncated. A list can be truncated if the number of parts exceeds the limit
    #            returned in the MaxParts element.</p>
    #   @return [Boolean]
    # @!attribute parts
    #   <p>Container for elements related to a particular part. A response can contain zero or
    #            more <code>Part</code> elements.</p>
    #   @return [Array<Part>]
    # @!attribute initiator
    #   <p>Container element that identifies who initiated the multipart upload. If the initiator
    #            is an Amazon Web Services account, this element provides the same information as the <code>Owner</code>
    #            element. If the initiator is an IAM User, this element provides the user ARN and display
    #            name.</p>
    #   @return [Initiator]
    # @!attribute owner
    #   <p>Container element that identifies the object owner, after the object is created. If
    #            multipart upload is initiated by an IAM user, this element provides the parent account ID
    #            and display name.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - The bucket owner is returned as the object owner for all the parts.</p>
    #            </note>
    #   @return [Owner]
    # @!attribute storage_class
    #   <p>The class of storage used to store the uploaded
    #            object.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - Only the S3 Express One Zone storage class is supported by directory buckets to store objects.</p>
    #            </note>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    class ListPartsOutput
      include Hearth::Structure

      MEMBERS = %i[
        abort_date
        abort_rule_id
        bucket
        key
        upload_id
        part_number_marker
        next_part_number_marker
        max_parts
        is_truncated
        parts
        initiator
        owner
        storage_class
        request_charged
        checksum_algorithm
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the location where the bucket will be created.</p>
    #          <p>For directory buckets, the location type is Availability Zone. For more information about directory buckets, see
    #          <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">Directory buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>This functionality is only supported by directory buckets.</p>
    #          </note>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :type
    #   @option params [String] :name
    # @!attribute type
    #   <p>The type of location where the bucket will be created.</p>
    #   Enum, one of: ["AvailabilityZone"]
    #   @return [String]
    # @!attribute name
    #   <p>The name of the location where the bucket will be created.</p>
    #            <p>For directory buckets, the AZ ID of the Availability Zone where the bucket will be created. An example AZ ID value is <code>usw2-az2</code>.</p>
    #   @return [String]
    class LocationInfo
      include Hearth::Structure

      MEMBERS = %i[
        type
        name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for LocationType
    module LocationType
      AVAILABILITY_ZONE = "AvailabilityZone"
    end

    # <p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys
    #          for a bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html">PUT Bucket logging</a> in the
    #             <i>Amazon S3 API Reference</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :target_bucket (0)
    #   @option params [Array<TargetGrant>] :target_grants
    #   @option params [String] :target_prefix (0)
    #   @option params [TargetObjectKeyFormat] :target_object_key_format
    # @!attribute target_bucket
    #   <p>Specifies the bucket where you want Amazon S3 to store server access logs. You can have your
    #            logs delivered to any bucket that you own, including the same bucket that is being logged.
    #            You can also configure multiple buckets to deliver their logs to the same target bucket. In
    #            this case, you should choose a different <code>TargetPrefix</code> for each source bucket
    #            so that the delivered log files can be distinguished by key.</p>
    #   @return [String]
    # @!attribute target_grants
    #   <p>Container for granting information.</p>
    #            <p>Buckets that use the bucket owner enforced setting for Object Ownership don't support
    #            target grants. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general">Permissions for server access log delivery</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [Array<TargetGrant>]
    # @!attribute target_prefix
    #   <p>A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a
    #            single bucket, you can use a prefix to distinguish which log files came from which
    #            bucket.</p>
    #   @return [String]
    # @!attribute target_object_key_format
    #   <p>Amazon S3 key format for log objects.</p>
    #   @return [TargetObjectKeyFormat]
    class LoggingEnabled
      include Hearth::Structure

      MEMBERS = %i[
        target_bucket
        target_grants
        target_prefix
        target_object_key_format
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for MFADelete
    module MFADelete
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # Enum constants for MFADeleteStatus
    module MFADeleteStatus
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # Enum constants for MetadataDirective
    module MetadataDirective
      COPY = "COPY"

      REPLACE = "REPLACE"
    end

    # <p>A metadata key-value pair to store with an object.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name
    #   @option params [String] :value
    # @!attribute name
    #   <p>Name of the object.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of the object.</p>
    #   @return [String]
    class MetadataEntry
      include Hearth::Structure

      MEMBERS = %i[
        name
        value
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p> A container specifying replication metrics-related settings enabling replication
    #          metrics and events.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status (0)
    #   @option params [ReplicationTimeValue] :event_threshold
    # @!attribute status
    #   <p> Specifies whether the replication metrics are enabled. </p>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    # @!attribute event_threshold
    #   <p> A container specifying the time threshold for emitting the
    #               <code>s3:Replication:OperationMissedThreshold</code> event. </p>
    #   @return [ReplicationTimeValue]
    class Metrics
      include Hearth::Structure

      MEMBERS = %i[
        status
        event_threshold
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
    #          The operator must have at least two predicates, and an object must match all of the
    #          predicates in order for the filter to apply.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :prefix
    #   @option params [Array<Tag>] :tags
    #   @option params [String] :access_point_arn
    # @!attribute prefix
    #   <p>The prefix used when evaluating an AND predicate.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags used when evaluating an AND predicate.</p>
    #   @return [Array<Tag>]
    # @!attribute access_point_arn
    #   <p>The access point ARN used when evaluating an <code>AND</code> predicate.</p>
    #   @return [String]
    class MetricsAndOperator
      include Hearth::Structure

      MEMBERS = %i[
        prefix
        tags
        access_point_arn
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies a metrics configuration for the CloudWatch request metrics (specified by the
    #          metrics configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics
    #          configuration, note that this is a full replacement of the existing metrics configuration.
    #          If you don't include the elements you want to keep, they are erased. For more information,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html">PutBucketMetricsConfiguration</a>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id (0)
    #   @option params [MetricsFilter] :filter
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Specifies a metrics configuration filter. The metrics configuration will only include
    #            objects that meet the filter's criteria. A filter must be a prefix, an object tag, an
    #            access point ARN, or a conjunction (MetricsAndOperator).</p>
    #   @return [MetricsFilter]
    class MetricsConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        id
        filter
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies a metrics configuration filter. The metrics configuration only includes
    #          objects that meet the filter's criteria. A filter must be a prefix, an object tag, an
    #          access point ARN, or a conjunction (MetricsAndOperator). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html">PutBucketMetricsConfiguration</a>.</p>
    class MetricsFilter < Hearth::Union
      # <p>The prefix used when evaluating a metrics filter.</p>
      class Prefix < MetricsFilter
        def to_h
          { prefix: super(__getobj__) }
        end
      end

      # <p>The tag used when evaluating a metrics filter.</p>
      class Tag < MetricsFilter
        def to_h
          { tag: super(__getobj__) }
        end
      end

      # <p>The access point ARN used when evaluating a metrics filter.</p>
      class AccessPointArn < MetricsFilter
        def to_h
          { access_point_arn: super(__getobj__) }
        end
      end

      # <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter.
      #          The operator must have at least two predicates, and an object must match all of the
      #          predicates in order for the filter to apply.</p>
      class And < MetricsFilter
        def to_h
          { and: super(__getobj__) }
        end
      end

      class Unknown < MetricsFilter
        def initialize(name:, value:)
          super({name: name, value: value})
        end

        def to_h
          { unknown: super(__getobj__) }
        end
      end
    end

    # Enum constants for MetricsStatus
    module MetricsStatus
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # <p>Container for the <code>MultipartUpload</code> for the Amazon S3 object.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :upload_id
    #   @option params [String] :key
    #   @option params [Time] :initiated
    #   @option params [String] :storage_class
    #   @option params [Owner] :owner
    #   @option params [Initiator] :initiator
    #   @option params [String] :checksum_algorithm
    # @!attribute upload_id
    #   <p>Upload ID that identifies the multipart upload.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key of the object for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute initiated
    #   <p>Date and time at which the multipart upload was initiated.</p>
    #   @return [Time]
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - Only the S3 Express One Zone storage class is supported by directory buckets to store objects.</p>
    #            </note>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute owner
    #   <p>Specifies the owner of the object that is part of the multipart upload. </p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - The bucket owner is returned as the object owner for all the objects.</p>
    #            </note>
    #   @return [Owner]
    # @!attribute initiator
    #   <p>Identifies who initiated the multipart upload.</p>
    #   @return [Initiator]
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    class MultipartUpload
      include Hearth::Structure

      MEMBERS = %i[
        upload_id
        key
        initiated
        storage_class
        owner
        initiator
        checksum_algorithm
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The specified bucket does not exist.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class NoSuchBucket
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The specified key does not exist.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class NoSuchKey
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The specified multipart upload does not exist.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class NoSuchUpload
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently
    #          deletes the noncurrent object versions. You set this lifecycle configuration action on a
    #          bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent
    #          object versions at a specific period in the object's lifetime.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :noncurrent_days
    #   @option params [Integer] :newer_noncurrent_versions
    # @!attribute noncurrent_days
    #   <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
    #            associated action. The value must be a non-zero positive integer. For information about the
    #            noncurrent days calculations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations">How
    #               Amazon S3 Calculates When an Object Became Noncurrent</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute newer_noncurrent_versions
    #   <p>Specifies how many newer noncurrent versions must exist before Amazon S3 can perform the
    #            associated action on a given version. If there are this many more recent noncurrent
    #            versions, Amazon S3 will take the associated action. For more information about noncurrent
    #            versions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html">Lifecycle configuration
    #               elements</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    class NoncurrentVersionExpiration
      include Hearth::Structure

      MEMBERS = %i[
        noncurrent_days
        newer_noncurrent_versions
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for the transition rule that describes when noncurrent objects transition to
    #          the <code>STANDARD_IA</code>, <code>ONEZONE_IA</code>, <code>INTELLIGENT_TIERING</code>,
    #             <code>GLACIER_IR</code>, <code>GLACIER</code>, or <code>DEEP_ARCHIVE</code> storage
    #          class. If your bucket is versioning-enabled (or versioning is suspended), you can set this
    #          action to request that Amazon S3 transition noncurrent object versions to the
    #             <code>STANDARD_IA</code>, <code>ONEZONE_IA</code>, <code>INTELLIGENT_TIERING</code>,
    #             <code>GLACIER_IR</code>, <code>GLACIER</code>, or <code>DEEP_ARCHIVE</code> storage
    #          class at a specific period in the object's lifetime.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :noncurrent_days
    #   @option params [String] :storage_class
    #   @option params [Integer] :newer_noncurrent_versions
    # @!attribute noncurrent_days
    #   <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
    #            associated action. For information about the noncurrent days calculations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations">How
    #               Amazon S3 Calculates How Long an Object Has Been Noncurrent</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #   Enum, one of: ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #   @return [String]
    # @!attribute newer_noncurrent_versions
    #   <p>Specifies how many newer noncurrent versions must exist before Amazon S3 can perform the
    #            associated action on a given version. If there are this many more recent noncurrent
    #            versions, Amazon S3 will take the associated action. For more information about noncurrent
    #            versions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html">Lifecycle configuration
    #               elements</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    class NoncurrentVersionTransition
      include Hearth::Structure

      MEMBERS = %i[
        noncurrent_days
        storage_class
        newer_noncurrent_versions
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The specified content does not exist.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class NotFound
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A container for specifying the notification configuration of the bucket. If this element
    #          is empty, notifications are turned off for the bucket.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<TopicConfiguration>] :topic_configurations
    #   @option params [Array<QueueConfiguration>] :queue_configurations
    #   @option params [Array<LambdaFunctionConfiguration>] :lambda_function_configurations
    #   @option params [EventBridgeConfiguration] :event_bridge_configuration
    # @!attribute topic_configurations
    #   <p>The topic to which notifications are sent and the events for which notifications are
    #            generated.</p>
    #   @return [Array<TopicConfiguration>]
    # @!attribute queue_configurations
    #   <p>The Amazon Simple Queue Service queues to publish messages to and the events for which
    #            to publish messages.</p>
    #   @return [Array<QueueConfiguration>]
    # @!attribute lambda_function_configurations
    #   <p>Describes the Lambda functions to invoke and the events for which to invoke
    #            them.</p>
    #   @return [Array<LambdaFunctionConfiguration>]
    # @!attribute event_bridge_configuration
    #   <p>Enables delivery of events to Amazon EventBridge.</p>
    #   @return [EventBridgeConfiguration]
    class NotificationConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        topic_configurations
        queue_configurations
        lambda_function_configurations
        event_bridge_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies object key name filtering rules. For information about key name filtering, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html">Configuring event
    #             notifications using object key name filtering</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [S3KeyFilter] :key
    # @!attribute key
    #   <p>A container for object key name prefix and suffix filtering rules.</p>
    #   @return [S3KeyFilter]
    class NotificationConfigurationFilter
      include Hearth::Structure

      MEMBERS = %i[
        key
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>An object consists of data and its descriptive metadata.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key
    #   @option params [Time] :last_modified
    #   @option params [String] :e_tag
    #   @option params [Array<String>] :checksum_algorithm
    #   @option params [Integer] :size
    #   @option params [String] :storage_class
    #   @option params [Owner] :owner
    #   @option params [RestoreStatus] :restore_status
    # @!attribute key
    #   <p>The name that you assign to an object. You use the object key to retrieve the
    #            object.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Creation date of the object.</p>
    #   @return [Time]
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
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - MD5 is not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #   @return [Array<String>]
    # @!attribute size
    #   <p>Size in bytes of the object</p>
    #   @return [Integer]
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - Only the S3 Express One Zone storage class is supported by directory buckets to store objects.</p>
    #            </note>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the object</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - The bucket owner is returned as the object owner.</p>
    #            </note>
    #   @return [Owner]
    # @!attribute restore_status
    #   <p>Specifies the restoration status of an object. Objects in certain storage classes must
    #            be restored before they can be retrieved. For more information about these storage classes
    #            and how to work with archived objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html"> Working with archived
    #               objects</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets. Only the S3 Express One Zone storage class is supported by directory buckets to store objects.</p>
    #            </note>
    #   @return [RestoreStatus]
    class Object
      include Hearth::Structure

      MEMBERS = %i[
        key
        last_modified
        e_tag
        checksum_algorithm
        size
        storage_class
        owner
        restore_status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>This action is not allowed against this storage tier.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class ObjectAlreadyInActiveTierError
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ObjectAttributes
    module ObjectAttributes
      ETAG = "ETag"

      CHECKSUM = "Checksum"

      OBJECT_PARTS = "ObjectParts"

      STORAGE_CLASS = "StorageClass"

      OBJECT_SIZE = "ObjectSize"
    end

    # Enum constants for ObjectCannedACL
    module ObjectCannedACL
      PRIVATE = "private"

      PUBLIC_READ = "public-read"

      PUBLIC_READ_WRITE = "public-read-write"

      AUTHENTICATED_READ = "authenticated-read"

      AWS_EXEC_READ = "aws-exec-read"

      BUCKET_OWNER_READ = "bucket-owner-read"

      BUCKET_OWNER_FULL_CONTROL = "bucket-owner-full-control"
    end

    # <p>Object Identifier is unique value to identify objects.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key (0)
    #   @option params [String] :version_id
    # @!attribute key
    #   <p>Key name of the object.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID for the specific version of the object to delete.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class ObjectIdentifier
      include Hearth::Structure

      MEMBERS = %i[
        key
        version_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The container element for Object Lock configuration parameters.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :object_lock_enabled
    #   @option params [ObjectLockRule] :rule
    # @!attribute object_lock_enabled
    #   <p>Indicates whether this bucket has an Object Lock configuration enabled. Enable
    #               <code>ObjectLockEnabled</code> when you apply <code>ObjectLockConfiguration</code> to a
    #            bucket. </p>
    #   Enum, one of: ["Enabled"]
    #   @return [String]
    # @!attribute rule
    #   <p>Specifies the Object Lock rule for the specified object. Enable the this rule when you
    #            apply <code>ObjectLockConfiguration</code> to a bucket. Bucket settings require both a mode
    #            and a period. The period can be either <code>Days</code> or <code>Years</code> but you must
    #            select one. You cannot specify <code>Days</code> and <code>Years</code> at the same
    #            time.</p>
    #   @return [ObjectLockRule]
    class ObjectLockConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        object_lock_enabled
        rule
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ObjectLockEnabled
    module ObjectLockEnabled
      ENABLED = "Enabled"
    end

    # <p>A legal hold configuration for an object.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status
    # @!attribute status
    #   <p>Indicates whether the specified object has a legal hold in place.</p>
    #   Enum, one of: ["ON", "OFF"]
    #   @return [String]
    class ObjectLockLegalHold
      include Hearth::Structure

      MEMBERS = %i[
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ObjectLockLegalHoldStatus
    module ObjectLockLegalHoldStatus
      ON = "ON"

      OFF = "OFF"
    end

    # Enum constants for ObjectLockMode
    module ObjectLockMode
      GOVERNANCE = "GOVERNANCE"

      COMPLIANCE = "COMPLIANCE"
    end

    # <p>A Retention configuration for an object.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :mode
    #   @option params [Time] :retain_until_date
    # @!attribute mode
    #   <p>Indicates the Retention mode for the specified object.</p>
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #   @return [String]
    # @!attribute retain_until_date
    #   <p>The date on which this Object Lock Retention will expire.</p>
    #   @return [Time]
    class ObjectLockRetention
      include Hearth::Structure

      MEMBERS = %i[
        mode
        retain_until_date
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ObjectLockRetentionMode
    module ObjectLockRetentionMode
      GOVERNANCE = "GOVERNANCE"

      COMPLIANCE = "COMPLIANCE"
    end

    # <p>The container element for an Object Lock rule.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [DefaultRetention] :default_retention
    # @!attribute default_retention
    #   <p>The default Object Lock retention mode and period that you want to apply to new objects
    #            placed in the specified bucket. Bucket settings require both a mode and a period. The
    #            period can be either <code>Days</code> or <code>Years</code> but you must select one. You
    #            cannot specify <code>Days</code> and <code>Years</code> at the same time.</p>
    #   @return [DefaultRetention]
    class ObjectLockRule
      include Hearth::Structure

      MEMBERS = %i[
        default_retention
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The source object of the COPY action is not in the active tier and is only stored in
    #          Amazon S3 Glacier.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class ObjectNotInActiveTierError
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ObjectOwnership
    # <p>The container element for object ownership for a bucket's ownership controls.</p>
    #          <p>
    #             <code>BucketOwnerPreferred</code> - Objects uploaded to the bucket change ownership to the bucket
    #          owner if the objects are uploaded with the <code>bucket-owner-full-control</code> canned
    #          ACL.</p>
    #          <p>
    #             <code>ObjectWriter</code> - The uploading account will own the object if the object is uploaded with
    #          the <code>bucket-owner-full-control</code> canned ACL.</p>
    #          <p>
    #             <code>BucketOwnerEnforced</code> - Access control lists (ACLs) are disabled and no longer affect
    #          permissions. The bucket owner automatically owns and has full control over every object in
    #          the bucket. The bucket only accepts PUT requests that don't specify an ACL or specify bucket owner
    #          full control ACLs (such as the predefined <code>bucket-owner-full-control</code> canned ACL or a custom ACL
    #          in XML format that grants the same permissions).</p>
    #          <p>By default, <code>ObjectOwnership</code> is set to <code>BucketOwnerEnforced</code> and ACLs are disabled. We recommend
    #       keeping ACLs disabled, except in uncommon use cases where you must control access for each object individually. For more information about S3 Object Ownership, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of objects and disabling ACLs for your bucket</a> in the <i>Amazon S3 User Guide</i>.
    #       </p>
    #          <note>
    #             <p>This functionality is not supported for directory buckets. Directory buckets use the bucket owner enforced setting for S3 Object Ownership.</p>
    #          </note>
    module ObjectOwnership
      BUCKET_OWNER_PREFERRED = "BucketOwnerPreferred"

      OBJECT_WRITER = "ObjectWriter"

      BUCKET_OWNER_ENFORCED = "BucketOwnerEnforced"
    end

    # <p>A container for elements related to an individual part.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :part_number
    #   @option params [Integer] :size
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    # @!attribute part_number
    #   <p>The part number identifying the part. This value is a positive integer between 1 and
    #            10,000.</p>
    #   @return [Integer]
    # @!attribute size
    #   <p>The size of the uploaded part in bytes.</p>
    #   @return [Integer]
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class ObjectPart
      include Hearth::Structure

      MEMBERS = %i[
        part_number
        size
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ObjectStorageClass
    module ObjectStorageClass
      STANDARD = "STANDARD"

      REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY"

      GLACIER = "GLACIER"

      STANDARD_IA = "STANDARD_IA"

      ONEZONE_IA = "ONEZONE_IA"

      INTELLIGENT_TIERING = "INTELLIGENT_TIERING"

      DEEP_ARCHIVE = "DEEP_ARCHIVE"

      OUTPOSTS = "OUTPOSTS"

      GLACIER_IR = "GLACIER_IR"

      SNOW = "SNOW"

      EXPRESS_ONEZONE = "EXPRESS_ONEZONE"
    end

    # <p>The version of an object.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :e_tag
    #   @option params [Array<String>] :checksum_algorithm
    #   @option params [Integer] :size
    #   @option params [String] :storage_class
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [Boolean] :is_latest
    #   @option params [Time] :last_modified
    #   @option params [Owner] :owner
    #   @option params [RestoreStatus] :restore_status
    # @!attribute e_tag
    #   <p>The entity tag is an MD5 hash of that version of the object.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #   @return [Array<String>]
    # @!attribute size
    #   <p>Size in bytes of the object.</p>
    #   @return [Integer]
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #   Enum, one of: ["STANDARD"]
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of an object.</p>
    #   @return [String]
    # @!attribute is_latest
    #   <p>Specifies whether the object is (true) or is not (false) the latest version of an
    #            object.</p>
    #   @return [Boolean]
    # @!attribute last_modified
    #   <p>Date and time when the object was last modified.</p>
    #   @return [Time]
    # @!attribute owner
    #   <p>Specifies the owner of the object.</p>
    #   @return [Owner]
    # @!attribute restore_status
    #   <p>Specifies the restoration status of an object. Objects in certain storage classes must
    #            be restored before they can be retrieved. For more information about these storage classes
    #            and how to work with archived objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html"> Working with archived
    #               objects</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [RestoreStatus]
    class ObjectVersion
      include Hearth::Structure

      MEMBERS = %i[
        e_tag
        checksum_algorithm
        size
        storage_class
        key
        version_id
        is_latest
        last_modified
        owner
        restore_status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ObjectVersionStorageClass
    module ObjectVersionStorageClass
      STANDARD = "STANDARD"
    end

    # Enum constants for OptionalObjectAttributes
    module OptionalObjectAttributes
      RESTORE_STATUS = "RestoreStatus"
    end

    # <p>Describes the location where the restore job's output is stored.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [S3Location] :s3
    # @!attribute s3
    #   <p>Describes an S3 location that will receive the results of the restore request.</p>
    #   @return [S3Location]
    class OutputLocation
      include Hearth::Structure

      MEMBERS = %i[
        s3
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Describes how results of the Select job are serialized.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [CSVOutput] :csv
    #   @option params [JSONOutput] :json
    # @!attribute csv
    #   <p>Describes the serialization of CSV-encoded Select results.</p>
    #   @return [CSVOutput]
    # @!attribute json
    #   <p>Specifies JSON as request's output serialization format.</p>
    #   @return [JSONOutput]
    class OutputSerialization
      include Hearth::Structure

      MEMBERS = %i[
        csv
        json
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for the owner's display name and ID.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :display_name
    #   @option params [String] :id
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
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute id
    #   <p>Container for the ID of the owner.</p>
    #   @return [String]
    class Owner
      include Hearth::Structure

      MEMBERS = %i[
        display_name
        id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for OwnerOverride
    module OwnerOverride
      DESTINATION = "Destination"
    end

    # <p>The container element for a bucket's ownership controls.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<OwnershipControlsRule>] :rules (0)
    # @!attribute rules
    #   <p>The container element for an ownership control rule.</p>
    #   @return [Array<OwnershipControlsRule>]
    class OwnershipControls
      include Hearth::Structure

      MEMBERS = %i[
        rules
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The container element for an ownership control rule.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :object_ownership (0)
    # @!attribute object_ownership
    #   <p>The container element for object ownership for a bucket's ownership controls.</p>
    #            <p>
    #               <code>BucketOwnerPreferred</code> - Objects uploaded to the bucket change ownership to the bucket
    #            owner if the objects are uploaded with the <code>bucket-owner-full-control</code> canned
    #            ACL.</p>
    #            <p>
    #               <code>ObjectWriter</code> - The uploading account will own the object if the object is uploaded with
    #            the <code>bucket-owner-full-control</code> canned ACL.</p>
    #            <p>
    #               <code>BucketOwnerEnforced</code> - Access control lists (ACLs) are disabled and no longer affect
    #            permissions. The bucket owner automatically owns and has full control over every object in
    #            the bucket. The bucket only accepts PUT requests that don't specify an ACL or specify bucket owner
    #            full control ACLs (such as the predefined <code>bucket-owner-full-control</code> canned ACL or a custom ACL
    #            in XML format that grants the same permissions).</p>
    #            <p>By default, <code>ObjectOwnership</code> is set to <code>BucketOwnerEnforced</code> and ACLs are disabled. We recommend
    #         keeping ACLs disabled, except in uncommon use cases where you must control access for each object individually. For more information about S3 Object Ownership, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of objects and disabling ACLs for your bucket</a> in the <i>Amazon S3 User Guide</i>.
    #         </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets. Directory buckets use the bucket owner enforced setting for S3 Object Ownership.</p>
    #            </note>
    #   Enum, one of: ["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"]
    #   @return [String]
    class OwnershipControlsRule
      include Hearth::Structure

      MEMBERS = %i[
        object_ownership
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for Parquet.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class ParquetInput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for elements related to a part.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :part_number
    #   @option params [Time] :last_modified
    #   @option params [String] :e_tag
    #   @option params [Integer] :size
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    # @!attribute part_number
    #   <p>Part number identifying the part. This is a positive integer between 1 and
    #            10,000.</p>
    #   @return [Integer]
    # @!attribute last_modified
    #   <p>Date and time at which the part was uploaded.</p>
    #   @return [Time]
    # @!attribute e_tag
    #   <p>Entity tag returned when the part was uploaded.</p>
    #   @return [String]
    # @!attribute size
    #   <p>Size in bytes of the uploaded part data.</p>
    #   @return [Integer]
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class Part
      include Hearth::Structure

      MEMBERS = %i[
        part_number
        last_modified
        e_tag
        size
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for PartitionDateSource
    module PartitionDateSource
      EVENT_TIME = "EventTime"

      DELIVERY_TIME = "DeliveryTime"
    end

    # <p>Amazon S3 keys for log objects are partitioned in the following format:</p>
    #          <p>
    #             <code>[DestinationPrefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]</code>
    #          </p>
    #          <p>PartitionedPrefix defaults to EventTime delivery when server access logs are delivered.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :partition_date_source
    # @!attribute partition_date_source
    #   <p>Specifies the partition date source for the partitioned prefix. PartitionDateSource can be EventTime or DeliveryTime.</p>
    #   Enum, one of: ["EventTime", "DeliveryTime"]
    #   @return [String]
    class PartitionedPrefix
      include Hearth::Structure

      MEMBERS = %i[
        partition_date_source
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for Payer
    module Payer
      REQUESTER = "Requester"

      BUCKET_OWNER = "BucketOwner"
    end

    # Enum constants for Permission
    module Permission
      FULL_CONTROL = "FULL_CONTROL"

      WRITE = "WRITE"

      WRITE_ACP = "WRITE_ACP"

      READ = "READ"

      READ_ACP = "READ_ACP"
    end

    # <p>The container element for a bucket's policy status.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :is_public
    # @!attribute is_public
    #   <p>The policy status for this bucket. <code>TRUE</code> indicates that this bucket is
    #            public. <code>FALSE</code> indicates that the bucket is not public.</p>
    #   @return [Boolean]
    class PolicyStatus
      include Hearth::Structure

      MEMBERS = %i[
        is_public
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>This data type contains information about progress of an operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :bytes_scanned
    #   @option params [Integer] :bytes_processed
    #   @option params [Integer] :bytes_returned
    # @!attribute bytes_scanned
    #   <p>The current number of object bytes scanned.</p>
    #   @return [Integer]
    # @!attribute bytes_processed
    #   <p>The current number of uncompressed object bytes processed.</p>
    #   @return [Integer]
    # @!attribute bytes_returned
    #   <p>The current number of bytes of records payload data returned.</p>
    #   @return [Integer]
    class Progress
      include Hearth::Structure

      MEMBERS = %i[
        bytes_scanned
        bytes_processed
        bytes_returned
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>This data type contains information about the progress event of an operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Progress] :details
    # @!attribute details
    #   <p>The Progress event details.</p>
    #   @return [Progress]
    class ProgressEvent
      include Hearth::Structure

      MEMBERS = %i[
        details
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for Protocol
    module Protocol
      HTTP = "http"

      HTTPS = "https"
    end

    # <p>The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can
    #          enable the configuration options in any combination. For more information about when Amazon S3
    #          considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :block_public_acls
    #   @option params [Boolean] :ignore_public_acls
    #   @option params [Boolean] :block_public_policy
    #   @option params [Boolean] :restrict_public_buckets
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
    #   @return [Boolean]
    # @!attribute ignore_public_acls
    #   <p>Specifies whether Amazon S3 should ignore public ACLs for this bucket and objects in this
    #            bucket. Setting this element to <code>TRUE</code> causes Amazon S3 to ignore all public ACLs on
    #            this bucket and objects in this bucket.</p>
    #            <p>Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't
    #            prevent new public ACLs from being set.</p>
    #   @return [Boolean]
    # @!attribute block_public_policy
    #   <p>Specifies whether Amazon S3 should block public bucket policies for this bucket. Setting this
    #            element to <code>TRUE</code> causes Amazon S3 to reject calls to PUT Bucket policy if the
    #            specified bucket policy allows public access. </p>
    #            <p>Enabling this setting doesn't affect existing bucket policies.</p>
    #   @return [Boolean]
    # @!attribute restrict_public_buckets
    #   <p>Specifies whether Amazon S3 should restrict public bucket policies for this bucket. Setting
    #            this element to <code>TRUE</code> restricts access to this bucket to only Amazon Web Service principals and authorized users within this account if the bucket has
    #            a public policy.</p>
    #            <p>Enabling this setting doesn't affect previously stored bucket policies, except that
    #            public and cross-account access within any public bucket policy, including non-public
    #            delegation to specific accounts, is blocked.</p>
    #   @return [Boolean]
    class PublicAccessBlockConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        block_public_acls
        ignore_public_acls
        block_public_policy
        restrict_public_buckets
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [AccelerateConfiguration] :accelerate_configuration
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :checksum_algorithm
    # @!attribute bucket
    #   <p>The name of the bucket for which the accelerate configuration is set.</p>
    #   @return [String]
    # @!attribute accelerate_configuration
    #   <p>Container for setting the transfer acceleration state.</p>
    #   @return [AccelerateConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    class PutBucketAccelerateConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        accelerate_configuration
        expected_bucket_owner
        checksum_algorithm
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketAccelerateConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :acl
    #   @option params [AccessControlPolicy] :access_control_policy
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :grant_full_control
    #   @option params [String] :grant_read
    #   @option params [String] :grant_read_acp
    #   @option params [String] :grant_write
    #   @option params [String] :grant_write_acp
    #   @option params [String] :expected_bucket_owner
    # @!attribute acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read"]
    #   @return [String]
    # @!attribute access_control_policy
    #   <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    #   @return [AccessControlPolicy]
    # @!attribute bucket
    #   <p>The bucket to which to apply the ACL.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864.</a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #   @return [String]
    # @!attribute grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and
    #            overwrites of those objects.</p>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketAclInput
      include Hearth::Structure

      MEMBERS = %i[
        acl
        access_control_policy
        bucket
        content_md5
        checksum_algorithm
        grant_full_control
        grant_read
        grant_read_acp
        grant_write
        grant_write_acp
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketAclOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    #   @option params [AnalyticsConfiguration] :analytics_configuration
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket to which an analytics configuration is stored.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #   @return [String]
    # @!attribute analytics_configuration
    #   <p>The configuration and any analyses for the analytics filter.</p>
    #   @return [AnalyticsConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketAnalyticsConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
        analytics_configuration
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketAnalyticsConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [CORSConfiguration] :cors_configuration
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>Specifies the bucket impacted by the <code>cors</code>configuration.</p>
    #   @return [String]
    # @!attribute cors_configuration
    #   <p>Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling
    #               Cross-Origin Resource Sharing</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #   @return [CORSConfiguration]
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864.</a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketCorsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        cors_configuration
        content_md5
        checksum_algorithm
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketCorsOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>Specifies default encryption for a bucket using server-side encryption with different
    #            key options. By default, all buckets have a default encryption configuration that uses
    #            server-side encryption with Amazon S3 managed keys (SSE-S3). You can optionally configure
    #            default encryption for a bucket by using server-side encryption with an Amazon Web Services KMS key
    #            (SSE-KMS) or a customer-provided key (SSE-C). For information about the bucket default
    #            encryption feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon S3 Bucket Default Encryption</a>
    #            in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the server-side encryption
    #            configuration.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute server_side_encryption_configuration
    #   <p>Specifies the default server-side-encryption configuration.</p>
    #   @return [ServerSideEncryptionConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketEncryptionInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        content_md5
        checksum_algorithm
        server_side_encryption_configuration
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketEncryptionOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    #   @option params [IntelligentTieringConfiguration] :intelligent_tiering_configuration
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #   @return [String]
    # @!attribute intelligent_tiering_configuration
    #   <p>Container for S3 Intelligent-Tiering configuration.</p>
    #   @return [IntelligentTieringConfiguration]
    class PutBucketIntelligentTieringConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
        intelligent_tiering_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketIntelligentTieringConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    #   @option params [InventoryConfiguration] :inventory_configuration
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket where the inventory configuration will be stored.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #   @return [String]
    # @!attribute inventory_configuration
    #   <p>Specifies the inventory configuration.</p>
    #   @return [InventoryConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketInventoryConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
        inventory_configuration
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketInventoryConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :checksum_algorithm
    #   @option params [BucketLifecycleConfiguration] :lifecycle_configuration
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket for which to set the configuration.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute lifecycle_configuration
    #   <p>Container for lifecycle rules. You can add as many as 1,000 rules.</p>
    #   @return [BucketLifecycleConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketLifecycleConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        checksum_algorithm
        lifecycle_configuration
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketLifecycleConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [BucketLoggingStatus] :bucket_logging_status
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket for which to set the logging parameters.</p>
    #   @return [String]
    # @!attribute bucket_logging_status
    #   <p>Container for logging status information.</p>
    #   @return [BucketLoggingStatus]
    # @!attribute content_md5
    #   <p>The MD5 hash of the <code>PutBucketLogging</code> request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketLoggingInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        bucket_logging_status
        content_md5
        checksum_algorithm
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketLoggingOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :id
    #   @option params [MetricsConfiguration] :metrics_configuration
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket for which the metrics configuration is set.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #   @return [String]
    # @!attribute metrics_configuration
    #   <p>Specifies the metrics configuration.</p>
    #   @return [MetricsConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketMetricsConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        id
        metrics_configuration
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketMetricsConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [NotificationConfiguration] :notification_configuration
    #   @option params [String] :expected_bucket_owner
    #   @option params [Boolean] :skip_destination_validation
    # @!attribute bucket
    #   <p>The name of the bucket.</p>
    #   @return [String]
    # @!attribute notification_configuration
    #   <p>A container for specifying the notification configuration of the bucket. If this element
    #            is empty, notifications are turned off for the bucket.</p>
    #   @return [NotificationConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute skip_destination_validation
    #   <p>Skips validation of Amazon SQS, Amazon SNS, and Lambda
    #            destinations. True or false value.</p>
    #   @return [Boolean]
    class PutBucketNotificationConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        notification_configuration
        expected_bucket_owner
        skip_destination_validation
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketNotificationConfigurationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :expected_bucket_owner
    #   @option params [OwnershipControls] :ownership_controls
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>OwnershipControls</code> you want to set.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash of the <code>OwnershipControls</code> request body. </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute ownership_controls
    #   <p>The <code>OwnershipControls</code> (BucketOwnerEnforced, BucketOwnerPreferred, or
    #            ObjectWriter) that you want to apply to this Amazon S3 bucket.</p>
    #   @return [OwnershipControls]
    class PutBucketOwnershipControlsInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        content_md5
        expected_bucket_owner
        ownership_controls
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketOwnershipControlsOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [Boolean] :confirm_remove_self_bucket_access
    #   @option params [String] :policy
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must also follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az_id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash of the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum-<i>algorithm</i>
    #               </code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>.</p>
    #            <p>For the <code>x-amz-checksum-<i>algorithm</i>
    #               </code> header, replace <code>
    #                  <i>algorithm</i>
    #               </code> with the supported algorithm from the following list: </p>
    #            <ul>
    #               <li>
    #                  <p>CRC32</p>
    #               </li>
    #               <li>
    #                  <p>CRC32C</p>
    #               </li>
    #               <li>
    #                  <p>SHA1</p>
    #               </li>
    #               <li>
    #                  <p>SHA256</p>
    #               </li>
    #            </ul>
    #            <p>For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If the individual checksum value you provide through <code>x-amz-checksum-<i>algorithm</i>
    #               </code> doesn't match the checksum algorithm you set through <code>x-amz-sdk-checksum-algorithm</code>,  Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter and uses the checksum algorithm that matches the provided value in <code>x-amz-checksum-<i>algorithm</i>
    #               </code>.</p>
    #            <note>
    #               <p>For directory buckets, when you use Amazon Web Services SDKs, <code>CRC32</code> is the default checksum algorithm that's used for performance.</p>
    #            </note>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute confirm_remove_self_bucket_access
    #   <p>Set this parameter to true to confirm that you want to remove your permissions to change
    #            this bucket policy in the future.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute policy
    #   <p>The bucket policy as a JSON document.</p>
    #            <p>For directory buckets, the only IAM action supported in the bucket policy is <code>s3express:CreateSession</code>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class PutBucketPolicyInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        content_md5
        checksum_algorithm
        confirm_remove_self_bucket_access
        policy
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketPolicyOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [ReplicationConfiguration] :replication_configuration
    #   @option params [String] :token
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the bucket</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute replication_configuration
    #   <p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a
    #            replication configuration is 2 MB.</p>
    #   @return [ReplicationConfiguration]
    # @!attribute token
    #   <p>A token to allow Object Lock to be enabled for an existing bucket.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketReplicationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        content_md5
        checksum_algorithm
        replication_configuration
        token
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketReplicationOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [RequestPaymentConfiguration] :request_payment_configuration
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute request_payment_configuration
    #   <p>Container for Payer.</p>
    #   @return [RequestPaymentConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketRequestPaymentInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        content_md5
        checksum_algorithm
        request_payment_configuration
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketRequestPaymentOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [Tagging] :tagging
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute tagging
    #   <p>Container for the <code>TagSet</code> and <code>Tag</code> elements.</p>
    #   @return [Tagging]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketTaggingInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        content_md5
        checksum_algorithm
        tagging
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketTaggingOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :mfa
    #   @option params [VersioningConfiguration] :versioning_configuration
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a
    #            message integrity check to verify that the request body was not corrupted in transit. For
    #            more information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device.</p>
    #   @return [String]
    # @!attribute versioning_configuration
    #   <p>Container for setting the versioning state.</p>
    #   @return [VersioningConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketVersioningInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        content_md5
        checksum_algorithm
        mfa
        versioning_configuration
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketVersioningOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [WebsiteConfiguration] :website_configuration
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute website_configuration
    #   <p>Container for the request.</p>
    #   @return [WebsiteConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketWebsiteInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        content_md5
        checksum_algorithm
        website_configuration
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutBucketWebsiteOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :acl
    #   @option params [AccessControlPolicy] :access_control_policy
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :grant_full_control
    #   @option params [String] :grant_read
    #   @option params [String] :grant_read_acp
    #   @option params [String] :grant_write
    #   @option params [String] :grant_write_acp
    #   @option params [String] :key
    #   @option params [String] :request_payer
    #   @option params [String] :version_id
    #   @option params [String] :expected_bucket_owner
    # @!attribute acl
    #   <p>The canned ACL to apply to the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #               ACL</a>.</p>
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   @return [String]
    # @!attribute access_control_policy
    #   <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    #   @return [AccessControlPolicy]
    # @!attribute bucket
    #   <p>The bucket name that contains the object to which you want to attach the ACL. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864.></a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #            <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #            <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #            <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #   @return [String]
    # @!attribute grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and
    #            overwrites of those objects.</p>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #            <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key for which the PUT action was initiated.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID used to reference a specific version of the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutObjectAclInput
      include Hearth::Structure

      MEMBERS = %i[
        acl
        access_control_policy
        bucket
        content_md5
        checksum_algorithm
        grant_full_control
        grant_read
        grant_read_acp
        grant_write
        grant_write_acp
        key
        request_payer
        version_id
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :request_charged
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class PutObjectAclOutput
      include Hearth::Structure

      MEMBERS = %i[
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :acl
    #   @option params [IO] :body
    #   @option params [String] :bucket
    #   @option params [String] :cache_control
    #   @option params [String] :content_disposition
    #   @option params [String] :content_encoding
    #   @option params [String] :content_language
    #   @option params [Integer] :content_length
    #   @option params [String] :content_md5
    #   @option params [String] :content_type
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    #   @option params [Time] :expires
    #   @option params [String] :grant_full_control
    #   @option params [String] :grant_read
    #   @option params [String] :grant_read_acp
    #   @option params [String] :grant_write_acp
    #   @option params [String] :key
    #   @option params [Hash<String, String>] :metadata
    #   @option params [String] :server_side_encryption
    #   @option params [String] :storage_class
    #   @option params [String] :website_redirect_location
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :ssekms_key_id
    #   @option params [String] :ssekms_encryption_context
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :request_payer
    #   @option params [String] :tagging
    #   @option params [String] :object_lock_mode
    #   @option params [Time] :object_lock_retain_until_date
    #   @option params [String] :object_lock_legal_hold_status
    #   @option params [String] :expected_bucket_owner
    # @!attribute acl
    #   <p>The canned ACL to apply to the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #            ACL</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When adding a new object, you can use headers to grant ACL-based permissions to
    #            individual Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are
    #            then added to the ACL on the object. By default, all objects are private. Only the owner
    #            has full access control. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL) Overview</a>
    #            and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html">Managing
    #               ACLs Using the REST API</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If the bucket that you're uploading objects to uses the bucket owner enforced setting
    #            for S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that
    #            use this setting only accept PUT requests that don't specify an ACL or PUT requests that
    #            specify bucket owner full control ACLs, such as the <code>bucket-owner-full-control</code>
    #            canned ACL or an equivalent form of this ACL expressed in the XML format. PUT requests that
    #            contain other ACLs (for example, custom grants to certain Amazon Web Services accounts) fail and return a
    #            <code>400</code> error with the error code <code>AccessControlListNotSupported</code>.
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html"> Controlling ownership of
    #               objects and disabling ACLs</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   @return [String]
    # @!attribute body
    #   <p>Object data.</p>
    #   @return [IO]
    # @!attribute bucket
    #   <p>The bucket name to which the PUT action was initiated. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Can be used to specify caching behavior along the request/reply chain. For more
    #            information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc6266#section-4">https://www.rfc-editor.org/rfc/rfc6266#section-4</a>.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding">https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding</a>.</p>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #   @return [String]
    # @!attribute content_length
    #   <p>Size of the body in bytes. This parameter is useful when the size of the body cannot be
    #            determined automatically. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length">https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length</a>.</p>
    #   @return [Integer]
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the message (without the headers) according to
    #            RFC 1864. This header can be used as a message integrity check to verify that the data is
    #            the same data that was originally sent. Although it is optional, we recommend using the
    #            Content-MD5 mechanism as an end-to-end integrity check. For more information about REST
    #            request authentication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST Authentication</a>.</p>
    #            <note>
    #               <p>The <code>Content-MD5</code> header is required for any request to upload an
    #            object with a retention period configured using Amazon S3 Object Lock. For more
    #            information about Amazon S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html">Amazon S3 Object Lock
    #               Overview</a> in the <i>Amazon S3 User Guide</i>. </p>
    #            </note>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the contents. For more information, see
    #               <a href="https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type">https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type</a>.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum-<i>algorithm</i>
    #               </code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>.</p>
    #            <p>For the <code>x-amz-checksum-<i>algorithm</i>
    #               </code> header, replace <code>
    #                  <i>algorithm</i>
    #               </code> with the supported algorithm from the following list: </p>
    #            <ul>
    #               <li>
    #                  <p>CRC32</p>
    #               </li>
    #               <li>
    #                  <p>CRC32C</p>
    #               </li>
    #               <li>
    #                  <p>SHA1</p>
    #               </li>
    #               <li>
    #                  <p>SHA256</p>
    #               </li>
    #            </ul>
    #            <p>For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If the individual checksum value you provide through <code>x-amz-checksum-<i>algorithm</i>
    #               </code> doesn't match the checksum algorithm you set through <code>x-amz-sdk-checksum-algorithm</code>,  Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter and uses the checksum algorithm that matches the provided value in <code>x-amz-checksum-<i>algorithm</i>
    #               </code>.</p>
    #            <note>
    #               <p>For directory buckets, when you use Amazon Web Services SDKs, <code>CRC32</code> is the default checksum algorithm that's used for performance.</p>
    #            </note>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable. For more information, see
    #               <a href="https://www.rfc-editor.org/rfc/rfc7234#section-5.3">https://www.rfc-editor.org/rfc/rfc7234#section-5.3</a>.</p>
    #   @return [Time]
    # @!attribute grant_full_control
    #   <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to read the object data and its metadata.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the object ACL.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable object.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the PUT action was initiated.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm that was used when you store this object in Amazon S3 (for example,
    #               <code>AES256</code>, <code>aws:kms</code>, <code>aws:kms:dsse</code>).</p>
    #            <p>
    #               <b>General purpose buckets </b> - You have four mutually exclusive options to protect data using server-side encryption in
    #                  Amazon S3, depending on how you choose to manage the encryption keys. Specifically, the
    #                  encryption key options are Amazon S3 managed keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS or
    #                  DSSE-KMS), and customer-provided keys (SSE-C). Amazon S3 encrypts data with server-side
    #                  encryption by using Amazon S3 managed keys (SSE-S3) by default. You can optionally tell Amazon S3 to
    #                  encrypt data at rest by using server-side encryption with other key options. For more
    #                  information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html">Using Server-Side
    #                     Encryption</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Directory buckets </b> - For directory buckets, only the server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) value is supported.</p>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute storage_class
    #   <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
    #            STANDARD storage class provides high durability and high availability. Depending on
    #            performance needs, you can specify a different Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>For directory buckets, only the S3 Express One Zone storage class is supported to store newly created objects.</p>
    #                  </li>
    #                  <li>
    #                     <p>Amazon S3 on Outposts only uses
    #                  the OUTPOSTS Storage Class.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata. For information about object metadata, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html">Object Key and Metadata</a> in the <i>Amazon S3
    #                  User Guide</i>.</p>
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
    #                  Configure Website Page Redirects</a> in the <i>Amazon S3
    #                     User Guide</i>. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example,
    #            <code>AES256</code>).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If <code>x-amz-server-side-encryption</code> has a valid value of <code>aws:kms</code>
    #            or <code>aws:kms:dsse</code>, this header specifies the ID (Key ID, Key ARN, or Key Alias) of the Key Management Service (KMS)
    #            symmetric encryption customer managed key that was used for the object. If you specify
    #               <code>x-amz-server-side-encryption:aws:kms</code> or
    #               <code>x-amz-server-side-encryption:aws:kms:dsse</code>, but do not provide<code>
    #               x-amz-server-side-encryption-aws-kms-key-id</code>, Amazon S3 uses the Amazon Web Services managed key
    #               (<code>aws/s3</code>) to protect the data. If the KMS key does not exist in the same
    #            account that's issuing the command, you must use the full ARN and not just the ID. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a base64-encoded UTF-8 string holding JSON with the encryption context
    #            key-value pairs. This value is stored as object metadata and automatically gets passed on
    #            to Amazon Web Services KMS for future <code>GetObject</code> or <code>CopyObject</code> operations on
    #            this object. This value must be explicitly added during <code>CopyObject</code> operations.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using Key Management Service (KMS) keys (SSE-KMS). Setting this header to
    #               <code>true</code> causes Amazon S3 to use an S3 Bucket Key for object encryption with
    #            SSE-KMS.</p>
    #            <p>Specifying this header with a PUT action doesn’t affect bucket-level settings for S3
    #            Bucket Key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute tagging
    #   <p>The tag-set for the object. The tag-set must be encoded as URL Query parameters. (For
    #            example, "Key1=Value1")</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode that you want to apply to this object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when you want this object's Object Lock to expire. Must be formatted
    #            as a timestamp parameter.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether a legal hold will be applied to this object. For more information
    #            about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Object Lock</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["ON", "OFF"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutObjectInput
      include Hearth::Structure

      MEMBERS = %i[
        acl
        body
        bucket
        cache_control
        content_disposition
        content_encoding
        content_language
        content_length
        content_md5
        content_type
        checksum_algorithm
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
        expires
        grant_full_control
        grant_read
        grant_read_acp
        grant_write_acp
        key
        metadata
        server_side_encryption
        storage_class
        website_redirect_location
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
        ssekms_key_id
        ssekms_encryption_context
        bucket_key_enabled
        request_payer
        tagging
        object_lock_mode
        object_lock_retain_until_date
        object_lock_legal_hold_status
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::PutObjectInput ' \
          "acl=#{acl || 'nil'}, " \
          "body=#{body || 'nil'}, " \
          "bucket=#{bucket || 'nil'}, " \
          "cache_control=#{cache_control || 'nil'}, " \
          "content_disposition=#{content_disposition || 'nil'}, " \
          "content_encoding=#{content_encoding || 'nil'}, " \
          "content_language=#{content_language || 'nil'}, " \
          "content_length=#{content_length || 'nil'}, " \
          "content_md5=#{content_md5 || 'nil'}, " \
          "content_type=#{content_type || 'nil'}, " \
          "checksum_algorithm=#{checksum_algorithm || 'nil'}, " \
          "checksum_crc32=#{checksum_crc32 || 'nil'}, " \
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, " \
          "checksum_sha1=#{checksum_sha1 || 'nil'}, " \
          "checksum_sha256=#{checksum_sha256 || 'nil'}, " \
          "expires=#{expires || 'nil'}, " \
          "grant_full_control=#{grant_full_control || 'nil'}, " \
          "grant_read=#{grant_read || 'nil'}, " \
          "grant_read_acp=#{grant_read_acp || 'nil'}, " \
          "grant_write_acp=#{grant_write_acp || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "metadata=#{metadata || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "storage_class=#{storage_class || 'nil'}, " \
          "website_redirect_location=#{website_redirect_location || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          'ssekms_encryption_context=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "request_payer=#{request_payer || 'nil'}, " \
          "tagging=#{tagging || 'nil'}, " \
          "object_lock_mode=#{object_lock_mode || 'nil'}, " \
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, " \
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [ObjectLockLegalHold] :legal_hold
    #   @option params [String] :request_payer
    #   @option params [String] :version_id
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name containing the object that you want to place a legal hold on. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key name for the object that you want to place a legal hold on.</p>
    #   @return [String]
    # @!attribute legal_hold
    #   <p>Container element for the legal hold configuration you want to apply to the specified
    #            object.</p>
    #   @return [ObjectLockLegalHold]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the object that you want to place a legal hold on.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutObjectLegalHoldInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        legal_hold
        request_payer
        version_id
        content_md5
        checksum_algorithm
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :request_charged
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class PutObjectLegalHoldOutput
      include Hearth::Structure

      MEMBERS = %i[
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [ObjectLockConfiguration] :object_lock_configuration
    #   @option params [String] :request_payer
    #   @option params [String] :token
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket whose Object Lock configuration you want to create or replace.</p>
    #   @return [String]
    # @!attribute object_lock_configuration
    #   <p>The Object Lock configuration that you want to apply to the specified bucket.</p>
    #   @return [ObjectLockConfiguration]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute token
    #   <p>A token to allow Object Lock to be enabled for an existing bucket.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutObjectLockConfigurationInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        object_lock_configuration
        request_payer
        token
        content_md5
        checksum_algorithm
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :request_charged
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class PutObjectLockConfigurationOutput
      include Hearth::Structure

      MEMBERS = %i[
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :expiration
    #   @option params [String] :e_tag
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    #   @option params [String] :server_side_encryption
    #   @option params [String] :version_id
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :ssekms_key_id
    #   @option params [String] :ssekms_encryption_context
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :request_charged
    # @!attribute expiration
    #   <p>If the expiration is configured for the object (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>) in the <i>Amazon S3 User Guide</i>, the response includes this header. It
    #            includes the <code>expiry-date</code> and <code>rule-id</code> key-value pairs that provide
    #            information about object expiration. The value of the <code>rule-id</code> is
    #            URL-encoded.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute e_tag
    #   <p>Entity tag for the uploaded object.</p>
    #            <p>
    #               <b>General purpose buckets </b> - To ensure that data is not corrupted traversing the network,
    #            for objects where the
    #            ETag is the MD5 digest of the object, you can calculate the MD5 while putting an object to Amazon S3 and compare the returned ETag to
    #         the calculated MD5 value.</p>
    #            <p>
    #               <b>Directory buckets </b> - The ETag for the object in a directory bucket isn't the MD5 digest of the object.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 (for example,
    #               <code>AES256</code>, <code>aws:kms</code>, <code>aws:kms:dsse</code>).</p>
    #            <note>
    #               <p>For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #            </note>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of the object.</p>
    #            <p>If you enable versioning for a bucket, Amazon S3 automatically generates a unique version ID
    #            for the object being stored. Amazon S3 returns this ID in the response. When you enable
    #            versioning for a bucket, if Amazon S3 receives multiple write requests for the same object
    #            simultaneously, it stores all of the objects. For more information about versioning, see
    #            <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html">Adding Objects to
    #               Versioning-Enabled Buckets</a> in the <i>Amazon S3
    #                  User Guide</i>. For information about returning the versioning state
    #            of a bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html">GetBucketVersioning</a>. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide the round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If <code>x-amz-server-side-encryption</code> has a valid value of <code>aws:kms</code>
    #            or <code>aws:kms:dsse</code>, this header indicates the ID of the Key Management Service (KMS)
    #            symmetric encryption customer managed key that was used for the object. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>If present, indicates the Amazon Web Services KMS Encryption Context to use for object encryption. The
    #            value of this header is a base64-encoded UTF-8 string holding JSON with the encryption
    #            context key-value pairs. This value is stored as object metadata and automatically gets
    #            passed on to Amazon Web Services KMS for future <code>GetObject</code> or <code>CopyObject</code>
    #            operations on this object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the uploaded object uses an S3 Bucket Key for server-side encryption
    #            with Key Management Service (KMS) keys (SSE-KMS).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class PutObjectOutput
      include Hearth::Structure

      MEMBERS = %i[
        expiration
        e_tag
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
        server_side_encryption
        version_id
        sse_customer_algorithm
        sse_customer_key_md5
        ssekms_key_id
        ssekms_encryption_context
        bucket_key_enabled
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::PutObjectOutput ' \
          "expiration=#{expiration || 'nil'}, " \
          "e_tag=#{e_tag || 'nil'}, " \
          "checksum_crc32=#{checksum_crc32 || 'nil'}, " \
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, " \
          "checksum_sha1=#{checksum_sha1 || 'nil'}, " \
          "checksum_sha256=#{checksum_sha256 || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "version_id=#{version_id || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          'ssekms_encryption_context=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "request_charged=#{request_charged || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [ObjectLockRetention] :retention
    #   @option params [String] :request_payer
    #   @option params [String] :version_id
    #   @option params [Boolean] :bypass_governance_retention
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name that contains the object you want to apply this Object Retention
    #            configuration to. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key name for the object that you want to apply this Object Retention configuration
    #            to.</p>
    #   @return [String]
    # @!attribute retention
    #   <p>The container element for the Object Retention configuration.</p>
    #   @return [ObjectLockRetention]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID for the object that you want to apply this Object Retention configuration
    #            to.</p>
    #   @return [String]
    # @!attribute bypass_governance_retention
    #   <p>Indicates whether this action should bypass Governance-mode restrictions.</p>
    #   @return [Boolean]
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutObjectRetentionInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        retention
        request_payer
        version_id
        bypass_governance_retention
        content_md5
        checksum_algorithm
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :request_charged
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class PutObjectRetentionOutput
      include Hearth::Structure

      MEMBERS = %i[
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [Tagging] :tagging
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :request_payer
    # @!attribute bucket
    #   <p>The bucket name containing the object. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Name of the object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The versionId of the object that the tag-set will be added to.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute tagging
    #   <p>Container for the <code>TagSet</code> and <code>Tag</code> elements</p>
    #   @return [Tagging]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class PutObjectTaggingInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        version_id
        content_md5
        checksum_algorithm
        tagging
        expected_bucket_owner
        request_payer
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :version_id
    # @!attribute version_id
    #   <p>The versionId of the object the tag-set was added to.</p>
    #   @return [String]
    class PutObjectTaggingOutput
      include Hearth::Structure

      MEMBERS = %i[
        version_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [PublicAccessBlockConfiguration] :public_access_block_configuration
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want
    #            to set.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash of the <code>PutPublicAccessBlock</code> request body. </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #            bucket. You can enable the configuration options in any combination. For more information
    #            about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [PublicAccessBlockConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutPublicAccessBlockInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        content_md5
        checksum_algorithm
        public_access_block_configuration
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class PutPublicAccessBlockOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the configuration for publishing messages to an Amazon Simple Queue Service
    #          (Amazon SQS) queue when Amazon S3 detects specified events.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id
    #   @option params [String] :queue_arn (0)
    #   @option params [Array<String>] :events (0)
    #   @option params [NotificationConfigurationFilter] :filter
    # @!attribute id
    #   <p>An optional unique identifier for configurations in a notification configuration. If you
    #            don't provide one, Amazon S3 will assign an ID.</p>
    #   @return [String]
    # @!attribute queue_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message
    #            when it detects events of the specified type.</p>
    #   @return [String]
    # @!attribute events
    #   <p>A collection of bucket events for which to send notifications</p>
    #   @return [Array<String>]
    # @!attribute filter
    #   <p>Specifies object key name filtering rules. For information about key name filtering, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html">Configuring event
    #               notifications using object key name filtering</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [NotificationConfigurationFilter]
    class QueueConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        id
        queue_arn
        events
        filter
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for QuoteFields
    module QuoteFields
      ALWAYS = "ALWAYS"

      ASNEEDED = "ASNEEDED"
    end

    # <p>The container for the records event.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :payload
    # @!attribute payload
    #   <p>The byte array of partial, one or more result records.</p>
    #   @return [String]
    class RecordsEvent
      include Hearth::Structure

      MEMBERS = %i[
        payload
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies how requests are redirected. In the event of an error, you can specify a
    #          different error code to return.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :host_name
    #   @option params [String] :http_redirect_code
    #   @option params [String] :protocol
    #   @option params [String] :replace_key_prefix_with
    #   @option params [String] :replace_key_with
    # @!attribute host_name
    #   <p>The host name to use in the redirect request.</p>
    #   @return [String]
    # @!attribute http_redirect_code
    #   <p>The HTTP redirect code to use on the response. Not required if one of the siblings is
    #            present.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>Protocol to use when redirecting requests. The default is the protocol that is used in
    #            the original request.</p>
    #   Enum, one of: ["http", "https"]
    #   @return [String]
    # @!attribute replace_key_prefix_with
    #   <p>The object key prefix to use in the redirect request. For example, to redirect requests
    #            for all pages with prefix <code>docs/</code> (objects in the <code>docs/</code> folder) to
    #               <code>documents/</code>, you can set a condition block with <code>KeyPrefixEquals</code>
    #            set to <code>docs/</code> and in the Redirect set <code>ReplaceKeyPrefixWith</code> to
    #               <code>/documents</code>. Not required if one of the siblings is present. Can be present
    #            only if <code>ReplaceKeyWith</code> is not provided.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute replace_key_with
    #   <p>The specific object key to use in the redirect request. For example, redirect request to
    #               <code>error.html</code>. Not required if one of the siblings is present. Can be present
    #            only if <code>ReplaceKeyPrefixWith</code> is not provided.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    class Redirect
      include Hearth::Structure

      MEMBERS = %i[
        host_name
        http_redirect_code
        protocol
        replace_key_prefix_with
        replace_key_with
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3
    #          bucket.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :host_name (0)
    #   @option params [String] :protocol
    # @!attribute host_name
    #   <p>Name of the host where requests are redirected.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>Protocol to use when redirecting requests. The default is the protocol that is used in
    #            the original request.</p>
    #   Enum, one of: ["http", "https"]
    #   @return [String]
    class RedirectAllRequestsTo
      include Hearth::Structure

      MEMBERS = %i[
        host_name
        protocol
      ].freeze

      attr_accessor(*MEMBERS)
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
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status (0)
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates modifications on replicas.</p>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    class ReplicaModifications
      include Hearth::Structure

      MEMBERS = %i[
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ReplicaModificationsStatus
    module ReplicaModificationsStatus
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # <p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a
    #          replication configuration is 2 MB.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :role (0)
    #   @option params [Array<ReplicationRule>] :rules (0)
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that Amazon S3 assumes when
    #            replicating objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html">How to Set Up Replication</a>
    #            in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>A container for one or more replication rules. A replication configuration must have at
    #            least one rule and can contain a maximum of 1,000 rules. </p>
    #   @return [Array<ReplicationRule>]
    class ReplicationConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        role
        rules
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies which Amazon S3 objects to replicate and where to store the replicas.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id
    #   @option params [Integer] :priority
    #   @option params [String] :prefix
    #   @option params [ReplicationRuleFilter] :filter
    #   @option params [String] :status (0)
    #   @option params [SourceSelectionCriteria] :source_selection_criteria
    #   @option params [ExistingObjectReplication] :existing_object_replication
    #   @option params [Destination] :destination (0)
    #   @option params [DeleteMarkerReplication] :delete_marker_replication
    # @!attribute id
    #   <p>A unique identifier for the rule. The maximum value is 255 characters.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority indicates which rule has precedence whenever two or more replication rules
    #            conflict. Amazon S3 will attempt to replicate objects according to all replication rules.
    #            However, if there are two or more rules with the same destination bucket, then objects will
    #            be replicated according to the rule with the highest priority. The higher the number, the
    #            higher the priority. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html">Replication</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the object or objects to which the rule
    #            applies. The maximum prefix length is 1,024 characters. To include all objects in a bucket,
    #            specify an empty string. </p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @deprecated
    #   @return [String]
    # @!attribute filter
    #   <p>A filter that identifies the subset of objects to which the replication rule applies. A
    #               <code>Filter</code> must specify exactly one <code>Prefix</code>, <code>Tag</code>, or
    #            an <code>And</code> child element.</p>
    #   @return [ReplicationRuleFilter]
    # @!attribute status
    #   <p>Specifies whether the rule is enabled.</p>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    # @!attribute source_selection_criteria
    #   <p>A container that describes additional filters for identifying the source objects that
    #            you want to replicate. You can choose to enable or disable the replication of these
    #            objects. Currently, Amazon S3 supports only the filter that you can specify for objects created
    #            with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service
    #            (SSE-KMS).</p>
    #   @return [SourceSelectionCriteria]
    # @!attribute existing_object_replication
    #   <p>Optional configuration to replicate existing source bucket objects. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication">Replicating Existing Objects</a> in the <i>Amazon S3 User Guide</i>.
    #         </p>
    #   @return [ExistingObjectReplication]
    # @!attribute destination
    #   <p>A container for information about the replication destination and its configurations
    #            including enabling the S3 Replication Time Control (S3 RTC).</p>
    #   @return [Destination]
    # @!attribute delete_marker_replication
    #   <p>Specifies whether Amazon S3 replicates delete markers. If you specify a <code>Filter</code>
    #            in your replication configuration, you must also include a
    #               <code>DeleteMarkerReplication</code> element. If your <code>Filter</code> includes a
    #               <code>Tag</code> element, the <code>DeleteMarkerReplication</code>
    #               <code>Status</code> must be set to Disabled, because Amazon S3 does not support replicating
    #            delete markers for tag-based rules. For an example configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-config-min-rule-config">Basic Rule Configuration</a>. </p>
    #            <p>For more information about delete marker replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/delete-marker-replication.html">Basic Rule
    #               Configuration</a>. </p>
    #            <note>
    #               <p>If you are using an earlier version of the replication configuration, Amazon S3 handles
    #               replication of delete markers differently. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations">Backward Compatibility</a>.</p>
    #            </note>
    #   @return [DeleteMarkerReplication]
    class ReplicationRule
      include Hearth::Structure

      MEMBERS = %i[
        id
        priority
        prefix
        filter
        status
        source_selection_criteria
        existing_object_replication
        destination
        delete_marker_replication
      ].freeze

      attr_accessor(*MEMBERS)
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
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :prefix
    #   @option params [Array<Tag>] :tags
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects to which the rule
    #            applies.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags containing key and value pairs.</p>
    #   @return [Array<Tag>]
    class ReplicationRuleAndOperator
      include Hearth::Structure

      MEMBERS = %i[
        prefix
        tags
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A filter that identifies the subset of objects to which the replication rule applies. A
    #             <code>Filter</code> must specify exactly one <code>Prefix</code>, <code>Tag</code>, or
    #          an <code>And</code> child element.</p>
    class ReplicationRuleFilter < Hearth::Union
      # <p>An object key name prefix that identifies the subset of objects to which the rule
      #          applies.</p>
      #          <important>
      #             <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
      #          XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
      #             XML related object key constraints</a>.</p>
      #          </important>
      class Prefix < ReplicationRuleFilter
        def to_h
          { prefix: super(__getobj__) }
        end
      end

      # <p>A container for specifying a tag key and value. </p>
      #          <p>The rule applies only to objects that have the tag in their tag set.</p>
      class Tag < ReplicationRuleFilter
        def to_h
          { tag: super(__getobj__) }
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
      class And < ReplicationRuleFilter
        def to_h
          { and: super(__getobj__) }
        end
      end

      class Unknown < ReplicationRuleFilter
        def initialize(name:, value:)
          super({name: name, value: value})
        end

        def to_h
          { unknown: super(__getobj__) }
        end
      end
    end

    # Enum constants for ReplicationRuleStatus
    module ReplicationRuleStatus
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # Enum constants for ReplicationStatus
    module ReplicationStatus
      COMPLETE = "COMPLETE"

      PENDING = "PENDING"

      FAILED = "FAILED"

      REPLICA = "REPLICA"

      COMPLETED = "COMPLETED"
    end

    # <p> A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is
    #          enabled and the time when all objects and operations on objects must be replicated. Must be
    #          specified together with a <code>Metrics</code> block. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status (0)
    #   @option params [ReplicationTimeValue] :time (0)
    # @!attribute status
    #   <p> Specifies whether the replication time is enabled. </p>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    # @!attribute time
    #   <p> A container specifying the time by which replication should be complete for all objects
    #            and operations on objects. </p>
    #   @return [ReplicationTimeValue]
    class ReplicationTime
      include Hearth::Structure

      MEMBERS = %i[
        status
        time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ReplicationTimeStatus
    module ReplicationTimeStatus
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # <p> A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics
    #             <code>EventThreshold</code>. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :minutes
    # @!attribute minutes
    #   <p> Contains an integer specifying time in minutes. </p>
    #            <p> Valid value: 15</p>
    #   @return [Integer]
    class ReplicationTimeValue
      include Hearth::Structure

      MEMBERS = %i[
        minutes
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for RequestCharged
    # <p>If present, indicates that the requester was successfully charged for the
    #          request.</p>
    #          <note>
    #             <p>This functionality is not supported for directory buckets.</p>
    #          </note>
    module RequestCharged
      REQUESTER = "requester"
    end

    # Enum constants for RequestPayer
    # <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #          owners need not specify this parameter in their requests. If either the source or
    #          destination S3 bucket has Requester Pays enabled, the requester will pay for
    #          corresponding charges to copy the object. For information about downloading objects from
    #          Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #             Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>This functionality is not supported for directory buckets.</p>
    #          </note>
    module RequestPayer
      REQUESTER = "requester"
    end

    # <p>Container for Payer.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :payer (0)
    # @!attribute payer
    #   <p>Specifies who pays for the download and request fees.</p>
    #   Enum, one of: ["Requester", "BucketOwner"]
    #   @return [String]
    class RequestPaymentConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        payer
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for specifying if periodic <code>QueryProgress</code> messages should be
    #          sent.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :enabled
    # @!attribute enabled
    #   <p>Specifies whether periodic QueryProgress frames should be sent. Valid values: TRUE,
    #            FALSE. Default value: FALSE.</p>
    #   @return [Boolean]
    class RequestProgress
      include Hearth::Structure

      MEMBERS = %i[
        enabled
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :version_id
    #   @option params [RestoreRequest] :restore_request
    #   @option params [String] :request_payer
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name containing the object to restore. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the action was initiated.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #   @return [String]
    # @!attribute restore_request
    #   <p>Container for restore job parameters.</p>
    #   @return [RestoreRequest]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class RestoreObjectInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        version_id
        restore_request
        request_payer
        checksum_algorithm
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :request_charged
    #   @option params [String] :restore_output_path
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute restore_output_path
    #   <p>Indicates the path in the provided S3 output location where Select results will be
    #            restored to.</p>
    #   @return [String]
    class RestoreObjectOutput
      include Hearth::Structure

      MEMBERS = %i[
        request_charged
        restore_output_path
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for restore job parameters.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :days
    #   @option params [GlacierJobParameters] :glacier_job_parameters
    #   @option params [String] :type
    #   @option params [String] :tier
    #   @option params [String] :description
    #   @option params [SelectParameters] :select_parameters
    #   @option params [OutputLocation] :output_location
    # @!attribute days
    #   <p>Lifetime of the active copy in days. Do not use with restores that specify
    #               <code>OutputLocation</code>.</p>
    #            <p>The Days element is required for regular restores, and must not be provided for select
    #            requests.</p>
    #   @return [Integer]
    # @!attribute glacier_job_parameters
    #   <p>S3 Glacier related parameters pertaining to this job. Do not use with restores that
    #            specify <code>OutputLocation</code>.</p>
    #   @return [GlacierJobParameters]
    # @!attribute type
    #   <p>Type of restore request.</p>
    #   Enum, one of: ["SELECT"]
    #   @return [String]
    # @!attribute tier
    #   <p>Retrieval tier at which the restore will be processed.</p>
    #   Enum, one of: ["Standard", "Bulk", "Expedited"]
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for the job.</p>
    #   @return [String]
    # @!attribute select_parameters
    #   <p>Describes the parameters for Select job types.</p>
    #   @return [SelectParameters]
    # @!attribute output_location
    #   <p>Describes the location where the restore job's output is stored.</p>
    #   @return [OutputLocation]
    class RestoreRequest
      include Hearth::Structure

      MEMBERS = %i[
        days
        glacier_job_parameters
        type
        tier
        description
        select_parameters
        output_location
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for RestoreRequestType
    module RestoreRequestType
      SELECT = "SELECT"
    end

    # <p>Specifies the restoration status of an object. Objects in certain storage classes must
    #          be restored before they can be retrieved. For more information about these storage classes
    #          and how to work with archived objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html"> Working with archived
    #             objects</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>This functionality is not supported for directory buckets. Only the S3 Express One Zone storage class is supported by directory buckets to store objects.</p>
    #          </note>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :is_restore_in_progress
    #   @option params [Time] :restore_expiry_date
    # @!attribute is_restore_in_progress
    #   <p>Specifies whether the object is currently being restored. If the object restoration is
    #            in progress, the header returns the value <code>TRUE</code>. For example:</p>
    #            <p>
    #               <code>x-amz-optional-object-attributes: IsRestoreInProgress="true"</code>
    #            </p>
    #            <p>If the object restoration has completed, the header returns the value
    #            <code>FALSE</code>. For example:</p>
    #            <p>
    #               <code>x-amz-optional-object-attributes: IsRestoreInProgress="false",
    #               RestoreExpiryDate="2012-12-21T00:00:00.000Z"</code>
    #            </p>
    #            <p>If the object hasn't been restored, there is no header response.</p>
    #   @return [Boolean]
    # @!attribute restore_expiry_date
    #   <p>Indicates when the restored copy will expire. This value is populated only if the object
    #            has already been restored. For example:</p>
    #            <p>
    #               <code>x-amz-optional-object-attributes: IsRestoreInProgress="false",
    #               RestoreExpiryDate="2012-12-21T00:00:00.000Z"</code>
    #            </p>
    #   @return [Time]
    class RestoreStatus
      include Hearth::Structure

      MEMBERS = %i[
        is_restore_in_progress
        restore_expiry_date
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the redirect behavior and when a redirect is applied. For more information
    #          about routing rules, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html#advanced-conditional-redirects">Configuring advanced conditional redirects</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Condition] :condition
    #   @option params [Redirect] :redirect (0)
    # @!attribute condition
    #   <p>A container for describing a condition that must be met for the specified redirect to
    #            apply. For example, 1. If request is for pages in the <code>/docs</code> folder, redirect
    #            to the <code>/documents</code> folder. 2. If request results in HTTP error 4xx, redirect
    #            request to another host where you might process the error.</p>
    #   @return [Condition]
    # @!attribute redirect
    #   <p>Container for redirect information. You can redirect requests to another host, to
    #            another page, or with another protocol. In the event of an error, you can specify a
    #            different error code to return.</p>
    #   @return [Redirect]
    class RoutingRule
      include Hearth::Structure

      MEMBERS = %i[
        condition
        redirect
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A container for object key name prefix and suffix filtering rules.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<FilterRule>] :filter_rules
    # @!attribute filter_rules
    #   <p>A list of containers for the key-value pair that defines the criteria for the filter
    #            rule.</p>
    #   @return [Array<FilterRule>]
    class S3KeyFilter
      include Hearth::Structure

      MEMBERS = %i[
        filter_rules
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Describes an Amazon S3 location that will receive the results of the restore request.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket_name (0)
    #   @option params [String] :prefix (0)
    #   @option params [Encryption] :encryption
    #   @option params [String] :canned_acl
    #   @option params [Array<Grant>] :access_control_list
    #   @option params [Tagging] :tagging
    #   @option params [Array<MetadataEntry>] :user_metadata
    #   @option params [String] :storage_class
    # @!attribute bucket_name
    #   <p>The name of the bucket where the restore results will be placed.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix that is prepended to the restore results for this request.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>Contains the type of server-side encryption used.</p>
    #   @return [Encryption]
    # @!attribute canned_acl
    #   <p>The canned ACL to apply to the restore results.</p>
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   @return [String]
    # @!attribute access_control_list
    #   <p>A list of grants that control access to the staged results.</p>
    #   @return [Array<Grant>]
    # @!attribute tagging
    #   <p>The tag-set that is applied to the restore results.</p>
    #   @return [Tagging]
    # @!attribute user_metadata
    #   <p>A list of metadata to store with the restore results in S3.</p>
    #   @return [Array<MetadataEntry>]
    # @!attribute storage_class
    #   <p>The class of storage used to store the restore results.</p>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    class S3Location
      include Hearth::Structure

      MEMBERS = %i[
        bucket_name
        prefix
        encryption
        canned_acl
        access_control_list
        tagging
        user_metadata
        storage_class
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the use of SSE-KMS to encrypt delivered inventory reports.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key_id (0)
    # @!attribute key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) symmetric encryption customer managed key to use for
    #            encrypting inventory reports.</p>
    #   @return [String]
    class SSEKMS
      include Hearth::Structure

      MEMBERS = %i[
        key_id
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::SSEKMS ' \
          'key_id=[SENSITIVE]>'
      end
    end

    # <p>Specifies the use of SSE-S3 to encrypt delivered inventory reports.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class SSES3
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the byte range of the object to get the records from. A record is processed
    #          when its first byte is contained by the range. This parameter is optional, but when
    #          specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the
    #          start and end of the range.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :start
    #   @option params [Integer] :end
    # @!attribute start
    #   <p>Specifies the start of the byte range. This parameter is optional. Valid values:
    #            non-negative integers. The default value is 0. If only <code>start</code> is supplied, it
    #            means scan from that point to the end of the file. For example,
    #               <code><scanrange><start>50</start></scanrange></code> means scan
    #            from byte 50 until the end of the file.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>Specifies the end of the byte range. This parameter is optional. Valid values:
    #            non-negative integers. The default value is one less than the size of the object being
    #            queried. If only the End parameter is supplied, it is interpreted to mean scan the last N
    #            bytes of the file. For example,
    #               <code><scanrange><end>50</end></scanrange></code> means scan the
    #            last 50 bytes.</p>
    #   @return [Integer]
    class ScanRange
      include Hearth::Structure

      MEMBERS = %i[
        start
        end
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The container for selecting objects from a content event stream.</p>
    class SelectObjectContentEventStream < Hearth::Union
      # <p>The Records Event.</p>
      class Records < SelectObjectContentEventStream
        def to_h
          { records: super(__getobj__) }
        end
      end

      # <p>The Stats Event.</p>
      class Stats < SelectObjectContentEventStream
        def to_h
          { stats: super(__getobj__) }
        end
      end

      # <p>The Progress Event.</p>
      class Progress < SelectObjectContentEventStream
        def to_h
          { progress: super(__getobj__) }
        end
      end

      # <p>The Continuation Event.</p>
      class Cont < SelectObjectContentEventStream
        def to_h
          { cont: super(__getobj__) }
        end
      end

      # <p>The End Event.</p>
      class End < SelectObjectContentEventStream
        def to_h
          { end: super(__getobj__) }
        end
      end

      class Unknown < SelectObjectContentEventStream
        def initialize(name:, value:)
          super({name: name, value: value})
        end

        def to_h
          { unknown: super(__getobj__) }
        end
      end
    end

    # <p>Request to filter the contents of an Amazon S3 object based on a simple Structured Query
    #          Language (SQL) statement. In the request, along with the SQL expression, you must specify a
    #          data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data
    #          into records. It returns only records that match the specified SQL expression. You must
    #          also specify the data serialization format for the response. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectSELECTContent.html">S3Select API Documentation</a>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :key
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :expression
    #   @option params [String] :expression_type
    #   @option params [RequestProgress] :request_progress
    #   @option params [InputSerialization] :input_serialization
    #   @option params [OutputSerialization] :output_serialization
    #   @option params [ScanRange] :scan_range
    #   @option params [String] :expected_bucket_owner
    # @!attribute bucket
    #   <p>The S3 bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created
    #       using a checksum algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The expression that is used to query the object.</p>
    #   @return [String]
    # @!attribute expression_type
    #   <p>The type of the provided expression (for example, SQL).</p>
    #   Enum, one of: ["SQL"]
    #   @return [String]
    # @!attribute request_progress
    #   <p>Specifies if periodic request progress information should be enabled.</p>
    #   @return [RequestProgress]
    # @!attribute input_serialization
    #   <p>Describes the format of the data in the object that is being queried.</p>
    #   @return [InputSerialization]
    # @!attribute output_serialization
    #   <p>Describes the format of the data that you want Amazon S3 to return in response.</p>
    #   @return [OutputSerialization]
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
    #   @return [ScanRange]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class SelectObjectContentInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        key
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
        expression
        expression_type
        request_progress
        input_serialization
        output_serialization
        scan_range
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::SelectObjectContentInput ' \
          "bucket=#{bucket || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          "expression=#{expression || 'nil'}, " \
          "expression_type=#{expression_type || 'nil'}, " \
          "request_progress=#{request_progress || 'nil'}, " \
          "input_serialization=#{input_serialization || 'nil'}, " \
          "output_serialization=#{output_serialization || 'nil'}, " \
          "scan_range=#{scan_range || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [SelectObjectContentEventStream] :payload
    # @!attribute payload
    #   <p>The array of results.</p>
    #   @return [SelectObjectContentEventStream]
    class SelectObjectContentOutput
      include Hearth::Structure

      MEMBERS = %i[
        payload
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Describes the parameters for Select job types.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [InputSerialization] :input_serialization (0)
    #   @option params [String] :expression_type (0)
    #   @option params [String] :expression (0)
    #   @option params [OutputSerialization] :output_serialization (0)
    # @!attribute input_serialization
    #   <p>Describes the serialization format of the object.</p>
    #   @return [InputSerialization]
    # @!attribute expression_type
    #   <p>The type of the provided expression (for example, SQL).</p>
    #   Enum, one of: ["SQL"]
    #   @return [String]
    # @!attribute expression
    #   <p>The expression that is used to query the object.</p>
    #   @return [String]
    # @!attribute output_serialization
    #   <p>Describes how the results of the Select job are serialized.</p>
    #   @return [OutputSerialization]
    class SelectParameters
      include Hearth::Structure

      MEMBERS = %i[
        input_serialization
        expression_type
        expression
        output_serialization
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ServerSideEncryption
    module ServerSideEncryption
      AES256 = "AES256"

      AWS_KMS = "aws:kms"

      AWS_KMS_DSSE = "aws:kms:dsse"
    end

    # <p>Describes the default server-side encryption to apply to new objects in the bucket. If a
    #          PUT Object request doesn't specify any server-side encryption, this default encryption will
    #          be applied. If you don't specify a customer managed key at configuration, Amazon S3 automatically creates
    #          an Amazon Web Services KMS key in your Amazon Web Services account the first time that you add an object encrypted
    #          with SSE-KMS to a bucket. By default, Amazon S3 uses this KMS key for SSE-KMS. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html">PUT Bucket encryption</a> in
    #          the <i>Amazon S3 API Reference</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :sse_algorithm (0)
    #   @option params [String] :kms_master_key_id
    # @!attribute sse_algorithm
    #   <p>Server-side encryption algorithm to use for the default encryption.</p>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute kms_master_key_id
    #   <p>Amazon Web Services Key Management Service (KMS) customer Amazon Web Services KMS key ID to use for the default
    #            encryption. This parameter is allowed if and only if <code>SSEAlgorithm</code> is set to
    #               <code>aws:kms</code>.</p>
    #            <p>You can specify the key ID, key alias, or the Amazon Resource Name (ARN) of the KMS
    #            key.</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key Alias: <code>alias/alias-name</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you use a key ID, you can run into a LogDestination undeliverable error when creating
    #            a VPC flow log. </p>
    #            <p>If you are using encryption with cross-account or Amazon Web Services service operations you must use
    #            a fully qualified KMS key ARN. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html#bucket-encryption-update-bucket-policy">Using encryption for cross-account operations</a>.</p>
    #            <important>
    #               <p>Amazon S3 only supports symmetric encryption KMS keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric keys in Amazon Web Services KMS</a> in the <i>Amazon Web Services Key Management Service
    #                  Developer Guide</i>.</p>
    #            </important>
    #   @return [String]
    class ServerSideEncryptionByDefault
      include Hearth::Structure

      MEMBERS = %i[
        sse_algorithm
        kms_master_key_id
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::ServerSideEncryptionByDefault ' \
          "sse_algorithm=#{sse_algorithm || 'nil'}, " \
          'kms_master_key_id=[SENSITIVE]>'
      end
    end

    # <p>Specifies the default server-side-encryption configuration.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ServerSideEncryptionRule>] :rules (0)
    # @!attribute rules
    #   <p>Container for information about a particular server-side encryption configuration
    #            rule.</p>
    #   @return [Array<ServerSideEncryptionRule>]
    class ServerSideEncryptionConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        rules
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies the default server-side encryption configuration.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ServerSideEncryptionByDefault] :apply_server_side_encryption_by_default
    #   @option params [Boolean] :bucket_key_enabled
    # @!attribute apply_server_side_encryption_by_default
    #   <p>Specifies the default server-side encryption to apply to new objects in the bucket. If a
    #            PUT Object request doesn't specify any server-side encryption, this default encryption will
    #            be applied.</p>
    #   @return [ServerSideEncryptionByDefault]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key with server-side encryption using KMS
    #            (SSE-KMS) for new objects in the bucket. Existing objects are not affected. Setting the
    #               <code>BucketKeyEnabled</code> element to <code>true</code> causes Amazon S3 to use an S3
    #            Bucket Key. By default, S3 Bucket Key is not enabled.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html">Amazon S3 Bucket Keys</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [Boolean]
    class ServerSideEncryptionRule
      include Hearth::Structure

      MEMBERS = %i[
        apply_server_side_encryption_by_default
        bucket_key_enabled
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The established temporary security credentials of the session.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> - These session credentials are only supported for the authentication and authorization of Zonal endpoint APIs on directory buckets.</p>
    #          </note>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :access_key_id (0)
    #   @option params [String] :secret_access_key (0)
    #   @option params [String] :session_token (0)
    #   @option params [Time] :expiration (0)
    # @!attribute access_key_id
    #   <p>A unique identifier that's associated with a secret access key. The access key ID and the secret access key are used together to sign programmatic Amazon Web Services requests cryptographically. </p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>A key that's used with the access key ID to cryptographically sign programmatic Amazon Web Services requests. Signing a request identifies the sender and prevents the request from being altered. </p>
    #   @return [String]
    # @!attribute session_token
    #   <p>A part of the temporary security credentials. The session token is used to validate the temporary security credentials.
    #
    #         </p>
    #   @return [String]
    # @!attribute expiration
    #   <p>Temporary security credentials expire after a specified interval. After temporary credentials expire, any calls that you make with those credentials will fail. So you must generate a new set of temporary credentials.
    #            Temporary credentials cannot be extended or refreshed beyond the original specified interval.</p>
    #   @return [Time]
    class SessionCredentials
      include Hearth::Structure

      MEMBERS = %i[
        access_key_id
        secret_access_key
        session_token
        expiration
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::SessionCredentials ' \
          "access_key_id=#{access_key_id || 'nil'}, " \
          'secret_access_key=[SENSITIVE], ' \
          'session_token=[SENSITIVE], ' \
          "expiration=#{expiration || 'nil'}>"
      end
    end

    # Enum constants for SessionMode
    module SessionMode
      READ_ONLY = "ReadOnly"

      READ_WRITE = "ReadWrite"
    end

    # <p>To use simple format for S3 keys for log objects, set SimplePrefix to an empty object.</p>
    #          <p>
    #             <code>[DestinationPrefix][YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]</code>
    #          </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class SimplePrefix
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A container that describes additional filters for identifying the source objects that
    #          you want to replicate. You can choose to enable or disable the replication of these
    #          objects. Currently, Amazon S3 supports only the filter that you can specify for objects created
    #          with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service
    #          (SSE-KMS).</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [SseKmsEncryptedObjects] :sse_kms_encrypted_objects
    #   @option params [ReplicaModifications] :replica_modifications
    # @!attribute sse_kms_encrypted_objects
    #   <p> A container for filter information for the selection of Amazon S3 objects encrypted with
    #            Amazon Web Services KMS. If you include <code>SourceSelectionCriteria</code> in the replication
    #            configuration, this element is required. </p>
    #   @return [SseKmsEncryptedObjects]
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
    #   @return [ReplicaModifications]
    class SourceSelectionCriteria
      include Hearth::Structure

      MEMBERS = %i[
        sse_kms_encrypted_objects
        replica_modifications
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A container for filter information for the selection of S3 objects encrypted with Amazon Web Services
    #          KMS.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status (0)
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates objects created with server-side encryption using an
    #            Amazon Web Services KMS key stored in Amazon Web Services Key Management Service.</p>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    class SseKmsEncryptedObjects
      include Hearth::Structure

      MEMBERS = %i[
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for SseKmsEncryptedObjectsStatus
    module SseKmsEncryptedObjectsStatus
      ENABLED = "Enabled"

      DISABLED = "Disabled"
    end

    # <p>Container for the stats details.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :bytes_scanned
    #   @option params [Integer] :bytes_processed
    #   @option params [Integer] :bytes_returned
    # @!attribute bytes_scanned
    #   <p>The total number of object bytes scanned.</p>
    #   @return [Integer]
    # @!attribute bytes_processed
    #   <p>The total number of uncompressed object bytes processed.</p>
    #   @return [Integer]
    # @!attribute bytes_returned
    #   <p>The total number of bytes of records payload data returned.</p>
    #   @return [Integer]
    class Stats
      include Hearth::Structure

      MEMBERS = %i[
        bytes_scanned
        bytes_processed
        bytes_returned
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for the Stats Event.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Stats] :details
    # @!attribute details
    #   <p>The Stats event details.</p>
    #   @return [Stats]
    class StatsEvent
      include Hearth::Structure

      MEMBERS = %i[
        details
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for StorageClass
    module StorageClass
      STANDARD = "STANDARD"

      REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY"

      STANDARD_IA = "STANDARD_IA"

      ONEZONE_IA = "ONEZONE_IA"

      INTELLIGENT_TIERING = "INTELLIGENT_TIERING"

      GLACIER = "GLACIER"

      DEEP_ARCHIVE = "DEEP_ARCHIVE"

      OUTPOSTS = "OUTPOSTS"

      GLACIER_IR = "GLACIER_IR"

      SNOW = "SNOW"

      EXPRESS_ONEZONE = "EXPRESS_ONEZONE"
    end

    # <p>Specifies data related to access patterns to be collected and made available to analyze
    #          the tradeoffs between different storage classes for an Amazon S3 bucket.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [StorageClassAnalysisDataExport] :data_export
    # @!attribute data_export
    #   <p>Specifies how data related to the storage class analysis for an Amazon S3 bucket should be
    #            exported.</p>
    #   @return [StorageClassAnalysisDataExport]
    class StorageClassAnalysis
      include Hearth::Structure

      MEMBERS = %i[
        data_export
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for data related to the storage class analysis for an Amazon S3 bucket for
    #          export.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :output_schema_version (0)
    #   @option params [AnalyticsExportDestination] :destination (0)
    # @!attribute output_schema_version
    #   <p>The version of the output schema to use when exporting data. Must be
    #            <code>V_1</code>.</p>
    #   Enum, one of: ["V_1"]
    #   @return [String]
    # @!attribute destination
    #   <p>The place to store the data for an analysis.</p>
    #   @return [AnalyticsExportDestination]
    class StorageClassAnalysisDataExport
      include Hearth::Structure

      MEMBERS = %i[
        output_schema_version
        destination
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for StorageClassAnalysisSchemaVersion
    module StorageClassAnalysisSchemaVersion
      V_1 = "V_1"
    end

    # <p>A container of a key value name pair.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key (0)
    #   @option params [String] :value (0)
    # @!attribute key
    #   <p>Name of the object key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of the tag.</p>
    #   @return [String]
    class Tag
      include Hearth::Structure

      MEMBERS = %i[
        key
        value
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Container for <code>TagSet</code> elements.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Tag>] :tag_set (0)
    # @!attribute tag_set
    #   <p>A collection for a set of tags</p>
    #   @return [Array<Tag>]
    class Tagging
      include Hearth::Structure

      MEMBERS = %i[
        tag_set
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for TaggingDirective
    module TaggingDirective
      COPY = "COPY"

      REPLACE = "REPLACE"
    end

    # <p>Container for granting information.</p>
    #          <p>Buckets that use the bucket owner enforced setting for Object Ownership don't support
    #          target grants. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general">Permissions server access log delivery</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Grantee] :grantee
    #   @option params [String] :permission
    # @!attribute grantee
    #   <p>Container for the person being granted permissions.</p>
    #   @return [Grantee]
    # @!attribute permission
    #   <p>Logging permissions assigned to the grantee for the bucket.</p>
    #   Enum, one of: ["FULL_CONTROL", "READ", "WRITE"]
    #   @return [String]
    class TargetGrant
      include Hearth::Structure

      MEMBERS = %i[
        grantee
        permission
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Amazon S3 key format for log objects. Only one format, PartitionedPrefix or SimplePrefix, is allowed.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [SimplePrefix] :simple_prefix
    #   @option params [PartitionedPrefix] :partitioned_prefix
    # @!attribute simple_prefix
    #   <p>To use the simple format for S3 keys for log objects. To specify SimplePrefix format, set SimplePrefix to {}.</p>
    #   @return [SimplePrefix]
    # @!attribute partitioned_prefix
    #   <p>Partitioned S3 key for log objects.</p>
    #   @return [PartitionedPrefix]
    class TargetObjectKeyFormat
      include Hearth::Structure

      MEMBERS = %i[
        simple_prefix
        partitioned_prefix
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for Tier
    module Tier
      STANDARD = "Standard"

      BULK = "Bulk"

      EXPEDITED = "Expedited"
    end

    # <p>The S3 Intelligent-Tiering storage class is designed to optimize storage costs by
    #          automatically moving data to the most cost-effective storage access tier, without
    #          additional operational overhead.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :days (0)
    #   @option params [String] :access_tier (0)
    # @!attribute days
    #   <p>The number of consecutive days of no access after which an object will be eligible to be
    #            transitioned to the corresponding tier. The minimum number of days specified for
    #            Archive Access tier must be at least 90 days and Deep Archive Access tier must be at least
    #            180 days. The maximum can be up to 2 years (730 days).</p>
    #   @return [Integer]
    # @!attribute access_tier
    #   <p>S3 Intelligent-Tiering access tier. See <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access">Storage class
    #               for automatically optimizing frequently and infrequently accessed objects</a> for a
    #            list of access tiers in the S3 Intelligent-Tiering storage class.</p>
    #   Enum, one of: ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    #   @return [String]
    class Tiering
      include Hearth::Structure

      MEMBERS = %i[
        days
        access_tier
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A container for specifying the configuration for publication of messages to an Amazon
    #          Simple Notification Service (Amazon SNS) topic when Amazon S3 detects specified events.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id
    #   @option params [String] :topic_arn (0)
    #   @option params [Array<String>] :events (0)
    #   @option params [NotificationConfigurationFilter] :filter
    # @!attribute id
    #   <p>An optional unique identifier for configurations in a notification configuration. If you
    #            don't provide one, Amazon S3 will assign an ID.</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which Amazon S3 publishes a message
    #            when it detects events of the specified type.</p>
    #   @return [String]
    # @!attribute events
    #   <p>The Amazon S3 bucket event about which to send notifications. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Supported
    #               Event Types</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute filter
    #   <p>Specifies object key name filtering rules. For information about key name filtering, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html">Configuring event
    #               notifications using object key name filtering</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #   @return [NotificationConfigurationFilter]
    class TopicConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        id
        topic_arn
        events
        filter
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies when an object transitions to a specified storage class. For more information
    #          about Amazon S3 lifecycle configuration rules, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html">Transitioning
    #             Objects Using Amazon S3 Lifecycle</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Time] :date
    #   @option params [Integer] :days
    #   @option params [String] :storage_class
    # @!attribute date
    #   <p>Indicates when objects are transitioned to the specified storage class. The date value
    #            must be in ISO 8601 format. The time is always midnight UTC.</p>
    #   @return [Time]
    # @!attribute days
    #   <p>Indicates the number of days after creation when objects are transitioned to the
    #            specified storage class. The value must be a positive integer.</p>
    #   @return [Integer]
    # @!attribute storage_class
    #   <p>The storage class to which you want the object to transition.</p>
    #   Enum, one of: ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #   @return [String]
    class Transition
      include Hearth::Structure

      MEMBERS = %i[
        date
        days
        storage_class
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for TransitionStorageClass
    module TransitionStorageClass
      GLACIER = "GLACIER"

      STANDARD_IA = "STANDARD_IA"

      ONEZONE_IA = "ONEZONE_IA"

      INTELLIGENT_TIERING = "INTELLIGENT_TIERING"

      DEEP_ARCHIVE = "DEEP_ARCHIVE"

      GLACIER_IR = "GLACIER_IR"
    end

    # Enum constants for Type
    module Type
      CANONICAL_USER = "CanonicalUser"

      AMAZON_CUSTOMER_BY_EMAIL = "AmazonCustomerByEmail"

      GROUP = "Group"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :bucket
    #   @option params [String] :copy_source
    #   @option params [String] :copy_source_if_match
    #   @option params [Time] :copy_source_if_modified_since
    #   @option params [String] :copy_source_if_none_match
    #   @option params [Time] :copy_source_if_unmodified_since
    #   @option params [String] :copy_source_range
    #   @option params [String] :key
    #   @option params [Integer] :part_number
    #   @option params [String] :upload_id
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :copy_source_sse_customer_algorithm
    #   @option params [String] :copy_source_sse_customer_key
    #   @option params [String] :copy_source_sse_customer_key_md5
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    #   @option params [String] :expected_source_bucket_owner
    # @!attribute bucket
    #   <p>The bucket name.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
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
    #                     <ul>
    #                        <li>
    #                           <p>Amazon S3 supports copy operations using Access points only when the source and destination buckets are in the same Amazon Web Services Region.</p>
    #                        </li>
    #                        <li>
    #                           <p>Access points are not supported by directory buckets.</p>
    #                        </li>
    #                     </ul>
    #                  </note>
    #                  <p>Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>. The value must be URL-encoded.  </p>
    #               </li>
    #            </ul>
    #            <p>If your bucket has versioning enabled, you could have multiple versions of the
    #            same object. By default, <code>x-amz-copy-source</code> identifies the current
    #            version of the source object to copy.
    #            To copy a specific version of the source object to copy, append <code>?versionId=<version-id></code>
    #            to the <code>x-amz-copy-source</code> request header (for example,
    #            <code>x-amz-copy-source: /awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>).
    #            </p>
    #            <p>If the current version is a delete marker and you
    #            don't specify a versionId in the <code>x-amz-copy-source</code> request header, Amazon S3 returns a
    #            <code>404 Not Found</code> error, because the object does not exist. If you specify versionId in the
    #            <code>x-amz-copy-source</code> and the versionId is a delete marker, Amazon S3
    #            returns an HTTP <code>400 Bad Request</code> error, because you are not allowed to specify a delete marker
    #            as a version for the <code>x-amz-copy-source</code>. </p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - S3 Versioning isn't enabled and supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_if_match
    #   <p>Copies the object if its entity tag (ETag) matches the specified tag.</p>
    #            <p>If both of the
    #         <code>x-amz-copy-source-if-match</code> and
    #         <code>x-amz-copy-source-if-unmodified-since</code> headers are present in the
    #         request as follows:</p>
    #            <p>
    #               <code>x-amz-copy-source-if-match</code> condition evaluates to <code>true</code>,
    #            and;</p>
    #            <p>
    #               <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to
    #            <code>false</code>;</p>
    #            <p>Amazon S3 returns <code>200 OK</code> and copies the data.
    #            </p>
    #   @return [String]
    # @!attribute copy_source_if_modified_since
    #   <p>Copies the object if it has been modified since the specified time.</p>
    #            <p>If both of the
    #         <code>x-amz-copy-source-if-none-match</code> and
    #         <code>x-amz-copy-source-if-modified-since</code> headers are present in the
    #         request as follows:</p>
    #            <p>
    #               <code>x-amz-copy-source-if-none-match</code> condition evaluates to
    #            <code>false</code>, and;</p>
    #            <p>
    #               <code>x-amz-copy-source-if-modified-since</code> condition evaluates to
    #            <code>true</code>;</p>
    #            <p>Amazon S3 returns <code>412 Precondition Failed</code> response code.
    #            </p>
    #   @return [Time]
    # @!attribute copy_source_if_none_match
    #   <p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>
    #            <p>If both of the
    #         <code>x-amz-copy-source-if-none-match</code> and
    #         <code>x-amz-copy-source-if-modified-since</code> headers are present in the
    #         request as follows:</p>
    #            <p>
    #               <code>x-amz-copy-source-if-none-match</code> condition evaluates to
    #            <code>false</code>, and;</p>
    #            <p>
    #               <code>x-amz-copy-source-if-modified-since</code> condition evaluates to
    #            <code>true</code>;</p>
    #            <p>Amazon S3 returns <code>412 Precondition Failed</code> response code.
    #            </p>
    #   @return [String]
    # @!attribute copy_source_if_unmodified_since
    #   <p>Copies the object if it hasn't been modified since the specified time.</p>
    #            <p>If both of the
    #            <code>x-amz-copy-source-if-match</code> and
    #            <code>x-amz-copy-source-if-unmodified-since</code> headers are present in the
    #            request as follows:</p>
    #            <p>
    #               <code>x-amz-copy-source-if-match</code> condition evaluates to <code>true</code>,
    #            and;</p>
    #            <p>
    #               <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to
    #            <code>false</code>;</p>
    #            <p>Amazon S3 returns <code>200 OK</code> and copies the data.
    #            </p>
    #   @return [Time]
    # @!attribute copy_source_range
    #   <p>The range of bytes to copy from the source object. The range value must use the form
    #            bytes=first-last, where the first and last are the zero-based byte offsets to copy. For
    #            example, bytes=0-9 indicates that you want to copy the first 10 bytes of the source. You
    #            can copy a range only if the source object is greater than 5 MB.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute part_number
    #   <p>Part number of part being copied. This is a positive integer between 1 and
    #            10,000.</p>
    #   @return [Integer]
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose part is being copied.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example,
    #            AES256).</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header. This must be the
    #            same encryption key specified in the initiate multipart upload request.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_sse_customer_algorithm
    #   <p>Specifies the algorithm to use when decrypting the source object (for example,
    #            <code>AES256</code>).</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source
    #            object. The encryption key provided in this header must be one that was used when the
    #            source object was created.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected destination bucket owner. If the account ID that you provide does not match the actual owner of the destination bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute expected_source_bucket_owner
    #   <p>The account ID of the expected source bucket owner. If the account ID that you provide does not match the actual owner of the source bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class UploadPartCopyInput
      include Hearth::Structure

      MEMBERS = %i[
        bucket
        copy_source
        copy_source_if_match
        copy_source_if_modified_since
        copy_source_if_none_match
        copy_source_if_unmodified_since
        copy_source_range
        key
        part_number
        upload_id
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
        copy_source_sse_customer_algorithm
        copy_source_sse_customer_key
        copy_source_sse_customer_key_md5
        request_payer
        expected_bucket_owner
        expected_source_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::UploadPartCopyInput ' \
          "bucket=#{bucket || 'nil'}, " \
          "copy_source=#{copy_source || 'nil'}, " \
          "copy_source_if_match=#{copy_source_if_match || 'nil'}, " \
          "copy_source_if_modified_since=#{copy_source_if_modified_since || 'nil'}, " \
          "copy_source_if_none_match=#{copy_source_if_none_match || 'nil'}, " \
          "copy_source_if_unmodified_since=#{copy_source_if_unmodified_since || 'nil'}, " \
          "copy_source_range=#{copy_source_range || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "part_number=#{part_number || 'nil'}, " \
          "upload_id=#{upload_id || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          "copy_source_sse_customer_algorithm=#{copy_source_sse_customer_algorithm || 'nil'}, " \
          'copy_source_sse_customer_key=[SENSITIVE], ' \
          "copy_source_sse_customer_key_md5=#{copy_source_sse_customer_key_md5 || 'nil'}, " \
          "request_payer=#{request_payer || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}, " \
          "expected_source_bucket_owner=#{expected_source_bucket_owner || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :copy_source_version_id
    #   @option params [CopyPartResult] :copy_part_result
    #   @option params [String] :server_side_encryption
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :ssekms_key_id
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :request_charged
    # @!attribute copy_source_version_id
    #   <p>The version of the source object that was copied, if you have enabled versioning on the
    #            source bucket.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_part_result
    #   <p>Container for all response elements.</p>
    #   @return [CopyPartResult]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 (for example,
    #               <code>AES256</code>, <code>aws:kms</code>).</p>
    #            <note>
    #               <p>For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #            </note>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide the round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the Key Management Service (KMS) symmetric encryption customer managed key
    #            that was used for the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption
    #            with Key Management Service (KMS) keys (SSE-KMS).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class UploadPartCopyOutput
      include Hearth::Structure

      MEMBERS = %i[
        copy_source_version_id
        copy_part_result
        server_side_encryption
        sse_customer_algorithm
        sse_customer_key_md5
        ssekms_key_id
        bucket_key_enabled
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::UploadPartCopyOutput ' \
          "copy_source_version_id=#{copy_source_version_id || 'nil'}, " \
          "copy_part_result=#{copy_part_result || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "request_charged=#{request_charged || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [IO] :body
    #   @option params [String] :bucket
    #   @option params [Integer] :content_length
    #   @option params [String] :content_md5
    #   @option params [String] :checksum_algorithm
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    #   @option params [String] :key
    #   @option params [Integer] :part_number
    #   @option params [String] :upload_id
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :request_payer
    #   @option params [String] :expected_bucket_owner
    # @!attribute body
    #   <p>Object data.</p>
    #   @return [IO]
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Availability Zone. Bucket names must follow the format <code>
    #                  <i>bucket_base_name</i>--<i>az-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az2</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Access points and Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute content_length
    #   <p>Size of the body in bytes. This parameter is useful when the size of the body cannot be
    #            determined automatically.</p>
    #   @return [Integer]
    # @!attribute content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the part data. This parameter is auto-populated
    #            when using the command from the CLI. This parameter is required if object lock parameters
    #            are specified.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #            <p>This checksum algorithm must be the same for all parts and it match the checksum value
    #            supplied in the <code>CreateMultipartUpload</code> request.</p>
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute part_number
    #   <p>Part number of part being uploaded. This is a positive integer between 1 and
    #            10,000.</p>
    #   @return [Integer]
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose part is being uploaded.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example,
    #            AES256).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm header</code>. This must be the
    #            same encryption key specified in the initiate multipart upload request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. If either the source or
    #            destination S3 bucket has Requester Pays enabled, the requester will pay for
    #            corresponding charges to copy the object. For information about downloading objects from
    #            Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class UploadPartInput
      include Hearth::Structure

      MEMBERS = %i[
        body
        bucket
        content_length
        content_md5
        checksum_algorithm
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
        key
        part_number
        upload_id
        sse_customer_algorithm
        sse_customer_key
        sse_customer_key_md5
        request_payer
        expected_bucket_owner
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::UploadPartInput ' \
          "body=#{body || 'nil'}, " \
          "bucket=#{bucket || 'nil'}, " \
          "content_length=#{content_length || 'nil'}, " \
          "content_md5=#{content_md5 || 'nil'}, " \
          "checksum_algorithm=#{checksum_algorithm || 'nil'}, " \
          "checksum_crc32=#{checksum_crc32 || 'nil'}, " \
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, " \
          "checksum_sha1=#{checksum_sha1 || 'nil'}, " \
          "checksum_sha256=#{checksum_sha256 || 'nil'}, " \
          "key=#{key || 'nil'}, " \
          "part_number=#{part_number || 'nil'}, " \
          "upload_id=#{upload_id || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'sse_customer_key=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          "request_payer=#{request_payer || 'nil'}, " \
          "expected_bucket_owner=#{expected_bucket_owner || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :server_side_encryption
    #   @option params [String] :e_tag
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :ssekms_key_id
    #   @option params [Boolean] :bucket_key_enabled
    #   @option params [String] :request_charged
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 (for example,
    #               <code>AES256</code>, <code>aws:kms</code>).</p>
    #            <note>
    #               <p>For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #            </note>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute e_tag
    #   <p>Entity tag for the uploaded object.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the
    #            response will include this header to provide the round-trip message integrity verification of
    #            the customer-provided encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the Key Management Service (KMS) symmetric encryption customer managed key
    #            that was used for the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption
    #            with Key Management Service (KMS) keys (SSE-KMS).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    class UploadPartOutput
      include Hearth::Structure

      MEMBERS = %i[
        server_side_encryption
        e_tag
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
        sse_customer_algorithm
        sse_customer_key_md5
        ssekms_key_id
        bucket_key_enabled
        request_charged
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::UploadPartOutput ' \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "e_tag=#{e_tag || 'nil'}, " \
          "checksum_crc32=#{checksum_crc32 || 'nil'}, " \
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, " \
          "checksum_sha1=#{checksum_sha1 || 'nil'}, " \
          "checksum_sha256=#{checksum_sha256 || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}, " \
          "request_charged=#{request_charged || 'nil'}>"
      end
    end

    # <p>Describes the versioning state of an Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html">PUT
    #             Bucket versioning</a> in the <i>Amazon S3 API Reference</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :mfa_delete
    #   @option params [String] :status
    # @!attribute mfa_delete
    #   <p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This
    #            element is only returned if the bucket has been configured with MFA delete. If the bucket
    #            has never been so configured, this element is not returned.</p>
    #   Enum, one of: ["Enabled", "Disabled"]
    #   @return [String]
    # @!attribute status
    #   <p>The versioning state of the bucket.</p>
    #   Enum, one of: ["Enabled", "Suspended"]
    #   @return [String]
    class VersioningConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        mfa_delete
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies website configuration parameters for an Amazon S3 bucket.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ErrorDocument] :error_document
    #   @option params [IndexDocument] :index_document
    #   @option params [RedirectAllRequestsTo] :redirect_all_requests_to
    #   @option params [Array<RoutingRule>] :routing_rules
    # @!attribute error_document
    #   <p>The name of the error document for the website.</p>
    #   @return [ErrorDocument]
    # @!attribute index_document
    #   <p>The name of the index document for the website.</p>
    #   @return [IndexDocument]
    # @!attribute redirect_all_requests_to
    #   <p>The redirect behavior for every request to this bucket's website endpoint.</p>
    #            <important>
    #               <p>If you specify this property, you can't specify any other property.</p>
    #            </important>
    #   @return [RedirectAllRequestsTo]
    # @!attribute routing_rules
    #   <p>Rules that define when a redirect is applied and the redirect behavior.</p>
    #   @return [Array<RoutingRule>]
    class WebsiteConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        error_document
        index_document
        redirect_all_requests_to
        routing_rules
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :request_route
    #   @option params [String] :request_token
    #   @option params [IO] :body
    #   @option params [Integer] :status_code
    #   @option params [String] :error_code
    #   @option params [String] :error_message
    #   @option params [String] :accept_ranges
    #   @option params [String] :cache_control
    #   @option params [String] :content_disposition
    #   @option params [String] :content_encoding
    #   @option params [String] :content_language
    #   @option params [Integer] :content_length
    #   @option params [String] :content_range
    #   @option params [String] :content_type
    #   @option params [String] :checksum_crc32
    #   @option params [String] :checksum_crc32_c
    #   @option params [String] :checksum_sha1
    #   @option params [String] :checksum_sha256
    #   @option params [Boolean] :delete_marker
    #   @option params [String] :e_tag
    #   @option params [Time] :expires
    #   @option params [String] :expiration
    #   @option params [Time] :last_modified
    #   @option params [Integer] :missing_meta
    #   @option params [Hash<String, String>] :metadata
    #   @option params [String] :object_lock_mode
    #   @option params [String] :object_lock_legal_hold_status
    #   @option params [Time] :object_lock_retain_until_date
    #   @option params [Integer] :parts_count
    #   @option params [String] :replication_status
    #   @option params [String] :request_charged
    #   @option params [String] :restore
    #   @option params [String] :server_side_encryption
    #   @option params [String] :sse_customer_algorithm
    #   @option params [String] :ssekms_key_id
    #   @option params [String] :sse_customer_key_md5
    #   @option params [String] :storage_class
    #   @option params [Integer] :tag_count
    #   @option params [String] :version_id
    #   @option params [Boolean] :bucket_key_enabled
    # @!attribute request_route
    #   <p>Route prefix to the HTTP URL generated.</p>
    #   @return [String]
    # @!attribute request_token
    #   <p>A single use encrypted token that maps <code>WriteGetObjectResponse</code> to the end
    #            user <code>GetObject</code> request.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The object data.</p>
    #   @return [IO]
    # @!attribute status_code
    #   <p>The integer status code for an HTTP response of a corresponding <code>GetObject</code>
    #            request. The following is a list of status codes.</p>
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
    #   @return [Integer]
    # @!attribute error_code
    #   <p>A string that uniquely identifies an error condition. Returned in the <Code> tag
    #            of the error XML response for a corresponding <code>GetObject</code> call. Cannot be used
    #            with a successful <code>StatusCode</code> header or when the transformed object is provided
    #            in the body. All error codes from S3 are sentence-cased. The regular expression (regex)
    #            value is <code>"^[A-Z][a-zA-Z]+$"</code>.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Contains a generic description of the error condition. Returned in the <Message>
    #            tag of the error XML response for a corresponding <code>GetObject</code> call. Cannot be
    #            used with a successful <code>StatusCode</code> header or when the transformed object is
    #            provided in body.</p>
    #   @return [String]
    # @!attribute accept_ranges
    #   <p>Indicates that a range of bytes was specified.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #   @return [String]
    # @!attribute content_length
    #   <p>The size of the content body in bytes.</p>
    #   @return [Integer]
    # @!attribute content_range
    #   <p>The portion of the object returned in the response.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #   @return [String]
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
    #   @return [String]
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
    #   @return [String]
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
    #   @return [String]
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
    #   @return [String]
    # @!attribute delete_marker
    #   <p>Specifies whether an object stored in Amazon S3 is (<code>true</code>) or is not
    #               (<code>false</code>) a delete marker. </p>
    #   @return [Boolean]
    # @!attribute e_tag
    #   <p>An opaque identifier assigned by a web server to a specific version of a resource found
    #            at a URL. </p>
    #   @return [String]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #   @return [Time]
    # @!attribute expiration
    #   <p>If the object expiration is configured (see PUT Bucket lifecycle), the response includes
    #            this header. It includes the <code>expiry-date</code> and <code>rule-id</code> key-value
    #            pairs that provide the object expiration information. The value of the <code>rule-id</code>
    #            is URL-encoded. </p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that the object was last modified.</p>
    #   @return [Time]
    # @!attribute missing_meta
    #   <p>Set to the number of metadata entries not returned in <code>x-amz-meta</code> headers.
    #            This can happen if you create metadata using an API like SOAP that supports more flexible
    #            metadata than the REST API. For example, using SOAP, you can create metadata whose values
    #            are not legal HTTP headers.</p>
    #   @return [Integer]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute object_lock_mode
    #   <p>Indicates whether an object stored in Amazon S3 has Object Lock enabled. For more information
    #            about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html">Object Lock</a>.</p>
    #   Enum, one of: ["GOVERNANCE", "COMPLIANCE"]
    #   @return [String]
    # @!attribute object_lock_legal_hold_status
    #   <p>Indicates whether an object stored in Amazon S3 has an active legal hold.</p>
    #   Enum, one of: ["ON", "OFF"]
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when Object Lock is configured to expire.</p>
    #   @return [Time]
    # @!attribute parts_count
    #   <p>The count of parts this object has.</p>
    #   @return [Integer]
    # @!attribute replication_status
    #   <p>Indicates if request involves bucket that is either a source or destination in a
    #            Replication rule. For more information about S3 Replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html">Replication</a>.</p>
    #   Enum, one of: ["COMPLETE", "PENDING", "FAILED", "REPLICA", "COMPLETED"]
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   Enum, one of: ["requester"]
    #   @return [String]
    # @!attribute restore
    #   <p>Provides information about object restoration operation and expiration time of the
    #            restored object copy.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p> The server-side encryption algorithm used when storing requested object in Amazon S3 (for
    #            example, AES256, <code>aws:kms</code>).</p>
    #   Enum, one of: ["AES256", "aws:kms", "aws:kms:dsse"]
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Encryption algorithm used if server-side encryption with a customer-provided encryption
    #            key was specified for object stored in Amazon S3.</p>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p> If present, specifies the ID (Key ID, Key ARN, or Key Alias) of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for stored in Amazon S3 object. </p>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p> 128-bit MD5 digest of customer-provided encryption key used in Amazon S3 to encrypt data
    #            stored in S3. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting data
    #               using server-side encryption with customer-provided encryption keys
    #            (SSE-C)</a>.</p>
    #   @return [String]
    # @!attribute storage_class
    #   <p>Provides storage class information of the object. Amazon S3 returns this header for all
    #            objects except for S3 Standard storage class objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>.</p>
    #   Enum, one of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   @return [String]
    # @!attribute tag_count
    #   <p>The number of tags, if any, on the object.</p>
    #   @return [Integer]
    # @!attribute version_id
    #   <p>An ID used to reference a specific version of the object.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p> Indicates whether the object stored in Amazon S3 uses an S3 bucket key for server-side
    #            encryption with Amazon Web Services KMS (SSE-KMS).</p>
    #   @return [Boolean]
    class WriteGetObjectResponseInput
      include Hearth::Structure

      MEMBERS = %i[
        request_route
        request_token
        body
        status_code
        error_code
        error_message
        accept_ranges
        cache_control
        content_disposition
        content_encoding
        content_language
        content_length
        content_range
        content_type
        checksum_crc32
        checksum_crc32_c
        checksum_sha1
        checksum_sha256
        delete_marker
        e_tag
        expires
        expiration
        last_modified
        missing_meta
        metadata
        object_lock_mode
        object_lock_legal_hold_status
        object_lock_retain_until_date
        parts_count
        replication_status
        request_charged
        restore
        server_side_encryption
        sse_customer_algorithm
        ssekms_key_id
        sse_customer_key_md5
        storage_class
        tag_count
        version_id
        bucket_key_enabled
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::S3::Types::WriteGetObjectResponseInput ' \
          "request_route=#{request_route || 'nil'}, " \
          "request_token=#{request_token || 'nil'}, " \
          "body=#{body || 'nil'}, " \
          "status_code=#{status_code || 'nil'}, " \
          "error_code=#{error_code || 'nil'}, " \
          "error_message=#{error_message || 'nil'}, " \
          "accept_ranges=#{accept_ranges || 'nil'}, " \
          "cache_control=#{cache_control || 'nil'}, " \
          "content_disposition=#{content_disposition || 'nil'}, " \
          "content_encoding=#{content_encoding || 'nil'}, " \
          "content_language=#{content_language || 'nil'}, " \
          "content_length=#{content_length || 'nil'}, " \
          "content_range=#{content_range || 'nil'}, " \
          "content_type=#{content_type || 'nil'}, " \
          "checksum_crc32=#{checksum_crc32 || 'nil'}, " \
          "checksum_crc32_c=#{checksum_crc32_c || 'nil'}, " \
          "checksum_sha1=#{checksum_sha1 || 'nil'}, " \
          "checksum_sha256=#{checksum_sha256 || 'nil'}, " \
          "delete_marker=#{delete_marker || 'nil'}, " \
          "e_tag=#{e_tag || 'nil'}, " \
          "expires=#{expires || 'nil'}, " \
          "expiration=#{expiration || 'nil'}, " \
          "last_modified=#{last_modified || 'nil'}, " \
          "missing_meta=#{missing_meta || 'nil'}, " \
          "metadata=#{metadata || 'nil'}, " \
          "object_lock_mode=#{object_lock_mode || 'nil'}, " \
          "object_lock_legal_hold_status=#{object_lock_legal_hold_status || 'nil'}, " \
          "object_lock_retain_until_date=#{object_lock_retain_until_date || 'nil'}, " \
          "parts_count=#{parts_count || 'nil'}, " \
          "replication_status=#{replication_status || 'nil'}, " \
          "request_charged=#{request_charged || 'nil'}, " \
          "restore=#{restore || 'nil'}, " \
          "server_side_encryption=#{server_side_encryption || 'nil'}, " \
          "sse_customer_algorithm=#{sse_customer_algorithm || 'nil'}, " \
          'ssekms_key_id=[SENSITIVE], ' \
          "sse_customer_key_md5=#{sse_customer_key_md5 || 'nil'}, " \
          "storage_class=#{storage_class || 'nil'}, " \
          "tag_count=#{tag_count || 'nil'}, " \
          "version_id=#{version_id || 'nil'}, " \
          "bucket_key_enabled=#{bucket_key_enabled || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class WriteGetObjectResponseOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

  end
end
