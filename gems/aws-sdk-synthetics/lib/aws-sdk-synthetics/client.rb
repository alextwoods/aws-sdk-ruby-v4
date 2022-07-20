# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Synthetics
  # An API client for Synthetics
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon CloudWatch Synthetics</fullname>
  #          <p>You can use Amazon CloudWatch Synthetics to continually monitor your services. You can
  #          create and manage <i>canaries</i>, which are modular, lightweight scripts
  #          that monitor your endpoints and APIs
  #             from the outside-in. You can set up your canaries to run
  #          24 hours a day, once per minute. The canaries help you check the availability and latency
  #          of your web services and troubleshoot anomalies by investigating load time data,
  #          screenshots of the UI, logs, and metrics. The canaries seamlessly integrate with CloudWatch
  #          ServiceLens to help you trace the causes of impacted nodes in your applications. For more
  #          information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ServiceLens.html">Using ServiceLens to Monitor
  #             the Health of Your Applications</a> in the <i>Amazon CloudWatch User
  #             Guide</i>.</p>
  #
  #          <p>Before you create and manage canaries, be aware of the security considerations. For more
  #          information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html">Security
  #             Considerations for Synthetics Canaries</a>.</p>
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
    def initialize(config = AWS::SDK::Synthetics::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a canary. Canaries are scripts that monitor your endpoints and APIs from the
    #          outside-in. Canaries help you check the availability and latency of your web services and
    #          troubleshoot anomalies by investigating load time data, screenshots of the UI, logs, and
    #          metrics. You can set up a canary to run continuously or just once. </p>
    #          <p>Do not use <code>CreateCanary</code> to modify an existing canary. Use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_UpdateCanary.html">UpdateCanary</a> instead.</p>
    #          <p>To create canaries, you must have the <code>CloudWatchSyntheticsFullAccess</code> policy.
    #          If you are creating a new IAM role for the canary, you also need the
    #          the <code>iam:CreateRole</code>, <code>iam:CreatePolicy</code> and
    #             <code>iam:AttachRolePolicy</code> permissions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles">Necessary
    #             Roles and Permissions</a>.</p>
    #          <p>Do not include secrets or proprietary information in your canary names. The canary name
    #          makes up part of the Amazon Resource Name (ARN) for the canary, and the ARN is included in
    #          outbound calls over the internet. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html">Security
    #             Considerations for Synthetics Canaries</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCanaryInput}.
    #
    # @option params [String] :name
    #   <p>The name for this canary. Be sure to give it a descriptive name
    #            that distinguishes it from other canaries in your account.</p>
    #            <p>Do not include secrets or proprietary information in your canary names. The canary name
    #            makes up part of the canary ARN, and the ARN is included in outbound calls over the
    #            internet. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html">Security
    #               Considerations for Synthetics Canaries</a>.</p>
    #
    # @option params [CanaryCodeInput] :code
    #   <p>A structure that includes the entry point from which the canary should start
    #            running your script. If the script is stored in
    #            an S3 bucket, the bucket name, key, and version are also included.
    #         </p>
    #
    # @option params [String] :artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this
    #            canary. Artifacts include the log file, screenshots, and HAR files.  The name of the
    #            S3 bucket can't include a period (.).</p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The ARN of the IAM role to be used to run the canary. This role must already exist,
    #            and must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy. The role must also have the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>s3:PutObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketLocation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:ListAllMyBuckets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cloudwatch:PutMetricData</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:PutLogEvents</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [CanaryScheduleInput] :schedule
    #   <p>A structure that contains information about how often the canary is to run and when
    #            these test runs are to stop.</p>
    #
    # @option params [CanaryRunConfigInput] :run_config
    #   <p>A structure that contains the configuration for individual canary runs,
    #            such as timeout value.</p>
    #
    # @option params [Integer] :success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary. If you omit
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #
    # @option params [Integer] :failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary. If you omit
    #            this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>
    #
    # @option params [String] :runtime_version
    #   <p>Specifies the runtime version to use for the canary. For a list of valid
    #            runtime versions and more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #
    # @option params [VpcConfigInput] :vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #         information about the subnet and security groups of the VPC endpoint.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #            Running a Canary in a VPC</a>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to associate with the canary.
    #            You can associate as many as 50 tags with a canary.</p>
    #            <p>Tags can help you organize and categorize your
    #            resources. You can also use them to scope user permissions, by
    #            granting a user permission to access or change only the resources that have
    #            certain tag values.</p>
    #
    # @option params [ArtifactConfigInput] :artifact_config
    #   <p>A structure that contains the configuration for canary artifacts, including
    #            the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>
    #
    # @return [Types::CreateCanaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_canary(
    #     name: 'Name', # required
    #     code: {
    #       s3_bucket: 'S3Bucket',
    #       s3_key: 'S3Key',
    #       s3_version: 'S3Version',
    #       zip_file: 'ZipFile',
    #       handler: 'Handler' # required
    #     }, # required
    #     artifact_s3_location: 'ArtifactS3Location', # required
    #     execution_role_arn: 'ExecutionRoleArn', # required
    #     schedule: {
    #       expression: 'Expression', # required
    #       duration_in_seconds: 1
    #     }, # required
    #     run_config: {
    #       timeout_in_seconds: 1,
    #       memory_in_mb: 1,
    #       active_tracing: false,
    #       environment_variables: {
    #         'key' => 'value'
    #       }
    #     },
    #     success_retention_period_in_days: 1,
    #     failure_retention_period_in_days: 1,
    #     runtime_version: 'RuntimeVersion', # required
    #     vpc_config: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     artifact_config: {
    #       s3_encryption: {
    #         encryption_mode: 'SSE_S3', # accepts ["SSE_S3", "SSE_KMS"]
    #         kms_key_arn: 'KmsKeyArn'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCanaryOutput
    #   resp.data.canary #=> Types::Canary
    #   resp.data.canary.id #=> String
    #   resp.data.canary.name #=> String
    #   resp.data.canary.code #=> Types::CanaryCodeOutput
    #   resp.data.canary.code.source_location_arn #=> String
    #   resp.data.canary.code.handler #=> String
    #   resp.data.canary.execution_role_arn #=> String
    #   resp.data.canary.schedule #=> Types::CanaryScheduleOutput
    #   resp.data.canary.schedule.expression #=> String
    #   resp.data.canary.schedule.duration_in_seconds #=> Integer
    #   resp.data.canary.run_config #=> Types::CanaryRunConfigOutput
    #   resp.data.canary.run_config.timeout_in_seconds #=> Integer
    #   resp.data.canary.run_config.memory_in_mb #=> Integer
    #   resp.data.canary.run_config.active_tracing #=> Boolean
    #   resp.data.canary.success_retention_period_in_days #=> Integer
    #   resp.data.canary.failure_retention_period_in_days #=> Integer
    #   resp.data.canary.status #=> Types::CanaryStatus
    #   resp.data.canary.status.state #=> String, one of ["CREATING", "READY", "STARTING", "RUNNING", "UPDATING", "STOPPING", "STOPPED", "ERROR", "DELETING"]
    #   resp.data.canary.status.state_reason #=> String
    #   resp.data.canary.status.state_reason_code #=> String, one of ["INVALID_PERMISSIONS", "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_PENDING", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "SYNC_DELETE_IN_PROGRESS"]
    #   resp.data.canary.timeline #=> Types::CanaryTimeline
    #   resp.data.canary.timeline.created #=> Time
    #   resp.data.canary.timeline.last_modified #=> Time
    #   resp.data.canary.timeline.last_started #=> Time
    #   resp.data.canary.timeline.last_stopped #=> Time
    #   resp.data.canary.artifact_s3_location #=> String
    #   resp.data.canary.engine_arn #=> String
    #   resp.data.canary.runtime_version #=> String
    #   resp.data.canary.vpc_config #=> Types::VpcConfigOutput
    #   resp.data.canary.vpc_config.vpc_id #=> String
    #   resp.data.canary.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.canary.vpc_config.subnet_ids[0] #=> String
    #   resp.data.canary.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.canary.vpc_config.security_group_ids[0] #=> String
    #   resp.data.canary.visual_reference #=> Types::VisualReferenceOutput
    #   resp.data.canary.visual_reference.base_screenshots #=> Array<BaseScreenshot>
    #   resp.data.canary.visual_reference.base_screenshots[0] #=> Types::BaseScreenshot
    #   resp.data.canary.visual_reference.base_screenshots[0].screenshot_name #=> String
    #   resp.data.canary.visual_reference.base_screenshots[0].ignore_coordinates #=> Array<String>
    #   resp.data.canary.visual_reference.base_screenshots[0].ignore_coordinates[0] #=> String
    #   resp.data.canary.visual_reference.base_canary_run_id #=> String
    #   resp.data.canary.tags #=> Hash<String, String>
    #   resp.data.canary.tags['key'] #=> String
    #   resp.data.canary.artifact_config #=> Types::ArtifactConfigOutput
    #   resp.data.canary.artifact_config.s3_encryption #=> Types::S3EncryptionConfig
    #   resp.data.canary.artifact_config.s3_encryption.encryption_mode #=> String, one of ["SSE_S3", "SSE_KMS"]
    #   resp.data.canary.artifact_config.s3_encryption.kms_key_arn #=> String
    #
    def create_canary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCanaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCanaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCanary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestEntityTooLargeException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::CreateCanary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCanary,
        stubs: @stubs,
        params_class: Params::CreateCanaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_canary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently deletes the specified canary.</p>
    #          <p>If you specify <code>DeleteLambda</code> to <code>true</code>, CloudWatch Synthetics also deletes
    #          the Lambda functions and layers that are used by the canary.</p>
    #          <p>Other esources used and created by the canary are not automatically deleted.
    #          After you delete a canary that you do not intend to
    #          use again, you
    #       should also delete the following:</p>
    #          <ul>
    #             <li>
    #                <p>The CloudWatch alarms created for this canary. These alarms have a name of
    #                      <code>Synthetics-SharpDrop-Alarm-<i>MyCanaryName</i>
    #                   </code>.</p>
    #             </li>
    #             <li>
    #                <p>Amazon S3 objects and buckets, such as the canary's artifact location.</p>
    #             </li>
    #             <li>
    #                <p>IAM roles created for the canary. If they were created in the console, these roles
    #                have the name <code>
    #                      role/service-role/CloudWatchSyntheticsRole-<i>MyCanaryName</i>
    #                   </code>.</p>
    #             </li>
    #             <li>
    #                <p>CloudWatch Logs log groups created for the canary. These logs groups have the name
    #                      <code>/aws/lambda/cwsyn-<i>MyCanaryName</i>
    #                   </code>. </p>
    #             </li>
    #          </ul>
    #
    #          <p>Before you delete a canary, you might want to use <code>GetCanary</code> to display
    #          the information about this canary. Make
    #          note of the information returned by this operation so that you can delete these resources
    #          after you delete the canary.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCanaryInput}.
    #
    # @option params [String] :name
    #   <p>The name of the canary that you want to delete. To find the names of your canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #
    # @option params [Boolean] :delete_lambda
    #   <p>Specifies whether to also delete the Lambda functions and layers used by this canary. The default
    #         is false.</p>
    #            <p>Type: Boolean</p>
    #
    # @return [Types::DeleteCanaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_canary(
    #     name: 'Name', # required
    #     delete_lambda: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCanaryOutput
    #
    def delete_canary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCanaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCanaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCanary
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteCanary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCanary,
        stubs: @stubs,
        params_class: Params::DeleteCanaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_canary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns a list of the canaries in your account, along with full details
    #       about each canary.</p>
    #          <p>This operation supports resource-level authorization using an IAM policy and
    #       the <code>Names</code> parameter. If you specify the <code>Names</code> parameter, the operation is successful only if you have authorization to view
    #          all the canaries that you specify in your request. If you do not have permission to view any of
    #          the canaries, the request fails with a 403 response.</p>
    #          <p>You are required to use the <code>Names</code> parameter if you are logged on to a user or role that has an
    #          IAM policy that restricts which canaries that you are allowed to view. For more information,
    #          see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #             Limiting a user to viewing specific canaries</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCanariesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent operation to retrieve the next
    #            set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many canaries are returned each time you use
    #         the <code>DescribeCanaries</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #
    # @option params [Array<String>] :names
    #   <p>Use this parameter to return only canaries that match the names that you specify here. You can
    #            specify as many as five canary names.</p>
    #            <p>If you specify this parameter, the operation is successful only if you have authorization to view
    #            all the canaries that you specify in your request. If you do not have permission to view any of
    #            the canaries, the request fails with a 403 response.</p>
    #            <p>You are required to use this parameter if you are logged on to a user or role that has an
    #            IAM policy that restricts which canaries that you are allowed to view. For more information,
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #               Limiting a user to viewing specific canaries</a>.</p>
    #
    # @return [Types::DescribeCanariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_canaries(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCanariesOutput
    #   resp.data.canaries #=> Array<Canary>
    #   resp.data.canaries[0] #=> Types::Canary
    #   resp.data.canaries[0].id #=> String
    #   resp.data.canaries[0].name #=> String
    #   resp.data.canaries[0].code #=> Types::CanaryCodeOutput
    #   resp.data.canaries[0].code.source_location_arn #=> String
    #   resp.data.canaries[0].code.handler #=> String
    #   resp.data.canaries[0].execution_role_arn #=> String
    #   resp.data.canaries[0].schedule #=> Types::CanaryScheduleOutput
    #   resp.data.canaries[0].schedule.expression #=> String
    #   resp.data.canaries[0].schedule.duration_in_seconds #=> Integer
    #   resp.data.canaries[0].run_config #=> Types::CanaryRunConfigOutput
    #   resp.data.canaries[0].run_config.timeout_in_seconds #=> Integer
    #   resp.data.canaries[0].run_config.memory_in_mb #=> Integer
    #   resp.data.canaries[0].run_config.active_tracing #=> Boolean
    #   resp.data.canaries[0].success_retention_period_in_days #=> Integer
    #   resp.data.canaries[0].failure_retention_period_in_days #=> Integer
    #   resp.data.canaries[0].status #=> Types::CanaryStatus
    #   resp.data.canaries[0].status.state #=> String, one of ["CREATING", "READY", "STARTING", "RUNNING", "UPDATING", "STOPPING", "STOPPED", "ERROR", "DELETING"]
    #   resp.data.canaries[0].status.state_reason #=> String
    #   resp.data.canaries[0].status.state_reason_code #=> String, one of ["INVALID_PERMISSIONS", "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_PENDING", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "SYNC_DELETE_IN_PROGRESS"]
    #   resp.data.canaries[0].timeline #=> Types::CanaryTimeline
    #   resp.data.canaries[0].timeline.created #=> Time
    #   resp.data.canaries[0].timeline.last_modified #=> Time
    #   resp.data.canaries[0].timeline.last_started #=> Time
    #   resp.data.canaries[0].timeline.last_stopped #=> Time
    #   resp.data.canaries[0].artifact_s3_location #=> String
    #   resp.data.canaries[0].engine_arn #=> String
    #   resp.data.canaries[0].runtime_version #=> String
    #   resp.data.canaries[0].vpc_config #=> Types::VpcConfigOutput
    #   resp.data.canaries[0].vpc_config.vpc_id #=> String
    #   resp.data.canaries[0].vpc_config.subnet_ids #=> Array<String>
    #   resp.data.canaries[0].vpc_config.subnet_ids[0] #=> String
    #   resp.data.canaries[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.canaries[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.canaries[0].visual_reference #=> Types::VisualReferenceOutput
    #   resp.data.canaries[0].visual_reference.base_screenshots #=> Array<BaseScreenshot>
    #   resp.data.canaries[0].visual_reference.base_screenshots[0] #=> Types::BaseScreenshot
    #   resp.data.canaries[0].visual_reference.base_screenshots[0].screenshot_name #=> String
    #   resp.data.canaries[0].visual_reference.base_screenshots[0].ignore_coordinates #=> Array<String>
    #   resp.data.canaries[0].visual_reference.base_screenshots[0].ignore_coordinates[0] #=> String
    #   resp.data.canaries[0].visual_reference.base_canary_run_id #=> String
    #   resp.data.canaries[0].tags #=> Hash<String, String>
    #   resp.data.canaries[0].tags['key'] #=> String
    #   resp.data.canaries[0].artifact_config #=> Types::ArtifactConfigOutput
    #   resp.data.canaries[0].artifact_config.s3_encryption #=> Types::S3EncryptionConfig
    #   resp.data.canaries[0].artifact_config.s3_encryption.encryption_mode #=> String, one of ["SSE_S3", "SSE_KMS"]
    #   resp.data.canaries[0].artifact_config.s3_encryption.kms_key_arn #=> String
    #   resp.data.next_token #=> String
    #
    def describe_canaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCanariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCanariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCanaries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeCanaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCanaries,
        stubs: @stubs,
        params_class: Params::DescribeCanariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_canaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this operation to see information from the most recent run of each canary that you have created.</p>
    #
    #          <p>This operation supports resource-level authorization using an IAM policy and
    #          the <code>Names</code> parameter. If you specify the <code>Names</code> parameter, the operation is successful only if you have authorization to view
    #          all the canaries that you specify in your request. If you do not have permission to view any of
    #          the canaries, the request fails with a 403 response.</p>
    #          <p>You are required to use the <code>Names</code> parameter if you are logged on to a user or role that has an
    #          IAM policy that restricts which canaries that you are allowed to view. For more information,
    #          see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #             Limiting a user to viewing specific canaries</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCanariesLastRunInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeCanaries</code> operation to retrieve the next
    #            set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>DescribeLastRun</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #
    # @option params [Array<String>] :names
    #   <p>Use this parameter to return only canaries that match the names that you specify here. You can
    #            specify as many as five canary names.</p>
    #            <p>If you specify this parameter, the operation is successful only if you have authorization to view
    #            all the canaries that you specify in your request. If you do not have permission to view any of
    #            the canaries, the request fails with a 403 response.</p>
    #            <p>You are required to use the <code>Names</code> parameter if you are logged on to a user or role that has an
    #            IAM policy that restricts which canaries that you are allowed to view. For more information,
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html">
    #               Limiting a user to viewing specific canaries</a>.</p>
    #
    # @return [Types::DescribeCanariesLastRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_canaries_last_run(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCanariesLastRunOutput
    #   resp.data.canaries_last_run #=> Array<CanaryLastRun>
    #   resp.data.canaries_last_run[0] #=> Types::CanaryLastRun
    #   resp.data.canaries_last_run[0].canary_name #=> String
    #   resp.data.canaries_last_run[0].last_run #=> Types::CanaryRun
    #   resp.data.canaries_last_run[0].last_run.id #=> String
    #   resp.data.canaries_last_run[0].last_run.name #=> String
    #   resp.data.canaries_last_run[0].last_run.status #=> Types::CanaryRunStatus
    #   resp.data.canaries_last_run[0].last_run.status.state #=> String, one of ["RUNNING", "PASSED", "FAILED"]
    #   resp.data.canaries_last_run[0].last_run.status.state_reason #=> String
    #   resp.data.canaries_last_run[0].last_run.status.state_reason_code #=> String, one of ["CANARY_FAILURE", "EXECUTION_FAILURE"]
    #   resp.data.canaries_last_run[0].last_run.timeline #=> Types::CanaryRunTimeline
    #   resp.data.canaries_last_run[0].last_run.timeline.started #=> Time
    #   resp.data.canaries_last_run[0].last_run.timeline.completed #=> Time
    #   resp.data.canaries_last_run[0].last_run.artifact_s3_location #=> String
    #   resp.data.next_token #=> String
    #
    def describe_canaries_last_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCanariesLastRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCanariesLastRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCanariesLastRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeCanariesLastRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCanariesLastRun,
        stubs: @stubs,
        params_class: Params::DescribeCanariesLastRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_canaries_last_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Synthetics canary runtime versions. For more information,
    #          see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #             Canary Runtime Versions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRuntimeVersionsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>DescribeRuntimeVersions</code> operation to retrieve the next
    #            set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>DescribeRuntimeVersions</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #
    # @return [Types::DescribeRuntimeVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_runtime_versions(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRuntimeVersionsOutput
    #   resp.data.runtime_versions #=> Array<RuntimeVersion>
    #   resp.data.runtime_versions[0] #=> Types::RuntimeVersion
    #   resp.data.runtime_versions[0].version_name #=> String
    #   resp.data.runtime_versions[0].description #=> String
    #   resp.data.runtime_versions[0].release_date #=> Time
    #   resp.data.runtime_versions[0].deprecation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_runtime_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRuntimeVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRuntimeVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRuntimeVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeRuntimeVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRuntimeVersions,
        stubs: @stubs,
        params_class: Params::DescribeRuntimeVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_runtime_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves complete information about one canary. You must specify
    #       the name of the canary that you want. To get a list of canaries
    #       and their names, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCanaryInput}.
    #
    # @option params [String] :name
    #   <p>The name of the canary that you want details for.</p>
    #
    # @return [Types::GetCanaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_canary(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCanaryOutput
    #   resp.data.canary #=> Types::Canary
    #   resp.data.canary.id #=> String
    #   resp.data.canary.name #=> String
    #   resp.data.canary.code #=> Types::CanaryCodeOutput
    #   resp.data.canary.code.source_location_arn #=> String
    #   resp.data.canary.code.handler #=> String
    #   resp.data.canary.execution_role_arn #=> String
    #   resp.data.canary.schedule #=> Types::CanaryScheduleOutput
    #   resp.data.canary.schedule.expression #=> String
    #   resp.data.canary.schedule.duration_in_seconds #=> Integer
    #   resp.data.canary.run_config #=> Types::CanaryRunConfigOutput
    #   resp.data.canary.run_config.timeout_in_seconds #=> Integer
    #   resp.data.canary.run_config.memory_in_mb #=> Integer
    #   resp.data.canary.run_config.active_tracing #=> Boolean
    #   resp.data.canary.success_retention_period_in_days #=> Integer
    #   resp.data.canary.failure_retention_period_in_days #=> Integer
    #   resp.data.canary.status #=> Types::CanaryStatus
    #   resp.data.canary.status.state #=> String, one of ["CREATING", "READY", "STARTING", "RUNNING", "UPDATING", "STOPPING", "STOPPED", "ERROR", "DELETING"]
    #   resp.data.canary.status.state_reason #=> String
    #   resp.data.canary.status.state_reason_code #=> String, one of ["INVALID_PERMISSIONS", "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_PENDING", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "SYNC_DELETE_IN_PROGRESS"]
    #   resp.data.canary.timeline #=> Types::CanaryTimeline
    #   resp.data.canary.timeline.created #=> Time
    #   resp.data.canary.timeline.last_modified #=> Time
    #   resp.data.canary.timeline.last_started #=> Time
    #   resp.data.canary.timeline.last_stopped #=> Time
    #   resp.data.canary.artifact_s3_location #=> String
    #   resp.data.canary.engine_arn #=> String
    #   resp.data.canary.runtime_version #=> String
    #   resp.data.canary.vpc_config #=> Types::VpcConfigOutput
    #   resp.data.canary.vpc_config.vpc_id #=> String
    #   resp.data.canary.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.canary.vpc_config.subnet_ids[0] #=> String
    #   resp.data.canary.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.canary.vpc_config.security_group_ids[0] #=> String
    #   resp.data.canary.visual_reference #=> Types::VisualReferenceOutput
    #   resp.data.canary.visual_reference.base_screenshots #=> Array<BaseScreenshot>
    #   resp.data.canary.visual_reference.base_screenshots[0] #=> Types::BaseScreenshot
    #   resp.data.canary.visual_reference.base_screenshots[0].screenshot_name #=> String
    #   resp.data.canary.visual_reference.base_screenshots[0].ignore_coordinates #=> Array<String>
    #   resp.data.canary.visual_reference.base_screenshots[0].ignore_coordinates[0] #=> String
    #   resp.data.canary.visual_reference.base_canary_run_id #=> String
    #   resp.data.canary.tags #=> Hash<String, String>
    #   resp.data.canary.tags['key'] #=> String
    #   resp.data.canary.artifact_config #=> Types::ArtifactConfigOutput
    #   resp.data.canary.artifact_config.s3_encryption #=> Types::S3EncryptionConfig
    #   resp.data.canary.artifact_config.s3_encryption.encryption_mode #=> String, one of ["SSE_S3", "SSE_KMS"]
    #   resp.data.canary.artifact_config.s3_encryption.kms_key_arn #=> String
    #
    def get_canary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCanaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCanaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCanary
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::GetCanary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCanary,
        stubs: @stubs,
        params_class: Params::GetCanaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_canary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of runs for a specified canary.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCanaryRunsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the canary that you want to see runs for.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates that there is more data
    #            available. You can use this token in a subsequent <code>GetCanaryRuns</code> operation to retrieve the next
    #            set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specify this parameter to limit how many runs are returned each time you use
    #            the <code>GetCanaryRuns</code> operation. If you omit this parameter, the default of 100 is used.</p>
    #
    # @return [Types::GetCanaryRunsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_canary_runs(
    #     name: 'Name', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCanaryRunsOutput
    #   resp.data.canary_runs #=> Array<CanaryRun>
    #   resp.data.canary_runs[0] #=> Types::CanaryRun
    #   resp.data.canary_runs[0].id #=> String
    #   resp.data.canary_runs[0].name #=> String
    #   resp.data.canary_runs[0].status #=> Types::CanaryRunStatus
    #   resp.data.canary_runs[0].status.state #=> String, one of ["RUNNING", "PASSED", "FAILED"]
    #   resp.data.canary_runs[0].status.state_reason #=> String
    #   resp.data.canary_runs[0].status.state_reason_code #=> String, one of ["CANARY_FAILURE", "EXECUTION_FAILURE"]
    #   resp.data.canary_runs[0].timeline #=> Types::CanaryRunTimeline
    #   resp.data.canary_runs[0].timeline.started #=> Time
    #   resp.data.canary_runs[0].timeline.completed #=> Time
    #   resp.data.canary_runs[0].artifact_s3_location #=> String
    #   resp.data.next_token #=> String
    #
    def get_canary_runs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCanaryRunsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCanaryRunsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCanaryRuns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetCanaryRuns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCanaryRuns,
        stubs: @stubs,
        params_class: Params::GetCanaryRunsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_canary_runs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays the tags associated with a canary.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the canary that you want to view tags for.</p>
    #            <p>The ARN format of a canary is
    #                  <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this operation to run a canary that has already been created.
    #          The frequency of the canary runs is determined by the value of the canary's <code>Schedule</code>. To see a canary's schedule,
    #          use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanary.html">GetCanary</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartCanaryInput}.
    #
    # @option params [String] :name
    #   <p>The name of the canary that you want to run. To find
    #            canary names, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #
    # @return [Types::StartCanaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_canary(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartCanaryOutput
    #
    def start_canary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartCanaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartCanaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartCanary
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartCanary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartCanary,
        stubs: @stubs,
        params_class: Params::StartCanaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_canary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the canary to prevent all future runs. If the canary is currently running,
    #          Synthetics stops waiting for the current run of the specified canary to complete. The
    #         run that is in progress completes on its own, publishes metrics, and uploads artifacts, but
    #          it is not recorded in Synthetics as a completed run.</p>
    #          <p>You can use <code>StartCanary</code> to start it running again
    #          with the canary’s current schedule at any point in the future.  </p>
    #
    # @param [Hash] params
    #   See {Types::StopCanaryInput}.
    #
    # @option params [String] :name
    #   <p>The name of the canary that you want to stop. To find the names of your
    #            canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #
    # @return [Types::StopCanaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_canary(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopCanaryOutput
    #
    def stop_canary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopCanaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopCanaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopCanary
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopCanary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopCanary,
        stubs: @stubs,
        params_class: Params::StopCanaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_canary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified canary. </p>
    #          <p>Tags can help you organize and categorize your
    #          resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with
    #          certain tag values.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with a canary that already has tags. If you specify a new tag key for the alarm,
    #          this tag is appended to the list of tags associated
    #          with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces
    #          the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a canary.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the canary that you're adding tags to.</p>
    #            <p>The ARN format of a canary is
    #                  <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the canary.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more tags from the specified canary.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the canary that you're removing tags from.</p>
    #            <p>The ARN format of a canary is
    #                  <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
    #               </code>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this operation to change the settings of a canary that has
    #          already been created.</p>
    #          <p>You can't use this operation to update the tags of an existing canary. To
    #          change the tags of an existing canary, use
    #          <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_TagResource.html">TagResource</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCanaryInput}.
    #
    # @option params [String] :name
    #   <p>The name of the canary that you want to update. To find the names of your
    #            canaries, use <a href="https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html">DescribeCanaries</a>.</p>
    #            <p>You cannot change the name of a canary that has already been created.</p>
    #
    # @option params [CanaryCodeInput] :code
    #   <p>A structure that includes the entry point from which the canary should start
    #            running your script. If the script is stored in
    #            an S3 bucket, the bucket name, key, and version are also included.
    #         </p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The ARN of the IAM role to be used to run the canary. This role must already exist,
    #            and must include <code>lambda.amazonaws.com</code> as a principal in the trust
    #            policy. The role must also have the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>s3:PutObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketLocation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:ListAllMyBuckets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cloudwatch:PutMetricData</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>logs:CreateLogStream</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :runtime_version
    #   <p>Specifies the runtime version to use for the canary.
    #            For a list of valid runtime versions and for more information about
    #            runtime versions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html">
    #               Canary Runtime Versions</a>.</p>
    #
    # @option params [CanaryScheduleInput] :schedule
    #   <p>A structure that contains information about how often the canary is to run, and when
    #            these runs are to stop.</p>
    #
    # @option params [CanaryRunConfigInput] :run_config
    #   <p>A structure that contains the timeout value that is used for each individual run of the
    #            canary.</p>
    #
    # @option params [Integer] :success_retention_period_in_days
    #   <p>The number of days to retain data about successful runs of this canary.</p>
    #
    # @option params [Integer] :failure_retention_period_in_days
    #   <p>The number of days to retain data about failed runs of this canary.</p>
    #
    # @option params [VpcConfigInput] :vpc_config
    #   <p>If this canary is to test an endpoint in a VPC, this structure contains
    #            information about the subnet and security groups of the VPC endpoint.
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html">
    #               Running a Canary in a VPC</a>.</p>
    #
    # @option params [VisualReferenceInput] :visual_reference
    #   <p>Defines the screenshots to use as the baseline for comparisons during visual monitoring comparisons during future runs of this canary. If you omit this
    #         parameter, no changes are made to any baseline screenshots that the canary might be using already.</p>
    #            <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>
    #            runtime or later. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html">
    #               Visual monitoring</a> and <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html">
    #                  Visual monitoring blueprint</a>
    #            </p>
    #
    # @option params [String] :artifact_s3_location
    #   <p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary.
    #            Artifacts include the log file, screenshots, and HAR files. The name of the
    #            S3 bucket can't include a period (.).</p>
    #
    # @option params [ArtifactConfigInput] :artifact_config
    #   <p>A structure that contains the configuration for canary artifacts,
    #            including the encryption-at-rest settings for artifacts that
    #            the canary uploads to Amazon S3.</p>
    #
    # @return [Types::UpdateCanaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_canary(
    #     name: 'Name', # required
    #     code: {
    #       s3_bucket: 'S3Bucket',
    #       s3_key: 'S3Key',
    #       s3_version: 'S3Version',
    #       zip_file: 'ZipFile',
    #       handler: 'Handler' # required
    #     },
    #     execution_role_arn: 'ExecutionRoleArn',
    #     runtime_version: 'RuntimeVersion',
    #     schedule: {
    #       expression: 'Expression', # required
    #       duration_in_seconds: 1
    #     },
    #     run_config: {
    #       timeout_in_seconds: 1,
    #       memory_in_mb: 1,
    #       active_tracing: false,
    #       environment_variables: {
    #         'key' => 'value'
    #       }
    #     },
    #     success_retention_period_in_days: 1,
    #     failure_retention_period_in_days: 1,
    #     vpc_config: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     visual_reference: {
    #       base_screenshots: [
    #         {
    #           screenshot_name: 'ScreenshotName', # required
    #           ignore_coordinates: [
    #             'member'
    #           ]
    #         }
    #       ],
    #       base_canary_run_id: 'BaseCanaryRunId' # required
    #     },
    #     artifact_s3_location: 'ArtifactS3Location',
    #     artifact_config: {
    #       s3_encryption: {
    #         encryption_mode: 'SSE_S3', # accepts ["SSE_S3", "SSE_KMS"]
    #         kms_key_arn: 'KmsKeyArn'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCanaryOutput
    #
    def update_canary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCanaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCanaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCanary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestEntityTooLargeException, Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateCanary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCanary,
        stubs: @stubs,
        params_class: Params::UpdateCanaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_canary
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
