# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3Control
  module Types

    # <p>The container for abort incomplete multipart upload</p>
    #
    # @!attribute days_after_initiation
    #   <p>Specifies the number of days after which Amazon S3 aborts an incomplete multipart upload to
    #            the Outposts bucket.</p>
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

    # <p>An access point used to access a bucket.</p>
    #
    # @!attribute name
    #   <p>The name of this access point.</p>
    #
    #   @return [String]
    #
    # @!attribute network_origin
    #   <p>Indicates whether this access point allows access from the public internet. If
    #               <code>VpcConfiguration</code> is specified for this access point, then
    #               <code>NetworkOrigin</code> is <code>VPC</code>, and the access point doesn't allow access from
    #            the public internet. Otherwise, <code>NetworkOrigin</code> is <code>Internet</code>, and
    #            the access point allows access from the public internet, subject to the access point and bucket access
    #            policies.</p>
    #
    #   Enum, one of: ["Internet", "VPC"]
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>The virtual private cloud (VPC) configuration for this access point, if one exists.</p>
    #            <note>
    #               <p>This element is empty if this access point is an Amazon S3 on Outposts access point that is used by other
    #                  Amazon Web Services.</p>
    #            </note>
    #
    #   @return [VpcConfiguration]
    #
    # @!attribute bucket
    #   <p>The name of the bucket associated with this access point.</p>
    #
    #   @return [String]
    #
    # @!attribute access_point_arn
    #   <p>The ARN for the access point.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The name or alias of the access point.</p>
    #
    #   @return [String]
    #
    AccessPoint = ::Struct.new(
      :name,
      :network_origin,
      :vpc_configuration,
      :bucket,
      :access_point_arn,
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the account level Amazon S3 Storage Lens configuration.</p>
    #
    # @!attribute activity_metrics
    #   <p>A container for the S3 Storage Lens activity metrics.</p>
    #
    #   @return [ActivityMetrics]
    #
    # @!attribute bucket_level
    #   <p>A container for the S3 Storage Lens bucket-level configuration.</p>
    #
    #   @return [BucketLevel]
    #
    AccountLevel = ::Struct.new(
      :activity_metrics,
      :bucket_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the activity metrics.</p>
    #
    # @!attribute is_enabled
    #   <p>A container for whether the activity metrics are enabled.</p>
    #
    #   @return [Boolean]
    #
    ActivityMetrics = ::Struct.new(
      :is_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_enabled ||= false
      end
    end

    # <p>Error details for the failed asynchronous operation.</p>
    #
    # @!attribute code
    #   <p>A string that uniquely identifies the error condition.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A generic descritpion of the error condition in English.</p>
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The identifier of the resource associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The ID of the request associated with the error.</p>
    #
    #   @return [String]
    #
    AsyncErrorDetails = ::Struct.new(
      :code,
      :message,
      :resource,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the information about an asynchronous operation.</p>
    #
    # @!attribute creation_time
    #   <p>The time that the request was sent to the service.</p>
    #
    #   @return [Time]
    #
    # @!attribute operation
    #   <p>The specific operation for the asynchronous request.</p>
    #
    #   Enum, one of: ["CreateMultiRegionAccessPoint", "DeleteMultiRegionAccessPoint", "PutMultiRegionAccessPointPolicy"]
    #
    #   @return [String]
    #
    # @!attribute request_token_arn
    #   <p>The request token associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute request_parameters
    #   <p>The parameters associated with the request.</p>
    #
    #   @return [AsyncRequestParameters]
    #
    # @!attribute request_status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute response_details
    #   <p>The details of the response.</p>
    #
    #   @return [AsyncResponseDetails]
    #
    AsyncOperation = ::Struct.new(
      :creation_time,
      :operation,
      :request_token_arn,
      :request_parameters,
      :request_status,
      :response_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AsyncOperationName
    #
    module AsyncOperationName
      # No documentation available.
      #
      CreateMultiRegionAccessPoint = "CreateMultiRegionAccessPoint"

      # No documentation available.
      #
      DeleteMultiRegionAccessPoint = "DeleteMultiRegionAccessPoint"

      # No documentation available.
      #
      PutMultiRegionAccessPointPolicy = "PutMultiRegionAccessPointPolicy"
    end

    # <p>A container for the request parameters associated with an asynchronous request.</p>
    #
    # @!attribute create_multi_region_access_point_request
    #   <p>A container of the parameters for a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a> request.</p>
    #
    #   @return [CreateMultiRegionAccessPointInput]
    #
    # @!attribute delete_multi_region_access_point_request
    #   <p>A container of the parameters for a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a> request.</p>
    #
    #   @return [DeleteMultiRegionAccessPointInput]
    #
    # @!attribute put_multi_region_access_point_policy_request
    #   <p>A container of the parameters for a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPoint.html">PutMultiRegionAccessPoint</a> request.</p>
    #
    #   @return [PutMultiRegionAccessPointPolicyInput]
    #
    AsyncRequestParameters = ::Struct.new(
      :create_multi_region_access_point_request,
      :delete_multi_region_access_point_request,
      :put_multi_region_access_point_policy_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the response details that are returned when querying about an
    #          asynchronous request.</p>
    #
    # @!attribute multi_region_access_point_details
    #   <p>The details for the Multi-Region Access Point.</p>
    #
    #   @return [MultiRegionAccessPointsAsyncResponse]
    #
    # @!attribute error_details
    #   <p>Error details for an asynchronous request.</p>
    #
    #   @return [AsyncErrorDetails]
    #
    AsyncResponseDetails = ::Struct.new(
      :multi_region_access_point_details,
      :error_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lambda function used to transform objects through an Object Lambda Access Point.</p>
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute function_payload
    #   <p>Additional JSON that provides supplemental data to the Lambda function used to transform
    #            objects.</p>
    #
    #   @return [String]
    #
    AwsLambdaTransformation = ::Struct.new(
      :function_arn,
      :function_payload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested Outposts bucket name is not available. The bucket namespace is shared by
    #          all users of the Outposts in this Region. Select a different name and try
    #          again.</p>
    #
    BucketAlreadyExists = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Outposts bucket you tried to create already exists, and you own it. </p>
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

    # <p>A container for the bucket-level configuration.</p>
    #
    # @!attribute activity_metrics
    #   <p>A container for the bucket-level activity metrics for Amazon S3 Storage Lens</p>
    #
    #   @return [ActivityMetrics]
    #
    # @!attribute prefix_level
    #   <p>A container for the bucket-level prefix-level metrics for S3 Storage Lens</p>
    #
    #   @return [PrefixLevel]
    #
    BucketLevel = ::Struct.new(
      :activity_metrics,
      :prefix_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BucketLocationConstraint
    #
    module BucketLocationConstraint
      # No documentation available.
      #
      EU = "EU"

      # No documentation available.
      #
      eu_west_1 = "eu-west-1"

      # No documentation available.
      #
      us_west_1 = "us-west-1"

      # No documentation available.
      #
      us_west_2 = "us-west-2"

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
      ap_northeast_1 = "ap-northeast-1"

      # No documentation available.
      #
      sa_east_1 = "sa-east-1"

      # No documentation available.
      #
      cn_north_1 = "cn-north-1"

      # No documentation available.
      #
      eu_central_1 = "eu-central-1"
    end

    # <p>A container for enabling Amazon CloudWatch publishing for S3 Storage Lens metrics.</p>
    #          <p>For more information about publishing S3 Storage Lens metrics to CloudWatch, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_view_metrics_cloudwatch.html">Monitor
    #             S3 Storage Lens metrics in CloudWatch</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute is_enabled
    #   <p>A container that indicates whether CloudWatch publishing for S3 Storage Lens metrics is enabled. A
    #            value of <code>true</code> indicates that CloudWatch publishing for S3 Storage Lens metrics is
    #            enabled.</p>
    #
    #   @return [Boolean]
    #
    CloudWatchMetrics = ::Struct.new(
      :is_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_enabled ||= false
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for owner of the specified Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name you want to assign to this Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>Object Lambda Access Point configuration as a JSON document.</p>
    #
    #   @return [ObjectLambdaConfiguration]
    #
    CreateAccessPointForObjectLambdaInput = ::Struct.new(
      :account_id,
      :name,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute object_lambda_access_point_arn
    #   <p>Specifies the ARN for the Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    CreateAccessPointForObjectLambdaOutput = ::Struct.new(
      :object_lambda_access_point_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the bucket for which you want to create an
    #            access point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name you want to assign to this access point.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket that you want to associate this access point with.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>If you include this field, Amazon S3 restricts access to this access point to requests from the
    #            specified virtual private cloud (VPC).</p>
    #            <note>
    #               <p>This is required for creating an access point for Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [VpcConfiguration]
    #
    # @!attribute public_access_block_configuration
    #   <p> The <code>PublicAccessBlock</code> configuration that you want to apply to the access point.
    #         </p>
    #
    #   @return [PublicAccessBlockConfiguration]
    #
    CreateAccessPointInput = ::Struct.new(
      :account_id,
      :name,
      :bucket,
      :vpc_configuration,
      :public_access_block_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_point_arn
    #   <p>The ARN of the access point.</p>
    #            <note>
    #               <p>This is only supported by Amazon S3 on Outposts.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The name or alias of the access point.</p>
    #
    #   @return [String]
    #
    CreateAccessPointOutput = ::Struct.new(
      :access_point_arn,
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container for the bucket configuration.</p>
    #          <note>
    #             <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #          </note>
    #
    # @!attribute location_constraint
    #   <p>Specifies the Region where the bucket will be created. If you are creating a bucket on
    #            the US East (N. Virginia) Region (us-east-1), you do not need to specify the location. </p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   Enum, one of: ["EU", "eu-west-1", "us-west-1", "us-west-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1", "cn-north-1", "eu-central-1"]
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
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   Enum, one of: ["private", "public-read", "public-read-write", "authenticated-read"]
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute create_bucket_configuration
    #   <p>The configuration information for the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [CreateBucketConfiguration]
    #
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute grant_write
    #   <p>Allows grantee to create, overwrite, and delete any object in the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute object_lock_enabled_for_bucket
    #   <p>Specifies whether you want S3 Object Lock to be enabled for the new bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute outpost_id
    #   <p>The ID of the Outposts where the bucket is being created.</p>
    #            <note>
    #               <p>This is required by Amazon S3 on Outposts buckets.</p>
    #            </note>
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
      :outpost_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.object_lock_enabled_for_bucket ||= false
      end
    end

    # @!attribute location
    #   <p>The location of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    CreateBucketOutput = ::Struct.new(
      :location,
      :bucket_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that creates the job.</p>
    #
    #   @return [String]
    #
    # @!attribute confirmation_required
    #   <p>Indicates whether confirmation is required before Amazon S3 runs the job. Confirmation is
    #            only required for jobs created through the Amazon S3 console.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute operation
    #   <p>The action that you want this job to perform on every object listed in the manifest. For
    #            more information about the available actions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-actions.html">Operations</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [JobOperation]
    #
    # @!attribute report
    #   <p>Configuration parameters for the optional job-completion report.</p>
    #
    #   @return [JobReport]
    #
    # @!attribute client_request_token
    #   <p>An idempotency token to ensure that you don't accidentally submit the same request
    #            twice. You can use any string up to the maximum length.</p>
    #
    #   @return [String]
    #
    # @!attribute manifest
    #   <p>Configuration parameters for the manifest.</p>
    #
    #   @return [JobManifest]
    #
    # @!attribute description
    #   <p>A description for this job. You can use any string within the permitted length.
    #            Descriptions don't need to be unique and can be used for multiple jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The numerical priority for this job. Higher numbers indicate higher priority.</p>
    #
    #   @return [Integer]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) for the Identity and Access Management (IAM) role that Batch Operations will
    #            use to run this job's action on every object in the manifest.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A set of tags to associate with the S3 Batch Operations job. This is an optional parameter.
    #         </p>
    #
    #   @return [Array<S3Tag>]
    #
    # @!attribute manifest_generator
    #   <p>The attribute container for the ManifestGenerator details. Jobs must be created with
    #            either a manifest file or a ManifestGenerator, but not both.</p>
    #
    #   @return [JobManifestGenerator]
    #
    CreateJobInput = ::Struct.new(
      :account_id,
      :confirmation_required,
      :operation,
      :report,
      :client_request_token,
      :manifest,
      :description,
      :priority,
      :role_arn,
      :tags,
      :manifest_generator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID for this job. Amazon S3 generates this ID automatically and returns it after a
    #            successful <code>Create Job</code> request.</p>
    #
    #   @return [String]
    #
    CreateJobOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the information associated with a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a> request. </p>
    #
    # @!attribute name
    #   <p>The name of the Multi-Region Access Point associated with this request.</p>
    #
    #   @return [String]
    #
    # @!attribute public_access_block
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #            account. You can enable the configuration options in any combination. For more information
    #            about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>This is not supported for Amazon S3 on Outposts.</p>
    #
    #   @return [PublicAccessBlockConfiguration]
    #
    # @!attribute regions
    #   <p>The buckets in different Regions that are associated with the Multi-Region Access Point.</p>
    #
    #   @return [Array<Region>]
    #
    CreateMultiRegionAccessPointInput = ::Struct.new(
      :name,
      :public_access_block,
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point. The owner of the Multi-Region Access Point also must own
    #            the underlying buckets.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>A container element containing details about the Multi-Region Access Point.</p>
    #
    #   @return [CreateMultiRegionAccessPointInput]
    #
    CreateMultiRegionAccessPointOperationInput = ::Struct.new(
      :account_id,
      :client_token,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_token_arn
    #   <p>The request token associated with the request. You can use this token with <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a> to determine the status of asynchronous
    #            requests.</p>
    #
    #   @return [String]
    #
    CreateMultiRegionAccessPointOutput = ::Struct.new(
      :request_token_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the access point you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteAccessPointForObjectLambdaInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAccessPointForObjectLambdaOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the access point you want to delete.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #
    #   @return [String]
    #
    DeleteAccessPointInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAccessPointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point you want to delete the policy for.</p>
    #
    #   @return [String]
    #
    DeleteAccessPointPolicyForObjectLambdaInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAccessPointPolicyForObjectLambdaOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the access point whose policy you want to delete.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #
    #   @return [String]
    #
    DeleteAccessPointPolicyInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAccessPointPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID that owns the Outposts bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>Specifies the bucket being deleted.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    DeleteBucketInput = ::Struct.new(
      :account_id,
      :bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID of the lifecycle configuration to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    DeleteBucketLifecycleConfigurationInput = ::Struct.new(
      :account_id,
      :bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBucketLifecycleConfigurationOutput = ::Struct.new(
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

    # @!attribute account_id
    #   <p>The account ID of the Outposts bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    DeleteBucketPolicyInput = ::Struct.new(
      :account_id,
      :bucket,
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

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket tag set to be removed.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The bucket ARN that has the tag set to be removed.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    DeleteBucketTaggingInput = ::Struct.new(
      :account_id,
      :bucket,
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

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteJobTaggingInput = ::Struct.new(
      :account_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteJobTaggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the information associated with a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a> request.</p>
    #
    # @!attribute name
    #   <p>The name of the Multi-Region Access Point associated with this request.</p>
    #
    #   @return [String]
    #
    DeleteMultiRegionAccessPointInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>A container element containing details about the Multi-Region Access Point.</p>
    #
    #   @return [DeleteMultiRegionAccessPointInput]
    #
    DeleteMultiRegionAccessPointOperationInput = ::Struct.new(
      :account_id,
      :client_token,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_token_arn
    #   <p>The request token associated with the request. You can use this token with <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a> to determine the status of asynchronous
    #            requests.</p>
    #
    #   @return [String]
    #
    DeleteMultiRegionAccessPointOutput = ::Struct.new(
      :request_token_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to remove.</p>
    #
    #   @return [String]
    #
    DeletePublicAccessBlockInput = ::Struct.new(
      :account_id,
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

    # @!attribute config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #
    #   @return [String]
    #
    DeleteStorageLensConfigurationInput = ::Struct.new(
      :config_id,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStorageLensConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #
    #   @return [String]
    #
    DeleteStorageLensConfigurationTaggingInput = ::Struct.new(
      :config_id,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStorageLensConfigurationTaggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job whose information you want to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeJobInput = ::Struct.new(
      :account_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p>Contains the configuration parameters and status for the job specified in the
    #               <code>Describe Job</code> request.</p>
    #
    #   @return [JobDescriptor]
    #
    DescribeJobOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute request_token_arn
    #   <p>The request token associated with the request you want to know about. This request token
    #            is returned as part of the response when you make an asynchronous request. You provide this
    #            token to query about the status of the asynchronous action.</p>
    #
    #   @return [String]
    #
    DescribeMultiRegionAccessPointOperationInput = ::Struct.new(
      :account_id,
      :request_token_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute async_operation
    #   <p>A container element containing the details of the asynchronous operation.</p>
    #
    #   @return [AsyncOperation]
    #
    DescribeMultiRegionAccessPointOperationOutput = ::Struct.new(
      :async_operation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The last established access control policy for a Multi-Region Access Point.</p>
    #          <p>When you update the policy, the update is first listed as the proposed policy. After the
    #          update is finished and all Regions have been updated, the proposed policy is listed as the
    #          established policy. If both policies have the same version number, the proposed policy is
    #          the established policy.</p>
    #
    # @!attribute policy
    #   <p>The details of the last established policy.</p>
    #
    #   @return [String]
    #
    EstablishedMultiRegionAccessPointPolicy = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for what Amazon S3 Storage Lens will exclude.</p>
    #
    # @!attribute buckets
    #   <p>A container for the S3 Storage Lens bucket excludes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute regions
    #   <p>A container for the S3 Storage Lens Region excludes.</p>
    #
    #   @return [Array<String>]
    #
    Exclude = ::Struct.new(
      :buckets,
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
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

    # Includes enum constants for Format
    #
    module Format
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      Parquet = "Parquet"
    end

    # <p>The encryption configuration to use when storing the generated manifest.</p>
    #
    # @!attribute sses3
    #   <p>Specifies the use of SSE-S3 to encrypt generated manifest objects.</p>
    #
    #   @return [SSES3Encryption]
    #
    # @!attribute ssekms
    #   <p>Configuration details on how SSE-KMS is used to encrypt generated manifest
    #            objects.</p>
    #
    #   @return [SSEKMSEncryption]
    #
    GeneratedManifestEncryption = ::Struct.new(
      :sses3,
      :ssekms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GeneratedManifestFormat
    #
    module GeneratedManifestFormat
      # No documentation available.
      #
      S3InventoryReport_CSV_20211130 = "S3InventoryReport_CSV_20211130"
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point you want to return the configuration for.</p>
    #
    #   @return [String]
    #
    GetAccessPointConfigurationForObjectLambdaInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration
    #   <p>Object Lambda Access Point configuration document.</p>
    #
    #   @return [ObjectLambdaConfiguration]
    #
    GetAccessPointConfigurationForObjectLambdaOutput = ::Struct.new(
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    GetAccessPointForObjectLambdaInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute public_access_block_configuration
    #   <p>Configuration to block all public access. This setting is turned on and can not be
    #            edited. </p>
    #
    #   @return [PublicAccessBlockConfiguration]
    #
    # @!attribute creation_date
    #   <p>The date and time when the specified Object Lambda Access Point was created.</p>
    #
    #   @return [Time]
    #
    GetAccessPointForObjectLambdaOutput = ::Struct.new(
      :name,
      :public_access_block_configuration,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the access point whose configuration information you want to retrieve.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #
    #   @return [String]
    #
    GetAccessPointInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the specified access point.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket associated with the specified access point.</p>
    #
    #   @return [String]
    #
    # @!attribute network_origin
    #   <p>Indicates whether this access point allows access from the public internet. If
    #               <code>VpcConfiguration</code> is specified for this access point, then
    #               <code>NetworkOrigin</code> is <code>VPC</code>, and the access point doesn't allow access from
    #            the public internet. Otherwise, <code>NetworkOrigin</code> is <code>Internet</code>, and
    #            the access point allows access from the public internet, subject to the access point and bucket access
    #            policies.</p>
    #            <p>This will always be true for an Amazon S3 on Outposts access point</p>
    #
    #   Enum, one of: ["Internet", "VPC"]
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>Contains the virtual private cloud (VPC) configuration for the specified access point.</p>
    #            <note>
    #               <p>This element is empty if this access point is an Amazon S3 on Outposts access point that is used by other
    #                  Amazon Web Services.</p>
    #            </note>
    #
    #   @return [VpcConfiguration]
    #
    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #            account. You can enable the configuration options in any combination. For more information
    #            about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>This is not supported for Amazon S3 on Outposts.</p>
    #
    #   @return [PublicAccessBlockConfiguration]
    #
    # @!attribute creation_date
    #   <p>The date and time when the specified access point was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute alias
    #   <p>The name or alias of the access point.</p>
    #
    #   @return [String]
    #
    # @!attribute access_point_arn
    #   <p>The ARN of the access point.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>The VPC endpoint for the access point.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetAccessPointOutput = ::Struct.new(
      :name,
      :bucket,
      :network_origin,
      :vpc_configuration,
      :public_access_block_configuration,
      :creation_date,
      :alias,
      :access_point_arn,
      :endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    GetAccessPointPolicyForObjectLambdaInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>Object Lambda Access Point resource policy document.</p>
    #
    #   @return [String]
    #
    GetAccessPointPolicyForObjectLambdaOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the access point whose policy you want to retrieve.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #
    #   @return [String]
    #
    GetAccessPointPolicyInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The access point policy associated with the specified access point.</p>
    #
    #   @return [String]
    #
    GetAccessPointPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    GetAccessPointPolicyStatusForObjectLambdaInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_status
    #   <p>Indicates whether this access point policy is public. For more information about how Amazon S3
    #            evaluates policies to determine whether they are public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>. </p>
    #
    #   @return [PolicyStatus]
    #
    GetAccessPointPolicyStatusForObjectLambdaOutput = ::Struct.new(
      :policy_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the access point whose policy status you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetAccessPointPolicyStatusInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_status
    #   <p>Indicates the current policy status of the specified access point.</p>
    #
    #   @return [PolicyStatus]
    #
    GetAccessPointPolicyStatusOutput = ::Struct.new(
      :policy_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    GetBucketInput = ::Struct.new(
      :account_id,
      :bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    GetBucketLifecycleConfigurationInput = ::Struct.new(
      :account_id,
      :bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rules
    #   <p>Container for the lifecycle rule of the Outposts bucket.</p>
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
    #   <p>The Outposts bucket requested.</p>
    #
    #   @return [String]
    #
    # @!attribute public_access_block_enabled
    #   <p></p>
    #
    #   @return [Boolean]
    #
    # @!attribute creation_date
    #   <p>The creation date of the Outposts bucket.</p>
    #
    #   @return [Time]
    #
    GetBucketOutput = ::Struct.new(
      :bucket,
      :public_access_block_enabled,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.public_access_block_enabled ||= false
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    GetBucketPolicyInput = ::Struct.new(
      :account_id,
      :bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The policy of the Outposts bucket.</p>
    #
    #   @return [String]
    #
    GetBucketPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    GetBucketTaggingInput = ::Struct.new(
      :account_id,
      :bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_set
    #   <p>The tags set of the Outposts bucket.</p>
    #
    #   @return [Array<S3Tag>]
    #
    GetBucketTaggingOutput = ::Struct.new(
      :tag_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetJobTaggingInput = ::Struct.new(
      :account_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The set of tags associated with the S3 Batch Operations job.</p>
    #
    #   @return [Array<S3Tag>]
    #
    GetJobTaggingOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Multi-Region Access Point whose configuration information you want to receive. The name of
    #            the Multi-Region Access Point is different from the alias. For more information about the distinction between
    #            the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html multi-region-access-point-naming">Managing Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    GetMultiRegionAccessPointInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_point
    #   <p>A container element containing the details of the requested Multi-Region Access Point.</p>
    #
    #   @return [MultiRegionAccessPointReport]
    #
    GetMultiRegionAccessPointOutput = ::Struct.new(
      :access_point,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Specifies the Multi-Region Access Point. The name of the Multi-Region Access Point is different from the alias. For more
    #            information about the distinction between the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html multi-region-access-point-naming">Managing Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    GetMultiRegionAccessPointPolicyInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The policy associated with the specified Multi-Region Access Point.</p>
    #
    #   @return [MultiRegionAccessPointPolicyDocument]
    #
    GetMultiRegionAccessPointPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Specifies the Multi-Region Access Point. The name of the Multi-Region Access Point is different from the alias. For more
    #            information about the distinction between the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html multi-region-access-point-naming">Managing Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    GetMultiRegionAccessPointPolicyStatusInput = ::Struct.new(
      :account_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute established
    #   <p>Indicates whether this access point policy is public. For more information about how Amazon S3
    #            evaluates policies to determine whether they are public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>. </p>
    #
    #   @return [PolicyStatus]
    #
    GetMultiRegionAccessPointPolicyStatusOutput = ::Struct.new(
      :established,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetPublicAccessBlockInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration currently in effect for this
    #            Amazon Web Services account.</p>
    #
    #   @return [PublicAccessBlockConfiguration]
    #
    GetPublicAccessBlockOutput = ::Struct.new(
      :public_access_block_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_id
    #   <p>The ID of the Amazon S3 Storage Lens configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #
    #   @return [String]
    #
    GetStorageLensConfigurationInput = ::Struct.new(
      :config_id,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute storage_lens_configuration
    #   <p>The S3 Storage Lens configuration requested.</p>
    #
    #   @return [StorageLensConfiguration]
    #
    GetStorageLensConfigurationOutput = ::Struct.new(
      :storage_lens_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_id
    #   <p>The ID of the Amazon S3 Storage Lens configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #
    #   @return [String]
    #
    GetStorageLensConfigurationTaggingInput = ::Struct.new(
      :config_id,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags of S3 Storage Lens configuration requested.</p>
    #
    #   @return [Array<StorageLensTag>]
    #
    GetStorageLensConfigurationTaggingOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IdempotencyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for what Amazon S3 Storage Lens configuration includes.</p>
    #
    # @!attribute buckets
    #   <p>A container for the S3 Storage Lens bucket includes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute regions
    #   <p>A container for the S3 Storage Lens Region includes.</p>
    #
    #   @return [Array<String>]
    #
    Include = ::Struct.new(
      :buckets,
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
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

    # <p></p>
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

    # <p>A container element for the job configuration and status information returned by a
    #             <code>Describe Job</code> request.</p>
    #
    # @!attribute job_id
    #   <p>The ID for the specified job.</p>
    #
    #   @return [String]
    #
    # @!attribute confirmation_required
    #   <p>Indicates whether confirmation is required before Amazon S3 begins running the specified job.
    #            Confirmation is required only for jobs created through the Amazon S3 console.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>The description for this job, if one was provided in this job's <code>Create Job</code>
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) for this job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the specified job.</p>
    #
    #   Enum, one of: ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"]
    #
    #   @return [String]
    #
    # @!attribute manifest
    #   <p>The configuration information for the specified job's manifest object.</p>
    #
    #   @return [JobManifest]
    #
    # @!attribute operation
    #   <p>The operation that the specified job is configured to run on the objects listed in the
    #            manifest.</p>
    #
    #   @return [JobOperation]
    #
    # @!attribute priority
    #   <p>The priority of the specified job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute progress_summary
    #   <p>Describes the total number of tasks that the specified job has run, the number of tasks
    #            that succeeded, and the number of tasks that failed.</p>
    #
    #   @return [JobProgressSummary]
    #
    # @!attribute status_update_reason
    #   <p>The reason for updating the job.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_reasons
    #   <p>If the specified job failed, this field contains information describing the
    #            failure.</p>
    #
    #   @return [Array<JobFailure>]
    #
    # @!attribute report
    #   <p>Contains the configuration information for the job-completion report if you requested
    #            one in the <code>Create Job</code> request.</p>
    #
    #   @return [JobReport]
    #
    # @!attribute creation_time
    #   <p>A timestamp indicating when this job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute termination_date
    #   <p>A timestamp indicating when this job terminated. A job's termination date is the date
    #            and time when it succeeded, failed, or was canceled.</p>
    #
    #   @return [Time]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) for the Identity and Access Management (IAM) role assigned to run the tasks
    #            for this job.</p>
    #
    #   @return [String]
    #
    # @!attribute suspended_date
    #   <p>The timestamp when this job was suspended, if it has been suspended.</p>
    #
    #   @return [Time]
    #
    # @!attribute suspended_cause
    #   <p>The reason why the specified job was suspended. A job is only suspended if you create it
    #            through the Amazon S3 console. When you create the job, it enters the <code>Suspended</code>
    #            state to await confirmation before running. After you confirm the job, it automatically
    #            exits the <code>Suspended</code> state.</p>
    #
    #   @return [String]
    #
    # @!attribute manifest_generator
    #   <p>The manifest generator that was used to generate a job manifest for this job.</p>
    #
    #   @return [JobManifestGenerator]
    #
    # @!attribute generated_manifest_descriptor
    #   <p>The attribute of the JobDescriptor containing details about the job's generated
    #            manifest.</p>
    #
    #   @return [S3GeneratedManifestDescriptor]
    #
    JobDescriptor = ::Struct.new(
      :job_id,
      :confirmation_required,
      :description,
      :job_arn,
      :status,
      :manifest,
      :operation,
      :priority,
      :progress_summary,
      :status_update_reason,
      :failure_reasons,
      :report,
      :creation_time,
      :termination_date,
      :role_arn,
      :suspended_date,
      :suspended_cause,
      :manifest_generator,
      :generated_manifest_descriptor,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # <p>If this job failed, this element indicates why the job failed.</p>
    #
    # @!attribute failure_code
    #   <p>The failure code, if any, for the specified job.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The failure reason, if any, for the specified job.</p>
    #
    #   @return [String]
    #
    JobFailure = ::Struct.new(
      :failure_code,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration and status information for a single job retrieved as part of
    #          a job list.</p>
    #
    # @!attribute job_id
    #   <p>The ID for the specified job.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The user-specified description that was included in the specified job's <code>Create
    #               Job</code> request.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The operation that the specified job is configured to run on every object listed in the
    #            manifest.</p>
    #
    #   Enum, one of: ["LambdaInvoke", "S3PutObjectCopy", "S3PutObjectAcl", "S3PutObjectTagging", "S3DeleteObjectTagging", "S3InitiateRestoreObject", "S3PutObjectLegalHold", "S3PutObjectRetention", "S3ReplicateObject"]
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The current priority for the specified job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The specified job's current status.</p>
    #
    #   Enum, one of: ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>A timestamp indicating when the specified job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute termination_date
    #   <p>A timestamp indicating when the specified job terminated. A job's termination date is
    #            the date and time when it succeeded, failed, or was canceled.</p>
    #
    #   @return [Time]
    #
    # @!attribute progress_summary
    #   <p>Describes the total number of tasks that the specified job has run, the number of tasks
    #            that succeeded, and the number of tasks that failed.</p>
    #
    #   @return [JobProgressSummary]
    #
    JobListDescriptor = ::Struct.new(
      :job_id,
      :description,
      :operation,
      :priority,
      :status,
      :creation_time,
      :termination_date,
      :progress_summary,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # <p>Contains the configuration information for a job's manifest.</p>
    #
    # @!attribute spec
    #   <p>Describes the format of the specified job's manifest. If the manifest is in CSV format,
    #            also describes the columns contained within the manifest.</p>
    #
    #   @return [JobManifestSpec]
    #
    # @!attribute location
    #   <p>Contains the information required to locate the specified job's manifest.</p>
    #
    #   @return [JobManifestLocation]
    #
    JobManifest = ::Struct.new(
      :spec,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobManifestFieldName
    #
    module JobManifestFieldName
      # No documentation available.
      #
      Ignore = "Ignore"

      # No documentation available.
      #
      Bucket = "Bucket"

      # No documentation available.
      #
      Key = "Key"

      # No documentation available.
      #
      VersionId = "VersionId"
    end

    # Includes enum constants for JobManifestFormat
    #
    module JobManifestFormat
      # No documentation available.
      #
      S3BatchOperations_CSV_20180820 = "S3BatchOperations_CSV_20180820"

      # No documentation available.
      #
      S3InventoryReport_CSV_20161130 = "S3InventoryReport_CSV_20161130"
    end

    # <p>Configures the type of the job's ManifestGenerator.</p>
    #
    class JobManifestGenerator < Hearth::Union
      # <p>The S3 job ManifestGenerator's configuration details.</p>
      #
      class S3JobManifestGenerator < JobManifestGenerator
        def to_h
          { s3_job_manifest_generator: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3Control::Types::S3JobManifestGenerator #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < JobManifestGenerator
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3Control::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The filter used to describe a set of objects for the job's manifest.</p>
    #
    # @!attribute eligible_for_replication
    #   <p>Include objects in the generated manifest only if they are eligible for replication
    #            according to the Replication configuration on the source bucket.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_after
    #   <p>If provided, the generated manifest should include only source bucket objects that were
    #            created after this time.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_before
    #   <p>If provided, the generated manifest should include only source bucket objects that were
    #            created before this time.</p>
    #
    #   @return [Time]
    #
    # @!attribute object_replication_statuses
    #   <p>If provided, the generated manifest should include only source bucket objects that have
    #            one of the specified Replication statuses.</p>
    #
    #   @return [Array<String>]
    #
    JobManifestGeneratorFilter = ::Struct.new(
      :eligible_for_replication,
      :created_after,
      :created_before,
      :object_replication_statuses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the information required to locate a manifest object.</p>
    #
    # @!attribute object_arn
    #   <p>The Amazon Resource Name (ARN) for a manifest object.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute object_version_id
    #   <p>The optional version ID to identify a specific version of the manifest object.</p>
    #
    #   @return [String]
    #
    # @!attribute e_tag
    #   <p>The ETag for the specified manifest object.</p>
    #
    #   @return [String]
    #
    JobManifestLocation = ::Struct.new(
      :object_arn,
      :object_version_id,
      :e_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the format of a manifest. If the manifest is in CSV format, also describes the
    #          columns contained within the manifest.</p>
    #
    # @!attribute format
    #   <p>Indicates which of the available formats the specified manifest uses.</p>
    #
    #   Enum, one of: ["S3BatchOperations_CSV_20180820", "S3InventoryReport_CSV_20161130"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>If the specified manifest object is in the <code>S3BatchOperations_CSV_20180820</code>
    #            format, this element describes which columns contain the required data.</p>
    #
    #   @return [Array<String>]
    #
    JobManifestSpec = ::Struct.new(
      :format,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation that you want this job to perform on every object listed in the manifest.
    #          For more information about the available operations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html">Operations</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute lambda_invoke
    #   <p>Directs the specified job to invoke an Lambda function on every object in the
    #            manifest.</p>
    #
    #   @return [LambdaInvokeOperation]
    #
    # @!attribute s3_put_object_copy
    #   <p>Directs the specified job to run a PUT Copy object call on every object in the
    #            manifest.</p>
    #
    #   @return [S3CopyObjectOperation]
    #
    # @!attribute s3_put_object_acl
    #   <p>Directs the specified job to run a PUT Object acl call on every object in the
    #            manifest.</p>
    #
    #   @return [S3SetObjectAclOperation]
    #
    # @!attribute s3_put_object_tagging
    #   <p>Directs the specified job to run a PUT Object tagging call on every object in the
    #            manifest.</p>
    #
    #   @return [S3SetObjectTaggingOperation]
    #
    # @!attribute s3_delete_object_tagging
    #   <p>Directs the specified job to execute a DELETE Object tagging call on every object in the
    #            manifest.</p>
    #
    #   @return [S3DeleteObjectTaggingOperation]
    #
    # @!attribute s3_initiate_restore_object
    #   <p>Directs the specified job to initiate restore requests for every archived object in the
    #            manifest.</p>
    #
    #   @return [S3InitiateRestoreObjectOperation]
    #
    # @!attribute s3_put_object_legal_hold
    #   <p>Contains the configuration for an S3 Object Lock legal hold operation that an
    #            S3 Batch Operations job passes every object to the underlying <code>PutObjectLegalHold</code>
    #            API. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-legal-hold.html">Using S3 Object Lock legal hold
    #               with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [S3SetObjectLegalHoldOperation]
    #
    # @!attribute s3_put_object_retention
    #   <p>Contains the configuration parameters for the Object Lock retention action for an
    #            S3 Batch Operations job. Batch Operations passes every object to the underlying
    #               <code>PutObjectRetention</code> API. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html">Using
    #               S3 Object Lock retention with S3 Batch Operations</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [S3SetObjectRetentionOperation]
    #
    # @!attribute s3_replicate_object
    #   <p>Directs the specified job to invoke <code>ReplicateObject</code> on every object in the
    #            job's manifest.</p>
    #
    #   @return [S3ReplicateObjectOperation]
    #
    JobOperation = ::Struct.new(
      :lambda_invoke,
      :s3_put_object_copy,
      :s3_put_object_acl,
      :s3_put_object_tagging,
      :s3_delete_object_tagging,
      :s3_initiate_restore_object,
      :s3_put_object_legal_hold,
      :s3_put_object_retention,
      :s3_replicate_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the total number of tasks that the specified job has started, the number of
    #          tasks that succeeded, and the number of tasks that failed.</p>
    #
    # @!attribute total_number_of_tasks
    #   <p></p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_tasks_succeeded
    #   <p></p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_tasks_failed
    #   <p></p>
    #
    #   @return [Integer]
    #
    # @!attribute timers
    #   <p>The JobTimers attribute of a job's progress summary.</p>
    #
    #   @return [JobTimers]
    #
    JobProgressSummary = ::Struct.new(
      :total_number_of_tasks,
      :number_of_tasks_succeeded,
      :number_of_tasks_failed,
      :timers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration parameters for a job-completion report.</p>
    #
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) for the bucket where specified job-completion report will
    #            be stored.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the specified job-completion report.</p>
    #
    #   Enum, one of: ["Report_CSV_20180820"]
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Indicates whether the specified job will generate a job-completion report.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute prefix
    #   <p>An optional prefix to describe where in the specified bucket the job-completion report
    #            will be stored. Amazon S3 stores the job-completion report at
    #               <code><prefix>/job-<job-id>/report.json</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute report_scope
    #   <p>Indicates whether the job-completion report will include details of all tasks or only
    #            failed tasks.</p>
    #
    #   Enum, one of: ["AllTasks", "FailedTasksOnly"]
    #
    #   @return [String]
    #
    JobReport = ::Struct.new(
      :bucket,
      :format,
      :enabled,
      :prefix,
      :report_scope,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # Includes enum constants for JobReportFormat
    #
    module JobReportFormat
      # No documentation available.
      #
      Report_CSV_20180820 = "Report_CSV_20180820"
    end

    # Includes enum constants for JobReportScope
    #
    module JobReportScope
      # No documentation available.
      #
      AllTasks = "AllTasks"

      # No documentation available.
      #
      FailedTasksOnly = "FailedTasksOnly"
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      Active = "Active"

      # No documentation available.
      #
      Cancelled = "Cancelled"

      # No documentation available.
      #
      Cancelling = "Cancelling"

      # No documentation available.
      #
      Complete = "Complete"

      # No documentation available.
      #
      Completing = "Completing"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Failing = "Failing"

      # No documentation available.
      #
      New = "New"

      # No documentation available.
      #
      Paused = "Paused"

      # No documentation available.
      #
      Pausing = "Pausing"

      # No documentation available.
      #
      Preparing = "Preparing"

      # No documentation available.
      #
      Ready = "Ready"

      # No documentation available.
      #
      Suspended = "Suspended"
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    JobStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides timing details for the job.</p>
    #
    # @!attribute elapsed_time_in_active_seconds
    #   <p>Indicates the elapsed time in seconds the job has been in the Active job state.</p>
    #
    #   @return [Integer]
    #
    JobTimers = ::Struct.new(
      :elapsed_time_in_active_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration parameters for a <code>Lambda Invoke</code> operation.</p>
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) for the Lambda function that the specified job will
    #            invoke on every object in the manifest.</p>
    #
    #   @return [String]
    #
    LambdaInvokeOperation = ::Struct.new(
      :function_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container for the Outposts bucket lifecycle configuration.</p>
    #
    # @!attribute rules
    #   <p>A lifecycle rule for individual objects in an Outposts bucket. </p>
    #
    #   @return [Array<LifecycleRule>]
    #
    LifecycleConfiguration = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container of the Outposts bucket lifecycle expiration.</p>
    #
    # @!attribute date
    #   <p>Indicates at what date the object is to be deleted. Should be in GMT ISO 8601
    #            format.</p>
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
    #            to true, the delete marker will be expired. If set to false, the policy takes no action.
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

    # <p>The container for the Outposts bucket lifecycle rule.</p>
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
    # @!attribute filter
    #   <p>The container for the filter of lifecycle rule.</p>
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
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [Array<Transition>]
    #
    # @!attribute noncurrent_version_transitions
    #   <p> Specifies the transition rule for the lifecycle rule that describes when noncurrent
    #            objects transition to a specific storage class. If your bucket is versioning-enabled (or
    #            versioning is suspended), you can set this action to request that Amazon S3 transition
    #            noncurrent object versions to a specific storage class at a set period in the object's
    #            lifetime. </p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [Array<NoncurrentVersionTransition>]
    #
    # @!attribute noncurrent_version_expiration
    #   <p>The noncurrent version expiration of the lifecycle rule.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [NoncurrentVersionExpiration]
    #
    # @!attribute abort_incomplete_multipart_upload
    #   <p>Specifies the days since the initiation of an incomplete multipart upload that Amazon S3
    #            waits before permanently removing all parts of the upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html mpu-abort-incomplete-mpu-lifecycle-config">
    #               Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [AbortIncompleteMultipartUpload]
    #
    LifecycleRule = ::Struct.new(
      :expiration,
      :id,
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

    # <p>The container for the Outposts bucket lifecycle rule and operator.</p>
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
    #   @return [Array<S3Tag>]
    #
    LifecycleRuleAndOperator = ::Struct.new(
      :prefix,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container for the filter of the lifecycle rule.</p>
    #
    # @!attribute prefix
    #   <p>Prefix identifying one or more objects to which the rule applies.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute tag
    #   <p></p>
    #
    #   @return [S3Tag]
    #
    # @!attribute and
    #   <p>The container for the <code>AND</code> condition for the lifecycle rule.</p>
    #
    #   @return [LifecycleRuleAndOperator]
    #
    LifecycleRuleFilter = ::Struct.new(
      :prefix,
      :tag,
      :and,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the list has more access points than can be returned in one call to this API, this field
    #            contains a continuation token that you can provide in subsequent calls to this API to
    #            retrieve additional access points.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of access points that you want to include in the list. The response may
    #            contain fewer access points but will never contain more. If there are more than this number of
    #            access points, then the response will include a continuation token in the <code>NextToken</code>
    #            field that you can use to retrieve the next page of access points.</p>
    #
    #   @return [Integer]
    #
    ListAccessPointsForObjectLambdaInput = ::Struct.new(
      :account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute object_lambda_access_point_list
    #   <p>Returns list of Object Lambda Access Points.</p>
    #
    #   @return [Array<ObjectLambdaAccessPoint>]
    #
    # @!attribute next_token
    #   <p>If the list has more access points than can be returned in one call to this API, this field
    #            contains a continuation token that you can provide in subsequent calls to this API to
    #            retrieve additional access points.</p>
    #
    #   @return [String]
    #
    ListAccessPointsForObjectLambdaOutput = ::Struct.new(
      :object_lambda_access_point_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for owner of the bucket whose access points you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket whose associated access points you want to list.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A continuation token. If a previous call to <code>ListAccessPoints</code> returned a
    #            continuation token in the <code>NextToken</code> field, then providing that value here
    #            causes Amazon S3 to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of access points that you want to include in the list. If the specified
    #            bucket has more than this number of access points, then the response will include a continuation
    #            token in the <code>NextToken</code> field that you can use to retrieve the next page of
    #            access points.</p>
    #
    #   @return [Integer]
    #
    ListAccessPointsInput = ::Struct.new(
      :account_id,
      :bucket,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute access_point_list
    #   <p>Contains identification and configuration information for one or more access points associated
    #            with the specified bucket.</p>
    #
    #   @return [Array<AccessPoint>]
    #
    # @!attribute next_token
    #   <p>If the specified bucket has more access points than can be returned in one call to this API,
    #            this field contains a continuation token that you can provide in subsequent calls to this
    #            API to retrieve additional access points.</p>
    #
    #   @return [String]
    #
    ListAccessPointsOutput = ::Struct.new(
      :access_point_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_statuses
    #   <p>The <code>List Jobs</code> request returns jobs that match the statuses listed in this
    #            element.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A pagination token to request the next page of results. Use the token that Amazon S3 returned
    #            in the <code>NextToken</code> element of the <code>ListJobsResult</code> from the previous
    #               <code>List Jobs</code> request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of jobs that Amazon S3 will include in the <code>List Jobs</code>
    #            response. If there are more jobs than this number, the response will include a pagination
    #            token in the <code>NextToken</code> field to enable you to retrieve the next page of
    #            results.</p>
    #
    #   @return [Integer]
    #
    ListJobsInput = ::Struct.new(
      :account_id,
      :job_statuses,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the <code>List Jobs</code> request produced more than the maximum number of results,
    #            you can pass this value into a subsequent <code>List Jobs</code> request in order to
    #            retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute jobs
    #   <p>The list of current jobs and jobs that have ended within the last 30 days.</p>
    #
    #   @return [Array<JobListDescriptor>]
    #
    ListJobsOutput = ::Struct.new(
      :next_token,
      :jobs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Not currently used. Do not use this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Not currently used. Do not use this parameter.</p>
    #
    #   @return [Integer]
    #
    ListMultiRegionAccessPointsInput = ::Struct.new(
      :account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute access_points
    #   <p>The list of Multi-Region Access Points associated with the user.</p>
    #
    #   @return [Array<MultiRegionAccessPointReport>]
    #
    # @!attribute next_token
    #   <p>If the specified bucket has more Multi-Region Access Points than can be returned in one call to this
    #            action, this field contains a continuation token. You can use this token tin subsequent
    #            calls to this action to retrieve additional Multi-Region Access Points.</p>
    #
    #   @return [String]
    #
    ListMultiRegionAccessPointsOutput = ::Struct.new(
      :access_points,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p></p>
    #
    #   @return [Integer]
    #
    # @!attribute outpost_id
    #   <p>The ID of the Outposts.</p>
    #            <note>
    #               <p>This is required by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [String]
    #
    ListRegionalBucketsInput = ::Struct.new(
      :account_id,
      :next_token,
      :max_results,
      :outpost_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute regional_bucket_list
    #   <p></p>
    #
    #   @return [Array<RegionalBucket>]
    #
    # @!attribute next_token
    #   <p>
    #               <code>NextToken</code> is sent when <code>isTruncated</code> is true, which means there
    #            are more buckets that can be listed. The next list requests to Amazon S3 can be continued with
    #            this <code>NextToken</code>. <code>NextToken</code> is obfuscated and is not a real
    #            key.</p>
    #
    #   @return [String]
    #
    ListRegionalBucketsOutput = ::Struct.new(
      :regional_bucket_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Part of <code>ListStorageLensConfigurationResult</code>. Each entry includes the
    #          description of the S3 Storage Lens configuration, its home Region, whether it is enabled, its
    #          Amazon Resource Name (ARN), and config ID.</p>
    #
    # @!attribute id
    #   <p>A container for the S3 Storage Lens configuration ID.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_lens_arn
    #   <p>The ARN of the S3 Storage Lens configuration. This property is read-only.</p>
    #
    #   @return [String]
    #
    # @!attribute home_region
    #   <p>A container for the S3 Storage Lens home Region. Your metrics data is stored and retained in
    #            your designated S3 Storage Lens home Region.</p>
    #
    #   @return [String]
    #
    # @!attribute is_enabled
    #   <p>A container for whether the S3 Storage Lens configuration is enabled. This property is
    #            required.</p>
    #
    #   @return [Boolean]
    #
    ListStorageLensConfigurationEntry = ::Struct.new(
      :id,
      :storage_lens_arn,
      :home_region,
      :is_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_enabled ||= false
      end
    end

    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A pagination token to request the next page of results.</p>
    #
    #   @return [String]
    #
    ListStorageLensConfigurationsInput = ::Struct.new(
      :account_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the request produced more than the maximum number of S3 Storage Lens configuration results,
    #            you can pass this value into a subsequent request to retrieve the next page of
    #            results.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_lens_configuration_list
    #   <p>A list of S3 Storage Lens configurations.</p>
    #
    #   @return [Array<ListStorageLensConfigurationEntry>]
    #
    ListStorageLensConfigurationsOutput = ::Struct.new(
      :next_token,
      :storage_lens_configuration_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Multi-Region Access Point access control policy.</p>
    #          <p>When you update the policy, the update is first listed as the proposed policy. After the
    #          update is finished and all Regions have been updated, the proposed policy is listed as the
    #          established policy. If both policies have the same version number, the proposed policy is
    #          the established policy.</p>
    #
    # @!attribute established
    #   <p>The last established policy for the Multi-Region Access Point.</p>
    #
    #   @return [EstablishedMultiRegionAccessPointPolicy]
    #
    # @!attribute proposed
    #   <p>The proposed policy for the Multi-Region Access Point.</p>
    #
    #   @return [ProposedMultiRegionAccessPointPolicy]
    #
    MultiRegionAccessPointPolicyDocument = ::Struct.new(
      :established,
      :proposed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Status information for a single Multi-Region Access Point Region.</p>
    #
    # @!attribute name
    #   <p>The name of the Region in the Multi-Region Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute request_status
    #   <p>The current status of the Multi-Region Access Point in this Region.</p>
    #
    #   @return [String]
    #
    MultiRegionAccessPointRegionalResponse = ::Struct.new(
      :name,
      :request_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A collection of statuses for a Multi-Region Access Point in the various Regions it supports.</p>
    #
    # @!attribute name
    #   <p>The name of the Multi-Region Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias for the Multi-Region Access Point. For more information about the distinction between the name
    #            and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html multi-region-access-point-naming">Managing Multi-Region Access Points</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>When the Multi-Region Access Point create request was received.</p>
    #
    #   @return [Time]
    #
    # @!attribute public_access_block
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #            account. You can enable the configuration options in any combination. For more information
    #            about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>This is not supported for Amazon S3 on Outposts.</p>
    #
    #   @return [PublicAccessBlockConfiguration]
    #
    # @!attribute status
    #   <p>The current status of the Multi-Region Access Point.</p>
    #            <p>
    #               <code>CREATING</code> and <code>DELETING</code> are temporary states that exist while
    #            the request is propogating and being completed. If a Multi-Region Access Point has a status of
    #               <code>PARTIALLY_CREATED</code>, you can retry creation or send a request to delete the
    #            Multi-Region Access Point. If a Multi-Region Access Point has a status of <code>PARTIALLY_DELETED</code>, you can retry a delete
    #            request to finish the deletion of the Multi-Region Access Point.</p>
    #
    #   Enum, one of: ["READY", "INCONSISTENT_ACROSS_REGIONS", "CREATING", "PARTIALLY_CREATED", "PARTIALLY_DELETED", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute regions
    #   <p>A collection of the Regions and buckets associated with the Multi-Region Access Point.</p>
    #
    #   @return [Array<RegionReport>]
    #
    MultiRegionAccessPointReport = ::Struct.new(
      :name,
      :alias,
      :created_at,
      :public_access_block,
      :status,
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MultiRegionAccessPointStatus
    #
    module MultiRegionAccessPointStatus
      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      INCONSISTENT_ACROSS_REGIONS = "INCONSISTENT_ACROSS_REGIONS"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      PARTIALLY_CREATED = "PARTIALLY_CREATED"

      # No documentation available.
      #
      PARTIALLY_DELETED = "PARTIALLY_DELETED"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>The Multi-Region Access Point details that are returned when querying about an asynchronous request.</p>
    #
    # @!attribute regions
    #   <p>A collection of status information for the different Regions that a Multi-Region Access Point
    #            supports.</p>
    #
    #   @return [Array<MultiRegionAccessPointRegionalResponse>]
    #
    MultiRegionAccessPointsAsyncResponse = ::Struct.new(
      :regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NetworkOrigin
    #
    module NetworkOrigin
      # No documentation available.
      #
      Internet = "Internet"

      # No documentation available.
      #
      VPC = "VPC"
    end

    # <p>Amazon S3 throws this exception if you make a <code>GetPublicAccessBlock</code> request
    #          against an account that doesn't have a <code>PublicAccessBlockConfiguration</code>
    #          set.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchPublicAccessBlockConfiguration = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container of the noncurrent version expiration.</p>
    #
    # @!attribute noncurrent_days
    #   <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
    #            associated action. For information about the noncurrent days calculations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html non-current-days-calculations">How
    #               Amazon S3 Calculates When an Object Became Noncurrent</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    NoncurrentVersionExpiration = ::Struct.new(
      :noncurrent_days,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.noncurrent_days ||= 0
      end
    end

    # <p>The container for the noncurrent version transition.</p>
    #
    # @!attribute noncurrent_days
    #   <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the
    #            associated action. For information about the noncurrent days calculations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html non-current-days-calculations"> How
    #               Amazon S3 Calculates How Long an Object Has Been Noncurrent</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #
    #   Enum, one of: ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"]
    #
    #   @return [String]
    #
    NoncurrentVersionTransition = ::Struct.new(
      :noncurrent_days,
      :storage_class,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.noncurrent_days ||= 0
      end
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An access point with an attached Lambda function used to access transformed data from an Amazon S3
    #          bucket.</p>
    #
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute object_lambda_access_point_arn
    #   <p>Specifies the ARN for the Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    ObjectLambdaAccessPoint = ::Struct.new(
      :name,
      :object_lambda_access_point_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObjectLambdaAllowedFeature
    #
    module ObjectLambdaAllowedFeature
      # No documentation available.
      #
      GetObjectRange = "GetObject-Range"

      # No documentation available.
      #
      GetObjectPartNumber = "GetObject-PartNumber"
    end

    # <p>A configuration used when creating an Object Lambda Access Point.</p>
    #
    # @!attribute supporting_access_point
    #   <p>Standard access point associated with the Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_metrics_enabled
    #   <p>A container for whether the CloudWatch metrics configuration is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allowed_features
    #   <p>A container for allowed features. Valid inputs are <code>GetObject-Range</code> and
    #               <code>GetObject-PartNumber</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute transformation_configurations
    #   <p>A container for transformation configurations for an Object Lambda Access Point.</p>
    #
    #   @return [Array<ObjectLambdaTransformationConfiguration>]
    #
    ObjectLambdaConfiguration = ::Struct.new(
      :supporting_access_point,
      :cloud_watch_metrics_enabled,
      :allowed_features,
      :transformation_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cloud_watch_metrics_enabled ||= false
      end
    end

    # <p>A container for AwsLambdaTransformation.</p>
    #
    class ObjectLambdaContentTransformation < Hearth::Union
      # <p>A container for an Lambda function.</p>
      #
      class AwsLambda < ObjectLambdaContentTransformation
        def to_h
          { aws_lambda: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3Control::Types::AwsLambda #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ObjectLambdaContentTransformation
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::S3Control::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>A configuration used when creating an Object Lambda Access Point transformation.</p>
    #
    # @!attribute actions
    #   <p>A container for the action of an Object Lambda Access Point configuration. Valid input is
    #               <code>GetObject</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute content_transformation
    #   <p>A container for the content transformation of an Object Lambda Access Point configuration.</p>
    #
    #   @return [ObjectLambdaContentTransformation]
    #
    ObjectLambdaTransformationConfiguration = ::Struct.new(
      :actions,
      :content_transformation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObjectLambdaTransformationConfigurationAction
    #
    module ObjectLambdaTransformationConfigurationAction
      # No documentation available.
      #
      GetObject = "GetObject"
    end

    # Includes enum constants for OperationName
    #
    module OperationName
      # No documentation available.
      #
      LambdaInvoke = "LambdaInvoke"

      # No documentation available.
      #
      S3PutObjectCopy = "S3PutObjectCopy"

      # No documentation available.
      #
      S3PutObjectAcl = "S3PutObjectAcl"

      # No documentation available.
      #
      S3PutObjectTagging = "S3PutObjectTagging"

      # No documentation available.
      #
      S3DeleteObjectTagging = "S3DeleteObjectTagging"

      # No documentation available.
      #
      S3InitiateRestoreObject = "S3InitiateRestoreObject"

      # No documentation available.
      #
      S3PutObjectLegalHold = "S3PutObjectLegalHold"

      # No documentation available.
      #
      S3PutObjectRetention = "S3PutObjectRetention"

      # No documentation available.
      #
      S3ReplicateObject = "S3ReplicateObject"
    end

    # Includes enum constants for OutputSchemaVersion
    #
    module OutputSchemaVersion
      # No documentation available.
      #
      V_1 = "V_1"
    end

    # <p>Indicates whether this access point policy is public. For more information about how Amazon S3
    #          evaluates policies to determine whether they are public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>. </p>
    #
    # @!attribute is_public
    #   <p></p>
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

    # <p>A container for the prefix-level configuration.</p>
    #
    # @!attribute storage_metrics
    #   <p>A container for the prefix-level storage metrics for S3 Storage Lens.</p>
    #
    #   @return [PrefixLevelStorageMetrics]
    #
    PrefixLevel = ::Struct.new(
      :storage_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the prefix-level storage metrics for S3 Storage Lens.</p>
    #
    # @!attribute is_enabled
    #   <p>A container for whether prefix-level storage metrics are enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute selection_criteria
    #   <p></p>
    #
    #   @return [SelectionCriteria]
    #
    PrefixLevelStorageMetrics = ::Struct.new(
      :is_enabled,
      :selection_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_enabled ||= false
      end
    end

    # <p>The proposed access control policy for the Multi-Region Access Point.</p>
    #          <p>When you update the policy, the update is first listed as the proposed policy. After the
    #          update is finished and all Regions have been updated, the proposed policy is listed as the
    #          established policy. If both policies have the same version number, the proposed policy is
    #          the established policy.</p>
    #
    # @!attribute policy
    #   <p>The details of the proposed policy.</p>
    #
    #   @return [String]
    #
    ProposedMultiRegionAccessPointPolicy = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #          account. You can enable the configuration options in any combination. For more information
    #          about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This is not supported for Amazon S3 on Outposts.</p>
    #
    # @!attribute block_public_acls
    #   <p>Specifies whether Amazon S3 should block public access control lists (ACLs) for buckets
    #            in this account. Setting this element to <code>TRUE</code> causes the following
    #            behavior:</p>
    #            <ul>
    #               <li>
    #                  <p>PUT Bucket acl and PUT Object acl calls fail if the specified ACL is
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
    #            <p>This is not supported for Amazon S3 on Outposts.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ignore_public_acls
    #   <p>Specifies whether Amazon S3 should ignore public ACLs for buckets in this account. Setting
    #            this element to <code>TRUE</code> causes Amazon S3 to ignore all public ACLs on buckets in
    #            this account and any objects that they contain. </p>
    #            <p>Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't
    #            prevent new public ACLs from being set.</p>
    #            <p>This is not supported for Amazon S3 on Outposts.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute block_public_policy
    #   <p>Specifies whether Amazon S3 should block public bucket policies for buckets in this account.
    #            Setting this element to <code>TRUE</code> causes Amazon S3 to reject calls to PUT Bucket
    #            policy if the specified bucket policy allows public access. </p>
    #            <p>Enabling this setting doesn't affect existing bucket policies.</p>
    #            <p>This is not supported for Amazon S3 on Outposts.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute restrict_public_buckets
    #   <p>Specifies whether Amazon S3 should restrict public bucket policies for buckets in this
    #            account. Setting this element to <code>TRUE</code> restricts access to buckets with public
    #            policies to only Amazon Web Service principals and authorized users within this
    #            account.</p>
    #            <p>Enabling this setting doesn't affect previously stored bucket policies, except that
    #            public and cross-account access within any public bucket policy, including non-public
    #            delegation to specific accounts, is blocked.</p>
    #            <p>This is not supported for Amazon S3 on Outposts.</p>
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

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>Object Lambda Access Point configuration document.</p>
    #
    #   @return [ObjectLambdaConfiguration]
    #
    PutAccessPointConfigurationForObjectLambdaInput = ::Struct.new(
      :account_id,
      :name,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutAccessPointConfigurationForObjectLambdaOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>Object Lambda Access Point resource policy document.</p>
    #
    #   @return [String]
    #
    PutAccessPointPolicyForObjectLambdaInput = ::Struct.new(
      :account_id,
      :name,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutAccessPointPolicyForObjectLambdaOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for owner of the bucket associated with the specified access point.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the access point that you want to associate with the specified policy.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The policy that you want to apply to the specified access point. For more information about access point
    #            policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">Managing data access with Amazon S3
    #               access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [String]
    #
    PutAccessPointPolicyInput = ::Struct.new(
      :account_id,
      :name,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutAccessPointPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The name of the bucket for which to set the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_configuration
    #   <p>Container for lifecycle rules. You can add as many as 1,000 rules.</p>
    #
    #   @return [LifecycleConfiguration]
    #
    PutBucketLifecycleConfigurationInput = ::Struct.new(
      :account_id,
      :bucket,
      :lifecycle_configuration,
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

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    # @!attribute confirm_remove_self_bucket_access
    #   <p>Set this parameter to true to confirm that you want to remove your permissions to change
    #            this bucket policy in the future.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute policy
    #   <p>The bucket policy as a JSON document.</p>
    #
    #   @return [String]
    #
    PutBucketPolicyInput = ::Struct.new(
      :account_id,
      :bucket,
      :confirm_remove_self_bucket_access,
      :policy,
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

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    #   @return [String]
    #
    # @!attribute tagging
    #   <p></p>
    #
    #   @return [Tagging]
    #
    PutBucketTaggingInput = ::Struct.new(
      :account_id,
      :bucket,
      :tagging,
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

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to replace.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The set of tags to associate with the S3 Batch Operations job.</p>
    #
    #   @return [Array<S3Tag>]
    #
    PutJobTaggingInput = ::Struct.new(
      :account_id,
      :job_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutJobTaggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the information associated with a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPoint.html">PutMultiRegionAccessPoint</a> request.</p>
    #
    # @!attribute name
    #   <p>The name of the Multi-Region Access Point associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The policy details for the <code>PutMultiRegionAccessPoint</code> request.</p>
    #
    #   @return [String]
    #
    PutMultiRegionAccessPointPolicyInput = ::Struct.new(
      :name,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>A container element containing the details of the policy for the Multi-Region Access Point.</p>
    #
    #   @return [PutMultiRegionAccessPointPolicyInput]
    #
    PutMultiRegionAccessPointPolicyOperationInput = ::Struct.new(
      :account_id,
      :client_token,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_token_arn
    #   <p>The request token associated with the request. You can use this token with <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a> to determine the status of asynchronous
    #            requests.</p>
    #
    #   @return [String]
    #
    PutMultiRegionAccessPointPolicyOutput = ::Struct.new(
      :request_token_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to the specified
    #            Amazon Web Services account.</p>
    #
    #   @return [PublicAccessBlockConfiguration]
    #
    # @!attribute account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to set.</p>
    #
    #   @return [String]
    #
    PutPublicAccessBlockInput = ::Struct.new(
      :public_access_block_configuration,
      :account_id,
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

    # @!attribute config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_lens_configuration
    #   <p>The S3 Storage Lens configuration.</p>
    #
    #   @return [StorageLensConfiguration]
    #
    # @!attribute tags
    #   <p>The tag set of the S3 Storage Lens configuration.</p>
    #            <note>
    #               <p>You can set up to a maximum of 50 tags.</p>
    #            </note>
    #
    #   @return [Array<StorageLensTag>]
    #
    PutStorageLensConfigurationInput = ::Struct.new(
      :config_id,
      :account_id,
      :storage_lens_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutStorageLensConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The account ID of the requester.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag set of the S3 Storage Lens configuration.</p>
    #            <note>
    #               <p>You can set up to a maximum of 50 tags.</p>
    #            </note>
    #
    #   @return [Array<StorageLensTag>]
    #
    PutStorageLensConfigurationTaggingInput = ::Struct.new(
      :config_id,
      :account_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutStorageLensConfigurationTaggingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A Region that supports a Multi-Region Access Point as well as the associated bucket for the Region.</p>
    #
    # @!attribute bucket
    #   <p>The name of the associated bucket for the Region.</p>
    #
    #   @return [String]
    #
    Region = ::Struct.new(
      :bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A combination of a bucket and Region that's part of a Multi-Region Access Point.</p>
    #
    # @!attribute bucket
    #   <p>The name of the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The name of the Region.</p>
    #
    #   @return [String]
    #
    RegionReport = ::Struct.new(
      :bucket,
      :region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container for the regional bucket.</p>
    #
    # @!attribute bucket
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) for the regional bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute public_access_block_enabled
    #   <p></p>
    #
    #   @return [Boolean]
    #
    # @!attribute creation_date
    #   <p>The creation date of the regional bucket</p>
    #
    #   @return [Time]
    #
    # @!attribute outpost_id
    #   <p>The Outposts ID of the regional bucket.</p>
    #
    #   @return [String]
    #
    RegionalBucket = ::Struct.new(
      :bucket,
      :bucket_arn,
      :public_access_block_enabled,
      :creation_date,
      :outpost_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.public_access_block_enabled ||= false
      end
    end

    # Includes enum constants for ReplicationStatus
    #
    module ReplicationStatus
      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      REPLICA = "REPLICA"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for RequestedJobStatus
    #
    module RequestedJobStatus
      # No documentation available.
      #
      Cancelled = "Cancelled"

      # No documentation available.
      #
      Ready = "Ready"
    end

    # <p></p>
    #
    # @!attribute owner
    #   <p></p>
    #
    #   @return [S3ObjectOwner]
    #
    # @!attribute grants
    #   <p></p>
    #
    #   @return [Array<S3Grant>]
    #
    S3AccessControlList = ::Struct.new(
      :owner,
      :grants,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute access_control_list
    #   <p></p>
    #
    #   @return [S3AccessControlList]
    #
    # @!attribute canned_access_control_list
    #   <p></p>
    #
    #   Enum, one of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #
    #   @return [String]
    #
    S3AccessControlPolicy = ::Struct.new(
      :access_control_list,
      :canned_access_control_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the bucket where the Amazon S3 Storage Lens metrics export files are
    #          located.</p>
    #
    # @!attribute format
    #   <p></p>
    #
    #   Enum, one of: ["CSV", "Parquet"]
    #
    #   @return [String]
    #
    # @!attribute output_schema_version
    #   <p>The schema version of the export file.</p>
    #
    #   Enum, one of: ["V_1"]
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The account ID of the owner of the S3 Storage Lens metrics export bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the bucket. This property is read-only and follows the
    #            following format: <code>
    #                  arn:aws:s3:<i>us-east-1</i>:<i>example-account-id</i>:bucket/<i>your-destination-bucket-name</i>
    #               </code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The prefix of the destination bucket where the metrics export will be delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   <p>The container for the type encryption of the metrics exports in this bucket.</p>
    #
    #   @return [StorageLensDataExportEncryption]
    #
    S3BucketDestination = ::Struct.new(
      :format,
      :output_schema_version,
      :account_id,
      :arn,
      :prefix,
      :encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3CannedAccessControlList
    #
    module S3CannedAccessControlList
      # No documentation available.
      #
      PRIVATE = "private"

      # No documentation available.
      #
      PUBLIC_READ = "public-read"

      # No documentation available.
      #
      PUBLIC_READ_WRITE = "public-read-write"

      # No documentation available.
      #
      AWS_EXEC_READ = "aws-exec-read"

      # No documentation available.
      #
      AUTHENTICATED_READ = "authenticated-read"

      # No documentation available.
      #
      BUCKET_OWNER_READ = "bucket-owner-read"

      # No documentation available.
      #
      BUCKET_OWNER_FULL_CONTROL = "bucket-owner-full-control"
    end

    # Includes enum constants for S3ChecksumAlgorithm
    #
    module S3ChecksumAlgorithm
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

    # <p>Contains the configuration parameters for a PUT Copy object operation. S3 Batch Operations
    #          passes every object to the underlying PUT Copy object API. For more information about the
    #          parameters for this operation, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectCOPY.html">PUT Object - Copy</a>.</p>
    #
    # @!attribute target_resource
    #   <p>Specifies the destination bucket ARN for the batch copy operation. For example, to copy
    #            objects to a bucket named "destinationBucket", set the TargetResource to
    #            "arn:aws:s3:::destinationBucket".</p>
    #
    #   @return [String]
    #
    # @!attribute canned_access_control_list
    #   <p></p>
    #
    #   Enum, one of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #
    #   @return [String]
    #
    # @!attribute access_control_grants
    #   <p></p>
    #
    #   @return [Array<S3Grant>]
    #
    # @!attribute metadata_directive
    #   <p></p>
    #
    #   Enum, one of: ["COPY", "REPLACE"]
    #
    #   @return [String]
    #
    # @!attribute modified_since_constraint
    #   <p></p>
    #
    #   @return [Time]
    #
    # @!attribute new_object_metadata
    #   <p>If you don't provide this parameter, Amazon S3 copies all the metadata from the original
    #            objects. If you specify an empty set, the new objects will have no tags. Otherwise, Amazon S3
    #            assigns the supplied tags to the new objects.</p>
    #
    #   @return [S3ObjectMetadata]
    #
    # @!attribute new_object_tagging
    #   <p></p>
    #
    #   @return [Array<S3Tag>]
    #
    # @!attribute redirect_location
    #   <p>Specifies an optional metadata property for website redirects,
    #               <code>x-amz-website-redirect-location</code>. Allows webpage redirects if the object is
    #            accessed through a website endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute requester_pays
    #   <p></p>
    #
    #   @return [Boolean]
    #
    # @!attribute storage_class
    #   <p></p>
    #
    #   Enum, one of: ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "GLACIER", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #
    #   @return [String]
    #
    # @!attribute un_modified_since_constraint
    #   <p></p>
    #
    #   @return [Time]
    #
    # @!attribute sse_aws_kms_key_id
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute target_key_prefix
    #   <p>Specifies the folder prefix into which you would like the objects to be copied. For
    #            example, to copy objects into a folder named <code>Folder1</code> in the destination bucket, set the
    #            TargetKeyPrefix to <code>Folder1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute object_lock_legal_hold_status
    #   <p>The legal hold status to be applied to all objects in the Batch Operations job.</p>
    #
    #   Enum, one of: ["OFF", "ON"]
    #
    #   @return [String]
    #
    # @!attribute object_lock_mode
    #   <p>The retention mode to be applied to all objects in the Batch Operations job.</p>
    #
    #   Enum, one of: ["COMPLIANCE", "GOVERNANCE"]
    #
    #   @return [String]
    #
    # @!attribute object_lock_retain_until_date
    #   <p>The date when the applied object retention configuration expires on all objects in the
    #            Batch Operations job.</p>
    #
    #   @return [Time]
    #
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using Amazon Web Services KMS (SSE-KMS). Setting this header to <code>true</code>
    #            causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.</p>
    #            <p>Specifying this header with an <i>object</i> action doesn’t affect
    #               <i>bucket-level</i> settings for S3 Bucket Key.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm you want Amazon S3 to use to create the checksum. For more information
    #               see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CheckingObjectIntegrity.xml">
    #                   Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   Enum, one of: ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    #   @return [String]
    #
    S3CopyObjectOperation = ::Struct.new(
      :target_resource,
      :canned_access_control_list,
      :access_control_grants,
      :metadata_directive,
      :modified_since_constraint,
      :new_object_metadata,
      :new_object_tagging,
      :redirect_location,
      :requester_pays,
      :storage_class,
      :un_modified_since_constraint,
      :sse_aws_kms_key_id,
      :target_key_prefix,
      :object_lock_legal_hold_status,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :bucket_key_enabled,
      :checksum_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.requester_pays ||= false
        self.bucket_key_enabled ||= false
      end
    end

    # <p>Contains no configuration parameters because the DELETE Object tagging API only accepts
    #          the bucket name and key name as parameters, which are defined in the job's manifest.</p>
    #
    S3DeleteObjectTaggingOperation = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the specified job's generated manifest. Batch Operations jobs created with a
    #          ManifestGenerator populate details of this descriptor after execution of the
    #          ManifestGenerator.</p>
    #
    # @!attribute format
    #   <p>The format of the generated manifest.</p>
    #
    #   Enum, one of: ["S3InventoryReport_CSV_20211130"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>Contains the information required to locate a manifest object.</p>
    #
    #   @return [JobManifestLocation]
    #
    S3GeneratedManifestDescriptor = ::Struct.new(
      :format,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3GlacierJobTier
    #
    module S3GlacierJobTier
      # No documentation available.
      #
      BULK = "BULK"

      # No documentation available.
      #
      STANDARD = "STANDARD"
    end

    # <p></p>
    #
    # @!attribute grantee
    #   <p></p>
    #
    #   @return [S3Grantee]
    #
    # @!attribute permission
    #   <p></p>
    #
    #   Enum, one of: ["FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"]
    #
    #   @return [String]
    #
    S3Grant = ::Struct.new(
      :grantee,
      :permission,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute type_identifier
    #   <p></p>
    #
    #   Enum, one of: ["id", "emailAddress", "uri"]
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p></p>
    #
    #   @return [String]
    #
    S3Grantee = ::Struct.new(
      :type_identifier,
      :identifier,
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3GranteeTypeIdentifier
    #
    module S3GranteeTypeIdentifier
      # No documentation available.
      #
      CANONICAL = "id"

      # No documentation available.
      #
      EMAIL_ADDRESS = "emailAddress"

      # No documentation available.
      #
      GROUP = "uri"
    end

    # <p>Contains the configuration parameters for an S3 Initiate Restore Object job.
    #          S3 Batch Operations passes every object to the underlying POST Object restore API. For more
    #          information about the parameters for this operation, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPOSTrestore.html#RESTObjectPOSTrestore-restore-request">RestoreObject</a>.</p>
    #
    # @!attribute expiration_in_days
    #   <p>This argument specifies how long the S3 Glacier or S3 Glacier Deep Archive object remains
    #            available in Amazon S3. S3 Initiate Restore Object jobs that target S3 Glacier and S3 Glacier Deep Archive
    #            objects require <code>ExpirationInDays</code> set to 1 or greater.</p>
    #            <p>Conversely, do <i>not</i> set <code>ExpirationInDays</code> when creating
    #            S3 Initiate Restore Object jobs that target S3 Intelligent-Tiering Archive Access and
    #            Deep Archive Access tier objects. Objects in S3 Intelligent-Tiering archive access tiers are
    #            not subject to restore expiry, so specifying <code>ExpirationInDays</code> results in
    #            restore request failure.</p>
    #            <p>S3 Batch Operations jobs can operate either on S3 Glacier and S3 Glacier Deep Archive storage class
    #            objects or on S3 Intelligent-Tiering Archive Access and Deep Archive Access storage tier
    #            objects, but not both types in the same job. If you need to restore objects of both types
    #            you <i>must</i> create separate Batch Operations jobs. </p>
    #
    #   @return [Integer]
    #
    # @!attribute glacier_job_tier
    #   <p>S3 Batch Operations supports <code>STANDARD</code> and <code>BULK</code> retrieval tiers, but
    #            not the <code>EXPEDITED</code> retrieval tier.</p>
    #
    #   Enum, one of: ["BULK", "STANDARD"]
    #
    #   @return [String]
    #
    S3InitiateRestoreObjectOperation = ::Struct.new(
      :expiration_in_days,
      :glacier_job_tier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container for the service that will create the S3 manifest.</p>
    #
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the bucket the generated manifest is written to. If
    #            provided the generated manifest bucket's owner Amazon Web Services account ID must match this value, else
    #            the job fails.</p>
    #
    #   @return [String]
    #
    # @!attribute source_bucket
    #   <p>The source bucket used by the ManifestGenerator.</p>
    #
    #   @return [String]
    #
    # @!attribute manifest_output_location
    #   <p>Specifies the location the generated manifest will be written to.</p>
    #
    #   @return [S3ManifestOutputLocation]
    #
    # @!attribute filter
    #   <p>Specifies rules the S3JobManifestGenerator should use to use to decide whether an object
    #            in the source bucket should or should not be included in the generated job manifest.</p>
    #
    #   @return [JobManifestGeneratorFilter]
    #
    # @!attribute enable_manifest_output
    #   <p>Determines whether or not to write the job's generated manifest to a bucket.</p>
    #
    #   @return [Boolean]
    #
    S3JobManifestGenerator = ::Struct.new(
      :expected_bucket_owner,
      :source_bucket,
      :manifest_output_location,
      :filter,
      :enable_manifest_output,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable_manifest_output ||= false
      end
    end

    # <p>Location details for where the generated manifest should be written.</p>
    #
    # @!attribute expected_manifest_bucket_owner
    #   <p>The Account ID that owns the bucket the generated manifest is written to.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>The bucket ARN the generated manifest should be written to.</p>
    #
    #   @return [String]
    #
    # @!attribute manifest_prefix
    #   <p>Prefix identifying one or more objects to which the manifest applies.</p>
    #
    #   @return [String]
    #
    # @!attribute manifest_encryption
    #   <p>Specifies what encryption should be used when the generated manifest objects are
    #            written.</p>
    #
    #   @return [GeneratedManifestEncryption]
    #
    # @!attribute manifest_format
    #   <p>The format of the generated manifest.</p>
    #
    #   Enum, one of: ["S3InventoryReport_CSV_20211130"]
    #
    #   @return [String]
    #
    S3ManifestOutputLocation = ::Struct.new(
      :expected_manifest_bucket_owner,
      :bucket,
      :manifest_prefix,
      :manifest_encryption,
      :manifest_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3MetadataDirective
    #
    module S3MetadataDirective
      # No documentation available.
      #
      COPY = "COPY"

      # No documentation available.
      #
      REPLACE = "REPLACE"
    end

    # <p>Whether S3 Object Lock legal hold will be applied to objects in an S3 Batch Operations
    #          job.</p>
    #
    # @!attribute status
    #   <p>The Object Lock legal hold status to be applied to all objects in the Batch Operations
    #            job.</p>
    #
    #   Enum, one of: ["OFF", "ON"]
    #
    #   @return [String]
    #
    S3ObjectLockLegalHold = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3ObjectLockLegalHoldStatus
    #
    module S3ObjectLockLegalHoldStatus
      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      ON = "ON"
    end

    # Includes enum constants for S3ObjectLockMode
    #
    module S3ObjectLockMode
      # No documentation available.
      #
      COMPLIANCE = "COMPLIANCE"

      # No documentation available.
      #
      GOVERNANCE = "GOVERNANCE"
    end

    # Includes enum constants for S3ObjectLockRetentionMode
    #
    module S3ObjectLockRetentionMode
      # No documentation available.
      #
      COMPLIANCE = "COMPLIANCE"

      # No documentation available.
      #
      GOVERNANCE = "GOVERNANCE"
    end

    # <p></p>
    #
    # @!attribute cache_control
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute content_disposition
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute content_encoding
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute content_language
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute user_metadata
    #   <p></p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute content_length
    #   <p></p>
    #
    #   @return [Integer]
    #
    # @!attribute content_md5
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute http_expires_date
    #   <p></p>
    #
    #   @return [Time]
    #
    # @!attribute requester_charged
    #   <p></p>
    #
    #   @return [Boolean]
    #
    # @!attribute sse_algorithm
    #   <p></p>
    #
    #   Enum, one of: ["AES256", "KMS"]
    #
    #   @return [String]
    #
    S3ObjectMetadata = ::Struct.new(
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :user_metadata,
      :content_length,
      :content_md5,
      :content_type,
      :http_expires_date,
      :requester_charged,
      :sse_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.requester_charged ||= false
      end
    end

    # <p></p>
    #
    # @!attribute id
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p></p>
    #
    #   @return [String]
    #
    S3ObjectOwner = ::Struct.new(
      :id,
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3Permission
    #
    module S3Permission
      # No documentation available.
      #
      FULL_CONTROL = "FULL_CONTROL"

      # No documentation available.
      #
      READ = "READ"

      # No documentation available.
      #
      WRITE = "WRITE"

      # No documentation available.
      #
      READ_ACP = "READ_ACP"

      # No documentation available.
      #
      WRITE_ACP = "WRITE_ACP"
    end

    # <p>Directs the specified job to invoke <code>ReplicateObject</code> on every object in the job's
    #          manifest.</p>
    #
    S3ReplicateObjectOperation = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the S3 Object Lock retention mode to be applied to all objects in the
    #          S3 Batch Operations job. If you don't provide <code>Mode</code> and <code>RetainUntilDate</code>
    #          data types in your operation, you will remove the retention from your objects. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html">Using S3 Object Lock retention
    #             with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute retain_until_date
    #   <p>The date when the applied Object Lock retention will expire on all objects set by the
    #            Batch Operations job.</p>
    #
    #   @return [Time]
    #
    # @!attribute mode
    #   <p>The Object Lock retention mode to be applied to all objects in the Batch Operations
    #            job.</p>
    #
    #   Enum, one of: ["COMPLIANCE", "GOVERNANCE"]
    #
    #   @return [String]
    #
    S3Retention = ::Struct.new(
      :retain_until_date,
      :mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3SSEAlgorithm
    #
    module S3SSEAlgorithm
      # No documentation available.
      #
      AES256 = "AES256"

      # No documentation available.
      #
      KMS = "KMS"
    end

    # <p>Contains the configuration parameters for a Set Object ACL operation. S3 Batch Operations
    #          passes every object to the underlying PUT Object acl API. For more information about the
    #          parameters for this operation, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTacl.html">PUT Object acl</a>.</p>
    #
    # @!attribute access_control_policy
    #   <p></p>
    #
    #   @return [S3AccessControlPolicy]
    #
    S3SetObjectAclOperation = ::Struct.new(
      :access_control_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration for an S3 Object Lock legal hold operation that an
    #          S3 Batch Operations job passes every object to the underlying <code>PutObjectLegalHold</code>
    #          API. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-legal-hold.html">Using S3 Object Lock legal hold
    #             with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute legal_hold
    #   <p>Contains the Object Lock legal hold status to be applied to all objects in the
    #            Batch Operations job.</p>
    #
    #   @return [S3ObjectLockLegalHold]
    #
    S3SetObjectLegalHoldOperation = ::Struct.new(
      :legal_hold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration parameters for the Object Lock retention action for an
    #          S3 Batch Operations job. Batch Operations passes every object to the underlying
    #             <code>PutObjectRetention</code> API. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html">Using
    #             S3 Object Lock retention with S3 Batch Operations</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #
    # @!attribute bypass_governance_retention
    #   <p>Indicates if the action should be applied to objects in the Batch Operations job even if they
    #            have Object Lock <code> GOVERNANCE</code> type in place.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute retention
    #   <p>Contains the Object Lock retention mode to be applied to all objects in the Batch Operations
    #            job. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html">Using S3 Object Lock retention
    #               with S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #   @return [S3Retention]
    #
    S3SetObjectRetentionOperation = ::Struct.new(
      :bypass_governance_retention,
      :retention,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration parameters for a Set Object Tagging operation. S3 Batch Operations
    #          passes every object to the underlying PUT Object tagging API. For more information about
    #          the parameters for this operation, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTtagging.html">PUT Object tagging</a>.</p>
    #
    # @!attribute tag_set
    #   <p></p>
    #
    #   @return [Array<S3Tag>]
    #
    S3SetObjectTaggingOperation = ::Struct.new(
      :tag_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3StorageClass
    #
    module S3StorageClass
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      STANDARD_IA = "STANDARD_IA"

      # No documentation available.
      #
      ONEZONE_IA = "ONEZONE_IA"

      # No documentation available.
      #
      GLACIER = "GLACIER"

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

    # <p></p>
    #
    # @!attribute key
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p></p>
    #
    #   @return [String]
    #
    S3Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute key_id
    #   <p>A container for the ARN of the SSE-KMS encryption. This property is read-only and
    #            follows the following format: <code>
    #                  arn:aws:kms:<i>us-east-1</i>:<i>example-account-id</i>:key/<i>example-9a73-4afc-8d29-8f5900cef44e</i>
    #               </code>
    #            </p>
    #
    #   @return [String]
    #
    SSEKMS = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration for the use of SSE-KMS to encrypt generated manifest objects.</p>
    #
    # @!attribute key_id
    #   <p>Specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric customer managed
    #            key to use for encrypting generated manifest objects.</p>
    #
    #   @return [String]
    #
    SSEKMSEncryption = ::Struct.new(
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    SSES3 = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration for the use of SSE-S3 to encrypt generated manifest objects.</p>
    #
    SSES3Encryption = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute delimiter
    #   <p>A container for the delimiter of the selection criteria being used.</p>
    #
    #   @return [String]
    #
    # @!attribute max_depth
    #   <p>The max depth of the selection criteria</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_storage_bytes_percentage
    #   <p>The minimum number of storage bytes percentage whose metrics will be selected.</p>
    #            <note>
    #               <p>You must choose a value greater than or equal to <code>1.0</code>.</p>
    #            </note>
    #
    #   @return [Float]
    #
    SelectionCriteria = ::Struct.new(
      :delimiter,
      :max_depth,
      :min_storage_bytes_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_depth ||= 0
        self.min_storage_bytes_percentage ||= 0
      end
    end

    # <p>The Amazon Web Services organization for your S3 Storage Lens.</p>
    #
    # @!attribute arn
    #   <p>A container for the Amazon Resource Name (ARN) of the Amazon Web Services organization. This property
    #            is read-only and follows the following format: <code>
    #                  arn:aws:organizations:<i>us-east-1</i>:<i>example-account-id</i>:organization/<i>o-ex2l495dck</i>
    #               </code>
    #            </p>
    #
    #   @return [String]
    #
    StorageLensAwsOrg = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the Amazon S3 Storage Lens configuration.</p>
    #
    # @!attribute id
    #   <p>A container for the Amazon S3 Storage Lens configuration ID.</p>
    #
    #   @return [String]
    #
    # @!attribute account_level
    #   <p>A container for all the account-level configurations of your S3 Storage Lens
    #            configuration.</p>
    #
    #   @return [AccountLevel]
    #
    # @!attribute include
    #   <p>A container for what is included in this configuration. This container can only be valid
    #            if there is no <code>Exclude</code> container submitted, and it's not empty. </p>
    #
    #   @return [Include]
    #
    # @!attribute exclude
    #   <p>A container for what is excluded in this configuration. This container can only be valid
    #            if there is no <code>Include</code> container submitted, and it's not empty. </p>
    #
    #   @return [Exclude]
    #
    # @!attribute data_export
    #   <p>A container to specify the properties of your S3 Storage Lens metrics export including, the
    #            destination, schema and format.</p>
    #
    #   @return [StorageLensDataExport]
    #
    # @!attribute is_enabled
    #   <p>A container for whether the S3 Storage Lens configuration is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_org
    #   <p>A container for the Amazon Web Services organization for this S3 Storage Lens configuration.</p>
    #
    #   @return [StorageLensAwsOrg]
    #
    # @!attribute storage_lens_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Storage Lens configuration. This property is read-only
    #            and follows the following format: <code>
    #                  arn:aws:s3:<i>us-east-1</i>:<i>example-account-id</i>:storage-lens/<i>your-dashboard-name</i>
    #               </code>
    #            </p>
    #
    #   @return [String]
    #
    StorageLensConfiguration = ::Struct.new(
      :id,
      :account_level,
      :include,
      :exclude,
      :data_export,
      :is_enabled,
      :aws_org,
      :storage_lens_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_enabled ||= false
      end
    end

    # <p>A container to specify the properties of your S3 Storage Lens metrics export, including the
    #          destination, schema, and format.</p>
    #
    # @!attribute s3_bucket_destination
    #   <p>A container for the bucket where the S3 Storage Lens metrics export will be located.</p>
    #            <note>
    #               <p>This bucket must be located in the same Region as the storage lens configuration.
    #            </p>
    #            </note>
    #
    #   @return [S3BucketDestination]
    #
    # @!attribute cloud_watch_metrics
    #   <p>A container for enabling Amazon CloudWatch publishing for S3 Storage Lens metrics.</p>
    #
    #   @return [CloudWatchMetrics]
    #
    StorageLensDataExport = ::Struct.new(
      :s3_bucket_destination,
      :cloud_watch_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container for the encryption of the S3 Storage Lens metrics exports.</p>
    #
    # @!attribute sses3
    #   <p></p>
    #
    #   @return [SSES3]
    #
    # @!attribute ssekms
    #   <p></p>
    #
    #   @return [SSEKMS]
    #
    StorageLensDataExportEncryption = ::Struct.new(
      :sses3,
      :ssekms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute key
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p></p>
    #
    #   @return [String]
    #
    StorageLensTag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute tag_set
    #   <p>A collection for a set of tags.</p>
    #
    #   @return [Array<S3Tag>]
    #
    Tagging = ::Struct.new(
      :tag_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon S3 throws this exception if you have too many tags in your tag set.</p>
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

    # <p>Specifies when an object transitions to a specified storage class. For more information
    #          about Amazon S3 Lifecycle configuration rules, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html">
    #             Transitioning objects using Amazon S3 Lifecycle</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
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
    #   Enum, one of: ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"]
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
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job whose priority you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority you want to assign to this job.</p>
    #
    #   @return [Integer]
    #
    UpdateJobPriorityInput = ::Struct.new(
      :account_id,
      :job_id,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # @!attribute job_id
    #   <p>The ID for the job whose priority Amazon S3 updated.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The new priority assigned to the specified job.</p>
    #
    #   @return [Integer]
    #
    UpdateJobPriorityOutput = ::Struct.new(
      :job_id,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID of the job whose status you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_job_status
    #   <p>The status that you want to move the specified job to.</p>
    #
    #   Enum, one of: ["Cancelled", "Ready"]
    #
    #   @return [String]
    #
    # @!attribute status_update_reason
    #   <p>A description of the reason why you want to change the specified job's status. This
    #            field can be any string up to the maximum length.</p>
    #
    #   @return [String]
    #
    UpdateJobStatusInput = ::Struct.new(
      :account_id,
      :job_id,
      :requested_job_status,
      :status_update_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID for the job whose status was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status for the specified job.</p>
    #
    #   Enum, one of: ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"]
    #
    #   @return [String]
    #
    # @!attribute status_update_reason
    #   <p>The reason that the specified job's status was updated.</p>
    #
    #   @return [String]
    #
    UpdateJobStatusOutput = ::Struct.new(
      :job_id,
      :status,
      :status_update_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The virtual private cloud (VPC) configuration for an access point.</p>
    #
    # @!attribute vpc_id
    #   <p>If this field is specified, this access point will only allow connections from the specified VPC
    #            ID.</p>
    #
    #   @return [String]
    #
    VpcConfiguration = ::Struct.new(
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
