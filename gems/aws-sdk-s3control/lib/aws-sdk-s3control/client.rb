# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::S3Control
  # An API client for AWSS3ControlServiceV20180820
  # See {#initialize} for a full list of supported configuration options
  # <p> Amazon Web Services S3 Control provides access to Amazon S3 control plane actions. </p>
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
    def initialize(config = AWS::SDK::S3Control::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an access point and associates it with the specified bucket. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">Managing
    #             Data Access with Amazon S3 Access Points</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p></p>
    #          <note>
    #             <p>S3 on Outposts only supports VPC-style access points. </p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html"> Accessing Amazon S3 on Outposts using
    #                virtual private cloud (VPC) only access points</a> in the
    #                <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html#API_control_CreateAccessPoint_Examples">Examples</a> section.</p>
    #          <p></p>
    #          <p>The following actions are related to <code>CreateAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html">GetAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html">DeleteAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html">ListAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateAccessPointInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the bucket for which you want to create an
    #            access point.</p>
    #
    # @option params [String] :name
    #   <p>The name you want to assign to this access point.</p>
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket that you want to associate this access point with.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @option params [VpcConfiguration] :vpc_configuration
    #   <p>If you include this field, Amazon S3 restricts access to this access point to requests from the
    #            specified virtual private cloud (VPC).</p>
    #            <note>
    #               <p>This is required for creating an access point for Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @option params [PublicAccessBlockConfiguration] :public_access_block_configuration
    #   <p> The <code>PublicAccessBlock</code> configuration that you want to apply to the access point.
    #         </p>
    #
    # @return [Types::CreateAccessPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_point(
    #     account_id: 'AccountId', # required
    #     name: 'Name', # required
    #     bucket: 'Bucket', # required
    #     vpc_configuration: {
    #       vpc_id: 'VpcId' # required
    #     },
    #     public_access_block_configuration: {
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAccessPointOutput
    #   resp.data.access_point_arn #=> String
    #   resp.data.alias #=> String
    #
    def create_access_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccessPointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccessPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccessPoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::CreateAccessPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccessPoint,
        stubs: @stubs,
        params_class: Params::CreateAccessPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_access_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Object Lambda Access Point. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html">Transforming objects with
    #             Object Lambda Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to
    #          <code>CreateAccessPointForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html">DeleteAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html">GetAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html">ListAccessPointsForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateAccessPointForObjectLambdaInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for owner of the specified Object Lambda Access Point.</p>
    #
    # @option params [String] :name
    #   <p>The name you want to assign to this Object Lambda Access Point.</p>
    #
    # @option params [ObjectLambdaConfiguration] :configuration
    #   <p>Object Lambda Access Point configuration as a JSON document.</p>
    #
    # @return [Types::CreateAccessPointForObjectLambdaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_point_for_object_lambda(
    #     account_id: 'AccountId', # required
    #     name: 'Name', # required
    #     configuration: {
    #       supporting_access_point: 'SupportingAccessPoint', # required
    #       cloud_watch_metrics_enabled: false,
    #       allowed_features: [
    #         'GetObject-Range' # accepts ["GetObject-Range", "GetObject-PartNumber"]
    #       ],
    #       transformation_configurations: [
    #         {
    #           actions: [
    #             'GetObject' # accepts ["GetObject"]
    #           ], # required
    #           content_transformation: {
    #             # One of:
    #             aws_lambda: {
    #               function_arn: 'FunctionArn', # required
    #               function_payload: 'FunctionPayload'
    #             }
    #           } # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAccessPointForObjectLambdaOutput
    #   resp.data.object_lambda_access_point_arn #=> String
    #
    def create_access_point_for_object_lambda(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccessPointForObjectLambdaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccessPointForObjectLambdaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccessPointForObjectLambda
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::CreateAccessPointForObjectLambda
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccessPointForObjectLambda,
        stubs: @stubs,
        params_class: Params::CreateAccessPointForObjectLambdaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_access_point_for_object_lambda
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action creates an Amazon S3 on Outposts bucket. To create an S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">Create
    #                Bucket</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Creates a new Outposts bucket. By creating the bucket, you become the bucket owner. To
    #          create an Outposts bucket, you must have S3 on Outposts. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in <i>Amazon S3 User Guide</i>.</p>
    #          <p>Not every string is an acceptable bucket name. For information on bucket naming
    #          restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html#bucketnamingrules">Working with
    #             Amazon S3 Buckets</a>.</p>
    #          <p>S3 on Outposts buckets support:</p>
    #          <ul>
    #             <li>
    #                <p>Tags</p>
    #             </li>
    #             <li>
    #                <p>LifecycleConfigurations for deleting expired objects</p>
    #             </li>
    #          </ul>
    #          <p>For a complete list of restrictions and Amazon S3 feature limitations on S3 on Outposts, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OnOutpostsRestrictionsLimitations.html">
    #             Amazon S3 on Outposts Restrictions and Limitations</a>.</p>
    #          <p>For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts
    #          endpoint hostname prefix and <code>x-amz-outpost-id</code> in your API request, see the
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html#API_control_CreateBucket_Examples">Examples</a> section.</p>
    #
    #          <p>The following actions are related to <code>CreateBucket</code> for
    #          Amazon S3 on Outposts:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html">GetBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html">DeleteBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html">CreateAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html">PutAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateBucketInput}.
    #
    # @option params [String] :acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket.</p>
    #
    # @option params [CreateBucketConfiguration] :create_bucket_configuration
    #   <p>The configuration information for the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @option params [String] :grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @option params [String] :grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @option params [String] :grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @option params [String] :grant_write
    #   <p>Allows grantee to create, overwrite, and delete any object in the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @option params [String] :grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @option params [Boolean] :object_lock_enabled_for_bucket
    #   <p>Specifies whether you want S3 Object Lock to be enabled for the new bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @option params [String] :outpost_id
    #   <p>The ID of the Outposts where the bucket is being created.</p>
    #            <note>
    #               <p>This is required by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @return [Types::CreateBucketOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bucket(
    #     acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read"]
    #     bucket: 'Bucket', # required
    #     create_bucket_configuration: {
    #       location_constraint: 'EU' # accepts ["EU", "eu-west-1", "us-west-1", "us-west-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1", "cn-north-1", "eu-central-1"]
    #     },
    #     grant_full_control: 'GrantFullControl',
    #     grant_read: 'GrantRead',
    #     grant_read_acp: 'GrantReadACP',
    #     grant_write: 'GrantWrite',
    #     grant_write_acp: 'GrantWriteACP',
    #     object_lock_enabled_for_bucket: false,
    #     outpost_id: 'OutpostId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBucketOutput
    #   resp.data.location #=> String
    #   resp.data.bucket_arn #=> String
    #
    def create_bucket(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBucketInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBucketInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBucket
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BucketAlreadyExists, Errors::BucketAlreadyOwnedByYou]),
        data_parser: Parsers::CreateBucket
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBucket,
        stubs: @stubs,
        params_class: Params::CreateBucketOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_bucket
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>You can use S3 Batch Operations to perform large-scale batch actions on Amazon S3 objects.
    #          Batch Operations can run a single action on lists of Amazon S3 objects that you specify. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html">S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This action creates a S3 Batch Operations job.</p>
    #          <p></p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html">DescribeJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html">ListJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html">UpdateJobPriority</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html">UpdateJobStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_JobOperation.html">JobOperation</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateJobInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that creates the job.</p>
    #
    # @option params [Boolean] :confirmation_required
    #   <p>Indicates whether confirmation is required before Amazon S3 runs the job. Confirmation is
    #            only required for jobs created through the Amazon S3 console.</p>
    #
    # @option params [JobOperation] :operation
    #   <p>The action that you want this job to perform on every object listed in the manifest. For
    #            more information about the available actions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-actions.html">Operations</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [JobReport] :report
    #   <p>Configuration parameters for the optional job-completion report.</p>
    #
    # @option params [String] :client_request_token
    #   <p>An idempotency token to ensure that you don't accidentally submit the same request
    #            twice. You can use any string up to the maximum length.</p>
    #
    # @option params [JobManifest] :manifest
    #   <p>Configuration parameters for the manifest.</p>
    #
    # @option params [String] :description
    #   <p>A description for this job. You can use any string within the permitted length.
    #            Descriptions don't need to be unique and can be used for multiple jobs.</p>
    #
    # @option params [Integer] :priority
    #   <p>The numerical priority for this job. Higher numbers indicate higher priority.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) for the Identity and Access Management (IAM) role that Batch Operations will
    #            use to run this job's action on every object in the manifest.</p>
    #
    # @option params [Array<S3Tag>] :tags
    #   <p>A set of tags to associate with the S3 Batch Operations job. This is an optional parameter.
    #         </p>
    #
    # @option params [JobManifestGenerator] :manifest_generator
    #   <p>The attribute container for the ManifestGenerator details. Jobs must be created with
    #            either a manifest file or a ManifestGenerator, but not both.</p>
    #
    # @return [Types::CreateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job(
    #     account_id: 'AccountId', # required
    #     confirmation_required: false,
    #     operation: {
    #       lambda_invoke: {
    #         function_arn: 'FunctionArn'
    #       },
    #       s3_put_object_copy: {
    #         target_resource: 'TargetResource',
    #         canned_access_control_list: 'private', # accepts ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #         access_control_grants: [
    #           {
    #             grantee: {
    #               type_identifier: 'id', # accepts ["id", "emailAddress", "uri"]
    #               identifier: 'Identifier',
    #               display_name: 'DisplayName'
    #             },
    #             permission: 'FULL_CONTROL' # accepts ["FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"]
    #           }
    #         ],
    #         metadata_directive: 'COPY', # accepts ["COPY", "REPLACE"]
    #         modified_since_constraint: Time.now,
    #         new_object_metadata: {
    #           cache_control: 'CacheControl',
    #           content_disposition: 'ContentDisposition',
    #           content_encoding: 'ContentEncoding',
    #           content_language: 'ContentLanguage',
    #           user_metadata: {
    #             'key' => 'value'
    #           },
    #           content_length: 1,
    #           content_md5: 'ContentMD5',
    #           content_type: 'ContentType',
    #           http_expires_date: Time.now,
    #           requester_charged: false,
    #           sse_algorithm: 'AES256' # accepts ["AES256", "KMS"]
    #         },
    #         new_object_tagging: [
    #           {
    #             key: 'Key', # required
    #             value: 'Value' # required
    #           }
    #         ],
    #         redirect_location: 'RedirectLocation',
    #         requester_pays: false,
    #         storage_class: 'STANDARD', # accepts ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "GLACIER", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #         un_modified_since_constraint: Time.now,
    #         sse_aws_kms_key_id: 'SSEAwsKmsKeyId',
    #         target_key_prefix: 'TargetKeyPrefix',
    #         object_lock_legal_hold_status: 'OFF', # accepts ["OFF", "ON"]
    #         object_lock_mode: 'COMPLIANCE', # accepts ["COMPLIANCE", "GOVERNANCE"]
    #         object_lock_retain_until_date: Time.now,
    #         bucket_key_enabled: false,
    #         checksum_algorithm: 'CRC32' # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #       },
    #       s3_put_object_acl: {
    #         access_control_policy: {
    #           access_control_list: {
    #             owner: {
    #               id: 'ID',
    #               display_name: 'DisplayName'
    #             }, # required
    #           },
    #           canned_access_control_list: 'private' # accepts ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #         }
    #       },
    #       s3_put_object_tagging: {
    #       },
    #       s3_delete_object_tagging: { },
    #       s3_initiate_restore_object: {
    #         expiration_in_days: 1,
    #         glacier_job_tier: 'BULK' # accepts ["BULK", "STANDARD"]
    #       },
    #       s3_put_object_legal_hold: {
    #         legal_hold: {
    #           status: 'OFF' # required - accepts ["OFF", "ON"]
    #         } # required
    #       },
    #       s3_put_object_retention: {
    #         bypass_governance_retention: false,
    #         retention: {
    #           retain_until_date: Time.now,
    #           mode: 'COMPLIANCE' # accepts ["COMPLIANCE", "GOVERNANCE"]
    #         } # required
    #       },
    #       s3_replicate_object: { }
    #     }, # required
    #     report: {
    #       bucket: 'Bucket',
    #       format: 'Report_CSV_20180820', # accepts ["Report_CSV_20180820"]
    #       enabled: false, # required
    #       prefix: 'Prefix',
    #       report_scope: 'AllTasks' # accepts ["AllTasks", "FailedTasksOnly"]
    #     }, # required
    #     client_request_token: 'ClientRequestToken', # required
    #     manifest: {
    #       spec: {
    #         format: 'S3BatchOperations_CSV_20180820', # required - accepts ["S3BatchOperations_CSV_20180820", "S3InventoryReport_CSV_20161130"]
    #         fields: [
    #           'Ignore' # accepts ["Ignore", "Bucket", "Key", "VersionId"]
    #         ]
    #       }, # required
    #       location: {
    #         object_arn: 'ObjectArn', # required
    #         object_version_id: 'ObjectVersionId',
    #         e_tag: 'ETag' # required
    #       } # required
    #     },
    #     description: 'Description',
    #     priority: 1, # required
    #     role_arn: 'RoleArn', # required
    #     manifest_generator: {
    #       # One of:
    #       s3_job_manifest_generator: {
    #         expected_bucket_owner: 'ExpectedBucketOwner',
    #         source_bucket: 'SourceBucket', # required
    #         manifest_output_location: {
    #           expected_manifest_bucket_owner: 'ExpectedManifestBucketOwner',
    #           bucket: 'Bucket', # required
    #           manifest_prefix: 'ManifestPrefix',
    #           manifest_encryption: {
    #             sses3: { },
    #             ssekms: {
    #               key_id: 'KeyId' # required
    #             }
    #           },
    #           manifest_format: 'S3InventoryReport_CSV_20211130' # required - accepts ["S3InventoryReport_CSV_20211130"]
    #         },
    #         filter: {
    #           eligible_for_replication: false,
    #           created_after: Time.now,
    #           created_before: Time.now,
    #           object_replication_statuses: [
    #             'COMPLETED' # accepts ["COMPLETED", "FAILED", "REPLICA", "NONE"]
    #           ]
    #         },
    #         enable_manifest_output: false # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateJobOutput
    #   resp.data.job_id #=> String
    #
    def create_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::TooManyRequestsException, Errors::IdempotencyException, Errors::BadRequestException]),
        data_parser: Parsers::CreateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateJob,
        stubs: @stubs,
        params_class: Params::CreateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Multi-Region Access Point and associates it with the specified buckets. For more information
    #          about creating Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html">Creating
    #             Multi-Region Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around managing Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html">Managing
    #             Multi-Region Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This request is asynchronous, meaning that you might receive a response before the
    #          command has completed. When this request provides a response, it provides a token that you
    #          can use to monitor the status of the request with
    #             <code>DescribeMultiRegionAccessPointOperation</code>.</p>
    #          <p>The following actions are related to <code>CreateMultiRegionAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html">GetMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html">ListMultiRegionAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateMultiRegionAccessPointOperationInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point. The owner of the Multi-Region Access Point also must own
    #            the underlying buckets.</p>
    #
    # @option params [String] :client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    #
    # @option params [CreateMultiRegionAccessPointInput] :details
    #   <p>A container element containing details about the Multi-Region Access Point.</p>
    #
    # @return [Types::CreateMultiRegionAccessPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_multi_region_access_point(
    #     account_id: 'AccountId', # required
    #     client_token: 'ClientToken', # required
    #     details: {
    #       name: 'Name', # required
    #       public_access_block: {
    #         block_public_acls: false,
    #         ignore_public_acls: false,
    #         block_public_policy: false,
    #         restrict_public_buckets: false
    #       },
    #       regions: [
    #         {
    #           bucket: 'Bucket' # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMultiRegionAccessPointOutput
    #   resp.data.request_token_arn #=> String
    #
    def create_multi_region_access_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMultiRegionAccessPointOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMultiRegionAccessPointOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMultiRegionAccessPoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::CreateMultiRegionAccessPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMultiRegionAccessPoint,
        stubs: @stubs,
        params_class: Params::CreateMultiRegionAccessPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_multi_region_access_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified access point.</p>
    #
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html#API_control_DeleteAccessPoint_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>DeleteAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html">CreateAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html">GetAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html">ListAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccessPointInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the access point you want to delete.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #
    # @return [Types::DeleteAccessPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccessPointOutput
    #
    def delete_access_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccessPointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccessPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccessPoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteAccessPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccessPoint,
        stubs: @stubs,
        params_class: Params::DeleteAccessPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_access_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Object Lambda Access Point.</p>
    #          <p>The following actions are related to
    #          <code>DeleteAccessPointForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html">CreateAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html">GetAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html">ListAccessPointsForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccessPointForObjectLambdaInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the access point you want to delete.</p>
    #
    # @return [Types::DeleteAccessPointForObjectLambdaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point_for_object_lambda(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccessPointForObjectLambdaOutput
    #
    def delete_access_point_for_object_lambda(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccessPointForObjectLambdaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccessPointForObjectLambdaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccessPointForObjectLambda
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteAccessPointForObjectLambda
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccessPointForObjectLambda,
        stubs: @stubs,
        params_class: Params::DeleteAccessPointForObjectLambdaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_access_point_for_object_lambda
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the access point policy for the specified access point.</p>
    #          <p></p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html#API_control_DeleteAccessPointPolicy_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>DeleteAccessPointPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html">PutAccessPointPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html">GetAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccessPointPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the access point whose policy you want to delete.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #
    # @return [Types::DeleteAccessPointPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point_policy(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccessPointPolicyOutput
    #
    def delete_access_point_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccessPointPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccessPointPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccessPointPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteAccessPointPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccessPointPolicy,
        stubs: @stubs,
        params_class: Params::DeleteAccessPointPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_access_point_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the resource policy for an Object Lambda Access Point.</p>
    #          <p>The following actions are related to
    #          <code>DeleteAccessPointPolicyForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html">GetAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html">PutAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccessPointPolicyForObjectLambdaInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point you want to delete the policy for.</p>
    #
    # @return [Types::DeleteAccessPointPolicyForObjectLambdaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point_policy_for_object_lambda(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccessPointPolicyForObjectLambdaOutput
    #
    def delete_access_point_policy_for_object_lambda(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccessPointPolicyForObjectLambdaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccessPointPolicyForObjectLambdaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccessPointPolicyForObjectLambda
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteAccessPointPolicyForObjectLambda
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccessPointPolicyForObjectLambda,
        stubs: @stubs,
        params_class: Params::DeleteAccessPointPolicyForObjectLambdaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_access_point_policy_for_object_lambda
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action deletes an Amazon S3 on Outposts bucket. To delete an S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html">DeleteBucket</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Deletes the Amazon S3 on Outposts bucket. All objects (including all object versions and
    #          delete markers) in the bucket must be deleted before the bucket itself can be deleted. For
    #          more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using Amazon S3 on Outposts</a> in
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html#API_control_DeleteBucket_Examples">Examples</a> section.</p>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html">GetBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html">DeleteObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID that owns the Outposts bucket.</p>
    #
    # @option params [String] :bucket
    #   <p>Specifies the bucket being deleted.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @return [Types::DeleteBucketOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketOutput
    #
    def delete_bucket(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucket
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteBucket
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBucket,
        stubs: @stubs,
        params_class: Params::DeleteBucketOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bucket
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action deletes an Amazon S3 on Outposts bucket's lifecycle configuration. To delete
    #             an S3 bucket's lifecycle configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html">DeleteBucketLifecycle</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Deletes the lifecycle configuration from the specified Outposts bucket.
    #          Amazon S3 on Outposts removes all the lifecycle configuration rules in the lifecycle subresource
    #          associated with the bucket. Your objects never expire, and Amazon S3 on Outposts no longer
    #          automatically deletes any objects on the basis of rules contained in the deleted lifecycle
    #          configuration. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using Amazon S3 on Outposts</a> in
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>To use this action, you must have permission to perform the
    #             <code>s3-outposts:DeleteLifecycleConfiguration</code> action. By default, the bucket
    #          owner has this permission and the Outposts bucket owner can grant this permission to
    #          others.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html#API_control_DeleteBucketLifecycleConfiguration_Examples">Examples</a> section.</p>
    #
    #          <p>For more information about object expiration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions">Elements to Describe Lifecycle Actions</a>.</p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html">GetBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketLifecycleConfigurationInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the lifecycle configuration to delete.</p>
    #
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @return [Types::DeleteBucketLifecycleConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_lifecycle_configuration(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketLifecycleConfigurationOutput
    #
    def delete_bucket_lifecycle_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketLifecycleConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketLifecycleConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketLifecycleConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteBucketLifecycleConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBucketLifecycleConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteBucketLifecycleConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bucket_lifecycle_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action deletes an Amazon S3 on Outposts bucket policy. To delete an S3 bucket policy,
    #             see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketPolicy.html">DeleteBucketPolicy</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>This implementation of the DELETE action uses the policy subresource to delete the
    #          policy of a specified Amazon S3 on Outposts bucket. If you are using an identity other than the
    #          root user of the Amazon Web Services account that owns the bucket, the calling identity must have the
    #             <code>s3-outposts:DeleteBucketPolicy</code> permissions on the specified Outposts bucket
    #          and belong to the bucket owner's account to use this action. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in <i>Amazon S3 User Guide</i>.</p>
    #
    #          <p>If you don't have <code>DeleteBucketPolicy</code> permissions, Amazon S3 returns a <code>403
    #             Access Denied</code> error. If you have the correct permissions, but you're not using an
    #          identity that belongs to the bucket owner's account, Amazon S3 returns a <code>405 Method Not
    #             Allowed</code> error. </p>
    #
    #
    #          <important>
    #             <p>As a security precaution, the root user of the Amazon Web Services account that owns a bucket can
    #             always use this action, even if the policy explicitly denies the root user the ability
    #             to perform this action.</p>
    #          </important>
    #
    #          <p>For more information about bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #             Policies</a>. </p>
    #
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html#API_control_DeleteBucketPolicy_Examples">Examples</a> section.</p>
    #
    #          <p>The following actions are related to <code>DeleteBucketPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html">GetBucketPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html">PutBucketPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the Outposts bucket.</p>
    #
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @return [Types::DeleteBucketPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_policy(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketPolicyOutput
    #
    def delete_bucket_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteBucketPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBucketPolicy,
        stubs: @stubs,
        params_class: Params::DeleteBucketPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bucket_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action deletes an Amazon S3 on Outposts bucket's tags. To delete an S3 bucket tags,
    #             see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html">DeleteBucketTagging</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Deletes the tags from the Outposts bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in <i>Amazon S3 User Guide</i>.</p>
    #
    #          <p>To use this action, you must have permission to perform the
    #             <code>PutBucketTagging</code> action. By default, the bucket owner has this permission
    #          and can grant this permission to others. </p>
    #
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html#API_control_DeleteBucketTagging_Examples">Examples</a> section.</p>
    #
    #          <p>The following actions are related to <code>DeleteBucketTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html">GetBucketTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html">PutBucketTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketTaggingInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket tag set to be removed.</p>
    #
    # @option params [String] :bucket
    #   <p>The bucket ARN that has the tag set to be removed.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @return [Types::DeleteBucketTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_tagging(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketTaggingOutput
    #
    def delete_bucket_tagging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketTaggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketTaggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketTagging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBucketTagging,
        stubs: @stubs,
        params_class: Params::DeleteBucketTaggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bucket_tagging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the entire tag set from the specified S3 Batch Operations job. To use this operation,
    #          you must have permission to perform the <code>s3:DeleteJobTagging</code> action. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags">Controlling
    #             access and labeling jobs using tags</a> in the
    #          <i>Amazon S3 User Guide</i>.</p>
    #          <p></p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html">GetJobTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html">PutJobTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteJobTaggingInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    # @option params [String] :job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to delete.</p>
    #
    # @return [Types::DeleteJobTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_tagging(
    #     account_id: 'AccountId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteJobTaggingOutput
    #
    def delete_job_tagging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteJobTaggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteJobTaggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteJobTagging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteJobTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteJobTagging,
        stubs: @stubs,
        params_class: Params::DeleteJobTaggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_job_tagging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Multi-Region Access Point. This action does not delete the buckets associated with the Multi-Region Access Point,
    #          only the Multi-Region Access Point itself.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around managing Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html">Managing
    #             Multi-Region Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This request is asynchronous, meaning that you might receive a response before the
    #          command has completed. When this request provides a response, it provides a token that you
    #          can use to monitor the status of the request with
    #             <code>DescribeMultiRegionAccessPointOperation</code>.</p>
    #          <p>The following actions are related to <code>DeleteMultiRegionAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html">GetMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html">ListMultiRegionAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteMultiRegionAccessPointOperationInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    # @option params [String] :client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    #
    # @option params [DeleteMultiRegionAccessPointInput] :details
    #   <p>A container element containing details about the Multi-Region Access Point.</p>
    #
    # @return [Types::DeleteMultiRegionAccessPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_multi_region_access_point(
    #     account_id: 'AccountId', # required
    #     client_token: 'ClientToken', # required
    #     details: {
    #       name: 'Name' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMultiRegionAccessPointOutput
    #   resp.data.request_token_arn #=> String
    #
    def delete_multi_region_access_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMultiRegionAccessPointOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMultiRegionAccessPointOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMultiRegionAccessPoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteMultiRegionAccessPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMultiRegionAccessPoint,
        stubs: @stubs,
        params_class: Params::DeleteMultiRegionAccessPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_multi_region_access_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the <code>PublicAccessBlock</code> configuration for an Amazon Web Services account. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html"> Using Amazon S3 block
    #             public access</a>.</p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html">GetPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html">PutPublicAccessBlock</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeletePublicAccessBlockInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to remove.</p>
    #
    # @return [Types::DeletePublicAccessBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_public_access_block(
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePublicAccessBlockOutput
    #
    def delete_public_access_block(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePublicAccessBlockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePublicAccessBlockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePublicAccessBlock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeletePublicAccessBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePublicAccessBlock,
        stubs: @stubs,
        params_class: Params::DeletePublicAccessBlockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_public_access_block
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the Amazon S3 Storage Lens configuration. For more information about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your storage
    #             activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:DeleteStorageLensConfiguration</code> action. For more information, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to
    #                use Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteStorageLensConfigurationInput}.
    #
    # @option params [String] :config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    #
    # @return [Types::DeleteStorageLensConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_storage_lens_configuration(
    #     config_id: 'ConfigId', # required
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStorageLensConfigurationOutput
    #
    def delete_storage_lens_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStorageLensConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStorageLensConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStorageLensConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteStorageLensConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStorageLensConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteStorageLensConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_storage_lens_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the Amazon S3 Storage Lens configuration tags. For more information about S3 Storage Lens, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your
    #             storage activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:DeleteStorageLensConfigurationTagging</code> action. For more information,
    #             see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to
    #                use Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteStorageLensConfigurationTaggingInput}.
    #
    # @option params [String] :config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    #
    # @return [Types::DeleteStorageLensConfigurationTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_storage_lens_configuration_tagging(
    #     config_id: 'ConfigId', # required
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStorageLensConfigurationTaggingOutput
    #
    def delete_storage_lens_configuration_tagging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStorageLensConfigurationTaggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStorageLensConfigurationTaggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStorageLensConfigurationTagging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteStorageLensConfigurationTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStorageLensConfigurationTagging,
        stubs: @stubs,
        params_class: Params::DeleteStorageLensConfigurationTaggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_storage_lens_configuration_tagging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the configuration parameters and status for a Batch Operations job. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html">S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p></p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html">ListJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html">UpdateJobPriority</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html">UpdateJobStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    # @option params [String] :job_id
    #   <p>The ID for the job whose information you want to retrieve.</p>
    #
    # @return [Types::DescribeJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job(
    #     account_id: 'AccountId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobOutput
    #   resp.data.job #=> Types::JobDescriptor
    #   resp.data.job.job_id #=> String
    #   resp.data.job.confirmation_required #=> Boolean
    #   resp.data.job.description #=> String
    #   resp.data.job.job_arn #=> String
    #   resp.data.job.status #=> String, one of ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"]
    #   resp.data.job.manifest #=> Types::JobManifest
    #   resp.data.job.manifest.spec #=> Types::JobManifestSpec
    #   resp.data.job.manifest.spec.format #=> String, one of ["S3BatchOperations_CSV_20180820", "S3InventoryReport_CSV_20161130"]
    #   resp.data.job.manifest.spec.fields #=> Array<String>
    #   resp.data.job.manifest.spec.fields[0] #=> String, one of ["Ignore", "Bucket", "Key", "VersionId"]
    #   resp.data.job.manifest.location #=> Types::JobManifestLocation
    #   resp.data.job.manifest.location.object_arn #=> String
    #   resp.data.job.manifest.location.object_version_id #=> String
    #   resp.data.job.manifest.location.e_tag #=> String
    #   resp.data.job.operation #=> Types::JobOperation
    #   resp.data.job.operation.lambda_invoke #=> Types::LambdaInvokeOperation
    #   resp.data.job.operation.lambda_invoke.function_arn #=> String
    #   resp.data.job.operation.s3_put_object_copy #=> Types::S3CopyObjectOperation
    #   resp.data.job.operation.s3_put_object_copy.target_resource #=> String
    #   resp.data.job.operation.s3_put_object_copy.canned_access_control_list #=> String, one of ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   resp.data.job.operation.s3_put_object_copy.access_control_grants #=> Array<S3Grant>
    #   resp.data.job.operation.s3_put_object_copy.access_control_grants[0] #=> Types::S3Grant
    #   resp.data.job.operation.s3_put_object_copy.access_control_grants[0].grantee #=> Types::S3Grantee
    #   resp.data.job.operation.s3_put_object_copy.access_control_grants[0].grantee.type_identifier #=> String, one of ["id", "emailAddress", "uri"]
    #   resp.data.job.operation.s3_put_object_copy.access_control_grants[0].grantee.identifier #=> String
    #   resp.data.job.operation.s3_put_object_copy.access_control_grants[0].grantee.display_name #=> String
    #   resp.data.job.operation.s3_put_object_copy.access_control_grants[0].permission #=> String, one of ["FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"]
    #   resp.data.job.operation.s3_put_object_copy.metadata_directive #=> String, one of ["COPY", "REPLACE"]
    #   resp.data.job.operation.s3_put_object_copy.modified_since_constraint #=> Time
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata #=> Types::S3ObjectMetadata
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.cache_control #=> String
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.content_disposition #=> String
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.content_encoding #=> String
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.content_language #=> String
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.user_metadata #=> Hash<String, String>
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.user_metadata['key'] #=> String
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.content_length #=> Integer
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.content_md5 #=> String
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.content_type #=> String
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.http_expires_date #=> Time
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.requester_charged #=> Boolean
    #   resp.data.job.operation.s3_put_object_copy.new_object_metadata.sse_algorithm #=> String, one of ["AES256", "KMS"]
    #   resp.data.job.operation.s3_put_object_copy.new_object_tagging #=> Array<S3Tag>
    #   resp.data.job.operation.s3_put_object_copy.new_object_tagging[0] #=> Types::S3Tag
    #   resp.data.job.operation.s3_put_object_copy.new_object_tagging[0].key #=> String
    #   resp.data.job.operation.s3_put_object_copy.new_object_tagging[0].value #=> String
    #   resp.data.job.operation.s3_put_object_copy.redirect_location #=> String
    #   resp.data.job.operation.s3_put_object_copy.requester_pays #=> Boolean
    #   resp.data.job.operation.s3_put_object_copy.storage_class #=> String, one of ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "GLACIER", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #   resp.data.job.operation.s3_put_object_copy.un_modified_since_constraint #=> Time
    #   resp.data.job.operation.s3_put_object_copy.sse_aws_kms_key_id #=> String
    #   resp.data.job.operation.s3_put_object_copy.target_key_prefix #=> String
    #   resp.data.job.operation.s3_put_object_copy.object_lock_legal_hold_status #=> String, one of ["OFF", "ON"]
    #   resp.data.job.operation.s3_put_object_copy.object_lock_mode #=> String, one of ["COMPLIANCE", "GOVERNANCE"]
    #   resp.data.job.operation.s3_put_object_copy.object_lock_retain_until_date #=> Time
    #   resp.data.job.operation.s3_put_object_copy.bucket_key_enabled #=> Boolean
    #   resp.data.job.operation.s3_put_object_copy.checksum_algorithm #=> String, one of ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   resp.data.job.operation.s3_put_object_acl #=> Types::S3SetObjectAclOperation
    #   resp.data.job.operation.s3_put_object_acl.access_control_policy #=> Types::S3AccessControlPolicy
    #   resp.data.job.operation.s3_put_object_acl.access_control_policy.access_control_list #=> Types::S3AccessControlList
    #   resp.data.job.operation.s3_put_object_acl.access_control_policy.access_control_list.owner #=> Types::S3ObjectOwner
    #   resp.data.job.operation.s3_put_object_acl.access_control_policy.access_control_list.owner.id #=> String
    #   resp.data.job.operation.s3_put_object_acl.access_control_policy.access_control_list.owner.display_name #=> String
    #   resp.data.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants #=> Array<S3Grant>
    #   resp.data.job.operation.s3_put_object_acl.access_control_policy.canned_access_control_list #=> String, one of ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #   resp.data.job.operation.s3_put_object_tagging #=> Types::S3SetObjectTaggingOperation
    #   resp.data.job.operation.s3_put_object_tagging.tag_set #=> Array<S3Tag>
    #   resp.data.job.operation.s3_delete_object_tagging #=> Types::S3DeleteObjectTaggingOperation
    #   resp.data.job.operation.s3_initiate_restore_object #=> Types::S3InitiateRestoreObjectOperation
    #   resp.data.job.operation.s3_initiate_restore_object.expiration_in_days #=> Integer
    #   resp.data.job.operation.s3_initiate_restore_object.glacier_job_tier #=> String, one of ["BULK", "STANDARD"]
    #   resp.data.job.operation.s3_put_object_legal_hold #=> Types::S3SetObjectLegalHoldOperation
    #   resp.data.job.operation.s3_put_object_legal_hold.legal_hold #=> Types::S3ObjectLockLegalHold
    #   resp.data.job.operation.s3_put_object_legal_hold.legal_hold.status #=> String, one of ["OFF", "ON"]
    #   resp.data.job.operation.s3_put_object_retention #=> Types::S3SetObjectRetentionOperation
    #   resp.data.job.operation.s3_put_object_retention.bypass_governance_retention #=> Boolean
    #   resp.data.job.operation.s3_put_object_retention.retention #=> Types::S3Retention
    #   resp.data.job.operation.s3_put_object_retention.retention.retain_until_date #=> Time
    #   resp.data.job.operation.s3_put_object_retention.retention.mode #=> String, one of ["COMPLIANCE", "GOVERNANCE"]
    #   resp.data.job.operation.s3_replicate_object #=> Types::S3ReplicateObjectOperation
    #   resp.data.job.priority #=> Integer
    #   resp.data.job.progress_summary #=> Types::JobProgressSummary
    #   resp.data.job.progress_summary.total_number_of_tasks #=> Integer
    #   resp.data.job.progress_summary.number_of_tasks_succeeded #=> Integer
    #   resp.data.job.progress_summary.number_of_tasks_failed #=> Integer
    #   resp.data.job.progress_summary.timers #=> Types::JobTimers
    #   resp.data.job.progress_summary.timers.elapsed_time_in_active_seconds #=> Integer
    #   resp.data.job.status_update_reason #=> String
    #   resp.data.job.failure_reasons #=> Array<JobFailure>
    #   resp.data.job.failure_reasons[0] #=> Types::JobFailure
    #   resp.data.job.failure_reasons[0].failure_code #=> String
    #   resp.data.job.failure_reasons[0].failure_reason #=> String
    #   resp.data.job.report #=> Types::JobReport
    #   resp.data.job.report.bucket #=> String
    #   resp.data.job.report.format #=> String, one of ["Report_CSV_20180820"]
    #   resp.data.job.report.enabled #=> Boolean
    #   resp.data.job.report.prefix #=> String
    #   resp.data.job.report.report_scope #=> String, one of ["AllTasks", "FailedTasksOnly"]
    #   resp.data.job.creation_time #=> Time
    #   resp.data.job.termination_date #=> Time
    #   resp.data.job.role_arn #=> String
    #   resp.data.job.suspended_date #=> Time
    #   resp.data.job.suspended_cause #=> String
    #   resp.data.job.manifest_generator #=> Types::JobManifestGenerator, one of [S3JobManifestGenerator]
    #   resp.data.job.manifest_generator.s3_job_manifest_generator #=> Types::S3JobManifestGenerator
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.expected_bucket_owner #=> String
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.source_bucket #=> String
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.manifest_output_location #=> Types::S3ManifestOutputLocation
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.expected_manifest_bucket_owner #=> String
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.bucket #=> String
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.manifest_prefix #=> String
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.manifest_encryption #=> Types::GeneratedManifestEncryption
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.manifest_encryption.sses3 #=> Types::SSES3Encryption
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.manifest_encryption.ssekms #=> Types::SSEKMSEncryption
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.manifest_encryption.ssekms.key_id #=> String
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.manifest_format #=> String, one of ["S3InventoryReport_CSV_20211130"]
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.filter #=> Types::JobManifestGeneratorFilter
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.filter.eligible_for_replication #=> Boolean
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.filter.created_after #=> Time
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.filter.created_before #=> Time
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.filter.object_replication_statuses #=> Array<String>
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.filter.object_replication_statuses[0] #=> String, one of ["COMPLETED", "FAILED", "REPLICA", "NONE"]
    #   resp.data.job.manifest_generator.s3_job_manifest_generator.enable_manifest_output #=> Boolean
    #   resp.data.job.generated_manifest_descriptor #=> Types::S3GeneratedManifestDescriptor
    #   resp.data.job.generated_manifest_descriptor.format #=> String, one of ["S3InventoryReport_CSV_20211130"]
    #   resp.data.job.generated_manifest_descriptor.location #=> Types::JobManifestLocation
    #
    def describe_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::DescribeJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJob,
        stubs: @stubs,
        params_class: Params::DescribeJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the status of an asynchronous request to manage a Multi-Region Access Point. For more information
    #          about managing Multi-Region Access Points and how asynchronous requests work, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html">Managing
    #             Multi-Region Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to <code>GetMultiRegionAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html">GetMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html">ListMultiRegionAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeMultiRegionAccessPointOperationInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    # @option params [String] :request_token_arn
    #   <p>The request token associated with the request you want to know about. This request token
    #            is returned as part of the response when you make an asynchronous request. You provide this
    #            token to query about the status of the asynchronous action.</p>
    #
    # @return [Types::DescribeMultiRegionAccessPointOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_multi_region_access_point_operation(
    #     account_id: 'AccountId', # required
    #     request_token_arn: 'RequestTokenARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMultiRegionAccessPointOperationOutput
    #   resp.data.async_operation #=> Types::AsyncOperation
    #   resp.data.async_operation.creation_time #=> Time
    #   resp.data.async_operation.operation #=> String, one of ["CreateMultiRegionAccessPoint", "DeleteMultiRegionAccessPoint", "PutMultiRegionAccessPointPolicy"]
    #   resp.data.async_operation.request_token_arn #=> String
    #   resp.data.async_operation.request_parameters #=> Types::AsyncRequestParameters
    #   resp.data.async_operation.request_parameters.create_multi_region_access_point_request #=> Types::CreateMultiRegionAccessPointInput
    #   resp.data.async_operation.request_parameters.create_multi_region_access_point_request.name #=> String
    #   resp.data.async_operation.request_parameters.create_multi_region_access_point_request.public_access_block #=> Types::PublicAccessBlockConfiguration
    #   resp.data.async_operation.request_parameters.create_multi_region_access_point_request.public_access_block.block_public_acls #=> Boolean
    #   resp.data.async_operation.request_parameters.create_multi_region_access_point_request.public_access_block.ignore_public_acls #=> Boolean
    #   resp.data.async_operation.request_parameters.create_multi_region_access_point_request.public_access_block.block_public_policy #=> Boolean
    #   resp.data.async_operation.request_parameters.create_multi_region_access_point_request.public_access_block.restrict_public_buckets #=> Boolean
    #   resp.data.async_operation.request_parameters.create_multi_region_access_point_request.regions #=> Array<Region>
    #   resp.data.async_operation.request_parameters.create_multi_region_access_point_request.regions[0] #=> Types::Region
    #   resp.data.async_operation.request_parameters.create_multi_region_access_point_request.regions[0].bucket #=> String
    #   resp.data.async_operation.request_parameters.delete_multi_region_access_point_request #=> Types::DeleteMultiRegionAccessPointInput
    #   resp.data.async_operation.request_parameters.delete_multi_region_access_point_request.name #=> String
    #   resp.data.async_operation.request_parameters.put_multi_region_access_point_policy_request #=> Types::PutMultiRegionAccessPointPolicyInput
    #   resp.data.async_operation.request_parameters.put_multi_region_access_point_policy_request.name #=> String
    #   resp.data.async_operation.request_parameters.put_multi_region_access_point_policy_request.policy #=> String
    #   resp.data.async_operation.request_status #=> String
    #   resp.data.async_operation.response_details #=> Types::AsyncResponseDetails
    #   resp.data.async_operation.response_details.multi_region_access_point_details #=> Types::MultiRegionAccessPointsAsyncResponse
    #   resp.data.async_operation.response_details.multi_region_access_point_details.regions #=> Array<MultiRegionAccessPointRegionalResponse>
    #   resp.data.async_operation.response_details.multi_region_access_point_details.regions[0] #=> Types::MultiRegionAccessPointRegionalResponse
    #   resp.data.async_operation.response_details.multi_region_access_point_details.regions[0].name #=> String
    #   resp.data.async_operation.response_details.multi_region_access_point_details.regions[0].request_status #=> String
    #   resp.data.async_operation.response_details.error_details #=> Types::AsyncErrorDetails
    #   resp.data.async_operation.response_details.error_details.code #=> String
    #   resp.data.async_operation.response_details.error_details.message #=> String
    #   resp.data.async_operation.response_details.error_details.resource #=> String
    #   resp.data.async_operation.response_details.error_details.request_id #=> String
    #
    def describe_multi_region_access_point_operation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMultiRegionAccessPointOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMultiRegionAccessPointOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMultiRegionAccessPointOperation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeMultiRegionAccessPointOperation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMultiRegionAccessPointOperation,
        stubs: @stubs,
        params_class: Params::DescribeMultiRegionAccessPointOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_multi_region_access_point_operation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns configuration information about the specified access point.</p>
    #          <p></p>
    #
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>GetAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html">CreateAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html">DeleteAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html">ListAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetAccessPointInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the access point whose configuration information you want to retrieve.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #
    # @return [Types::GetAccessPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessPointOutput
    #   resp.data.name #=> String
    #   resp.data.bucket #=> String
    #   resp.data.network_origin #=> String, one of ["Internet", "VPC"]
    #   resp.data.vpc_configuration #=> Types::VpcConfiguration
    #   resp.data.vpc_configuration.vpc_id #=> String
    #   resp.data.public_access_block_configuration #=> Types::PublicAccessBlockConfiguration
    #   resp.data.public_access_block_configuration.block_public_acls #=> Boolean
    #   resp.data.public_access_block_configuration.ignore_public_acls #=> Boolean
    #   resp.data.public_access_block_configuration.block_public_policy #=> Boolean
    #   resp.data.public_access_block_configuration.restrict_public_buckets #=> Boolean
    #   resp.data.creation_date #=> Time
    #   resp.data.alias #=> String
    #   resp.data.access_point_arn #=> String
    #   resp.data.endpoints #=> Hash<String, String>
    #   resp.data.endpoints['key'] #=> String
    #
    def get_access_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessPointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessPoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetAccessPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessPoint,
        stubs: @stubs,
        params_class: Params::GetAccessPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns configuration for an Object Lambda Access Point.</p>
    #          <p>The following actions are related to
    #             <code>GetAccessPointConfigurationForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointConfigurationForObjectLambda.html">PutAccessPointConfigurationForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetAccessPointConfigurationForObjectLambdaInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point you want to return the configuration for.</p>
    #
    # @return [Types::GetAccessPointConfigurationForObjectLambdaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_configuration_for_object_lambda(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessPointConfigurationForObjectLambdaOutput
    #   resp.data.configuration #=> Types::ObjectLambdaConfiguration
    #   resp.data.configuration.supporting_access_point #=> String
    #   resp.data.configuration.cloud_watch_metrics_enabled #=> Boolean
    #   resp.data.configuration.allowed_features #=> Array<String>
    #   resp.data.configuration.allowed_features[0] #=> String, one of ["GetObject-Range", "GetObject-PartNumber"]
    #   resp.data.configuration.transformation_configurations #=> Array<ObjectLambdaTransformationConfiguration>
    #   resp.data.configuration.transformation_configurations[0] #=> Types::ObjectLambdaTransformationConfiguration
    #   resp.data.configuration.transformation_configurations[0].actions #=> Array<String>
    #   resp.data.configuration.transformation_configurations[0].actions[0] #=> String, one of ["GetObject"]
    #   resp.data.configuration.transformation_configurations[0].content_transformation #=> Types::ObjectLambdaContentTransformation, one of [AwsLambda]
    #   resp.data.configuration.transformation_configurations[0].content_transformation.aws_lambda #=> Types::AwsLambdaTransformation
    #   resp.data.configuration.transformation_configurations[0].content_transformation.aws_lambda.function_arn #=> String
    #   resp.data.configuration.transformation_configurations[0].content_transformation.aws_lambda.function_payload #=> String
    #
    def get_access_point_configuration_for_object_lambda(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessPointConfigurationForObjectLambdaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessPointConfigurationForObjectLambdaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessPointConfigurationForObjectLambda
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetAccessPointConfigurationForObjectLambda
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessPointConfigurationForObjectLambda,
        stubs: @stubs,
        params_class: Params::GetAccessPointConfigurationForObjectLambdaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_point_configuration_for_object_lambda
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns configuration information about the specified Object Lambda Access Point</p>
    #          <p>The following actions are related to <code>GetAccessPointForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html">CreateAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html">DeleteAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html">ListAccessPointsForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetAccessPointForObjectLambdaInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    # @return [Types::GetAccessPointForObjectLambdaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_for_object_lambda(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessPointForObjectLambdaOutput
    #   resp.data.name #=> String
    #   resp.data.public_access_block_configuration #=> Types::PublicAccessBlockConfiguration
    #   resp.data.public_access_block_configuration.block_public_acls #=> Boolean
    #   resp.data.public_access_block_configuration.ignore_public_acls #=> Boolean
    #   resp.data.public_access_block_configuration.block_public_policy #=> Boolean
    #   resp.data.public_access_block_configuration.restrict_public_buckets #=> Boolean
    #   resp.data.creation_date #=> Time
    #
    def get_access_point_for_object_lambda(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessPointForObjectLambdaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessPointForObjectLambdaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessPointForObjectLambda
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetAccessPointForObjectLambda
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessPointForObjectLambda,
        stubs: @stubs,
        params_class: Params::GetAccessPointForObjectLambdaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_point_for_object_lambda
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the access point policy associated with the specified access point.</p>
    #          <p>The following actions are related to <code>GetAccessPointPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html">PutAccessPointPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html">DeleteAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetAccessPointPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the access point whose policy you want to retrieve.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #
    # @return [Types::GetAccessPointPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_policy(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessPointPolicyOutput
    #   resp.data.policy #=> String
    #
    def get_access_point_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessPointPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessPointPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessPointPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetAccessPointPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessPointPolicy,
        stubs: @stubs,
        params_class: Params::GetAccessPointPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_point_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the resource policy for an Object Lambda Access Point.</p>
    #          <p>The following actions are related to
    #          <code>GetAccessPointPolicyForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html">DeleteAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html">PutAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetAccessPointPolicyForObjectLambdaInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    # @return [Types::GetAccessPointPolicyForObjectLambdaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_policy_for_object_lambda(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessPointPolicyForObjectLambdaOutput
    #   resp.data.policy #=> String
    #
    def get_access_point_policy_for_object_lambda(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessPointPolicyForObjectLambdaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessPointPolicyForObjectLambdaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessPointPolicyForObjectLambda
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetAccessPointPolicyForObjectLambda
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessPointPolicyForObjectLambda,
        stubs: @stubs,
        params_class: Params::GetAccessPointPolicyForObjectLambdaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_point_policy_for_object_lambda
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Indicates whether the specified access point currently has a policy that allows public access.
    #          For more information about public access through access points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">Managing Data Access with Amazon S3
    #             access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccessPointPolicyStatusInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the access point whose policy status you want to retrieve.</p>
    #
    # @return [Types::GetAccessPointPolicyStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_policy_status(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessPointPolicyStatusOutput
    #   resp.data.policy_status #=> Types::PolicyStatus
    #   resp.data.policy_status.is_public #=> Boolean
    #
    def get_access_point_policy_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessPointPolicyStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessPointPolicyStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessPointPolicyStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetAccessPointPolicyStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessPointPolicyStatus,
        stubs: @stubs,
        params_class: Params::GetAccessPointPolicyStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_point_policy_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the status of the resource policy associated with an Object Lambda Access Point.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccessPointPolicyStatusForObjectLambdaInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    # @return [Types::GetAccessPointPolicyStatusForObjectLambdaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_policy_status_for_object_lambda(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessPointPolicyStatusForObjectLambdaOutput
    #   resp.data.policy_status #=> Types::PolicyStatus
    #   resp.data.policy_status.is_public #=> Boolean
    #
    def get_access_point_policy_status_for_object_lambda(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessPointPolicyStatusForObjectLambdaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessPointPolicyStatusForObjectLambdaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessPointPolicyStatusForObjectLambda
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetAccessPointPolicyStatusForObjectLambda
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessPointPolicyStatusForObjectLambda,
        stubs: @stubs,
        params_class: Params::GetAccessPointPolicyStatusForObjectLambdaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_point_policy_status_for_object_lambda
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an Amazon S3 on Outposts bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html"> Using Amazon S3 on Outposts</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>If you are using an identity other than the root user of the Amazon Web Services account that owns the
    #          Outposts bucket, the calling identity must have the <code>s3-outposts:GetBucket</code>
    #          permissions on the specified Outposts bucket and belong to the Outposts bucket owner's
    #          account in order to use this action. Only users from Outposts bucket owner account with
    #          the right permissions can perform actions on an Outposts bucket. </p>
    #          <p> If you don't have <code>s3-outposts:GetBucket</code> permissions or you're not using an
    #          identity that belongs to the bucket owner's account, Amazon S3 returns a <code>403 Access
    #             Denied</code> error.</p>
    #          <p>The following actions are related to <code>GetBucket</code> for Amazon S3 on Outposts:</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html#API_control_GetBucket_Examples">Examples</a> section.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html">DeleteBucket</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @return [Types::GetBucketOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketOutput
    #   resp.data.bucket #=> String
    #   resp.data.public_access_block_enabled #=> Boolean
    #   resp.data.creation_date #=> Time
    #
    def get_bucket(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucket
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucket
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBucket,
        stubs: @stubs,
        params_class: Params::GetBucketOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bucket
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action gets an Amazon S3 on Outposts bucket's lifecycle configuration. To get an S3
    #             bucket's lifecycle configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html">GetBucketLifecycleConfiguration</a> in the <i>Amazon S3 API Reference</i>.
    #          </p>
    #          </note>
    #          <p>Returns the lifecycle configuration information set on the Outposts bucket. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using Amazon S3 on Outposts</a> and for
    #          information about lifecycle configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html"> Object Lifecycle
    #             Management</a> in <i>Amazon S3 User Guide</i>.</p>
    #
    #          <p>To use this action, you must have permission to perform the
    #             <code>s3-outposts:GetLifecycleConfiguration</code> action. The Outposts bucket owner
    #          has this permission, by default. The bucket owner can grant this permission to others. For
    #          more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples">Examples</a> section.</p>
    #
    #          <p>
    #             <code>GetBucketLifecycleConfiguration</code> has the following special error:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>NoSuchLifecycleConfiguration</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The lifecycle configuration does not exist.</p>
    #                   </li>
    #                   <li>
    #                      <p>HTTP Status Code: 404 Not Found</p>
    #                   </li>
    #                   <li>
    #                      <p>SOAP Fault Code Prefix: Client</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>The following actions are related to
    #          <code>GetBucketLifecycleConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html">DeleteBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketLifecycleConfigurationInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    # @option params [String] :bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @return [Types::GetBucketLifecycleConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_lifecycle_configuration(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketLifecycleConfigurationOutput
    #   resp.data.rules #=> Array<LifecycleRule>
    #   resp.data.rules[0] #=> Types::LifecycleRule
    #   resp.data.rules[0].expiration #=> Types::LifecycleExpiration
    #   resp.data.rules[0].expiration.date #=> Time
    #   resp.data.rules[0].expiration.days #=> Integer
    #   resp.data.rules[0].expiration.expired_object_delete_marker #=> Boolean
    #   resp.data.rules[0].id #=> String
    #   resp.data.rules[0].filter #=> Types::LifecycleRuleFilter
    #   resp.data.rules[0].filter.prefix #=> String
    #   resp.data.rules[0].filter.tag #=> Types::S3Tag
    #   resp.data.rules[0].filter.tag.key #=> String
    #   resp.data.rules[0].filter.tag.value #=> String
    #   resp.data.rules[0].filter.and #=> Types::LifecycleRuleAndOperator
    #   resp.data.rules[0].filter.and.prefix #=> String
    #   resp.data.rules[0].filter.and.tags #=> Array<S3Tag>
    #   resp.data.rules[0].status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.rules[0].transitions #=> Array<Transition>
    #   resp.data.rules[0].transitions[0] #=> Types::Transition
    #   resp.data.rules[0].transitions[0].date #=> Time
    #   resp.data.rules[0].transitions[0].days #=> Integer
    #   resp.data.rules[0].transitions[0].storage_class #=> String, one of ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"]
    #   resp.data.rules[0].noncurrent_version_transitions #=> Array<NoncurrentVersionTransition>
    #   resp.data.rules[0].noncurrent_version_transitions[0] #=> Types::NoncurrentVersionTransition
    #   resp.data.rules[0].noncurrent_version_transitions[0].noncurrent_days #=> Integer
    #   resp.data.rules[0].noncurrent_version_transitions[0].storage_class #=> String, one of ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"]
    #   resp.data.rules[0].noncurrent_version_expiration #=> Types::NoncurrentVersionExpiration
    #   resp.data.rules[0].noncurrent_version_expiration.noncurrent_days #=> Integer
    #   resp.data.rules[0].abort_incomplete_multipart_upload #=> Types::AbortIncompleteMultipartUpload
    #   resp.data.rules[0].abort_incomplete_multipart_upload.days_after_initiation #=> Integer
    #
    def get_bucket_lifecycle_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketLifecycleConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketLifecycleConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketLifecycleConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketLifecycleConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBucketLifecycleConfiguration,
        stubs: @stubs,
        params_class: Params::GetBucketLifecycleConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bucket_lifecycle_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action gets a bucket policy for an Amazon S3 on Outposts bucket. To get a policy for
    #             an S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicy.html">GetBucketPolicy</a> in the
    #                <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Returns the policy of a specified Outposts bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>If you are using an identity other than the root user of the Amazon Web Services account that owns the
    #          bucket, the calling identity must have the <code>GetBucketPolicy</code> permissions on the
    #          specified bucket and belong to the bucket owner's account in order to use this
    #          action.</p>
    #
    #          <p>Only users from Outposts bucket owner account with the right permissions can perform
    #          actions on an Outposts bucket. If you don't have <code>s3-outposts:GetBucketPolicy</code>
    #          permissions or you're not using an identity that belongs to the bucket owner's account,
    #          Amazon S3 returns a <code>403 Access Denied</code> error.</p>
    #
    #          <important>
    #             <p>As a security precaution, the root user of the Amazon Web Services account that owns a bucket can
    #             always use this action, even if the policy explicitly denies the root user the ability
    #             to perform this action.</p>
    #          </important>
    #
    #          <p>For more information about bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #             Policies</a>.</p>
    #
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html#API_control_GetBucketPolicy_Examples">Examples</a> section.</p>
    #
    #          <p>The following actions are related to <code>GetBucketPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html">PutBucketPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html">DeleteBucketPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @return [Types::GetBucketPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_policy(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketPolicyOutput
    #   resp.data.policy #=> String
    #
    def get_bucket_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBucketPolicy,
        stubs: @stubs,
        params_class: Params::GetBucketPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bucket_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action gets an Amazon S3 on Outposts bucket's tags. To get an S3 bucket tags, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html">GetBucketTagging</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Returns the tag set associated with the Outposts bucket. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>To use this action, you must have permission to perform the
    #             <code>GetBucketTagging</code> action. By default, the bucket owner has this permission
    #          and can grant this permission to others.</p>
    #
    #          <p>
    #             <code>GetBucketTagging</code> has the following special error:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>NoSuchTagSetError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: There is no tag set associated with the bucket.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html#API_control_GetBucketTagging_Examples">Examples</a> section.</p>
    #
    #          <p>The following actions are related to <code>GetBucketTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html">PutBucketTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html">DeleteBucketTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketTaggingInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @return [Types::GetBucketTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_tagging(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketTaggingOutput
    #   resp.data.tag_set #=> Array<S3Tag>
    #   resp.data.tag_set[0] #=> Types::S3Tag
    #   resp.data.tag_set[0].key #=> String
    #   resp.data.tag_set[0].value #=> String
    #
    def get_bucket_tagging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketTaggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketTaggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketTagging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBucketTagging,
        stubs: @stubs,
        params_class: Params::GetBucketTaggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bucket_tagging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the tags on an S3 Batch Operations job. To use this operation, you must have
    #          permission to perform the <code>s3:GetJobTagging</code> action. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags">Controlling
    #             access and labeling jobs using tags</a> in the
    #          <i>Amazon S3 User Guide</i>.</p>
    #          <p></p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html">PutJobTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html">DeleteJobTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetJobTaggingInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    # @option params [String] :job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to retrieve.</p>
    #
    # @return [Types::GetJobTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_tagging(
    #     account_id: 'AccountId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobTaggingOutput
    #   resp.data.tags #=> Array<S3Tag>
    #   resp.data.tags[0] #=> Types::S3Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def get_job_tagging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobTaggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobTaggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJobTagging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetJobTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJobTagging,
        stubs: @stubs,
        params_class: Params::GetJobTaggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job_tagging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns configuration information about the specified Multi-Region Access Point.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around managing Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html">Managing
    #             Multi-Region Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to <code>GetMultiRegionAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html">ListMultiRegionAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetMultiRegionAccessPointInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Multi-Region Access Point whose configuration information you want to receive. The name of
    #            the Multi-Region Access Point is different from the alias. For more information about the distinction between
    #            the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Managing Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #
    # @return [Types::GetMultiRegionAccessPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multi_region_access_point(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMultiRegionAccessPointOutput
    #   resp.data.access_point #=> Types::MultiRegionAccessPointReport
    #   resp.data.access_point.name #=> String
    #   resp.data.access_point.alias #=> String
    #   resp.data.access_point.created_at #=> Time
    #   resp.data.access_point.public_access_block #=> Types::PublicAccessBlockConfiguration
    #   resp.data.access_point.public_access_block.block_public_acls #=> Boolean
    #   resp.data.access_point.public_access_block.ignore_public_acls #=> Boolean
    #   resp.data.access_point.public_access_block.block_public_policy #=> Boolean
    #   resp.data.access_point.public_access_block.restrict_public_buckets #=> Boolean
    #   resp.data.access_point.status #=> String, one of ["READY", "INCONSISTENT_ACROSS_REGIONS", "CREATING", "PARTIALLY_CREATED", "PARTIALLY_DELETED", "DELETING"]
    #   resp.data.access_point.regions #=> Array<RegionReport>
    #   resp.data.access_point.regions[0] #=> Types::RegionReport
    #   resp.data.access_point.regions[0].bucket #=> String
    #   resp.data.access_point.regions[0].region #=> String
    #
    def get_multi_region_access_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMultiRegionAccessPointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMultiRegionAccessPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMultiRegionAccessPoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetMultiRegionAccessPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMultiRegionAccessPoint,
        stubs: @stubs,
        params_class: Params::GetMultiRegionAccessPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_multi_region_access_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the access control policy of the specified Multi-Region Access Point.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around managing Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html">Managing
    #             Multi-Region Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to
    #          <code>GetMultiRegionAccessPointPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html">GetMultiRegionAccessPointPolicyStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html">PutMultiRegionAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetMultiRegionAccessPointPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    # @option params [String] :name
    #   <p>Specifies the Multi-Region Access Point. The name of the Multi-Region Access Point is different from the alias. For more
    #            information about the distinction between the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Managing Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #
    # @return [Types::GetMultiRegionAccessPointPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multi_region_access_point_policy(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMultiRegionAccessPointPolicyOutput
    #   resp.data.policy #=> Types::MultiRegionAccessPointPolicyDocument
    #   resp.data.policy.established #=> Types::EstablishedMultiRegionAccessPointPolicy
    #   resp.data.policy.established.policy #=> String
    #   resp.data.policy.proposed #=> Types::ProposedMultiRegionAccessPointPolicy
    #   resp.data.policy.proposed.policy #=> String
    #
    def get_multi_region_access_point_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMultiRegionAccessPointPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMultiRegionAccessPointPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMultiRegionAccessPointPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetMultiRegionAccessPointPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMultiRegionAccessPointPolicy,
        stubs: @stubs,
        params_class: Params::GetMultiRegionAccessPointPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_multi_region_access_point_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Indicates whether the specified Multi-Region Access Point has an access control policy that allows public
    #          access.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around managing Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html">Managing
    #             Multi-Region Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to
    #          <code>GetMultiRegionAccessPointPolicyStatus</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html">GetMultiRegionAccessPointPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html">PutMultiRegionAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetMultiRegionAccessPointPolicyStatusInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    # @option params [String] :name
    #   <p>Specifies the Multi-Region Access Point. The name of the Multi-Region Access Point is different from the alias. For more
    #            information about the distinction between the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Managing Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #
    # @return [Types::GetMultiRegionAccessPointPolicyStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multi_region_access_point_policy_status(
    #     account_id: 'AccountId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMultiRegionAccessPointPolicyStatusOutput
    #   resp.data.established #=> Types::PolicyStatus
    #   resp.data.established.is_public #=> Boolean
    #
    def get_multi_region_access_point_policy_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMultiRegionAccessPointPolicyStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMultiRegionAccessPointPolicyStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMultiRegionAccessPointPolicyStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetMultiRegionAccessPointPolicyStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMultiRegionAccessPointPolicyStatus,
        stubs: @stubs,
        params_class: Params::GetMultiRegionAccessPointPolicyStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_multi_region_access_point_policy_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the <code>PublicAccessBlock</code> configuration for an Amazon Web Services account. For
    #          more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html"> Using Amazon S3 block
    #             public access</a>.</p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html">DeletePublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html">PutPublicAccessBlock</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetPublicAccessBlockInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to retrieve.</p>
    #
    # @return [Types::GetPublicAccessBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_access_block(
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPublicAccessBlockOutput
    #   resp.data.public_access_block_configuration #=> Types::PublicAccessBlockConfiguration
    #   resp.data.public_access_block_configuration.block_public_acls #=> Boolean
    #   resp.data.public_access_block_configuration.ignore_public_acls #=> Boolean
    #   resp.data.public_access_block_configuration.block_public_policy #=> Boolean
    #   resp.data.public_access_block_configuration.restrict_public_buckets #=> Boolean
    #
    def get_public_access_block(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPublicAccessBlockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPublicAccessBlockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPublicAccessBlock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchPublicAccessBlockConfiguration]),
        data_parser: Parsers::GetPublicAccessBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPublicAccessBlock,
        stubs: @stubs,
        params_class: Params::GetPublicAccessBlockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_public_access_block
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the Amazon S3 Storage Lens configuration. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your storage
    #             activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:GetStorageLensConfiguration</code> action. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to use Amazon S3 Storage Lens</a> in the
    #                <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetStorageLensConfigurationInput}.
    #
    # @option params [String] :config_id
    #   <p>The ID of the Amazon S3 Storage Lens configuration.</p>
    #
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    #
    # @return [Types::GetStorageLensConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_storage_lens_configuration(
    #     config_id: 'ConfigId', # required
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStorageLensConfigurationOutput
    #   resp.data.storage_lens_configuration #=> Types::StorageLensConfiguration
    #   resp.data.storage_lens_configuration.id #=> String
    #   resp.data.storage_lens_configuration.account_level #=> Types::AccountLevel
    #   resp.data.storage_lens_configuration.account_level.activity_metrics #=> Types::ActivityMetrics
    #   resp.data.storage_lens_configuration.account_level.activity_metrics.is_enabled #=> Boolean
    #   resp.data.storage_lens_configuration.account_level.bucket_level #=> Types::BucketLevel
    #   resp.data.storage_lens_configuration.account_level.bucket_level.activity_metrics #=> Types::ActivityMetrics
    #   resp.data.storage_lens_configuration.account_level.bucket_level.prefix_level #=> Types::PrefixLevel
    #   resp.data.storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics #=> Types::PrefixLevelStorageMetrics
    #   resp.data.storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics.is_enabled #=> Boolean
    #   resp.data.storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics.selection_criteria #=> Types::SelectionCriteria
    #   resp.data.storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics.selection_criteria.delimiter #=> String
    #   resp.data.storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics.selection_criteria.max_depth #=> Integer
    #   resp.data.storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics.selection_criteria.min_storage_bytes_percentage #=> Float
    #   resp.data.storage_lens_configuration.include #=> Types::Include
    #   resp.data.storage_lens_configuration.include.buckets #=> Array<String>
    #   resp.data.storage_lens_configuration.include.buckets[0] #=> String
    #   resp.data.storage_lens_configuration.include.regions #=> Array<String>
    #   resp.data.storage_lens_configuration.include.regions[0] #=> String
    #   resp.data.storage_lens_configuration.exclude #=> Types::Exclude
    #   resp.data.storage_lens_configuration.exclude.buckets #=> Array<String>
    #   resp.data.storage_lens_configuration.exclude.regions #=> Array<String>
    #   resp.data.storage_lens_configuration.data_export #=> Types::StorageLensDataExport
    #   resp.data.storage_lens_configuration.data_export.s3_bucket_destination #=> Types::S3BucketDestination
    #   resp.data.storage_lens_configuration.data_export.s3_bucket_destination.format #=> String, one of ["CSV", "Parquet"]
    #   resp.data.storage_lens_configuration.data_export.s3_bucket_destination.output_schema_version #=> String, one of ["V_1"]
    #   resp.data.storage_lens_configuration.data_export.s3_bucket_destination.account_id #=> String
    #   resp.data.storage_lens_configuration.data_export.s3_bucket_destination.arn #=> String
    #   resp.data.storage_lens_configuration.data_export.s3_bucket_destination.prefix #=> String
    #   resp.data.storage_lens_configuration.data_export.s3_bucket_destination.encryption #=> Types::StorageLensDataExportEncryption
    #   resp.data.storage_lens_configuration.data_export.s3_bucket_destination.encryption.sses3 #=> Types::SSES3
    #   resp.data.storage_lens_configuration.data_export.s3_bucket_destination.encryption.ssekms #=> Types::SSEKMS
    #   resp.data.storage_lens_configuration.data_export.s3_bucket_destination.encryption.ssekms.key_id #=> String
    #   resp.data.storage_lens_configuration.data_export.cloud_watch_metrics #=> Types::CloudWatchMetrics
    #   resp.data.storage_lens_configuration.data_export.cloud_watch_metrics.is_enabled #=> Boolean
    #   resp.data.storage_lens_configuration.is_enabled #=> Boolean
    #   resp.data.storage_lens_configuration.aws_org #=> Types::StorageLensAwsOrg
    #   resp.data.storage_lens_configuration.aws_org.arn #=> String
    #   resp.data.storage_lens_configuration.storage_lens_arn #=> String
    #
    def get_storage_lens_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStorageLensConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStorageLensConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStorageLensConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetStorageLensConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStorageLensConfiguration,
        stubs: @stubs,
        params_class: Params::GetStorageLensConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_storage_lens_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the tags of Amazon S3 Storage Lens configuration. For more information about S3 Storage Lens, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your
    #             storage activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:GetStorageLensConfigurationTagging</code> action. For more information, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to
    #                use Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetStorageLensConfigurationTaggingInput}.
    #
    # @option params [String] :config_id
    #   <p>The ID of the Amazon S3 Storage Lens configuration.</p>
    #
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    #
    # @return [Types::GetStorageLensConfigurationTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_storage_lens_configuration_tagging(
    #     config_id: 'ConfigId', # required
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStorageLensConfigurationTaggingOutput
    #   resp.data.tags #=> Array<StorageLensTag>
    #   resp.data.tags[0] #=> Types::StorageLensTag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def get_storage_lens_configuration_tagging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStorageLensConfigurationTaggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStorageLensConfigurationTaggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStorageLensConfigurationTagging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetStorageLensConfigurationTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStorageLensConfigurationTagging,
        stubs: @stubs,
        params_class: Params::GetStorageLensConfigurationTaggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_storage_lens_configuration_tagging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the access points currently associated with the specified bucket. You can
    #          retrieve up to 1000 access points per call. If the specified bucket has more than 1,000 access points (or
    #          the number specified in <code>maxResults</code>, whichever is less), the response will
    #          include a continuation token that you can use to list the additional access points.</p>
    #          <p></p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>ListAccessPoints</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html">CreateAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html">DeleteAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html">GetAccessPoint</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListAccessPointsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for owner of the bucket whose access points you want to list.</p>
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket whose associated access points you want to list.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @option params [String] :next_token
    #   <p>A continuation token. If a previous call to <code>ListAccessPoints</code> returned a
    #            continuation token in the <code>NextToken</code> field, then providing that value here
    #            causes Amazon S3 to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of access points that you want to include in the list. If the specified
    #            bucket has more than this number of access points, then the response will include a continuation
    #            token in the <code>NextToken</code> field that you can use to retrieve the next page of
    #            access points.</p>
    #
    # @return [Types::ListAccessPointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_points(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccessPointsOutput
    #   resp.data.access_point_list #=> Array<AccessPoint>
    #   resp.data.access_point_list[0] #=> Types::AccessPoint
    #   resp.data.access_point_list[0].name #=> String
    #   resp.data.access_point_list[0].network_origin #=> String, one of ["Internet", "VPC"]
    #   resp.data.access_point_list[0].vpc_configuration #=> Types::VpcConfiguration
    #   resp.data.access_point_list[0].vpc_configuration.vpc_id #=> String
    #   resp.data.access_point_list[0].bucket #=> String
    #   resp.data.access_point_list[0].access_point_arn #=> String
    #   resp.data.access_point_list[0].alias #=> String
    #   resp.data.next_token #=> String
    #
    def list_access_points(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccessPointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccessPointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccessPoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListAccessPoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccessPoints,
        stubs: @stubs,
        params_class: Params::ListAccessPointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_access_points
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns some or all (up to 1,000) access points associated with the Object Lambda Access Point per call. If there
    #          are more access points than what can be returned in one call, the response will include a
    #          continuation token that you can use to list the additional access points.</p>
    #          <p>The following actions are related to
    #          <code>ListAccessPointsForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html">CreateAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html">DeleteAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html">GetAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListAccessPointsForObjectLambdaInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    # @option params [String] :next_token
    #   <p>If the list has more access points than can be returned in one call to this API, this field
    #            contains a continuation token that you can provide in subsequent calls to this API to
    #            retrieve additional access points.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of access points that you want to include in the list. The response may
    #            contain fewer access points but will never contain more. If there are more than this number of
    #            access points, then the response will include a continuation token in the <code>NextToken</code>
    #            field that you can use to retrieve the next page of access points.</p>
    #
    # @return [Types::ListAccessPointsForObjectLambdaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_points_for_object_lambda(
    #     account_id: 'AccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccessPointsForObjectLambdaOutput
    #   resp.data.object_lambda_access_point_list #=> Array<ObjectLambdaAccessPoint>
    #   resp.data.object_lambda_access_point_list[0] #=> Types::ObjectLambdaAccessPoint
    #   resp.data.object_lambda_access_point_list[0].name #=> String
    #   resp.data.object_lambda_access_point_list[0].object_lambda_access_point_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_access_points_for_object_lambda(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccessPointsForObjectLambdaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccessPointsForObjectLambdaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccessPointsForObjectLambda
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListAccessPointsForObjectLambda
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccessPointsForObjectLambda,
        stubs: @stubs,
        params_class: Params::ListAccessPointsForObjectLambdaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_access_points_for_object_lambda
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists current S3 Batch Operations jobs and jobs that have ended within the last 30 days for
    #          the Amazon Web Services account making the request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html">S3 Batch Operations</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>Related actions include:</p>
    #          <p></p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html">DescribeJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html">UpdateJobPriority</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html">UpdateJobStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListJobsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    # @option params [Array<String>] :job_statuses
    #   <p>The <code>List Jobs</code> request returns jobs that match the statuses listed in this
    #            element.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token to request the next page of results. Use the token that Amazon S3 returned
    #            in the <code>NextToken</code> element of the <code>ListJobsResult</code> from the previous
    #               <code>List Jobs</code> request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of jobs that Amazon S3 will include in the <code>List Jobs</code>
    #            response. If there are more jobs than this number, the response will include a pagination
    #            token in the <code>NextToken</code> field to enable you to retrieve the next page of
    #            results.</p>
    #
    # @return [Types::ListJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs(
    #     account_id: 'AccountId', # required
    #     job_statuses: [
    #       'Active' # accepts ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"]
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsOutput
    #   resp.data.next_token #=> String
    #   resp.data.jobs #=> Array<JobListDescriptor>
    #   resp.data.jobs[0] #=> Types::JobListDescriptor
    #   resp.data.jobs[0].job_id #=> String
    #   resp.data.jobs[0].description #=> String
    #   resp.data.jobs[0].operation #=> String, one of ["LambdaInvoke", "S3PutObjectCopy", "S3PutObjectAcl", "S3PutObjectTagging", "S3DeleteObjectTagging", "S3InitiateRestoreObject", "S3PutObjectLegalHold", "S3PutObjectRetention", "S3ReplicateObject"]
    #   resp.data.jobs[0].priority #=> Integer
    #   resp.data.jobs[0].status #=> String, one of ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"]
    #   resp.data.jobs[0].creation_time #=> Time
    #   resp.data.jobs[0].termination_date #=> Time
    #   resp.data.jobs[0].progress_summary #=> Types::JobProgressSummary
    #   resp.data.jobs[0].progress_summary.total_number_of_tasks #=> Integer
    #   resp.data.jobs[0].progress_summary.number_of_tasks_succeeded #=> Integer
    #   resp.data.jobs[0].progress_summary.number_of_tasks_failed #=> Integer
    #   resp.data.jobs[0].progress_summary.timers #=> Types::JobTimers
    #   resp.data.jobs[0].progress_summary.timers.elapsed_time_in_active_seconds #=> Integer
    #
    def list_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::InvalidRequestException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobs,
        stubs: @stubs,
        params_class: Params::ListJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the Multi-Region Access Points currently associated with the specified Amazon Web Services account.
    #          Each call can return up to 100 Multi-Region Access Points, the maximum number of Multi-Region Access Points that can be
    #          associated with a single account.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around managing Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html">Managing
    #             Multi-Region Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to <code>ListMultiRegionAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html">GetMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListMultiRegionAccessPointsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    # @option params [String] :next_token
    #   <p>Not currently used. Do not use this parameter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Not currently used. Do not use this parameter.</p>
    #
    # @return [Types::ListMultiRegionAccessPointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multi_region_access_points(
    #     account_id: 'AccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMultiRegionAccessPointsOutput
    #   resp.data.access_points #=> Array<MultiRegionAccessPointReport>
    #   resp.data.access_points[0] #=> Types::MultiRegionAccessPointReport
    #   resp.data.access_points[0].name #=> String
    #   resp.data.access_points[0].alias #=> String
    #   resp.data.access_points[0].created_at #=> Time
    #   resp.data.access_points[0].public_access_block #=> Types::PublicAccessBlockConfiguration
    #   resp.data.access_points[0].public_access_block.block_public_acls #=> Boolean
    #   resp.data.access_points[0].public_access_block.ignore_public_acls #=> Boolean
    #   resp.data.access_points[0].public_access_block.block_public_policy #=> Boolean
    #   resp.data.access_points[0].public_access_block.restrict_public_buckets #=> Boolean
    #   resp.data.access_points[0].status #=> String, one of ["READY", "INCONSISTENT_ACROSS_REGIONS", "CREATING", "PARTIALLY_CREATED", "PARTIALLY_DELETED", "DELETING"]
    #   resp.data.access_points[0].regions #=> Array<RegionReport>
    #   resp.data.access_points[0].regions[0] #=> Types::RegionReport
    #   resp.data.access_points[0].regions[0].bucket #=> String
    #   resp.data.access_points[0].regions[0].region #=> String
    #   resp.data.next_token #=> String
    #
    def list_multi_region_access_points(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMultiRegionAccessPointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMultiRegionAccessPointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMultiRegionAccessPoints
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListMultiRegionAccessPoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMultiRegionAccessPoints,
        stubs: @stubs,
        params_class: Params::ListMultiRegionAccessPointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_multi_region_access_points
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all Outposts buckets in an Outpost that are owned by the authenticated
    #          sender of the request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using Amazon S3 on Outposts</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts
    #          endpoint hostname prefix and <code>x-amz-outpost-id</code> in your request, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListRegionalBuckets.html#API_control_ListRegionalBuckets_Examples">Examples</a> section.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRegionalBucketsInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    # @option params [String] :next_token
    #   <p></p>
    #
    # @option params [Integer] :max_results
    #   <p></p>
    #
    # @option params [String] :outpost_id
    #   <p>The ID of the Outposts.</p>
    #            <note>
    #               <p>This is required by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @return [Types::ListRegionalBucketsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_regional_buckets(
    #     account_id: 'AccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     outpost_id: 'OutpostId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRegionalBucketsOutput
    #   resp.data.regional_bucket_list #=> Array<RegionalBucket>
    #   resp.data.regional_bucket_list[0] #=> Types::RegionalBucket
    #   resp.data.regional_bucket_list[0].bucket #=> String
    #   resp.data.regional_bucket_list[0].bucket_arn #=> String
    #   resp.data.regional_bucket_list[0].public_access_block_enabled #=> Boolean
    #   resp.data.regional_bucket_list[0].creation_date #=> Time
    #   resp.data.regional_bucket_list[0].outpost_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_regional_buckets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRegionalBucketsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRegionalBucketsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRegionalBuckets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListRegionalBuckets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRegionalBuckets,
        stubs: @stubs,
        params_class: Params::ListRegionalBucketsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_regional_buckets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of Amazon S3 Storage Lens configurations. For more information about S3 Storage Lens, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your
    #             storage activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:ListStorageLensConfigurations</code> action. For more information, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to
    #                use Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListStorageLensConfigurationsInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token to request the next page of results.</p>
    #
    # @return [Types::ListStorageLensConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_storage_lens_configurations(
    #     account_id: 'AccountId', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStorageLensConfigurationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.storage_lens_configuration_list #=> Array<ListStorageLensConfigurationEntry>
    #   resp.data.storage_lens_configuration_list[0] #=> Types::ListStorageLensConfigurationEntry
    #   resp.data.storage_lens_configuration_list[0].id #=> String
    #   resp.data.storage_lens_configuration_list[0].storage_lens_arn #=> String
    #   resp.data.storage_lens_configuration_list[0].home_region #=> String
    #   resp.data.storage_lens_configuration_list[0].is_enabled #=> Boolean
    #
    def list_storage_lens_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStorageLensConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStorageLensConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStorageLensConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListStorageLensConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStorageLensConfigurations,
        stubs: @stubs,
        params_class: Params::ListStorageLensConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_storage_lens_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces configuration for an Object Lambda Access Point.</p>
    #          <p>The following actions are related to
    #             <code>PutAccessPointConfigurationForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointConfigurationForObjectLambda.html">GetAccessPointConfigurationForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutAccessPointConfigurationForObjectLambdaInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    # @option params [ObjectLambdaConfiguration] :configuration
    #   <p>Object Lambda Access Point configuration document.</p>
    #
    # @return [Types::PutAccessPointConfigurationForObjectLambdaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_access_point_configuration_for_object_lambda(
    #     account_id: 'AccountId', # required
    #     name: 'Name', # required
    #     configuration: {
    #       supporting_access_point: 'SupportingAccessPoint', # required
    #       cloud_watch_metrics_enabled: false,
    #       allowed_features: [
    #         'GetObject-Range' # accepts ["GetObject-Range", "GetObject-PartNumber"]
    #       ],
    #       transformation_configurations: [
    #         {
    #           actions: [
    #             'GetObject' # accepts ["GetObject"]
    #           ], # required
    #           content_transformation: {
    #             # One of:
    #             aws_lambda: {
    #               function_arn: 'FunctionArn', # required
    #               function_payload: 'FunctionPayload'
    #             }
    #           } # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccessPointConfigurationForObjectLambdaOutput
    #
    def put_access_point_configuration_for_object_lambda(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccessPointConfigurationForObjectLambdaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccessPointConfigurationForObjectLambdaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccessPointConfigurationForObjectLambda
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutAccessPointConfigurationForObjectLambda
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccessPointConfigurationForObjectLambda,
        stubs: @stubs,
        params_class: Params::PutAccessPointConfigurationForObjectLambdaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_access_point_configuration_for_object_lambda
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates an access policy with the specified access point. Each access point can have only one policy,
    #          so a request made to this API replaces any existing policy associated with the specified
    #          access point.</p>
    #          <p></p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html#API_control_PutAccessPointPolicy_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>PutAccessPointPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html">GetAccessPointPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html">DeleteAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutAccessPointPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for owner of the bucket associated with the specified access point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the access point that you want to associate with the specified policy.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    #
    # @option params [String] :policy
    #   <p>The policy that you want to apply to the specified access point. For more information about access point
    #            policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">Managing data access with Amazon S3
    #               access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @return [Types::PutAccessPointPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_access_point_policy(
    #     account_id: 'AccountId', # required
    #     name: 'Name', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccessPointPolicyOutput
    #
    def put_access_point_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccessPointPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccessPointPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccessPointPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutAccessPointPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccessPointPolicy,
        stubs: @stubs,
        params_class: Params::PutAccessPointPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_access_point_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or replaces resource policy for an Object Lambda Access Point. For an example policy, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-create.html#olap-create-cli">Creating Object Lambda Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to
    #          <code>PutAccessPointPolicyForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html">DeleteAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html">GetAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutAccessPointPolicyForObjectLambdaInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point.</p>
    #
    # @option params [String] :policy
    #   <p>Object Lambda Access Point resource policy document.</p>
    #
    # @return [Types::PutAccessPointPolicyForObjectLambdaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_access_point_policy_for_object_lambda(
    #     account_id: 'AccountId', # required
    #     name: 'Name', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccessPointPolicyForObjectLambdaOutput
    #
    def put_access_point_policy_for_object_lambda(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccessPointPolicyForObjectLambdaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccessPointPolicyForObjectLambdaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccessPointPolicyForObjectLambda
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutAccessPointPolicyForObjectLambda
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccessPointPolicyForObjectLambda,
        stubs: @stubs,
        params_class: Params::PutAccessPointPolicyForObjectLambdaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_access_point_policy_for_object_lambda
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action puts a lifecycle configuration to an Amazon S3 on Outposts bucket. To put a
    #             lifecycle configuration to an S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a> in the <i>Amazon S3 API Reference</i>.
    #          </p>
    #          </note>
    #          <p>Creates a new lifecycle configuration for the S3 on Outposts bucket or replaces an
    #          existing lifecycle configuration. Outposts buckets only support lifecycle configurations
    #          that delete/expire objects after a certain period of time and abort incomplete multipart
    #          uploads.</p>
    #          <p></p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html#API_control_PutBucketLifecycleConfiguration_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to
    #          <code>PutBucketLifecycleConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html">GetBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html">DeleteBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketLifecycleConfigurationInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which to set the configuration.</p>
    #
    # @option params [LifecycleConfiguration] :lifecycle_configuration
    #   <p>Container for lifecycle rules. You can add as many as 1,000 rules.</p>
    #
    # @return [Types::PutBucketLifecycleConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_lifecycle_configuration(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket', # required
    #     lifecycle_configuration: {
    #       rules: [
    #         {
    #           expiration: {
    #             date: Time.now,
    #             days: 1,
    #             expired_object_delete_marker: false
    #           },
    #           id: 'ID',
    #           filter: {
    #             prefix: 'Prefix',
    #             tag: {
    #               key: 'Key', # required
    #               value: 'Value' # required
    #             },
    #             and: {
    #               prefix: 'Prefix',
    #             }
    #           },
    #           status: 'Enabled', # required - accepts ["Enabled", "Disabled"]
    #           transitions: [
    #             {
    #               date: Time.now,
    #               days: 1,
    #               storage_class: 'GLACIER' # accepts ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"]
    #             }
    #           ],
    #           noncurrent_version_transitions: [
    #             {
    #               noncurrent_days: 1,
    #               storage_class: 'GLACIER' # accepts ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"]
    #             }
    #           ],
    #           noncurrent_version_expiration: {
    #             noncurrent_days: 1
    #           },
    #           abort_incomplete_multipart_upload: {
    #             days_after_initiation: 1
    #           }
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketLifecycleConfigurationOutput
    #
    def put_bucket_lifecycle_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketLifecycleConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketLifecycleConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketLifecycleConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketLifecycleConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutBucketLifecycleConfiguration,
        stubs: @stubs,
        params_class: Params::PutBucketLifecycleConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_bucket_lifecycle_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action puts a bucket policy to an Amazon S3 on Outposts bucket. To put a policy on an
    #             S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketPolicy.html">PutBucketPolicy</a> in the
    #                <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Applies an Amazon S3 bucket policy to an Outposts bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>If you are using an identity other than the root user of the Amazon Web Services account that owns the
    #          Outposts bucket, the calling identity must have the <code>PutBucketPolicy</code>
    #          permissions on the specified Outposts bucket and belong to the bucket owner's account in
    #          order to use this action.</p>
    #
    #          <p>If you don't have <code>PutBucketPolicy</code> permissions, Amazon S3 returns a <code>403
    #             Access Denied</code> error. If you have the correct permissions, but you're not using an
    #          identity that belongs to the bucket owner's account, Amazon S3 returns a <code>405 Method Not
    #             Allowed</code> error.</p>
    #
    #          <important>
    #             <p> As a security precaution, the root user of the Amazon Web Services account that owns a bucket can
    #             always use this action, even if the policy explicitly denies the root user the ability
    #             to perform this action. </p>
    #          </important>
    #
    #
    #          <p>For more information about bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #             Policies</a>.</p>
    #
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html#API_control_PutBucketPolicy_Examples">Examples</a> section.</p>
    #
    #          <p>The following actions are related to <code>PutBucketPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html">GetBucketPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html">DeleteBucketPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketPolicyInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @option params [Boolean] :confirm_remove_self_bucket_access
    #   <p>Set this parameter to true to confirm that you want to remove your permissions to change
    #            this bucket policy in the future.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    #
    # @option params [String] :policy
    #   <p>The bucket policy as a JSON document.</p>
    #
    # @return [Types::PutBucketPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_policy(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket', # required
    #     confirm_remove_self_bucket_access: false,
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketPolicyOutput
    #
    def put_bucket_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutBucketPolicy,
        stubs: @stubs,
        params_class: Params::PutBucketPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_bucket_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action puts tags on an Amazon S3 on Outposts bucket. To put tags on an S3 bucket, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html">PutBucketTagging</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Sets the tags for an S3 on Outposts bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>Use tags to organize your Amazon Web Services bill to reflect your own cost structure. To do this,
    #          sign up to get your Amazon Web Services account bill with tag key values included. Then, to see the cost
    #          of combined resources, organize your billing information according to resources with the
    #          same tag key values. For example, you can tag several resources with a specific application
    #          name, and then organize your billing information to see the total cost of that application
    #          across several services. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Cost allocation and
    #             tagging</a>.</p>
    #
    #          <note>
    #             <p>Within a bucket, if you add a tag that has the same key as an existing tag, the new
    #             value overwrites the old value. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html"> Using cost allocation in Amazon S3
    #                bucket tags</a>.</p>
    #          </note>
    #          <p>To use this action, you must have permissions to perform the
    #             <code>s3-outposts:PutBucketTagging</code> action. The Outposts bucket owner has this
    #          permission by default and can grant this permission to others. For more information about
    #          permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources"> Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             access permissions to your Amazon S3 resources</a>.</p>
    #
    #          <p>
    #             <code>PutBucketTagging</code> has the following special errors:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>InvalidTagError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The tag provided was not a valid tag. This error can occur if
    #                      the tag did not pass input validation. For information about tag restrictions,
    #                      see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">
    #                         User-Defined Tag Restrictions</a> and <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html">
    #                         Amazon Web Services-Generated Cost Allocation Tag Restrictions</a>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>MalformedXMLError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The XML provided does not match the schema.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>OperationAbortedError </code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: A conflicting conditional action is currently in progress
    #                      against this resource. Try again.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>InternalError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The service was unable to apply the provided tag to the
    #                      bucket.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html#API_control_PutBucketTagging_Examples">Examples</a> section.</p>
    #
    #          <p>The following actions are related to <code>PutBucketTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html">GetBucketTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html">DeleteBucketTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketTaggingInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    #
    # @option params [String] :bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    #
    # @option params [Tagging] :tagging
    #   <p></p>
    #
    # @return [Types::PutBucketTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_tagging(
    #     account_id: 'AccountId', # required
    #     bucket: 'Bucket', # required
    #     tagging: {
    #       tag_set: [
    #         {
    #           key: 'Key', # required
    #           value: 'Value' # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketTaggingOutput
    #
    def put_bucket_tagging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketTaggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketTaggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketTagging
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutBucketTagging,
        stubs: @stubs,
        params_class: Params::PutBucketTaggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_bucket_tagging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the supplied tag-set on an S3 Batch Operations job.</p>
    #          <p>A tag is a key-value pair. You can associate S3 Batch Operations tags with any job by sending
    #          a PUT request against the tagging subresource that is associated with the job. To modify
    #          the existing tag set, you can either replace the existing tag set entirely, or make changes
    #          within the existing tag set by retrieving the existing tag set using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html">GetJobTagging</a>, modify that tag set, and use this action to replace the tag set
    #          with the one you modified. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags">Controlling
    #             access and labeling jobs using tags</a> in the <i>Amazon S3 User Guide</i>. </p>
    #          <p></p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If you send this request with an empty tag set, Amazon S3 deletes the existing
    #                   tag set on the Batch Operations job. If you use this method, you are charged for a Tier
    #                   1 Request (PUT). For more information, see <a href="http://aws.amazon.com/s3/pricing/">Amazon S3 pricing</a>.</p>
    #                </li>
    #                <li>
    #                   <p>For deleting existing tags for your Batch Operations job, a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html">DeleteJobTagging</a> request is preferred because it achieves the same
    #                   result without incurring charges.</p>
    #                </li>
    #                <li>
    #                   <p>A few things to consider about using tags:</p>
    #                   <ul>
    #                      <li>
    #                         <p>Amazon S3 limits the maximum number of tags to 50 tags per job.</p>
    #                      </li>
    #                      <li>
    #                         <p>You can associate up to 50 tags with a job as long as they have unique
    #                         tag keys.</p>
    #                      </li>
    #                      <li>
    #                         <p>A tag key can be up to 128 Unicode characters in length, and tag values
    #                         can be up to 256 Unicode characters in length.</p>
    #                      </li>
    #                      <li>
    #                         <p>The key and values are case sensitive.</p>
    #                      </li>
    #                      <li>
    #                         <p>For tagging-related restrictions related to characters and encodings, see
    #                            <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    #                      </li>
    #                   </ul>
    #                </li>
    #             </ul>
    #          </note>
    #          <p></p>
    #          <p>To use this action, you must have permission to perform the
    #             <code>s3:PutJobTagging</code> action.</p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html">GetJobTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html">DeleteJobTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutJobTaggingInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    # @option params [String] :job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to replace.</p>
    #
    # @option params [Array<S3Tag>] :tags
    #   <p>The set of tags to associate with the S3 Batch Operations job.</p>
    #
    # @return [Types::PutJobTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_job_tagging(
    #     account_id: 'AccountId', # required
    #     job_id: 'JobId', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutJobTaggingOutput
    #
    def put_job_tagging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutJobTaggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutJobTaggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutJobTagging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::TooManyRequestsException, Errors::TooManyTagsException]),
        data_parser: Parsers::PutJobTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutJobTagging,
        stubs: @stubs,
        params_class: Params::PutJobTaggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_job_tagging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates an access control policy with the specified Multi-Region Access Point. Each Multi-Region Access Point can have only
    #          one policy, so a request made to this action replaces any existing policy that is
    #          associated with the specified Multi-Region Access Point.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around managing Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html">Managing
    #             Multi-Region Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to
    #          <code>PutMultiRegionAccessPointPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html">GetMultiRegionAccessPointPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html">GetMultiRegionAccessPointPolicyStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutMultiRegionAccessPointPolicyOperationInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    #
    # @option params [String] :client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    #
    # @option params [PutMultiRegionAccessPointPolicyInput] :details
    #   <p>A container element containing the details of the policy for the Multi-Region Access Point.</p>
    #
    # @return [Types::PutMultiRegionAccessPointPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_multi_region_access_point_policy(
    #     account_id: 'AccountId', # required
    #     client_token: 'ClientToken', # required
    #     details: {
    #       name: 'Name', # required
    #       policy: 'Policy' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutMultiRegionAccessPointPolicyOutput
    #   resp.data.request_token_arn #=> String
    #
    def put_multi_region_access_point_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMultiRegionAccessPointPolicyOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMultiRegionAccessPointPolicyOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMultiRegionAccessPointPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::ContentMD5)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutMultiRegionAccessPointPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutMultiRegionAccessPointPolicy,
        stubs: @stubs,
        params_class: Params::PutMultiRegionAccessPointPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_multi_region_access_point_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or modifies the <code>PublicAccessBlock</code> configuration for an
    #          Amazon Web Services account. For this operation, users must have the
    #             <code>s3:PutBucketPublicAccessBlock</code> permission. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">
    #             Using Amazon S3 block public access</a>.</p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html">GetPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html">DeletePublicAccessBlock</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutPublicAccessBlockInput}.
    #
    # @option params [PublicAccessBlockConfiguration] :public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to the specified
    #            Amazon Web Services account.</p>
    #
    # @option params [String] :account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to set.</p>
    #
    # @return [Types::PutPublicAccessBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_public_access_block(
    #     public_access_block_configuration: {
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false
    #     }, # required
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPublicAccessBlockOutput
    #
    def put_public_access_block(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPublicAccessBlockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPublicAccessBlockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPublicAccessBlock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutPublicAccessBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPublicAccessBlock,
        stubs: @stubs,
        params_class: Params::PutPublicAccessBlockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_public_access_block
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Puts an Amazon S3 Storage Lens configuration. For more information about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Working with
    #             Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:PutStorageLensConfiguration</code> action. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to use Amazon S3 Storage Lens</a> in the
    #                <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutStorageLensConfigurationInput}.
    #
    # @option params [String] :config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    #
    # @option params [StorageLensConfiguration] :storage_lens_configuration
    #   <p>The S3 Storage Lens configuration.</p>
    #
    # @option params [Array<StorageLensTag>] :tags
    #   <p>The tag set of the S3 Storage Lens configuration.</p>
    #            <note>
    #               <p>You can set up to a maximum of 50 tags.</p>
    #            </note>
    #
    # @return [Types::PutStorageLensConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_storage_lens_configuration(
    #     config_id: 'ConfigId', # required
    #     account_id: 'AccountId', # required
    #     storage_lens_configuration: {
    #       id: 'Id', # required
    #       account_level: {
    #         activity_metrics: {
    #           is_enabled: false
    #         },
    #         bucket_level: {
    #           prefix_level: {
    #             storage_metrics: {
    #               is_enabled: false,
    #               selection_criteria: {
    #                 delimiter: 'Delimiter',
    #                 max_depth: 1,
    #                 min_storage_bytes_percentage: 1.0
    #               }
    #             } # required
    #           }
    #         } # required
    #       }, # required
    #       include: {
    #         buckets: [
    #           'member'
    #         ],
    #         regions: [
    #           'member'
    #         ]
    #       },
    #       exclude: {
    #       },
    #       data_export: {
    #         s3_bucket_destination: {
    #           format: 'CSV', # required - accepts ["CSV", "Parquet"]
    #           output_schema_version: 'V_1', # required - accepts ["V_1"]
    #           account_id: 'AccountId', # required
    #           arn: 'Arn', # required
    #           prefix: 'Prefix',
    #           encryption: {
    #             sses3: { },
    #             ssekms: {
    #               key_id: 'KeyId' # required
    #             }
    #           }
    #         },
    #         cloud_watch_metrics: {
    #           is_enabled: false # required
    #         }
    #       },
    #       is_enabled: false, # required
    #       aws_org: {
    #         arn: 'Arn' # required
    #       },
    #       storage_lens_arn: 'StorageLensArn'
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutStorageLensConfigurationOutput
    #
    def put_storage_lens_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutStorageLensConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutStorageLensConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutStorageLensConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutStorageLensConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutStorageLensConfiguration,
        stubs: @stubs,
        params_class: Params::PutStorageLensConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_storage_lens_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Put or replace tags on an existing Amazon S3 Storage Lens configuration. For more information
    #          about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your storage activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:PutStorageLensConfigurationTagging</code> action. For more information, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to
    #                use Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutStorageLensConfigurationTaggingInput}.
    #
    # @option params [String] :config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    #
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    #
    # @option params [Array<StorageLensTag>] :tags
    #   <p>The tag set of the S3 Storage Lens configuration.</p>
    #            <note>
    #               <p>You can set up to a maximum of 50 tags.</p>
    #            </note>
    #
    # @return [Types::PutStorageLensConfigurationTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_storage_lens_configuration_tagging(
    #     config_id: 'ConfigId', # required
    #     account_id: 'AccountId', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutStorageLensConfigurationTaggingOutput
    #
    def put_storage_lens_configuration_tagging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutStorageLensConfigurationTaggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutStorageLensConfigurationTaggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutStorageLensConfigurationTagging
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutStorageLensConfigurationTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutStorageLensConfigurationTagging,
        stubs: @stubs,
        params_class: Params::PutStorageLensConfigurationTaggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_storage_lens_configuration_tagging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing S3 Batch Operations job's priority. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html">S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p></p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html">ListJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html">DescribeJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html">UpdateJobStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateJobPriorityInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    # @option params [String] :job_id
    #   <p>The ID for the job whose priority you want to update.</p>
    #
    # @option params [Integer] :priority
    #   <p>The priority you want to assign to this job.</p>
    #
    # @return [Types::UpdateJobPriorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_priority(
    #     account_id: 'AccountId', # required
    #     job_id: 'JobId', # required
    #     priority: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateJobPriorityOutput
    #   resp.data.job_id #=> String
    #   resp.data.priority #=> Integer
    #
    def update_job_priority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateJobPriorityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateJobPriorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateJobPriority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateJobPriority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateJobPriority,
        stubs: @stubs,
        params_class: Params::UpdateJobPriorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_job_priority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status for the specified job. Use this action to confirm that you want to
    #          run a job or to cancel an existing job. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html">S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p></p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html">ListJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html">DescribeJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html">UpdateJobStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateJobStatusInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    #
    # @option params [String] :job_id
    #   <p>The ID of the job whose status you want to update.</p>
    #
    # @option params [String] :requested_job_status
    #   <p>The status that you want to move the specified job to.</p>
    #
    # @option params [String] :status_update_reason
    #   <p>A description of the reason why you want to change the specified job's status. This
    #            field can be any string up to the maximum length.</p>
    #
    # @return [Types::UpdateJobStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_status(
    #     account_id: 'AccountId', # required
    #     job_id: 'JobId', # required
    #     requested_job_status: 'Cancelled', # required - accepts ["Cancelled", "Ready"]
    #     status_update_reason: 'StatusUpdateReason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateJobStatusOutput
    #   resp.data.job_id #=> String
    #   resp.data.status #=> String, one of ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"]
    #   resp.data.status_update_reason #=> String
    #
    def update_job_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateJobStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateJobStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{account_id}.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateJobStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::JobStatusException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateJobStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateJobStatus,
        stubs: @stubs,
        params_class: Params::UpdateJobStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_job_status
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
