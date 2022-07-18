# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CloudWatchLogs
  # An API client for Logs_20140328
  # See {#initialize} for a full list of supported configuration options
  # <p>You can use Amazon CloudWatch Logs to monitor, store, and access your log files from
  #       EC2 instances, CloudTrail, and other sources. You can then retrieve the associated
  #       log data from CloudWatch Logs using the CloudWatch console, CloudWatch Logs commands in the
  #       Amazon Web Services CLI, CloudWatch Logs API, or CloudWatch Logs SDK.</p>
  #          <p>You can use CloudWatch Logs to:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <b>Monitor logs from EC2 instances in real-time</b>: You
  #           can use CloudWatch Logs to monitor applications and systems using log data. For example,
  #           CloudWatch Logs can track the number of errors that occur in your application logs and
  #           send you a notification whenever the rate of errors exceeds a threshold that you specify.
  #           CloudWatch Logs uses your log data for monitoring so no code changes are required. For
  #           example, you can monitor application logs for specific literal terms (such as
  #           "NullReferenceException") or count the number of occurrences of a literal term at a
  #           particular position in log data (such as "404" status codes in an Apache access log). When
  #           the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch
  #           metric that you specify.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Monitor CloudTrail logged events</b>: You can
  #           create alarms in CloudWatch and receive notifications of particular API activity as
  #           captured by CloudTrail. You can use the notification to perform troubleshooting.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Archive log data</b>: You can use CloudWatch Logs to
  #           store your log data in highly durable storage. You can change the log retention setting so
  #           that any log events older than this setting are automatically deleted. The CloudWatch Logs
  #           agent makes it easy to quickly send both rotated and non-rotated log data off of a host
  #           and into the log service. You can then access the raw log data when you need it.</p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::CloudWatchLogs::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates the specified Key Management Service customer master key (CMK) with the specified log group.</p>
    #          <p>Associating an KMS CMK with a log group overrides any existing associations between the log group and a CMK.
    #       After a CMK is associated with a log group, all newly ingested data for the log group is encrypted using the CMK.
    #       This association is stored as long as the data encrypted with the CMK is still within CloudWatch Logs.
    #       This enables CloudWatch Logs to decrypt this data whenever it is requested.</p>
    #          <important>
    #             <p>CloudWatch Logs supports only symmetric CMKs. Do not use an associate an asymmetric CMK
    #         with your log group. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using Symmetric and Asymmetric
    #           Keys</a>.</p>
    #          </important>
    #          <p>It can take up to 5 minutes for this operation to take effect.</p>
    #          <p>If you attempt to associate a CMK with a log group but the CMK does not exist or the
    #       CMK is disabled, you receive an <code>InvalidParameterException</code> error. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateKmsKeyInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. This must be a symmetric CMK.
    #         For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms">Amazon Resource Names - Key Management Service</a> and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using Symmetric and Asymmetric Keys</a>.</p>
    #
    # @return [Types::AssociateKmsKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_kms_key(
    #     log_group_name: 'logGroupName', # required
    #     kms_key_id: 'kmsKeyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateKmsKeyOutput
    #
    def associate_kms_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateKmsKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateKmsKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateKmsKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AssociateKmsKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateKmsKey,
        stubs: @stubs,
        params_class: Params::AssociateKmsKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_kms_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the specified export task.</p>
    #          <p>The task must be in the <code>PENDING</code> or <code>RUNNING</code> state.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelExportTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>The ID of the export task.</p>
    #
    # @return [Types::CancelExportTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_export_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelExportTaskOutput
    #
    def cancel_export_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelExportTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelExportTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelExportTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CancelExportTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelExportTask,
        stubs: @stubs,
        params_class: Params::CancelExportTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_export_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an export task, which allows you to efficiently export data from a
    #       log group to an Amazon S3 bucket. When you perform a <code>CreateExportTask</code>
    #       operation, you must use credentials that have permission to write to the S3 bucket
    #       that you specify as the destination.</p>
    #          <important>
    #             <p>Exporting log data to Amazon S3 buckets that are encrypted by KMS is not
    #       supported. Exporting
    #       log data to Amazon S3 buckets that have S3 Object Lock enabled with a retention period is not supported.</p>
    #             <p>Exporting to S3 buckets that are encrypted with AES-256 is supported. </p>
    #          </important>
    #          <p>This is an asynchronous call. If all the required information is provided, this
    #       operation initiates an export task and responds with the ID of the task. After the task has started,
    #       you can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeExportTasks.html">DescribeExportTasks</a> to get the status of the export task. Each account can
    #       only have one active (<code>RUNNING</code> or <code>PENDING</code>) export task at a time.
    #       To cancel an export task, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CancelExportTask.html">CancelExportTask</a>.</p>
    #          <p>You can export logs from multiple log groups or multiple time ranges to the same S3
    #       bucket. To separate out log data for each export task, you can specify a prefix to be used as
    #       the Amazon S3 key prefix for all exported objects.</p>
    #
    #          <note>
    #             <p>Time-based sorting on chunks of log data inside an exported file is not guaranteed. You can sort the
    #       exported log fild data by using Linux utilities.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateExportTaskInput}.
    #
    # @option params [String] :task_name
    #   <p>The name of the export task.</p>
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :log_stream_name_prefix
    #   <p>Export only log streams that match the provided prefix. If you don't
    #         specify a value, no prefix filter is applied.</p>
    #
    # @option params [Integer] :from
    #   <p>The start time of the range for the request, expressed as the number of milliseconds
    #         after Jan 1, 1970 00:00:00 UTC. Events with a timestamp earlier than this time are not
    #         exported.</p>
    #
    # @option params [Integer] :to
    #   <p>The end time of the range for the request, expressed as the number of milliseconds
    #         after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not
    #         exported.</p>
    #
    # @option params [String] :destination
    #   <p>The name of S3 bucket for the exported log data. The bucket must be in the same Amazon Web Services region.</p>
    #
    # @option params [String] :destination_prefix
    #   <p>The prefix used as the start of the key for every object exported. If you don't
    #         specify a value, the default is <code>exportedlogs</code>.</p>
    #
    # @return [Types::CreateExportTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_export_task(
    #     task_name: 'taskName',
    #     log_group_name: 'logGroupName', # required
    #     log_stream_name_prefix: 'logStreamNamePrefix',
    #     from: 1, # required
    #     to: 1, # required
    #     destination: 'destination', # required
    #     destination_prefix: 'destinationPrefix'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateExportTaskOutput
    #   resp.data.task_id #=> String
    #
    def create_export_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateExportTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateExportTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateExportTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::LimitExceededException, Errors::OperationAbortedException, Errors::ServiceUnavailableException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateExportTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateExportTask,
        stubs: @stubs,
        params_class: Params::CreateExportTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_export_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a log group with the specified name. You can create up to 20,000 log groups per account.</p>
    #          <p>You must use the following guidelines when naming a log group:</p>
    #          <ul>
    #             <li>
    #                <p>Log group names must be unique within a region for an Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>Log group names can be between 1 and 512 characters long.</p>
    #             </li>
    #             <li>
    #                <p>Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen),
    #           '/' (forward slash), '.' (period), and '#' (number sign)</p>
    #             </li>
    #          </ul>
    #          <p>When you create a log group, by default the log events in the log group never expire. To set
    #     a retention policy so that events expire and are deleted after a specified time, use
    #       <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutRetentionPolicy.html">PutRetentionPolicy</a>.</p>
    #          <p>If you associate a Key Management Service customer master key (CMK) with the log group, ingested data is encrypted using the CMK.
    #       This association is stored as long as the data encrypted with the CMK is still within CloudWatch Logs.
    #       This enables CloudWatch Logs to decrypt this data whenever it is requested.</p>
    #          <p>If you attempt to associate a CMK with the log group but the CMK does not exist or the
    #       CMK is disabled, you receive an <code>InvalidParameterException</code> error. </p>
    #          <important>
    #             <p>CloudWatch Logs supports only symmetric CMKs. Do not associate an asymmetric CMK with
    #         your log group. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using Symmetric and Asymmetric
    #           Keys</a>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateLogGroupInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.
    #         For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms">Amazon Resource Names - Key Management Service</a>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to use for the tags.</p>
    #            <p>CloudWatch Logs doesn’t support IAM policies that prevent users from assigning specified tags to
    #         log groups using the <code>aws:Resource/<i>key-name</i>
    #               </code> or <code>aws:TagKeys</code> condition keys.
    #         For more information about using tags to control access, see
    #         <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services resources using tags</a>.</p>
    #
    # @return [Types::CreateLogGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_group(
    #     log_group_name: 'logGroupName', # required
    #     kms_key_id: 'kmsKeyId',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLogGroupOutput
    #
    def create_log_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLogGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLogGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLogGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::LimitExceededException, Errors::OperationAbortedException, Errors::ServiceUnavailableException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateLogGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLogGroup,
        stubs: @stubs,
        params_class: Params::CreateLogGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_log_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a log stream for the specified log group. A log stream is a sequence of log events
    #       that originate from a single source, such as an application instance or a resource that is
    #       being monitored.</p>
    #          <p>There is no limit on the number of log streams that you can create for a log group. There is a limit
    #     of 50 TPS on <code>CreateLogStream</code> operations, after which transactions are throttled.</p>
    #          <p>You must use the following guidelines when naming a log stream:</p>
    #          <ul>
    #             <li>
    #                <p>Log stream names must be unique within the log group.</p>
    #             </li>
    #             <li>
    #                <p>Log stream names can be between 1 and 512 characters long.</p>
    #             </li>
    #             <li>
    #                <p>The ':' (colon) and '*' (asterisk) characters are not allowed.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateLogStreamInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :log_stream_name
    #   <p>The name of the log stream.</p>
    #
    # @return [Types::CreateLogStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_stream(
    #     log_group_name: 'logGroupName', # required
    #     log_stream_name: 'logStreamName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLogStreamOutput
    #
    def create_log_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLogStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLogStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLogStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateLogStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLogStream,
        stubs: @stubs,
        params_class: Params::CreateLogStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_log_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified destination, and eventually disables all the
    #       subscription filters that publish to it. This operation does not delete the
    #       physical resource encapsulated by the destination.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDestinationInput}.
    #
    # @option params [String] :destination_name
    #   <p>The name of the destination.</p>
    #
    # @return [Types::DeleteDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_destination(
    #     destination_name: 'destinationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDestinationOutput
    #
    def delete_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDestination,
        stubs: @stubs,
        params_class: Params::DeleteDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified log group and permanently deletes all the archived
    #       log events associated with the log group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLogGroupInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @return [Types::DeleteLogGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_group(
    #     log_group_name: 'logGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLogGroupOutput
    #
    def delete_log_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLogGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLogGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLogGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteLogGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLogGroup,
        stubs: @stubs,
        params_class: Params::DeleteLogGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_log_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified log stream and permanently deletes all the archived log events associated
    #       with the log stream.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLogStreamInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :log_stream_name
    #   <p>The name of the log stream.</p>
    #
    # @return [Types::DeleteLogStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_stream(
    #     log_group_name: 'logGroupName', # required
    #     log_stream_name: 'logStreamName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLogStreamOutput
    #
    def delete_log_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLogStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLogStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLogStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteLogStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLogStream,
        stubs: @stubs,
        params_class: Params::DeleteLogStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_log_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified metric filter.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMetricFilterInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :filter_name
    #   <p>The name of the metric filter.</p>
    #
    # @return [Types::DeleteMetricFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_metric_filter(
    #     log_group_name: 'logGroupName', # required
    #     filter_name: 'filterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMetricFilterOutput
    #
    def delete_metric_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMetricFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMetricFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMetricFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteMetricFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMetricFilter,
        stubs: @stubs,
        params_class: Params::DeleteMetricFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_metric_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a saved CloudWatch Logs Insights query definition.
    #       A query definition contains details about a saved CloudWatch Logs Insights query.</p>
    #          <p>Each <code>DeleteQueryDefinition</code> operation can delete one query definition.</p>
    #          <p>You must have the <code>logs:DeleteQueryDefinition</code> permission to be able to perform
    #       this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteQueryDefinitionInput}.
    #
    # @option params [String] :query_definition_id
    #   <p>The ID of the query definition that you want to delete. You can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html">DescribeQueryDefinitions</a> to retrieve the
    #         IDs of your saved query definitions.</p>
    #
    # @return [Types::DeleteQueryDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_query_definition(
    #     query_definition_id: 'queryDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteQueryDefinitionOutput
    #   resp.data.success #=> Boolean
    #
    def delete_query_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteQueryDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteQueryDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteQueryDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteQueryDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteQueryDefinition,
        stubs: @stubs,
        params_class: Params::DeleteQueryDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_query_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a resource policy from this account. This revokes
    #     the access of the identities in that policy to put log events to this account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy to be revoked. This parameter is required.</p>
    #
    # @return [Types::DeleteResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy(
    #     policy_name: 'policyName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourcePolicyOutput
    #
    def delete_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourcePolicy,
        stubs: @stubs,
        params_class: Params::DeleteResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified retention policy.</p>
    #          <p>Log events do not expire if they belong to log groups without a retention policy.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRetentionPolicyInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @return [Types::DeleteRetentionPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_retention_policy(
    #     log_group_name: 'logGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRetentionPolicyOutput
    #
    def delete_retention_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRetentionPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRetentionPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRetentionPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteRetentionPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRetentionPolicy,
        stubs: @stubs,
        params_class: Params::DeleteRetentionPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_retention_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified subscription filter.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSubscriptionFilterInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :filter_name
    #   <p>The name of the subscription filter.</p>
    #
    # @return [Types::DeleteSubscriptionFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_filter(
    #     log_group_name: 'logGroupName', # required
    #     filter_name: 'filterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSubscriptionFilterOutput
    #
    def delete_subscription_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSubscriptionFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSubscriptionFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSubscriptionFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteSubscriptionFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSubscriptionFilter,
        stubs: @stubs,
        params_class: Params::DeleteSubscriptionFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_subscription_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all your destinations. The results are ASCII-sorted by destination name.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDestinationsInput}.
    #
    # @option params [String] :destination_name_prefix
    #   <p>The prefix to match. If you don't specify a value, no prefix filter is applied.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    # @return [Types::DescribeDestinationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_destinations(
    #     destination_name_prefix: 'DestinationNamePrefix',
    #     next_token: 'nextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDestinationsOutput
    #   resp.data.destinations #=> Array<Destination>
    #   resp.data.destinations[0] #=> Types::Destination
    #   resp.data.destinations[0].destination_name #=> String
    #   resp.data.destinations[0].target_arn #=> String
    #   resp.data.destinations[0].role_arn #=> String
    #   resp.data.destinations[0].access_policy #=> String
    #   resp.data.destinations[0].arn #=> String
    #   resp.data.destinations[0].creation_time #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_destinations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDestinationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDestinationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDestinations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeDestinations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDestinations,
        stubs: @stubs,
        params_class: Params::DescribeDestinationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_destinations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the specified export tasks. You can list all your export tasks or filter
    #       the results based on task ID or task status.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExportTasksInput}.
    #
    # @option params [String] :task_id
    #   <p>The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.</p>
    #
    # @option params [String] :status_code
    #   <p>The status code of the export task. Specifying a status code filters the results to zero or more export tasks.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    # @return [Types::DescribeExportTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export_tasks(
    #     task_id: 'taskId',
    #     status_code: 'CANCELLED', # accepts ["CANCELLED", "COMPLETED", "FAILED", "PENDING", "PENDING_CANCEL", "RUNNING"]
    #     next_token: 'nextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExportTasksOutput
    #   resp.data.export_tasks #=> Array<ExportTask>
    #   resp.data.export_tasks[0] #=> Types::ExportTask
    #   resp.data.export_tasks[0].task_id #=> String
    #   resp.data.export_tasks[0].task_name #=> String
    #   resp.data.export_tasks[0].log_group_name #=> String
    #   resp.data.export_tasks[0].from #=> Integer
    #   resp.data.export_tasks[0].to #=> Integer
    #   resp.data.export_tasks[0].destination #=> String
    #   resp.data.export_tasks[0].destination_prefix #=> String
    #   resp.data.export_tasks[0].status #=> Types::ExportTaskStatus
    #   resp.data.export_tasks[0].status.code #=> String, one of ["CANCELLED", "COMPLETED", "FAILED", "PENDING", "PENDING_CANCEL", "RUNNING"]
    #   resp.data.export_tasks[0].status.message #=> String
    #   resp.data.export_tasks[0].execution_info #=> Types::ExportTaskExecutionInfo
    #   resp.data.export_tasks[0].execution_info.creation_time #=> Integer
    #   resp.data.export_tasks[0].execution_info.completion_time #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_export_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExportTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExportTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExportTasks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeExportTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExportTasks,
        stubs: @stubs,
        params_class: Params::DescribeExportTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_export_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the specified log groups. You can list all your log groups or filter the results by prefix.
    #       The results are ASCII-sorted by log group name.</p>
    #          <p>CloudWatch Logs doesn’t support IAM policies that control access to the <code>DescribeLogGroups</code> action by using the
    #       <code>aws:ResourceTag/<i>key-name</i>
    #             </code> condition key. Other CloudWatch Logs actions
    #       do support the use of the <code>aws:ResourceTag/<i>key-name</i>
    #             </code> condition key to control access.
    #       For more information about using tags to control access, see
    #       <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services resources using tags</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLogGroupsInput}.
    #
    # @option params [String] :log_group_name_prefix
    #   <p>The prefix to match.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    # @return [Types::DescribeLogGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_log_groups(
    #     log_group_name_prefix: 'logGroupNamePrefix',
    #     next_token: 'nextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLogGroupsOutput
    #   resp.data.log_groups #=> Array<LogGroup>
    #   resp.data.log_groups[0] #=> Types::LogGroup
    #   resp.data.log_groups[0].log_group_name #=> String
    #   resp.data.log_groups[0].creation_time #=> Integer
    #   resp.data.log_groups[0].retention_in_days #=> Integer
    #   resp.data.log_groups[0].metric_filter_count #=> Integer
    #   resp.data.log_groups[0].arn #=> String
    #   resp.data.log_groups[0].stored_bytes #=> Integer
    #   resp.data.log_groups[0].kms_key_id #=> String
    #   resp.data.next_token #=> String
    #
    def describe_log_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLogGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLogGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLogGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeLogGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLogGroups,
        stubs: @stubs,
        params_class: Params::DescribeLogGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_log_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the log streams for the specified log group.
    #       You can list all the log streams or filter the results by prefix.
    #       You can also control how the results are ordered.</p>
    #          <p>This operation has a limit of five transactions per second, after which transactions are throttled.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLogStreamsInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :log_stream_name_prefix
    #   <p>The prefix to match.</p>
    #            <p>If <code>orderBy</code> is <code>LastEventTime</code>, you cannot specify this
    #         parameter.</p>
    #
    # @option params [String] :order_by
    #   <p>If the value is <code>LogStreamName</code>, the results are ordered by log stream name.
    #         If the value is <code>LastEventTime</code>, the results are ordered by the event time.
    #         The default value is <code>LogStreamName</code>.</p>
    #            <p>If you order the results by event time, you cannot specify the <code>logStreamNamePrefix</code> parameter.</p>
    #            <p>
    #               <code>lastEventTimestamp</code> represents the time of the most recent log event in the
    #         log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after
    #         Jan 1, 1970 00:00:00 UTC. <code>lastEventTimestamp</code> updates on an eventual consistency
    #         basis. It typically updates in less than an hour from ingestion, but in rare situations might
    #         take longer.</p>
    #
    # @option params [Boolean] :descending
    #   <p>If the value is true, results are returned in descending order.
    #         If the value is to false, results are returned in ascending order.
    #         The default value is false.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    # @return [Types::DescribeLogStreamsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_log_streams(
    #     log_group_name: 'logGroupName', # required
    #     log_stream_name_prefix: 'logStreamNamePrefix',
    #     order_by: 'LogStreamName', # accepts ["LogStreamName", "LastEventTime"]
    #     descending: false,
    #     next_token: 'nextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLogStreamsOutput
    #   resp.data.log_streams #=> Array<LogStream>
    #   resp.data.log_streams[0] #=> Types::LogStream
    #   resp.data.log_streams[0].log_stream_name #=> String
    #   resp.data.log_streams[0].creation_time #=> Integer
    #   resp.data.log_streams[0].first_event_timestamp #=> Integer
    #   resp.data.log_streams[0].last_event_timestamp #=> Integer
    #   resp.data.log_streams[0].last_ingestion_time #=> Integer
    #   resp.data.log_streams[0].upload_sequence_token #=> String
    #   resp.data.log_streams[0].arn #=> String
    #   resp.data.log_streams[0].stored_bytes #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_log_streams(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLogStreamsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLogStreamsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLogStreams
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeLogStreams
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLogStreams,
        stubs: @stubs,
        params_class: Params::DescribeLogStreamsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_log_streams
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the specified metric filters. You can list all of the metric filters or filter
    #       the results by log name, prefix, metric name, or metric namespace. The results are
    #       ASCII-sorted by filter name.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMetricFiltersInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :filter_name_prefix
    #   <p>The prefix to match. CloudWatch Logs uses the value you set here
    #       only if you also include the <code>logGroupName</code> parameter in your request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    # @option params [String] :metric_name
    #   <p>Filters results to include only those with the specified metric name. If you include this parameter in your request, you
    #       must also include the <code>metricNamespace</code> parameter.</p>
    #
    # @option params [String] :metric_namespace
    #   <p>Filters results to include only those in the specified namespace. If you include this parameter in your request, you
    #       must also include the <code>metricName</code> parameter.</p>
    #
    # @return [Types::DescribeMetricFiltersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_metric_filters(
    #     log_group_name: 'logGroupName',
    #     filter_name_prefix: 'filterNamePrefix',
    #     next_token: 'nextToken',
    #     limit: 1,
    #     metric_name: 'metricName',
    #     metric_namespace: 'metricNamespace'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMetricFiltersOutput
    #   resp.data.metric_filters #=> Array<MetricFilter>
    #   resp.data.metric_filters[0] #=> Types::MetricFilter
    #   resp.data.metric_filters[0].filter_name #=> String
    #   resp.data.metric_filters[0].filter_pattern #=> String
    #   resp.data.metric_filters[0].metric_transformations #=> Array<MetricTransformation>
    #   resp.data.metric_filters[0].metric_transformations[0] #=> Types::MetricTransformation
    #   resp.data.metric_filters[0].metric_transformations[0].metric_name #=> String
    #   resp.data.metric_filters[0].metric_transformations[0].metric_namespace #=> String
    #   resp.data.metric_filters[0].metric_transformations[0].metric_value #=> String
    #   resp.data.metric_filters[0].metric_transformations[0].default_value #=> Float
    #   resp.data.metric_filters[0].metric_transformations[0].dimensions #=> Hash<String, String>
    #   resp.data.metric_filters[0].metric_transformations[0].dimensions['key'] #=> String
    #   resp.data.metric_filters[0].metric_transformations[0].unit #=> String, one of ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   resp.data.metric_filters[0].creation_time #=> Integer
    #   resp.data.metric_filters[0].log_group_name #=> String
    #   resp.data.next_token #=> String
    #
    def describe_metric_filters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMetricFiltersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMetricFiltersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMetricFilters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeMetricFilters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMetricFilters,
        stubs: @stubs,
        params_class: Params::DescribeMetricFiltersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_metric_filters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of CloudWatch Logs Insights queries that are scheduled, executing, or have
    #       been executed recently in this account. You can request all queries or limit it to queries of
    #       a specific log group or queries with a certain status.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeQueriesInput}.
    #
    # @option params [String] :log_group_name
    #   <p>Limits the returned queries to only those for the specified log group.</p>
    #
    # @option params [String] :status
    #   <p>Limits the returned queries to only those that have the specified status. Valid values are <code>Cancelled</code>,
    #         <code>Complete</code>, <code>Failed</code>, <code>Running</code>, and <code>Scheduled</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Limits the number of returned queries to the specified number.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    # @return [Types::DescribeQueriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_queries(
    #     log_group_name: 'logGroupName',
    #     status: 'Scheduled', # accepts ["Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeQueriesOutput
    #   resp.data.queries #=> Array<QueryInfo>
    #   resp.data.queries[0] #=> Types::QueryInfo
    #   resp.data.queries[0].query_id #=> String
    #   resp.data.queries[0].query_string #=> String
    #   resp.data.queries[0].status #=> String, one of ["Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"]
    #   resp.data.queries[0].create_time #=> Integer
    #   resp.data.queries[0].log_group_name #=> String
    #   resp.data.next_token #=> String
    #
    def describe_queries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeQueriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeQueriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeQueries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeQueries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeQueries,
        stubs: @stubs,
        params_class: Params::DescribeQueriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_queries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns a paginated list of your saved CloudWatch Logs Insights query definitions.</p>
    #          <p>You can use the <code>queryDefinitionNamePrefix</code> parameter to limit the results to only the
    #       query definitions that have names that start with a certain string.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeQueryDefinitionsInput}.
    #
    # @option params [String] :query_definition_name_prefix
    #   <p>Use this parameter to filter your results to only the query definitions that have names that start with the prefix you specify.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Limits the number of returned query definitions to the specified number.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    # @return [Types::DescribeQueryDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_query_definitions(
    #     query_definition_name_prefix: 'queryDefinitionNamePrefix',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeQueryDefinitionsOutput
    #   resp.data.query_definitions #=> Array<QueryDefinition>
    #   resp.data.query_definitions[0] #=> Types::QueryDefinition
    #   resp.data.query_definitions[0].query_definition_id #=> String
    #   resp.data.query_definitions[0].name #=> String
    #   resp.data.query_definitions[0].query_string #=> String
    #   resp.data.query_definitions[0].last_modified #=> Integer
    #   resp.data.query_definitions[0].log_group_names #=> Array<String>
    #   resp.data.query_definitions[0].log_group_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_query_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeQueryDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeQueryDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeQueryDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeQueryDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeQueryDefinitions,
        stubs: @stubs,
        params_class: Params::DescribeQueryDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_query_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resource policies in this account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResourcePoliciesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. The token expires after 24 hours.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of resource policies to be displayed with one call of this API.</p>
    #
    # @return [Types::DescribeResourcePoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_policies(
    #     next_token: 'nextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResourcePoliciesOutput
    #   resp.data.resource_policies #=> Array<ResourcePolicy>
    #   resp.data.resource_policies[0] #=> Types::ResourcePolicy
    #   resp.data.resource_policies[0].policy_name #=> String
    #   resp.data.resource_policies[0].policy_document #=> String
    #   resp.data.resource_policies[0].last_updated_time #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_resource_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResourcePoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResourcePoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResourcePolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeResourcePolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResourcePolicies,
        stubs: @stubs,
        params_class: Params::DescribeResourcePoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resource_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix.
    #       The results are ASCII-sorted by filter name.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSubscriptionFiltersInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :filter_name_prefix
    #   <p>The prefix to match. If you don't specify a value, no prefix filter is applied.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
    #
    # @return [Types::DescribeSubscriptionFiltersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subscription_filters(
    #     log_group_name: 'logGroupName', # required
    #     filter_name_prefix: 'filterNamePrefix',
    #     next_token: 'nextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSubscriptionFiltersOutput
    #   resp.data.subscription_filters #=> Array<SubscriptionFilter>
    #   resp.data.subscription_filters[0] #=> Types::SubscriptionFilter
    #   resp.data.subscription_filters[0].filter_name #=> String
    #   resp.data.subscription_filters[0].log_group_name #=> String
    #   resp.data.subscription_filters[0].filter_pattern #=> String
    #   resp.data.subscription_filters[0].destination_arn #=> String
    #   resp.data.subscription_filters[0].role_arn #=> String
    #   resp.data.subscription_filters[0].distribution #=> String, one of ["Random", "ByLogStream"]
    #   resp.data.subscription_filters[0].creation_time #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_subscription_filters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSubscriptionFiltersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSubscriptionFiltersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSubscriptionFilters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeSubscriptionFilters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSubscriptionFilters,
        stubs: @stubs,
        params_class: Params::DescribeSubscriptionFiltersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_subscription_filters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the associated Key Management Service customer master key (CMK) from the specified log group.</p>
    #          <p>After the KMS CMK is disassociated from the log group, CloudWatch Logs stops encrypting newly ingested data for the log group.
    #       All previously ingested data remains encrypted, and CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested.</p>
    #          <p>Note that it can take up to 5 minutes for this operation to take effect.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateKmsKeyInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @return [Types::DisassociateKmsKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_kms_key(
    #     log_group_name: 'logGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateKmsKeyOutput
    #
    def disassociate_kms_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateKmsKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateKmsKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateKmsKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DisassociateKmsKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateKmsKey,
        stubs: @stubs,
        params_class: Params::DisassociateKmsKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_kms_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists log events from the specified log group. You can list all the log events or filter the results
    #       using a filter pattern, a time range, and the name of the log stream.</p>
    #          <p>By default, this operation returns as many log events as can fit in 1 MB (up to 10,000
    #       log events) or all the events found within the time range that you specify. If the results
    #       include a token, then there are more log events available, and you can get additional results
    #       by specifying the token in a subsequent call. This operation can return empty results
    #     while there are more log events available through the token.</p>
    #          <p>The returned log events are sorted by event timestamp, the timestamp when the event was ingested
    #     by CloudWatch Logs, and the ID of the <code>PutLogEvents</code> request.</p>
    #
    # @param [Hash] params
    #   See {Types::FilterLogEventsInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group to search.</p>
    #
    # @option params [Array<String>] :log_stream_names
    #   <p>Filters the results to only logs from the log streams in this list.</p>
    #            <p>If you specify a value for both <code>logStreamNamePrefix</code> and <code>logStreamNames</code>, the action
    #         returns an <code>InvalidParameterException</code> error.</p>
    #
    # @option params [String] :log_stream_name_prefix
    #   <p>Filters the results to include only events from log streams that have names starting with this prefix.</p>
    #            <p>If you specify a value for both <code>logStreamNamePrefix</code> and <code>logStreamNames</code>, but the value for
    #         <code>logStreamNamePrefix</code> does not match any log stream names specified in <code>logStreamNames</code>, the action
    #       returns an <code>InvalidParameterException</code> error.</p>
    #
    # @option params [Integer] :start_time
    #   <p>The start of the time range, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC. Events with a timestamp before this time are not returned.</p>
    #
    # @option params [Integer] :end_time
    #   <p>The end of the time range, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC. Events with a timestamp later than this time are not returned.</p>
    #
    # @option params [String] :filter_pattern
    #   <p>The filter pattern to use. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html">Filter and Pattern Syntax</a>.</p>
    #            <p>If not provided, all the events are matched.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of events to return. (You received this token from a previous call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of events to return. The default is 10,000 events.</p>
    #
    # @option params [Boolean] :interleaved
    #   <p>If the value is true, the operation makes a best effort to provide responses that
    #         contain events from multiple log streams within the log group, interleaved in a single
    #         response. If the value is false, all the matched log events in the first log stream are
    #         searched first, then those in the next log stream, and so on. The default is false.</p>
    #            <p>
    #               <b>Important:</b> Starting on June 17, 2019, this parameter
    #         is ignored and the value is assumed to be true. The response from this operation always
    #         interleaves events from multiple log streams within a log group.</p>
    #
    # @return [Types::FilterLogEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.filter_log_events(
    #     log_group_name: 'logGroupName', # required
    #     log_stream_names: [
    #       'member'
    #     ],
    #     log_stream_name_prefix: 'logStreamNamePrefix',
    #     start_time: 1,
    #     end_time: 1,
    #     filter_pattern: 'filterPattern',
    #     next_token: 'nextToken',
    #     limit: 1,
    #     interleaved: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::FilterLogEventsOutput
    #   resp.data.events #=> Array<FilteredLogEvent>
    #   resp.data.events[0] #=> Types::FilteredLogEvent
    #   resp.data.events[0].log_stream_name #=> String
    #   resp.data.events[0].timestamp #=> Integer
    #   resp.data.events[0].message #=> String
    #   resp.data.events[0].ingestion_time #=> Integer
    #   resp.data.events[0].event_id #=> String
    #   resp.data.searched_log_streams #=> Array<SearchedLogStream>
    #   resp.data.searched_log_streams[0] #=> Types::SearchedLogStream
    #   resp.data.searched_log_streams[0].log_stream_name #=> String
    #   resp.data.searched_log_streams[0].searched_completely #=> Boolean
    #   resp.data.next_token #=> String
    #
    def filter_log_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FilterLogEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::FilterLogEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::FilterLogEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::FilterLogEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::FilterLogEvents,
        stubs: @stubs,
        params_class: Params::FilterLogEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :filter_log_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists log events from the specified log stream. You can list all of the log events or
    #       filter using a time range.</p>
    #
    #          <p>By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events).
    #       You can get additional log events by specifying one of the tokens in a subsequent call.
    #       This operation can return empty results while there are more log events available through the token.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLogEventsInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :log_stream_name
    #   <p>The name of the log stream.</p>
    #
    # @option params [Integer] :start_time
    #   <p>The start of the time range, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC. Events with a timestamp equal to this time or later than this time are included.
    #         Events with a timestamp earlier than this time are not included.</p>
    #
    # @option params [Integer] :end_time
    #   <p>The end of the time range, expressed as the number of milliseconds after Jan 1, 1970
    #         00:00:00 UTC. Events with a timestamp equal to or later than this time are not
    #         included.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of log events returned. If you don't specify a value, the maximum is
    #         as many log events as can fit in a response size of 1 MB, up to 10,000 log events.</p>
    #
    # @option params [Boolean] :start_from_head
    #   <p>If the value is true, the earliest log events are returned first.
    #         If the value is false, the latest log events are returned first.
    #         The default value is false.</p>
    #            <p>If you are using a previous <code>nextForwardToken</code> value as the <code>nextToken</code> in this operation,
    #         you must specify <code>true</code> for <code>startFromHead</code>.</p>
    #
    # @return [Types::GetLogEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_events(
    #     log_group_name: 'logGroupName', # required
    #     log_stream_name: 'logStreamName', # required
    #     start_time: 1,
    #     end_time: 1,
    #     next_token: 'nextToken',
    #     limit: 1,
    #     start_from_head: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLogEventsOutput
    #   resp.data.events #=> Array<OutputLogEvent>
    #   resp.data.events[0] #=> Types::OutputLogEvent
    #   resp.data.events[0].timestamp #=> Integer
    #   resp.data.events[0].message #=> String
    #   resp.data.events[0].ingestion_time #=> Integer
    #   resp.data.next_forward_token #=> String
    #   resp.data.next_backward_token #=> String
    #
    def get_log_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLogEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLogEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLogEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetLogEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLogEvents,
        stubs: @stubs,
        params_class: Params::GetLogEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_log_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the fields that are included in log events in the specified log group, along with the percentage of log events
    #     that contain each field. The search is limited to a time period that you specify.</p>
    #          <p>In the results, fields that start with @ are fields generated by CloudWatch Logs. For
    #       example, <code>@timestamp</code> is the timestamp of each log event. For more information about the fields that are
    #       generated by CloudWatch logs, see
    #       <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html">Supported Logs and Discovered Fields</a>.</p>
    #          <p>The response results are sorted by the frequency percentage, starting
    #     with the highest percentage.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLogGroupFieldsInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group to search.</p>
    #
    # @option params [Integer] :time
    #   <p>The time to set as the center of the query. If you specify <code>time</code>, the 15 minutes
    #          before this time are queries. If you omit <code>time</code> the 8
    #         minutes before and 8 minutes after this time are searched.</p>
    #            <p>The <code>time</code> value is specified as epoch time, the number of seconds since
    #         January 1, 1970, 00:00:00 UTC.</p>
    #
    # @return [Types::GetLogGroupFieldsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_group_fields(
    #     log_group_name: 'logGroupName', # required
    #     time: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLogGroupFieldsOutput
    #   resp.data.log_group_fields #=> Array<LogGroupField>
    #   resp.data.log_group_fields[0] #=> Types::LogGroupField
    #   resp.data.log_group_fields[0].name #=> String
    #   resp.data.log_group_fields[0].percent #=> Integer
    #
    def get_log_group_fields(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLogGroupFieldsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLogGroupFieldsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLogGroupFields
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::LimitExceededException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetLogGroupFields
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLogGroupFields,
        stubs: @stubs,
        params_class: Params::GetLogGroupFieldsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_log_group_fields
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all of the fields and values of a single log event. All fields are retrieved,
    #       even if the original query that produced the <code>logRecordPointer</code> retrieved only a
    #       subset of fields. Fields are returned as field name/field value pairs.</p>
    #          <p>The full unparsed log event is returned within <code>@message</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLogRecordInput}.
    #
    # @option params [String] :log_record_pointer
    #   <p>The pointer corresponding to the log event record you want to retrieve. You get this from
    #         the response of a <code>GetQueryResults</code> operation. In that response, the value of the
    #           <code>@ptr</code> field for a log event is the value to use as <code>logRecordPointer</code>
    #         to retrieve that complete log event record.</p>
    #
    # @return [Types::GetLogRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_record(
    #     log_record_pointer: 'logRecordPointer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLogRecordOutput
    #   resp.data.log_record #=> Hash<String, String>
    #   resp.data.log_record['key'] #=> String
    #
    def get_log_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLogRecordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLogRecordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLogRecord
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::LimitExceededException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetLogRecord
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLogRecord,
        stubs: @stubs,
        params_class: Params::GetLogRecordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_log_record
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the results from the specified query.</p>
    #          <p>Only the fields requested in the query are returned, along with a <code>@ptr</code>
    #       field, which is the identifier for the log record. You can use the value of <code>@ptr</code>
    #       in a <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_GetLogRecord.html">GetLogRecord</a>
    #       operation to get the full log record.</p>
    #          <p>
    #             <code>GetQueryResults</code>
    #       does not start a query execution. To run a query, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html">StartQuery</a>.</p>
    #          <p>If the value of the <code>Status</code> field in the output is <code>Running</code>, this operation
    #       returns only partial results. If you see a value of <code>Scheduled</code> or <code>Running</code> for the status,
    #       you can retry the operation later to see the final results. </p>
    #
    # @param [Hash] params
    #   See {Types::GetQueryResultsInput}.
    #
    # @option params [String] :query_id
    #   <p>The ID number of the query.</p>
    #
    # @return [Types::GetQueryResultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results(
    #     query_id: 'queryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQueryResultsOutput
    #   resp.data.results #=> Array<Array<ResultField>>
    #   resp.data.results[0] #=> Array<ResultField>
    #   resp.data.results[0][0] #=> Types::ResultField
    #   resp.data.results[0][0].field #=> String
    #   resp.data.results[0][0].value #=> String
    #   resp.data.statistics #=> Types::QueryStatistics
    #   resp.data.statistics.records_matched #=> Float
    #   resp.data.statistics.records_scanned #=> Float
    #   resp.data.statistics.bytes_scanned #=> Float
    #   resp.data.status #=> String, one of ["Scheduled", "Running", "Complete", "Failed", "Cancelled", "Timeout", "Unknown"]
    #
    def get_query_results(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQueryResultsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQueryResultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQueryResults
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetQueryResults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQueryResults,
        stubs: @stubs,
        params_class: Params::GetQueryResultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_query_results
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified log group.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsLogGroupInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @return [Types::ListTagsLogGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_log_group(
    #     log_group_name: 'logGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsLogGroupOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_log_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsLogGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsLogGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsLogGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListTagsLogGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsLogGroup,
        stubs: @stubs,
        params_class: Params::ListTagsLogGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_log_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a destination. This operation is used only to create destinations for cross-account subscriptions.</p>
    #          <p>A destination encapsulates a physical resource (such
    #       as an Amazon Kinesis stream) and enables you to subscribe to a real-time stream of log events
    #       for a different account, ingested using <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html">PutLogEvents</a>.</p>
    #          <p>Through an access policy, a destination controls what is written to it.
    #       By default, <code>PutDestination</code> does not set any access policy with the destination,
    #       which means a cross-account user cannot call <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutSubscriptionFilter.html">PutSubscriptionFilter</a> against
    #       this destination. To enable this, the destination owner must call <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html">PutDestinationPolicy</a> after <code>PutDestination</code>.</p>
    #          <p>To perform a <code>PutDestination</code> operation, you must also have the
    #     <code>iam:PassRole</code> permission.</p>
    #
    # @param [Hash] params
    #   See {Types::PutDestinationInput}.
    #
    # @option params [String] :destination_name
    #   <p>A name for the destination.</p>
    #
    # @option params [String] :target_arn
    #   <p>The ARN of an Amazon Kinesis stream to which to deliver matching log events.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of an IAM role that grants CloudWatch Logs permissions to call the Amazon
    #         Kinesis <code>PutRecord</code> operation on the destination stream.</p>
    #
    # @return [Types::PutDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_destination(
    #     destination_name: 'destinationName', # required
    #     target_arn: 'targetArn', # required
    #     role_arn: 'roleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDestinationOutput
    #   resp.data.destination #=> Types::Destination
    #   resp.data.destination.destination_name #=> String
    #   resp.data.destination.target_arn #=> String
    #   resp.data.destination.role_arn #=> String
    #   resp.data.destination.access_policy #=> String
    #   resp.data.destination.arn #=> String
    #   resp.data.destination.creation_time #=> Integer
    #
    def put_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDestination,
        stubs: @stubs,
        params_class: Params::PutDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates an access policy associated with an existing
    #       destination. An access policy is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html">IAM policy document</a> that is used
    #       to authorize claims to register a subscription filter against a given destination.</p>
    #          <p>If multiple Amazon Web Services accounts are sending logs to this destination, each sender account must be
    #     listed separately in the policy. The policy does not support specifying <code>*</code>
    #     as the Principal or the use of the <code>aws:PrincipalOrgId</code> global key.</p>
    #
    # @param [Hash] params
    #   See {Types::PutDestinationPolicyInput}.
    #
    # @option params [String] :destination_name
    #   <p>A name for an existing destination.</p>
    #
    # @option params [String] :access_policy
    #   <p>An IAM policy document that authorizes cross-account users to deliver their log events
    #         to the associated destination. This can be up to 5120 bytes.</p>
    #
    # @option params [Boolean] :force_update
    #   <p>Specify true if you are updating an existing destination policy to grant permission to
    #       an organization ID instead of granting permission to individual AWS accounts. Before
    #       you update a destination policy this way, you must first update the subscription
    #       filters in the accounts that send logs to this destination. If you do not, the subscription
    #       filters might stop working. By specifying <code>true</code>
    #         for <code>forceUpdate</code>, you are affirming that you have already updated the subscription
    #         filters.
    #       For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Cross-Account-Log_Subscription-Update.html">
    #         Updating an existing cross-account subscription</a>
    #            </p>
    #            <p>If you omit this parameter, the default of <code>false</code> is used.</p>
    #
    # @return [Types::PutDestinationPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_destination_policy(
    #     destination_name: 'destinationName', # required
    #     access_policy: 'accessPolicy', # required
    #     force_update: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDestinationPolicyOutput
    #
    def put_destination_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDestinationPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDestinationPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDestinationPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutDestinationPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDestinationPolicy,
        stubs: @stubs,
        params_class: Params::PutDestinationPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_destination_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads a batch of log events to the specified log stream.</p>
    #          <p>You must include the sequence token obtained from the response of the previous call. An
    #       upload in a newly created log stream does not require a sequence token. You can also get the
    #       sequence token in the <code>expectedSequenceToken</code> field from
    #         <code>InvalidSequenceTokenException</code>. If you call <code>PutLogEvents</code> twice
    #       within a narrow time period using the same value for <code>sequenceToken</code>, both calls
    #       might be successful or one might be rejected.</p>
    #          <p>The batch of events must satisfy the following constraints:</p>
    #          <ul>
    #             <li>
    #                <p>The maximum batch size is 1,048,576 bytes. This size is calculated as the sum of
    #           all event messages in UTF-8, plus 26 bytes for each log event.</p>
    #             </li>
    #             <li>
    #                <p>None of the log events in the batch can be more than 2 hours in the future.</p>
    #             </li>
    #             <li>
    #                <p>None of the log events in the batch can be older than 14 days or older than the retention
    #           period of the log group.</p>
    #             </li>
    #             <li>
    #                <p>The log events in the batch must be in chronological order by their timestamp. The
    #           timestamp is the time the event occurred, expressed as the number of milliseconds after
    #           Jan 1, 1970 00:00:00 UTC. (In Amazon Web Services Tools for PowerShell and the Amazon Web Services SDK for .NET, the
    #           timestamp is specified in .NET format: yyyy-mm-ddThh:mm:ss. For example,
    #           2017-09-15T13:45:30.) </p>
    #             </li>
    #             <li>
    #                <p>A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.</p>
    #             </li>
    #             <li>
    #                <p>The maximum number of log events in a batch is 10,000.</p>
    #             </li>
    #             <li>
    #                <p>There is a quota of 5 requests per second per log stream. Additional requests are throttled. This quota can't be changed.</p>
    #             </li>
    #          </ul>
    #          <p>If a call to <code>PutLogEvents</code> returns "UnrecognizedClientException" the most likely cause is an invalid Amazon Web Services access key ID or secret key. </p>
    #
    # @param [Hash] params
    #   See {Types::PutLogEventsInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :log_stream_name
    #   <p>The name of the log stream.</p>
    #
    # @option params [Array<InputLogEvent>] :log_events
    #   <p>The log events.</p>
    #
    # @option params [String] :sequence_token
    #   <p>The sequence token obtained from the response of the previous <code>PutLogEvents</code>
    #         call. An upload in a newly created log stream does not require a sequence token. You can also
    #         get the sequence token using <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeLogStreams.html">DescribeLogStreams</a>. If you call <code>PutLogEvents</code> twice within a narrow
    #         time period using the same value for <code>sequenceToken</code>, both calls might be
    #         successful or one might be rejected.</p>
    #
    # @return [Types::PutLogEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_log_events(
    #     log_group_name: 'logGroupName', # required
    #     log_stream_name: 'logStreamName', # required
    #     log_events: [
    #       {
    #         timestamp: 1, # required
    #         message: 'message' # required
    #       }
    #     ], # required
    #     sequence_token: 'sequenceToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLogEventsOutput
    #   resp.data.next_sequence_token #=> String
    #   resp.data.rejected_log_events_info #=> Types::RejectedLogEventsInfo
    #   resp.data.rejected_log_events_info.too_new_log_event_start_index #=> Integer
    #   resp.data.rejected_log_events_info.too_old_log_event_end_index #=> Integer
    #   resp.data.rejected_log_events_info.expired_log_event_end_index #=> Integer
    #
    def put_log_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLogEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLogEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLogEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException, Errors::UnrecognizedClientException, Errors::InvalidSequenceTokenException, Errors::DataAlreadyAcceptedException]),
        data_parser: Parsers::PutLogEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLogEvents,
        stubs: @stubs,
        params_class: Params::PutLogEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_log_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a metric filter and associates it with the specified log group.
    #       Metric filters allow you to configure rules to extract metric data from log events ingested
    #       through <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html">PutLogEvents</a>.</p>
    #          <p>The maximum number of metric filters that can be associated with a log group is
    #       100.</p>
    #          <p>When you create a metric filter, you can also optionally assign a unit and dimensions
    #     to the metric that is created.</p>
    #          <important>
    #             <p>Metrics extracted from log events are charged as custom metrics.
    #       To prevent unexpected high charges, do not specify high-cardinality fields such as
    #       <code>IPAddress</code> or <code>requestID</code> as dimensions. Each different value
    #       found for
    #       a dimension is treated as a separate metric and accrues charges as a separate custom metric.
    #     </p>
    #             <p>To help prevent accidental high charges, Amazon disables a metric filter
    #         if it generates 1000 different name/value pairs for the dimensions that you
    #         have specified within a certain amount of time.</p>
    #             <p>You can also set up a billing alarm to alert you if your charges are higher than
    #         expected. For more information,
    #         see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html">
    #           Creating a Billing Alarm to Monitor Your Estimated Amazon Web Services Charges</a>.
    #       </p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::PutMetricFilterInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :filter_name
    #   <p>A name for the metric filter.</p>
    #
    # @option params [String] :filter_pattern
    #   <p>A filter pattern for extracting metric data out of ingested log events.</p>
    #
    # @option params [Array<MetricTransformation>] :metric_transformations
    #   <p>A collection of information that defines how metric data gets emitted.</p>
    #
    # @return [Types::PutMetricFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metric_filter(
    #     log_group_name: 'logGroupName', # required
    #     filter_name: 'filterName', # required
    #     filter_pattern: 'filterPattern', # required
    #     metric_transformations: [
    #       {
    #         metric_name: 'metricName', # required
    #         metric_namespace: 'metricNamespace', # required
    #         metric_value: 'metricValue', # required
    #         default_value: 1.0,
    #         dimensions: {
    #           'key' => 'value'
    #         },
    #         unit: 'Seconds' # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutMetricFilterOutput
    #
    def put_metric_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMetricFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMetricFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMetricFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::LimitExceededException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutMetricFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutMetricFilter,
        stubs: @stubs,
        params_class: Params::PutMetricFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_metric_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a query definition for CloudWatch Logs Insights. For
    #       more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html">Analyzing Log Data with CloudWatch Logs Insights</a>.</p>
    #
    #          <p>To update a query definition, specify its
    #         <code>queryDefinitionId</code> in your request. The values of <code>name</code>, <code>queryString</code>,
    #       and <code>logGroupNames</code> are changed to the values that you specify in your update
    #       operation. No current values are retained from the current query definition. For example, if
    #       you update a current query definition that includes log groups, and you don't specify the
    #         <code>logGroupNames</code> parameter in your update operation, the query definition changes
    #       to contain no log groups.</p>
    #          <p>You must have the <code>logs:PutQueryDefinition</code> permission to be able to perform
    #     this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::PutQueryDefinitionInput}.
    #
    # @option params [String] :name
    #   <p>A name for the query definition. If you are saving a lot of query definitions, we
    #         recommend that you name them so that you can easily find the ones you want by using the first
    #         part of the name as a filter in the <code>queryDefinitionNamePrefix</code> parameter of <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html">DescribeQueryDefinitions</a>.</p>
    #
    # @option params [String] :query_definition_id
    #   <p>If you are updating a query definition, use this parameter to specify the ID of the query
    #         definition that you want to update. You can use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html">DescribeQueryDefinitions</a> to retrieve the IDs of your saved query
    #         definitions.</p>
    #            <p>If you are creating a query definition, do not specify this parameter. CloudWatch
    #         generates a unique ID for the new query definition and include it in the response to this
    #         operation.</p>
    #
    # @option params [Array<String>] :log_group_names
    #   <p>Use this parameter to include specific log groups as part of your query definition.</p>
    #            <p>If you are updating a query definition and you omit this parameter, then the updated
    #         definition will contain no log groups.</p>
    #
    # @option params [String] :query_string
    #   <p>The query string to use for this definition.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query Syntax</a>.</p>
    #
    # @return [Types::PutQueryDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_query_definition(
    #     name: 'name', # required
    #     query_definition_id: 'queryDefinitionId',
    #     log_group_names: [
    #       'member'
    #     ],
    #     query_string: 'queryString' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutQueryDefinitionOutput
    #   resp.data.query_definition_id #=> String
    #
    def put_query_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutQueryDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutQueryDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutQueryDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::LimitExceededException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutQueryDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutQueryDefinition,
        stubs: @stubs,
        params_class: Params::PutQueryDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_query_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a resource policy allowing other Amazon Web Services services to put log events to
    #       this account, such as Amazon Route 53. An account can have up to 10 resource policies per Amazon Web Services
    #       Region.</p>
    #
    # @param [Hash] params
    #   See {Types::PutResourcePolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>Name of the new policy. This parameter is required.</p>
    #
    # @option params [String] :policy_document
    #   <p>Details of the new policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string.
    #       This parameter is required.</p>
    #            <p>The following example creates a resource policy enabling the Route 53 service to put
    #         DNS query logs in to the specified log group. Replace <code>"logArn"</code> with the ARN of
    #         your CloudWatch Logs resource, such as a log group or log stream.</p>
    #            <p>CloudWatch Logs also supports <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourcearn">aws:SourceArn</a>
    #         and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceaccount">aws:SourceAccount</a>
    #   condition context keys.</p>
    #            <p>In the example resource policy, you would replace the value of <code>SourceArn</code> with the resource making the
    #         call from Route 53 to CloudWatch Logs and replace the value of <code>SourceAccount</code> with
    #         the Amazon Web Services account ID making that call.</p>
    #            <p></p>
    #            <p>
    #               <code>{
    #       "Version": "2012-10-17",
    #       "Statement": [
    #           {
    #              "Sid": "Route53LogsToCloudWatchLogs",
    #              "Effect": "Allow",
    #              "Principal": {
    #                  "Service": [
    #                      "route53.amazonaws.com"
    #                   ]
    #               },
    #              "Action": "logs:PutLogEvents",
    #              "Resource": "logArn",
    #              "Condition": {
    #                  "ArnLike": {
    #                      "aws:SourceArn": "myRoute53ResourceArn"
    #                   },
    #                  "StringEquals": {
    #                      "aws:SourceAccount": "myAwsAccountId"
    #                  }
    #               }
    #           }
    #         ]
    #   }</code>
    #
    #            </p>
    #
    # @return [Types::PutResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy(
    #     policy_name: 'policyName',
    #     policy_document: 'policyDocument'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourcePolicyOutput
    #   resp.data.resource_policy #=> Types::ResourcePolicy
    #   resp.data.resource_policy.policy_name #=> String
    #   resp.data.resource_policy.policy_document #=> String
    #   resp.data.resource_policy.last_updated_time #=> Integer
    #
    def put_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::LimitExceededException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResourcePolicy,
        stubs: @stubs,
        params_class: Params::PutResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the retention of the specified log group. A retention policy allows you to
    #       configure the number of days for which to retain log events in the specified log
    #       group.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRetentionPolicyInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [Integer] :retention_in_days
    #   <p>The number of days to retain the log events in the specified log group.
    #         Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 2192, 2557, 2922, 3288, and 3653.</p>
    #            <p>To set a log group to never have log events expire, use
    #       <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html">DeleteRetentionPolicy</a>.
    #     </p>
    #
    # @return [Types::PutRetentionPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_retention_policy(
    #     log_group_name: 'logGroupName', # required
    #     retention_in_days: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRetentionPolicyOutput
    #
    def put_retention_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRetentionPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRetentionPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRetentionPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutRetentionPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRetentionPolicy,
        stubs: @stubs,
        params_class: Params::PutRetentionPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_retention_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a subscription filter and associates it with the specified log
    #       group. Subscription filters allow you to subscribe to a real-time stream of log events
    #       ingested through <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html">PutLogEvents</a> and have them delivered to a specific
    #       destination. When log events are sent to the
    #       receiving service, they are Base64 encoded
    #       and compressed with the gzip format.</p>
    #          <p>The following destinations are supported for subscription filters:</p>
    #          <ul>
    #             <li>
    #                <p>An Amazon Kinesis stream belonging to the same account as the subscription filter,
    #           for same-account delivery.</p>
    #             </li>
    #             <li>
    #                <p>A logical destination that belongs to a different account, for cross-account delivery.</p>
    #             </li>
    #             <li>
    #                <p>An Amazon Kinesis Firehose delivery stream that belongs to the same account as the
    #           subscription filter, for same-account delivery.</p>
    #             </li>
    #             <li>
    #                <p>An Lambda function that belongs to the same account as the subscription filter,
    #           for same-account delivery.</p>
    #             </li>
    #          </ul>
    #          <p>Each log group can have up to two subscription filters associated with it. If you are
    #       updating an existing filter, you must specify the correct name in <code>filterName</code>.
    #       </p>
    #          <p>To perform a <code>PutSubscriptionFilter</code> operation, you must also have the
    #       <code>iam:PassRole</code> permission.</p>
    #
    # @param [Hash] params
    #   See {Types::PutSubscriptionFilterInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [String] :filter_name
    #   <p>A name for the subscription filter. If you are updating an existing filter, you must
    #         specify the correct name in <code>filterName</code>. To find the name of the filter currently
    #         associated with a log group, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html">DescribeSubscriptionFilters</a>.</p>
    #
    # @option params [String] :filter_pattern
    #   <p>A filter pattern for subscribing to a filtered stream of log events.</p>
    #
    # @option params [String] :destination_arn
    #   <p>The ARN of the destination to deliver matching log events to. Currently, the supported
    #         destinations are:</p>
    #            <ul>
    #               <li>
    #                  <p>An Amazon Kinesis stream belonging to the same account as the subscription filter,
    #             for same-account delivery.</p>
    #               </li>
    #               <li>
    #                  <p>A logical destination (specified using an ARN) belonging to a different account,
    #             for cross-account delivery.</p>
    #                  <p>If you are setting up a cross-account subscription, the destination must have an
    #           IAM policy associated with it that allows the sender to send logs to the destination.
    #           For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html">PutDestinationPolicy</a>.</p>
    #               </li>
    #               <li>
    #                  <p>An Amazon Kinesis Firehose delivery stream belonging to the same account as the
    #             subscription filter, for same-account delivery.</p>
    #               </li>
    #               <li>
    #                  <p>A Lambda function belonging to the same account as the subscription filter,
    #             for same-account delivery.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log
    #         events to the destination stream. You don't need to provide the ARN when you are working with
    #         a logical destination for cross-account delivery.</p>
    #
    # @option params [String] :distribution
    #   <p>The method used to distribute log data to the destination. By default, log data is
    #         grouped by log stream, but the grouping can be set to random for a more even distribution.
    #         This property is only applicable when the destination is an Amazon Kinesis stream. </p>
    #
    # @return [Types::PutSubscriptionFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_subscription_filter(
    #     log_group_name: 'logGroupName', # required
    #     filter_name: 'filterName', # required
    #     filter_pattern: 'filterPattern', # required
    #     destination_arn: 'destinationArn', # required
    #     role_arn: 'roleArn',
    #     distribution: 'Random' # accepts ["Random", "ByLogStream"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSubscriptionFilterOutput
    #
    def put_subscription_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutSubscriptionFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutSubscriptionFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutSubscriptionFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::LimitExceededException, Errors::OperationAbortedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutSubscriptionFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutSubscriptionFilter,
        stubs: @stubs,
        params_class: Params::PutSubscriptionFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_subscription_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Schedules a query of a log group using CloudWatch Logs Insights. You specify the log group
    #       and time range to query and the query string to use.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query Syntax</a>.</p>
    #
    #          <p>Queries time out after 15 minutes of execution. If your queries are timing out, reduce the
    #       time range being searched or partition your query into a number of queries.</p>
    #
    # @param [Hash] params
    #   See {Types::StartQueryInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The log group on which to perform the query.</p>
    #            <p>A <code>StartQuery</code> operation must include a <code>logGroupNames</code> or a <code>logGroupName</code> parameter, but
    #         not both.</p>
    #
    # @option params [Array<String>] :log_group_names
    #   <p>The list of log groups to be queried. You can include up to 20 log groups.</p>
    #            <p>A <code>StartQuery</code> operation must include a <code>logGroupNames</code> or a <code>logGroupName</code> parameter, but
    #       not both.</p>
    #
    # @option params [Integer] :start_time
    #   <p>The beginning of the time range to query. The range is inclusive, so the specified
    #         start time is included in the query. Specified as epoch time, the
    #         number of seconds since January 1, 1970, 00:00:00 UTC.</p>
    #
    # @option params [Integer] :end_time
    #   <p>The end of the time range to query. The range is inclusive, so the specified
    #         end time is included in the query. Specified as epoch
    #         time, the number of seconds since January 1, 1970, 00:00:00 UTC.</p>
    #
    # @option params [String] :query_string
    #   <p>The query string to use.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query Syntax</a>.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of log events to return in the query. If the query string uses the <code>fields</code> command,
    #       only the specified fields and their values are returned. The default is 1000.</p>
    #
    # @return [Types::StartQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query(
    #     log_group_name: 'logGroupName',
    #     log_group_names: [
    #       'member'
    #     ],
    #     start_time: 1, # required
    #     end_time: 1, # required
    #     query_string: 'queryString', # required
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartQueryOutput
    #   resp.data.query_id #=> String
    #
    def start_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MalformedQueryException, Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::LimitExceededException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::StartQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartQuery,
        stubs: @stubs,
        params_class: Params::StartQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a CloudWatch Logs Insights query that is in progress. If the query has already ended, the operation
    #     returns an error indicating that the specified query is not running.</p>
    #
    # @param [Hash] params
    #   See {Types::StopQueryInput}.
    #
    # @option params [String] :query_id
    #   <p>The ID number of the query to stop. To find this ID number, use
    #           <code>DescribeQueries</code>.</p>
    #
    # @return [Types::StopQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_query(
    #     query_id: 'queryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopQueryOutput
    #   resp.data.success #=> Boolean
    #
    def stop_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::StopQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopQuery,
        stubs: @stubs,
        params_class: Params::StopQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates the specified tags for the specified log group.</p>
    #          <p>To list the tags for a log group, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsLogGroup.html">ListTagsLogGroup</a>.
    #       To remove tags, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_UntagLogGroup.html">UntagLogGroup</a>.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html#log-group-tagging">Tag Log Groups in Amazon CloudWatch Logs</a>
    #       in the <i>Amazon CloudWatch Logs User Guide</i>.</p>
    #          <p>CloudWatch Logs doesn’t support IAM policies that prevent users from assigning specified tags to
    #       log groups using the <code>aws:Resource/<i>key-name</i>
    #             </code> or <code>aws:TagKeys</code> condition keys.
    #       For more information about using tags to control access, see
    #       <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services resources using tags</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagLogGroupInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs to use for the tags.</p>
    #
    # @return [Types::TagLogGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_log_group(
    #     log_group_name: 'logGroupName', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagLogGroupOutput
    #
    def tag_log_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagLogGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagLogGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagLogGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::TagLogGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagLogGroup,
        stubs: @stubs,
        params_class: Params::TagLogGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_log_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tests the filter pattern of a metric filter against a sample of log event messages. You
    #       can use this operation to validate the correctness of a metric filter pattern.</p>
    #
    # @param [Hash] params
    #   See {Types::TestMetricFilterInput}.
    #
    # @option params [String] :filter_pattern
    #   <p>A symbolic description of how CloudWatch Logs should interpret the data in each log
    #         event. For example, a log event can contain timestamps, IP addresses, strings, and so on. You
    #         use the filter pattern to specify what to look for in the log event message.</p>
    #
    # @option params [Array<String>] :log_event_messages
    #   <p>The log event messages to test.</p>
    #
    # @return [Types::TestMetricFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_metric_filter(
    #     filter_pattern: 'filterPattern', # required
    #     log_event_messages: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestMetricFilterOutput
    #   resp.data.matches #=> Array<MetricFilterMatchRecord>
    #   resp.data.matches[0] #=> Types::MetricFilterMatchRecord
    #   resp.data.matches[0].event_number #=> Integer
    #   resp.data.matches[0].event_message #=> String
    #   resp.data.matches[0].extracted_values #=> Hash<String, String>
    #   resp.data.matches[0].extracted_values['key'] #=> String
    #
    def test_metric_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestMetricFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestMetricFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestMetricFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::TestMetricFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestMetricFilter,
        stubs: @stubs,
        params_class: Params::TestMetricFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_metric_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the specified log group.</p>
    #          <p>To list the tags for a log group, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_ListTagsLogGroup.html">ListTagsLogGroup</a>.
    #       To add tags, use <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_TagLogGroup.html">TagLogGroup</a>.</p>
    #          <p>CloudWatch Logs doesn’t support IAM policies that prevent users from assigning specified tags to
    #       log groups using the <code>aws:Resource/<i>key-name</i>
    #             </code> or <code>aws:TagKeys</code> condition keys.
    #      </p>
    #
    # @param [Hash] params
    #   See {Types::UntagLogGroupInput}.
    #
    # @option params [String] :log_group_name
    #   <p>The name of the log group.</p>
    #
    # @option params [Array<String>] :tags
    #   <p>The tag keys. The corresponding tags are removed from the log group.</p>
    #
    # @return [Types::UntagLogGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_log_group(
    #     log_group_name: 'logGroupName', # required
    #     tags: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagLogGroupOutput
    #
    def untag_log_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagLogGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagLogGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagLogGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::UntagLogGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagLogGroup,
        stubs: @stubs,
        params_class: Params::UntagLogGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_log_group
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
