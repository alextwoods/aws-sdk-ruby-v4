# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Kinesis
  # An API client for Kinesis_20131202
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Kinesis Data Streams Service API Reference</fullname>
  #         <p>Amazon Kinesis Data Streams is a managed service that scales elastically for real-time
  #             processing of streaming big data.</p>
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
    def initialize(config = AWS::SDK::Kinesis::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds or updates tags for the specified Kinesis data stream. You can assign up to 50
    #             tags to a data stream.</p>
    #         <p>If tags have already been assigned to the stream, <code>AddTagsToStream</code>
    #             overwrites any existing tags that correspond to the specified tag keys.</p>
    #         <p>
    #             <a>AddTagsToStream</a> has a limit of five transactions per second per
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToStreamInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A set of up to 10 key-value pairs to use to create the tags.</p>
    #
    # @return [Types::AddTagsToStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_stream(
    #     stream_name: 'StreamName', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsToStreamOutput
    #
    def add_tags_to_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsToStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsToStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTagsToStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AddTagsToStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTagsToStream,
        stubs: @stubs,
        params_class: Params::AddTagsToStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags_to_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Kinesis data stream. A stream captures and transports data records that are
    #             continuously emitted from different data sources or <i>producers</i>.
    #             Scale-out within a stream is explicitly supported by means of shards, which are uniquely
    #             identified groups of data records in a stream.</p>
    #         <p>You specify and control the number of shards that a stream is composed of. Each shard
    #             can support reads up to five transactions per second, up to a maximum data read total of
    #             2 MiB per second. Each shard can support writes up to 1,000 records per second, up to a
    #             maximum data write total of 1 MiB per second. If the amount of data input increases or
    #             decreases, you can add or remove shards.</p>
    #         <p>The stream name identifies the stream. The name is scoped to the Amazon Web Services
    #             account used by the application. It is also scoped by Amazon Web Services Region. That
    #             is, two streams in two different accounts can have the same name, and two streams in the
    #             same account, but in two different Regions, can have the same name.</p>
    #         <p>
    #             <code>CreateStream</code> is an asynchronous operation. Upon receiving a
    #                 <code>CreateStream</code> request, Kinesis Data Streams immediately returns and sets
    #             the stream status to <code>CREATING</code>. After the stream is created, Kinesis Data
    #             Streams sets the stream status to <code>ACTIVE</code>. You should perform read and write
    #             operations only on an <code>ACTIVE</code> stream. </p>
    #         <p>You receive a <code>LimitExceededException</code> when making a
    #                 <code>CreateStream</code> request when you try to do one of the following:</p>
    #         <ul>
    #             <li>
    #
    #                 <p>Have more than five streams in the <code>CREATING</code> state at any point in
    #                     time.</p>
    #             </li>
    #             <li>
    #
    #                 <p>Create more shards than are authorized for your account.</p>
    #             </li>
    #          </ul>
    #         <p>For the default shard limit for an Amazon Web Services account, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Amazon
    #                 Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>. To increase this limit, <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact Amazon Web Services
    #                 Support</a>.</p>
    #         <p>You can use <a>DescribeStreamSummary</a> to check the stream status, which
    #             is returned in <code>StreamStatus</code>.</p>
    #         <p>
    #             <a>CreateStream</a> has a limit of five transactions per second per
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamInput}.
    #
    # @option params [String] :stream_name
    #   <p>A name to identify the stream. The stream name is scoped to the Amazon Web Services
    #               account used by the application that creates the stream. It is also scoped by Amazon Web Services Region. That is, two streams in two different Amazon Web Services accounts
    #               can have the same name. Two streams in the same Amazon Web Services account but in two
    #               different Regions can also have the same name.</p>
    #
    # @option params [Integer] :shard_count
    #   <p>The number of shards that the stream will use. The throughput of the stream is a
    #               function of the number of shards; more shards are required for greater provisioned
    #               throughput.</p>
    #
    # @option params [StreamModeDetails] :stream_mode_details
    #   <p> Indicates the capacity mode of the data stream. Currently, in Kinesis Data Streams,
    #               you can choose between an <b>on-demand</b> capacity mode and a
    #                   <b>provisioned</b> capacity mode for your data
    #               streams.</p>
    #
    # @return [Types::CreateStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream(
    #     stream_name: 'StreamName', # required
    #     shard_count: 1,
    #     stream_mode_details: {
    #       stream_mode: 'PROVISIONED' # required - accepts ["PROVISIONED", "ON_DEMAND"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStreamOutput
    #
    def create_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStream,
        stubs: @stubs,
        params_class: Params::CreateStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Decreases the Kinesis data stream's retention period, which is the length of time data
    #             records are accessible after they are added to the stream. The minimum value of a
    #             stream's retention period is 24 hours.</p>
    #         <p>This operation may result in lost data. For example, if the stream's retention period
    #             is 48 hours and is decreased to 24 hours, any data already in the stream that is older
    #             than 24 hours is inaccessible.</p>
    #
    # @param [Hash] params
    #   See {Types::DecreaseStreamRetentionPeriodInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream to modify.</p>
    #
    # @option params [Integer] :retention_period_hours
    #   <p>The new retention period of the stream, in hours. Must be less than the current
    #               retention period.</p>
    #
    # @return [Types::DecreaseStreamRetentionPeriodOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decrease_stream_retention_period(
    #     stream_name: 'StreamName', # required
    #     retention_period_hours: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DecreaseStreamRetentionPeriodOutput
    #
    def decrease_stream_retention_period(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DecreaseStreamRetentionPeriodInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DecreaseStreamRetentionPeriodInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DecreaseStreamRetentionPeriod
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DecreaseStreamRetentionPeriod
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DecreaseStreamRetentionPeriod,
        stubs: @stubs,
        params_class: Params::DecreaseStreamRetentionPeriodOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :decrease_stream_retention_period
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Kinesis data stream and all its shards and data. You must shut down any
    #             applications that are operating on the stream before you delete the stream. If an
    #             application attempts to operate on a deleted stream, it receives the exception
    #                 <code>ResourceNotFoundException</code>.</p>
    #         <p>If the stream is in the <code>ACTIVE</code> state, you can delete it. After a
    #                 <code>DeleteStream</code> request, the specified stream is in the
    #                 <code>DELETING</code> state until Kinesis Data Streams completes the
    #             deletion.</p>
    #         <p>
    #             <b>Note:</b> Kinesis Data Streams might continue to accept
    #             data read and write operations, such as <a>PutRecord</a>, <a>PutRecords</a>, and <a>GetRecords</a>, on a stream in the
    #                 <code>DELETING</code> state until the stream deletion is complete.</p>
    #         <p>When you delete a stream, any shards in that stream are also deleted, and any tags are
    #             dissociated from the stream.</p>
    #         <p>You can use the <a>DescribeStreamSummary</a> operation to check the state
    #             of the stream, which is returned in <code>StreamStatus</code>.</p>
    #
    #         <p>
    #             <a>DeleteStream</a> has a limit of five transactions per second per
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStreamInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream to delete.</p>
    #
    # @option params [Boolean] :enforce_consumer_deletion
    #   <p>If this parameter is unset (<code>null</code>) or if you set it to <code>false</code>,
    #               and the stream has registered consumers, the call to <code>DeleteStream</code> fails
    #               with a <code>ResourceInUseException</code>. </p>
    #
    # @return [Types::DeleteStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream(
    #     stream_name: 'StreamName', # required
    #     enforce_consumer_deletion: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStreamOutput
    #
    def delete_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStream,
        stubs: @stubs,
        params_class: Params::DeleteStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>To deregister a consumer, provide its ARN. Alternatively, you can provide the ARN of
    #             the data stream and the name you gave the consumer when you registered it. You may also
    #             provide all three parameters, as long as they don't conflict with each other. If you
    #             don't know the name or ARN of the consumer that you want to deregister, you can use the
    #                 <a>ListStreamConsumers</a> operation to get a list of the descriptions of
    #             all the consumers that are currently registered with a given data stream. The
    #             description of a consumer contains its name and ARN.</p>
    #         <p>This operation has a limit of five transactions per second per stream.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterStreamConsumerInput}.
    #
    # @option params [String] :stream_arn
    #   <p>The ARN of the Kinesis data stream that the consumer is registered with. For more
    #               information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    #
    # @option params [String] :consumer_name
    #   <p>The name that you gave to the consumer.</p>
    #
    # @option params [String] :consumer_arn
    #   <p>The ARN returned by Kinesis Data Streams when you registered the consumer. If you
    #               don't know the ARN of the consumer that you want to deregister, you can use the
    #               ListStreamConsumers operation to get a list of the descriptions of all the consumers
    #               that are currently registered with a given data stream. The description of a consumer
    #               contains its ARN.</p>
    #
    # @return [Types::DeregisterStreamConsumerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_stream_consumer(
    #     stream_arn: 'StreamARN',
    #     consumer_name: 'ConsumerName',
    #     consumer_arn: 'ConsumerARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterStreamConsumerOutput
    #
    def deregister_stream_consumer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterStreamConsumerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterStreamConsumerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterStreamConsumer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeregisterStreamConsumer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterStreamConsumer,
        stubs: @stubs,
        params_class: Params::DeregisterStreamConsumerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_stream_consumer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the shard limits and usage for the account.</p>
    #         <p>If you update your account limits, the old limits might be returned for a few
    #             minutes.</p>
    #         <p>This operation has a limit of one transaction per second per account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLimitsInput}.
    #
    # @return [Types::DescribeLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_limits()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLimitsOutput
    #   resp.data.shard_limit #=> Integer
    #   resp.data.open_shard_count #=> Integer
    #   resp.data.on_demand_stream_count #=> Integer
    #   resp.data.on_demand_stream_count_limit #=> Integer
    #
    def describe_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLimitsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLimits
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException]),
        data_parser: Parsers::DescribeLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLimits,
        stubs: @stubs,
        params_class: Params::DescribeLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified Kinesis data stream.</p>
    #         <note>
    #             <p>This API has been revised. It's highly recommended that you use the <a>DescribeStreamSummary</a> API to get a summarized description of the
    #                 specified Kinesis data stream and the <a>ListShards</a> API to list the
    #                 shards in a specified data stream and obtain information about each shard. </p>
    #         </note>
    #         <p>The information returned includes the stream name, Amazon Resource Name (ARN),
    #             creation time, enhanced metric configuration, and shard map. The shard map is an array
    #             of shard objects. For each shard object, there is the hash key and sequence number
    #             ranges that the shard spans, and the IDs of any earlier shards that played in a role in
    #             creating the shard. Every record ingested in the stream is identified by a sequence
    #             number, which is assigned when the record is put into the stream.</p>
    #
    #         <p>You can limit the number of shards returned by each call. For more information, see
    #                 <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html">Retrieving
    #                 Shards from a Stream</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>.</p>
    #         <p>There are no guarantees about the chronological order shards returned. To process
    #             shards in chronological order, use the ID of the parent shard to track the lineage to
    #             the oldest shard.</p>
    #         <p>This operation has a limit of 10 transactions per second per account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStreamInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream to describe.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of shards to return in a single call. The default value is 100. If
    #               you specify a value greater than 100, at most 100 results are returned.</p>
    #
    # @option params [String] :exclusive_start_shard_id
    #   <p>The shard ID of the shard to start with.</p>
    #           <p>Specify this parameter to indicate that you want to describe the stream starting with
    #               the shard whose ID immediately follows <code>ExclusiveStartShardId</code>.</p>
    #           <p>If you don't specify this parameter, the default behavior for
    #                   <code>DescribeStream</code> is to describe the stream starting with the first shard
    #               in the stream.</p>
    #
    # @return [Types::DescribeStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream(
    #     stream_name: 'StreamName', # required
    #     limit: 1,
    #     exclusive_start_shard_id: 'ExclusiveStartShardId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStreamOutput
    #   resp.data.stream_description #=> Types::StreamDescription
    #   resp.data.stream_description.stream_name #=> String
    #   resp.data.stream_description.stream_arn #=> String
    #   resp.data.stream_description.stream_status #=> String, one of ["CREATING", "DELETING", "ACTIVE", "UPDATING"]
    #   resp.data.stream_description.stream_mode_details #=> Types::StreamModeDetails
    #   resp.data.stream_description.stream_mode_details.stream_mode #=> String, one of ["PROVISIONED", "ON_DEMAND"]
    #   resp.data.stream_description.shards #=> Array<Shard>
    #   resp.data.stream_description.shards[0] #=> Types::Shard
    #   resp.data.stream_description.shards[0].shard_id #=> String
    #   resp.data.stream_description.shards[0].parent_shard_id #=> String
    #   resp.data.stream_description.shards[0].adjacent_parent_shard_id #=> String
    #   resp.data.stream_description.shards[0].hash_key_range #=> Types::HashKeyRange
    #   resp.data.stream_description.shards[0].hash_key_range.starting_hash_key #=> String
    #   resp.data.stream_description.shards[0].hash_key_range.ending_hash_key #=> String
    #   resp.data.stream_description.shards[0].sequence_number_range #=> Types::SequenceNumberRange
    #   resp.data.stream_description.shards[0].sequence_number_range.starting_sequence_number #=> String
    #   resp.data.stream_description.shards[0].sequence_number_range.ending_sequence_number #=> String
    #   resp.data.stream_description.has_more_shards #=> Boolean
    #   resp.data.stream_description.retention_period_hours #=> Integer
    #   resp.data.stream_description.stream_creation_timestamp #=> Time
    #   resp.data.stream_description.enhanced_monitoring #=> Array<EnhancedMetrics>
    #   resp.data.stream_description.enhanced_monitoring[0] #=> Types::EnhancedMetrics
    #   resp.data.stream_description.enhanced_monitoring[0].shard_level_metrics #=> Array<String>
    #   resp.data.stream_description.enhanced_monitoring[0].shard_level_metrics[0] #=> String, one of ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]
    #   resp.data.stream_description.encryption_type #=> String, one of ["NONE", "KMS"]
    #   resp.data.stream_description.key_id #=> String
    #
    def describe_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStream,
        stubs: @stubs,
        params_class: Params::DescribeStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>To get the description of a registered consumer, provide the ARN of the consumer.
    #             Alternatively, you can provide the ARN of the data stream and the name you gave the
    #             consumer when you registered it. You may also provide all three parameters, as long as
    #             they don't conflict with each other. If you don't know the name or ARN of the consumer
    #             that you want to describe, you can use the <a>ListStreamConsumers</a>
    #             operation to get a list of the descriptions of all the consumers that are currently
    #             registered with a given data stream.</p>
    #         <p>This operation has a limit of 20 transactions per second per stream.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStreamConsumerInput}.
    #
    # @option params [String] :stream_arn
    #   <p>The ARN of the Kinesis data stream that the consumer is registered with. For more
    #               information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    #
    # @option params [String] :consumer_name
    #   <p>The name that you gave to the consumer.</p>
    #
    # @option params [String] :consumer_arn
    #   <p>The ARN returned by Kinesis Data Streams when you registered the consumer.</p>
    #
    # @return [Types::DescribeStreamConsumerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream_consumer(
    #     stream_arn: 'StreamARN',
    #     consumer_name: 'ConsumerName',
    #     consumer_arn: 'ConsumerARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStreamConsumerOutput
    #   resp.data.consumer_description #=> Types::ConsumerDescription
    #   resp.data.consumer_description.consumer_name #=> String
    #   resp.data.consumer_description.consumer_arn #=> String
    #   resp.data.consumer_description.consumer_status #=> String, one of ["CREATING", "DELETING", "ACTIVE"]
    #   resp.data.consumer_description.consumer_creation_timestamp #=> Time
    #   resp.data.consumer_description.stream_arn #=> String
    #
    def describe_stream_consumer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStreamConsumerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStreamConsumerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStreamConsumer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeStreamConsumer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStreamConsumer,
        stubs: @stubs,
        params_class: Params::DescribeStreamConsumerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stream_consumer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a summarized description of the specified Kinesis data stream without the
    #             shard list.</p>
    #         <p>The information returned includes the stream name, Amazon Resource Name (ARN), status,
    #             record retention period, approximate creation time, monitoring, encryption details, and
    #             open shard count. </p>
    #         <p>
    #             <a>DescribeStreamSummary</a> has a limit of 20 transactions per second per
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStreamSummaryInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream to describe.</p>
    #
    # @return [Types::DescribeStreamSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream_summary(
    #     stream_name: 'StreamName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStreamSummaryOutput
    #   resp.data.stream_description_summary #=> Types::StreamDescriptionSummary
    #   resp.data.stream_description_summary.stream_name #=> String
    #   resp.data.stream_description_summary.stream_arn #=> String
    #   resp.data.stream_description_summary.stream_status #=> String, one of ["CREATING", "DELETING", "ACTIVE", "UPDATING"]
    #   resp.data.stream_description_summary.stream_mode_details #=> Types::StreamModeDetails
    #   resp.data.stream_description_summary.stream_mode_details.stream_mode #=> String, one of ["PROVISIONED", "ON_DEMAND"]
    #   resp.data.stream_description_summary.retention_period_hours #=> Integer
    #   resp.data.stream_description_summary.stream_creation_timestamp #=> Time
    #   resp.data.stream_description_summary.enhanced_monitoring #=> Array<EnhancedMetrics>
    #   resp.data.stream_description_summary.enhanced_monitoring[0] #=> Types::EnhancedMetrics
    #   resp.data.stream_description_summary.enhanced_monitoring[0].shard_level_metrics #=> Array<String>
    #   resp.data.stream_description_summary.enhanced_monitoring[0].shard_level_metrics[0] #=> String, one of ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]
    #   resp.data.stream_description_summary.encryption_type #=> String, one of ["NONE", "KMS"]
    #   resp.data.stream_description_summary.key_id #=> String
    #   resp.data.stream_description_summary.open_shard_count #=> Integer
    #   resp.data.stream_description_summary.consumer_count #=> Integer
    #
    def describe_stream_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStreamSummaryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStreamSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStreamSummary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeStreamSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStreamSummary,
        stubs: @stubs,
        params_class: Params::DescribeStreamSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stream_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables enhanced monitoring.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableEnhancedMonitoringInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the Kinesis data stream for which to disable enhanced monitoring.</p>
    #
    # @option params [Array<String>] :shard_level_metrics
    #   <p>List of shard-level metrics to disable.</p>
    #           <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" disables
    #               every metric.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>IncomingBytes</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>IncomingRecords</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>OutgoingBytes</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>OutgoingRecords</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WriteProvisionedThroughputExceeded</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ReadProvisionedThroughputExceeded</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>IteratorAgeMilliseconds</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ALL</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon
    #                   Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon
    #                   Kinesis Data Streams Developer Guide</i>.</p>
    #
    # @return [Types::DisableEnhancedMonitoringOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_enhanced_monitoring(
    #     stream_name: 'StreamName', # required
    #     shard_level_metrics: [
    #       'IncomingBytes' # accepts ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableEnhancedMonitoringOutput
    #   resp.data.stream_name #=> String
    #   resp.data.current_shard_level_metrics #=> Array<String>
    #   resp.data.current_shard_level_metrics[0] #=> String, one of ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]
    #   resp.data.desired_shard_level_metrics #=> Array<String>
    #
    def disable_enhanced_monitoring(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableEnhancedMonitoringInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableEnhancedMonitoringInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableEnhancedMonitoring
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisableEnhancedMonitoring
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableEnhancedMonitoring,
        stubs: @stubs,
        params_class: Params::DisableEnhancedMonitoringOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_enhanced_monitoring
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables enhanced Kinesis data stream monitoring for shard-level metrics.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableEnhancedMonitoringInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream for which to enable enhanced monitoring.</p>
    #
    # @option params [Array<String>] :shard_level_metrics
    #   <p>List of shard-level metrics to enable.</p>
    #           <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" enables
    #               every metric.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>IncomingBytes</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>IncomingRecords</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>OutgoingBytes</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>OutgoingRecords</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WriteProvisionedThroughputExceeded</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ReadProvisionedThroughputExceeded</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>IteratorAgeMilliseconds</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ALL</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon
    #                   Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon
    #                   Kinesis Data Streams Developer Guide</i>.</p>
    #
    # @return [Types::EnableEnhancedMonitoringOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_enhanced_monitoring(
    #     stream_name: 'StreamName', # required
    #     shard_level_metrics: [
    #       'IncomingBytes' # accepts ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableEnhancedMonitoringOutput
    #   resp.data.stream_name #=> String
    #   resp.data.current_shard_level_metrics #=> Array<String>
    #   resp.data.current_shard_level_metrics[0] #=> String, one of ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]
    #   resp.data.desired_shard_level_metrics #=> Array<String>
    #
    def enable_enhanced_monitoring(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableEnhancedMonitoringInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableEnhancedMonitoringInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableEnhancedMonitoring
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::EnableEnhancedMonitoring
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableEnhancedMonitoring,
        stubs: @stubs,
        params_class: Params::EnableEnhancedMonitoringOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_enhanced_monitoring
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets data records from a Kinesis data stream's shard.</p>
    #         <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard
    #             iterator specifies the position in the shard from which you want to start reading data
    #             records sequentially. If there are no records available in the portion of the shard that
    #             the iterator points to, <a>GetRecords</a> returns an empty list. It might
    #             take multiple calls to get to a portion of the shard that contains records.</p>
    #         <p>You can scale by provisioning multiple shards per stream while considering service
    #             limits (for more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Amazon Kinesis Data Streams
    #                 Limits</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>). Your application should have one thread per shard, each reading
    #             continuously from its stream. To read from a stream continually, call <a>GetRecords</a> in a loop. Use <a>GetShardIterator</a> to get the
    #             shard iterator to specify in the first <a>GetRecords</a> call. <a>GetRecords</a> returns a new shard iterator in
    #                 <code>NextShardIterator</code>. Specify the shard iterator returned in
    #                 <code>NextShardIterator</code> in subsequent calls to <a>GetRecords</a>.
    #             If the shard has been closed, the shard iterator can't return more data and <a>GetRecords</a> returns <code>null</code> in <code>NextShardIterator</code>.
    #             You can terminate the loop when the shard is closed, or when the shard iterator reaches
    #             the record with the sequence number or other attribute that marks it as the last record
    #             to process.</p>
    #         <p>Each data record can be up to 1 MiB in size, and each shard can read up to 2 MiB per
    #             second. You can ensure that your calls don't exceed the maximum supported size or
    #             throughput by using the <code>Limit</code> parameter to specify the maximum number of
    #             records that <a>GetRecords</a> can return. Consider your average record size
    #             when determining this limit. The maximum number of records that can be returned per call
    #             is 10,000.</p>
    #
    #         <p>The size of the data returned by <a>GetRecords</a> varies depending on the
    #             utilization of the shard. It is recommended that consumer applications retrieve records
    #             via the <code>GetRecords</code> command using the 5 TPS limit to remain caught up.
    #             Retrieving records less frequently can lead to consumer applications falling behind. The
    #             maximum size of data that <a>GetRecords</a> can return is 10 MiB. If a call
    #             returns this amount of data, subsequent calls made within the next 5 seconds throw
    #                 <code>ProvisionedThroughputExceededException</code>. If there is insufficient
    #             provisioned throughput on the stream, subsequent calls made within the next 1 second
    #             throw <code>ProvisionedThroughputExceededException</code>. <a>GetRecords</a>
    #             doesn't return any data when it throws an exception. For this reason, we recommend that
    #             you wait 1 second between calls to <a>GetRecords</a>. However, it's possible
    #             that the application will get exceptions for longer than 1 second.</p>
    #
    #
    #
    #
    #
    #
    #
    #
    #         <p>To detect whether the application is falling behind in processing, you can use the
    #                 <code>MillisBehindLatest</code> response attribute. You can also monitor the stream
    #             using CloudWatch metrics and other mechanisms (see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html">Monitoring</a> in the <i>Amazon
    #                 Kinesis Data Streams Developer Guide</i>).</p>
    #         <p>Each Amazon Kinesis record includes a value, <code>ApproximateArrivalTimestamp</code>,
    #             that is set when a stream successfully receives and stores a record. This is commonly
    #             referred to as a server-side time stamp, whereas a client-side time stamp is set when a
    #             data producer creates or sends the record to a stream (a data producer is any data
    #             source putting data records into a stream, for example with <a>PutRecords</a>). The time stamp has millisecond precision. There are no guarantees about the time
    #             stamp accuracy, or that the time stamp is always increasing. For example, records in a
    #             shard or across a stream might have time stamps that are out of order.</p>
    #         <p>This operation has a limit of five transactions per second per shard.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRecordsInput}.
    #
    # @option params [String] :shard_iterator
    #   <p>The position in the shard from which you want to start sequentially reading data
    #               records. A shard iterator specifies this position using the sequence number of a data
    #               record in the shard.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of records to return. Specify a value of up to 10,000. If you
    #               specify a value that is greater than 10,000, <a>GetRecords</a> throws
    #                   <code>InvalidArgumentException</code>. The default value is 10,000.</p>
    #
    # @return [Types::GetRecordsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_records(
    #     shard_iterator: 'ShardIterator', # required
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecordsOutput
    #   resp.data.records #=> Array<Record>
    #   resp.data.records[0] #=> Types::Record
    #   resp.data.records[0].sequence_number #=> String
    #   resp.data.records[0].approximate_arrival_timestamp #=> Time
    #   resp.data.records[0].data #=> String
    #   resp.data.records[0].partition_key #=> String
    #   resp.data.records[0].encryption_type #=> String, one of ["NONE", "KMS"]
    #   resp.data.next_shard_iterator #=> String
    #   resp.data.millis_behind_latest #=> Integer
    #   resp.data.child_shards #=> Array<ChildShard>
    #   resp.data.child_shards[0] #=> Types::ChildShard
    #   resp.data.child_shards[0].shard_id #=> String
    #   resp.data.child_shards[0].parent_shards #=> Array<String>
    #   resp.data.child_shards[0].parent_shards[0] #=> String
    #   resp.data.child_shards[0].hash_key_range #=> Types::HashKeyRange
    #   resp.data.child_shards[0].hash_key_range.starting_hash_key #=> String
    #   resp.data.child_shards[0].hash_key_range.ending_hash_key #=> String
    #
    def get_records(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecordsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecordsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecords
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExpiredIteratorException, Errors::InvalidArgumentException, Errors::KMSAccessDeniedException, Errors::KMSDisabledException, Errors::KMSInvalidStateException, Errors::KMSNotFoundException, Errors::KMSOptInRequired, Errors::KMSThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetRecords
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecords,
        stubs: @stubs,
        params_class: Params::GetRecordsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_records
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an Amazon Kinesis shard iterator. A shard iterator expires 5 minutes after it is
    #             returned to the requester.</p>
    #         <p>A shard iterator specifies the shard position from which to start reading data records
    #             sequentially. The position is specified using the sequence number of a data record in a
    #             shard. A sequence number is the identifier associated with every record ingested in the
    #             stream, and is assigned when a record is put into the stream. Each stream has one or
    #             more shards.</p>
    #         <p>You must specify the shard iterator type. For example, you can set the
    #                 <code>ShardIteratorType</code> parameter to read exactly from the position denoted
    #             by a specific sequence number by using the <code>AT_SEQUENCE_NUMBER</code> shard
    #             iterator type. Alternatively, the parameter can read right after the sequence number by
    #             using the <code>AFTER_SEQUENCE_NUMBER</code> shard iterator type, using sequence numbers
    #             returned by earlier calls to <a>PutRecord</a>, <a>PutRecords</a>,
    #                 <a>GetRecords</a>, or <a>DescribeStream</a>. In the request,
    #             you can specify the shard iterator type <code>AT_TIMESTAMP</code> to read records from
    #             an arbitrary point in time, <code>TRIM_HORIZON</code> to cause
    #                 <code>ShardIterator</code> to point to the last untrimmed record in the shard in the
    #             system (the oldest data record in the shard), or <code>LATEST</code> so that you always
    #             read the most recent data in the shard. </p>
    #         <p>When you read repeatedly from a stream, use a <a>GetShardIterator</a>
    #             request to get the first shard iterator for use in your first <a>GetRecords</a> request and for subsequent reads use the shard iterator returned by the <a>GetRecords</a> request in <code>NextShardIterator</code>. A new shard
    #             iterator is returned by every <a>GetRecords</a> request in
    #                 <code>NextShardIterator</code>, which you use in the <code>ShardIterator</code>
    #             parameter of the next <a>GetRecords</a> request. </p>
    #         <p>If a <a>GetShardIterator</a> request is made too often, you receive a
    #                 <code>ProvisionedThroughputExceededException</code>. For more information about
    #             throughput limits, see <a>GetRecords</a>, and <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the
    #                 <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>
    #         <p>If the shard is closed, <a>GetShardIterator</a> returns a valid iterator
    #             for the last sequence number of the shard. A shard can be closed as a result of using
    #                 <a>SplitShard</a> or <a>MergeShards</a>.</p>
    #         <p>
    #             <a>GetShardIterator</a> has a limit of five transactions per second per
    #             account per open shard.</p>
    #
    # @param [Hash] params
    #   See {Types::GetShardIteratorInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the Amazon Kinesis data stream.</p>
    #
    # @option params [String] :shard_id
    #   <p>The shard ID of the Kinesis Data Streams shard to get the iterator for.</p>
    #
    # @option params [String] :shard_iterator_type
    #   <p>Determines how the shard iterator is used to start reading data records from the
    #               shard.</p>
    #           <p>The following are the valid Amazon Kinesis shard iterator types:</p>
    #           <ul>
    #               <li>
    #
    #                   <p>AT_SEQUENCE_NUMBER - Start reading from the position denoted by a specific
    #                       sequence number, provided in the value
    #                       <code>StartingSequenceNumber</code>.</p>
    #               </li>
    #               <li>
    #
    #                   <p>AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a
    #                       specific sequence number, provided in the value
    #                           <code>StartingSequenceNumber</code>.</p>
    #               </li>
    #               <li>
    #
    #                   <p>AT_TIMESTAMP - Start reading from the position denoted by a specific time
    #                       stamp, provided in the value <code>Timestamp</code>.</p>
    #               </li>
    #               <li>
    #
    #                   <p>TRIM_HORIZON - Start reading at the last untrimmed record in the shard in the
    #                       system, which is the oldest data record in the shard.</p>
    #               </li>
    #               <li>
    #
    #                   <p>LATEST - Start reading just after the most recent record in the shard, so that
    #                       you always read the most recent data in the shard.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :starting_sequence_number
    #   <p>The sequence number of the data record in the shard from which to start reading. Used
    #               with shard iterator type AT_SEQUENCE_NUMBER and AFTER_SEQUENCE_NUMBER.</p>
    #
    # @option params [Time] :timestamp
    #   <p>The time stamp of the data record from which to start reading. Used with shard
    #               iterator type AT_TIMESTAMP. A time stamp is the Unix epoch date with precision in
    #               milliseconds. For example, <code>2016-04-04T19:58:46.480-00:00</code> or
    #                   <code>1459799926.480</code>. If a record with this exact time stamp does not exist,
    #               the iterator returned is for the next (later) record. If the time stamp is older than
    #               the current trim horizon, the iterator returned is for the oldest untrimmed data record
    #               (TRIM_HORIZON).</p>
    #
    # @return [Types::GetShardIteratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_shard_iterator(
    #     stream_name: 'StreamName', # required
    #     shard_id: 'ShardId', # required
    #     shard_iterator_type: 'AT_SEQUENCE_NUMBER', # required - accepts ["AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER", "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"]
    #     starting_sequence_number: 'StartingSequenceNumber',
    #     timestamp: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetShardIteratorOutput
    #   resp.data.shard_iterator #=> String
    #
    def get_shard_iterator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetShardIteratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetShardIteratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetShardIterator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetShardIterator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetShardIterator,
        stubs: @stubs,
        params_class: Params::GetShardIteratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_shard_iterator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Increases the Kinesis data stream's retention period, which is the length of time data
    #             records are accessible after they are added to the stream. The maximum value of a
    #             stream's retention period is 8760 hours (365 days).</p>
    #         <p>If you choose a longer stream retention period, this operation increases the time
    #             period during which records that have not yet expired are accessible. However, it does
    #             not make previous, expired data (older than the stream's previous retention period)
    #             accessible after the operation has been called. For example, if a stream's retention
    #             period is set to 24 hours and is increased to 168 hours, any data that is older than 24
    #             hours remains inaccessible to consumer applications.</p>
    #
    # @param [Hash] params
    #   See {Types::IncreaseStreamRetentionPeriodInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream to modify.</p>
    #
    # @option params [Integer] :retention_period_hours
    #   <p>The new retention period of the stream, in hours. Must be more than the current
    #               retention period.</p>
    #
    # @return [Types::IncreaseStreamRetentionPeriodOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.increase_stream_retention_period(
    #     stream_name: 'StreamName', # required
    #     retention_period_hours: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::IncreaseStreamRetentionPeriodOutput
    #
    def increase_stream_retention_period(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::IncreaseStreamRetentionPeriodInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::IncreaseStreamRetentionPeriodInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::IncreaseStreamRetentionPeriod
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::IncreaseStreamRetentionPeriod
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::IncreaseStreamRetentionPeriod,
        stubs: @stubs,
        params_class: Params::IncreaseStreamRetentionPeriodOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :increase_stream_retention_period
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the shards in a stream and provides information about each shard. This operation
    #             has a limit of 1000 transactions per second per data stream.</p>
    #         <p>This action does not list expired shards. For information about expired shards, see
    #                 <a href="https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing">Data Routing, Data Persistence, and Shard State after a Reshard</a>. </p>
    #         <important>
    #             <p>This API is a new operation that is used by the Amazon Kinesis Client Library
    #                 (KCL). If you have a fine-grained IAM policy that only allows specific operations,
    #                 you must update your policy to allow calls to this API. For more information, see
    #                     <a href="https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html">Controlling Access to Amazon Kinesis Data Streams Resources Using
    #                 IAM</a>.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::ListShardsInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the data stream whose shards you want to list. </p>
    #           <p>You cannot specify this parameter if you specify the <code>NextToken</code>
    #               parameter.</p>
    #
    # @option params [String] :next_token
    #   <p>When the number of shards in the data stream is greater than the default value for the
    #                   <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #                   <code>MaxResults</code> that is less than the number of shards in the data stream,
    #               the response includes a pagination token named <code>NextToken</code>. You can specify
    #               this <code>NextToken</code> value in a subsequent call to <code>ListShards</code> to
    #               list the next set of shards.</p>
    #           <p>Don't specify <code>StreamName</code> or <code>StreamCreationTimestamp</code> if you
    #               specify <code>NextToken</code> because the latter unambiguously identifies the
    #               stream.</p>
    #           <p>You can optionally specify a value for the <code>MaxResults</code> parameter when you
    #               specify <code>NextToken</code>. If you specify a <code>MaxResults</code> value that is
    #               less than the number of shards that the operation returns if you don't specify
    #                   <code>MaxResults</code>, the response will contain a new <code>NextToken</code>
    #               value. You can use the new <code>NextToken</code> value in a subsequent call to the
    #                   <code>ListShards</code> operation.</p>
    #           <important>
    #               <p>Tokens expire after 300 seconds. When you obtain a value for
    #                       <code>NextToken</code> in the response to a call to <code>ListShards</code>, you
    #                   have 300 seconds to use that value. If you specify an expired token in a call to
    #                       <code>ListShards</code>, you get <code>ExpiredNextTokenException</code>.</p>
    #           </important>
    #
    # @option params [String] :exclusive_start_shard_id
    #   <p>Specify this parameter to indicate that you want to list the shards starting with the
    #               shard whose ID immediately follows <code>ExclusiveStartShardId</code>.</p>
    #           <p>If you don't specify this parameter, the default behavior is for
    #                   <code>ListShards</code> to list the shards starting with the first one in the
    #               stream.</p>
    #           <p>You cannot specify this parameter if you specify <code>NextToken</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of shards to return in a single call to <code>ListShards</code>.
    #               The maximum number of shards to return in a single call. The default value is 1000. If
    #               you specify a value greater than 1000, at most 1000 results are returned. </p>
    #           <p>When the number of shards to be listed is greater than the value of
    #                   <code>MaxResults</code>, the response contains a <code>NextToken</code> value that
    #               you can use in a subsequent call to <code>ListShards</code> to list the next set of
    #               shards.</p>
    #
    # @option params [Time] :stream_creation_timestamp
    #   <p>Specify this input parameter to distinguish data streams that have the same name. For
    #               example, if you create a data stream and then delete it, and you later create another
    #               data stream with the same name, you can use this input parameter to specify which of the
    #               two streams you want to list the shards for.</p>
    #           <p>You cannot specify this parameter if you specify the <code>NextToken</code>
    #               parameter.</p>
    #
    # @option params [ShardFilter] :shard_filter
    #   <p>Enables you to filter out the response of the <code>ListShards</code> API. You can
    #               only specify one filter at a time. </p>
    #           <p>If you use the <code>ShardFilter</code> parameter when invoking the ListShards API,
    #               the <code>Type</code> is the required property and must be specified. If you specify the
    #                   <code>AT_TRIM_HORIZON</code>, <code>FROM_TRIM_HORIZON</code>, or
    #                   <code>AT_LATEST</code> types, you do not need to specify either the
    #                   <code>ShardId</code> or the <code>Timestamp</code> optional properties. </p>
    #           <p>If you specify the <code>AFTER_SHARD_ID</code> type, you must also provide the value
    #               for the optional <code>ShardId</code> property. The <code>ShardId</code> property is
    #               identical in fuctionality to the <code>ExclusiveStartShardId</code> parameter of the
    #                   <code>ListShards</code> API. When <code>ShardId</code> property is specified, the
    #               response includes the shards starting with the shard whose ID immediately follows the
    #                   <code>ShardId</code> that you provided. </p>
    #           <p>If you specify the <code>AT_TIMESTAMP</code> or <code>FROM_TIMESTAMP_ID</code> type,
    #               you must also provide the value for the optional <code>Timestamp</code> property. If you
    #               specify the AT_TIMESTAMP type, then all shards that were open at the provided timestamp
    #               are returned. If you specify the FROM_TIMESTAMP type, then all shards starting from the
    #               provided timestamp to TIP are returned. </p>
    #
    # @return [Types::ListShardsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_shards(
    #     stream_name: 'StreamName',
    #     next_token: 'NextToken',
    #     exclusive_start_shard_id: 'ExclusiveStartShardId',
    #     max_results: 1,
    #     stream_creation_timestamp: Time.now,
    #     shard_filter: {
    #       type: 'AFTER_SHARD_ID', # required - accepts ["AFTER_SHARD_ID", "AT_TRIM_HORIZON", "FROM_TRIM_HORIZON", "AT_LATEST", "AT_TIMESTAMP", "FROM_TIMESTAMP"]
    #       shard_id: 'ShardId',
    #       timestamp: Time.now
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListShardsOutput
    #   resp.data.shards #=> Array<Shard>
    #   resp.data.shards[0] #=> Types::Shard
    #   resp.data.shards[0].shard_id #=> String
    #   resp.data.shards[0].parent_shard_id #=> String
    #   resp.data.shards[0].adjacent_parent_shard_id #=> String
    #   resp.data.shards[0].hash_key_range #=> Types::HashKeyRange
    #   resp.data.shards[0].hash_key_range.starting_hash_key #=> String
    #   resp.data.shards[0].hash_key_range.ending_hash_key #=> String
    #   resp.data.shards[0].sequence_number_range #=> Types::SequenceNumberRange
    #   resp.data.shards[0].sequence_number_range.starting_sequence_number #=> String
    #   resp.data.shards[0].sequence_number_range.ending_sequence_number #=> String
    #   resp.data.next_token #=> String
    #
    def list_shards(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListShardsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListShardsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListShards
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExpiredNextTokenException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListShards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListShards,
        stubs: @stubs,
        params_class: Params::ListShardsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_shards
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the consumers registered to receive data from a stream using enhanced fan-out,
    #             and provides information about each consumer.</p>
    #         <p>This operation has a limit of 5 transactions per second per stream.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamConsumersInput}.
    #
    # @option params [String] :stream_arn
    #   <p>The ARN of the Kinesis data stream for which you want to list the registered
    #               consumers. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>When the number of consumers that are registered with the data stream is greater than
    #               the default value for the <code>MaxResults</code> parameter, or if you explicitly
    #               specify a value for <code>MaxResults</code> that is less than the number of consumers
    #               that are registered with the data stream, the response includes a pagination token named
    #                   <code>NextToken</code>. You can specify this <code>NextToken</code> value in a
    #               subsequent call to <code>ListStreamConsumers</code> to list the next set of registered
    #               consumers.</p>
    #           <p>Don't specify <code>StreamName</code> or <code>StreamCreationTimestamp</code> if you
    #               specify <code>NextToken</code> because the latter unambiguously identifies the
    #               stream.</p>
    #           <p>You can optionally specify a value for the <code>MaxResults</code> parameter when you
    #               specify <code>NextToken</code>. If you specify a <code>MaxResults</code> value that is
    #               less than the number of consumers that the operation returns if you don't specify
    #                   <code>MaxResults</code>, the response will contain a new <code>NextToken</code>
    #               value. You can use the new <code>NextToken</code> value in a subsequent call to the
    #                   <code>ListStreamConsumers</code> operation to list the next set of consumers.</p>
    #           <important>
    #               <p>Tokens expire after 300 seconds. When you obtain a value for
    #                       <code>NextToken</code> in the response to a call to
    #                       <code>ListStreamConsumers</code>, you have 300 seconds to use that value. If you
    #                   specify an expired token in a call to <code>ListStreamConsumers</code>, you get
    #                       <code>ExpiredNextTokenException</code>.</p>
    #           </important>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of consumers that you want a single call of
    #                   <code>ListStreamConsumers</code> to return. The default value is 100. If you specify
    #               a value greater than 100, at most 100 results are returned. </p>
    #
    # @option params [Time] :stream_creation_timestamp
    #   <p>Specify this input parameter to distinguish data streams that have the same name. For
    #               example, if you create a data stream and then delete it, and you later create another
    #               data stream with the same name, you can use this input parameter to specify which of the
    #               two streams you want to list the consumers for. </p>
    #           <p>You can't specify this parameter if you specify the NextToken parameter. </p>
    #
    # @return [Types::ListStreamConsumersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stream_consumers(
    #     stream_arn: 'StreamARN', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     stream_creation_timestamp: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamConsumersOutput
    #   resp.data.consumers #=> Array<Consumer>
    #   resp.data.consumers[0] #=> Types::Consumer
    #   resp.data.consumers[0].consumer_name #=> String
    #   resp.data.consumers[0].consumer_arn #=> String
    #   resp.data.consumers[0].consumer_status #=> String, one of ["CREATING", "DELETING", "ACTIVE"]
    #   resp.data.consumers[0].consumer_creation_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_stream_consumers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamConsumersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStreamConsumersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStreamConsumers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExpiredNextTokenException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListStreamConsumers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStreamConsumers,
        stubs: @stubs,
        params_class: Params::ListStreamConsumersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stream_consumers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your Kinesis data streams.</p>
    #         <p>The number of streams may be too large to return from a single call to
    #                 <code>ListStreams</code>. You can limit the number of returned streams using the
    #                 <code>Limit</code> parameter. If you do not specify a value for the
    #                 <code>Limit</code> parameter, Kinesis Data Streams uses the default limit, which is
    #             currently 100.</p>
    #         <p>You can detect if there are more streams available to list by using the
    #                 <code>HasMoreStreams</code> flag from the returned output. If there are more streams
    #             available, you can request more streams by using the name of the last stream returned by
    #             the <code>ListStreams</code> request in the <code>ExclusiveStartStreamName</code>
    #             parameter in a subsequent request to <code>ListStreams</code>. The group of stream names
    #             returned by the subsequent request is then added to the list. You can continue this
    #             process until all the stream names have been collected in the list. </p>
    #         <p>
    #             <a>ListStreams</a> has a limit of five transactions per second per
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamsInput}.
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of streams to list. The default value is 100. If you specify a
    #               value greater than 100, at most 100 results are returned.</p>
    #
    # @option params [String] :exclusive_start_stream_name
    #   <p>The name of the stream to start the list with.</p>
    #
    # @return [Types::ListStreamsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams(
    #     limit: 1,
    #     exclusive_start_stream_name: 'ExclusiveStartStreamName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamsOutput
    #   resp.data.stream_names #=> Array<String>
    #   resp.data.stream_names[0] #=> String
    #   resp.data.has_more_streams #=> Boolean
    #
    def list_streams(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStreamsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStreams
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException]),
        data_parser: Parsers::ListStreams
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStreams,
        stubs: @stubs,
        params_class: Params::ListStreamsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_streams
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified Kinesis data stream. This operation has a limit of
    #             five transactions per second per account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForStreamInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    #
    # @option params [String] :exclusive_start_tag_key
    #   <p>The key to use as the starting point for the list of tags. If this parameter is set,
    #                   <code>ListTagsForStream</code> gets all tags that occur after
    #                   <code>ExclusiveStartTagKey</code>. </p>
    #
    # @option params [Integer] :limit
    #   <p>The number of tags to return. If this number is less than the total number of tags
    #               associated with the stream, <code>HasMoreTags</code> is set to <code>true</code>. To
    #               list additional tags, set <code>ExclusiveStartTagKey</code> to the last key in the
    #               response.</p>
    #
    # @return [Types::ListTagsForStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_stream(
    #     stream_name: 'StreamName', # required
    #     exclusive_start_tag_key: 'ExclusiveStartTagKey',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForStreamOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.has_more_tags #=> Boolean
    #
    def list_tags_for_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTagsForStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForStream,
        stubs: @stubs,
        params_class: Params::ListTagsForStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Merges two adjacent shards in a Kinesis data stream and combines them into a single
    #             shard to reduce the stream's capacity to ingest and transport data. Two shards are
    #             considered adjacent if the union of the hash key ranges for the two shards form a
    #             contiguous set with no gaps. For example, if you have two shards, one with a hash key
    #             range of 276...381 and the other with a hash key range of 382...454, then you could
    #             merge these two shards into a single shard that would have a hash key range of
    #             276...454. After the merge, the single child shard receives data for all hash key values
    #             covered by the two parent shards.</p>
    #         <p>
    #             <code>MergeShards</code> is called when there is a need to reduce the overall capacity
    #             of a stream because of excess capacity that is not being used. You must specify the
    #             shard to be merged and the adjacent shard for a stream. For more information about
    #             merging shards, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html">Merge Two
    #                 Shards</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>.</p>
    #         <p>If the stream is in the <code>ACTIVE</code> state, you can call
    #                 <code>MergeShards</code>. If a stream is in the <code>CREATING</code>,
    #                 <code>UPDATING</code>, or <code>DELETING</code> state, <code>MergeShards</code>
    #             returns a <code>ResourceInUseException</code>. If the specified stream does not exist,
    #                 <code>MergeShards</code> returns a <code>ResourceNotFoundException</code>. </p>
    #         <p>You can use <a>DescribeStreamSummary</a> to check the state of the stream,
    #             which is returned in <code>StreamStatus</code>.</p>
    #         <p>
    #             <code>MergeShards</code> is an asynchronous operation. Upon receiving a
    #                 <code>MergeShards</code> request, Amazon Kinesis Data Streams immediately returns a
    #             response and sets the <code>StreamStatus</code> to <code>UPDATING</code>. After the
    #             operation is completed, Kinesis Data Streams sets the <code>StreamStatus</code> to
    #                 <code>ACTIVE</code>. Read and write operations continue to work while the stream is
    #             in the <code>UPDATING</code> state. </p>
    #         <p>You use <a>DescribeStreamSummary</a> and the <a>ListShards</a>
    #             APIs to determine the shard IDs that are specified in the <code>MergeShards</code>
    #             request. </p>
    #         <p>If you try to operate on too many streams in parallel using <a>CreateStream</a>, <a>DeleteStream</a>, <code>MergeShards</code>,
    #             or <a>SplitShard</a>, you receive a <code>LimitExceededException</code>. </p>
    #         <p>
    #             <code>MergeShards</code> has a limit of five transactions per second per account.</p>
    #
    # @param [Hash] params
    #   See {Types::MergeShardsInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream for the merge.</p>
    #
    # @option params [String] :shard_to_merge
    #   <p>The shard ID of the shard to combine with the adjacent shard for the merge.</p>
    #
    # @option params [String] :adjacent_shard_to_merge
    #   <p>The shard ID of the adjacent shard for the merge.</p>
    #
    # @return [Types::MergeShardsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_shards(
    #     stream_name: 'StreamName', # required
    #     shard_to_merge: 'ShardToMerge', # required
    #     adjacent_shard_to_merge: 'AdjacentShardToMerge' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MergeShardsOutput
    #
    def merge_shards(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MergeShardsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MergeShardsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MergeShards
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::MergeShards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MergeShards,
        stubs: @stubs,
        params_class: Params::MergeShardsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :merge_shards
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Writes a single data record into an Amazon Kinesis data stream. Call
    #                 <code>PutRecord</code> to send data into the stream for real-time ingestion and
    #             subsequent processing, one record at a time. Each shard can support writes up to 1,000
    #             records per second, up to a maximum data write total of 1 MiB per second.</p>
    #         <p>You must specify the name of the stream that captures, stores, and transports the
    #             data; a partition key; and the data blob itself.</p>
    #         <p>The data blob can be any type of data; for example, a segment from a log file,
    #             geographic/location data, website clickstream data, and so on.</p>
    #         <p>The partition key is used by Kinesis Data Streams to distribute data across shards.
    #             Kinesis Data Streams segregates the data records that belong to a stream into multiple
    #             shards, using the partition key associated with each data record to determine the shard
    #             to which a given data record belongs.</p>
    #         <p>Partition keys are Unicode strings, with a maximum length limit of 256 characters for
    #             each key. An MD5 hash function is used to map partition keys to 128-bit integer values
    #             and to map associated data records to shards using the hash key ranges of the shards.
    #             You can override hashing the partition key to determine the shard by explicitly
    #             specifying a hash value using the <code>ExplicitHashKey</code> parameter. For more
    #             information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>.</p>
    #         <p>
    #             <code>PutRecord</code> returns the shard ID of where the data record was placed and the
    #             sequence number that was assigned to the data record.</p>
    #         <p>Sequence numbers increase over time and are specific to a shard within a stream, not
    #             across all shards within a stream. To guarantee strictly increasing ordering, write
    #             serially to a shard and use the <code>SequenceNumberForOrdering</code> parameter. For
    #             more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>.</p>
    #         <important>
    #             <p>After you write a record to a stream, you cannot modify that record or its order
    #                 within the stream.</p>
    #         </important>
    #         <p>If a <code>PutRecord</code> request cannot be processed because of insufficient
    #             provisioned throughput on the shard involved in the request, <code>PutRecord</code>
    #             throws <code>ProvisionedThroughputExceededException</code>. </p>
    #         <p>By default, data records are accessible for 24 hours from the time that they are added
    #             to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRecordInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream to put the data record into.</p>
    #
    # @option params [String] :data
    #   <p>The data blob to put into the record, which is base64-encoded when the blob is
    #               serialized. When the data blob (the payload before base64-encoding) is added to the
    #               partition key size, the total size must not exceed the maximum record size (1
    #               MiB).</p>
    #
    # @option params [String] :partition_key
    #   <p>Determines which shard in the stream the data record is assigned to. Partition keys
    #               are Unicode strings with a maximum length limit of 256 characters for each key. Amazon
    #               Kinesis Data Streams uses the partition key as input to a hash function that maps the
    #               partition key and associated data to a specific shard. Specifically, an MD5 hash
    #               function is used to map partition keys to 128-bit integer values and to map associated
    #               data records to shards. As a result of this hashing mechanism, all data records with the
    #               same partition key map to the same shard within the stream.</p>
    #
    # @option params [String] :explicit_hash_key
    #   <p>The hash value used to explicitly determine the shard the data record is assigned to
    #               by overriding the partition key hash.</p>
    #
    # @option params [String] :sequence_number_for_ordering
    #   <p>Guarantees strictly increasing sequence numbers, for puts from the same client and to
    #               the same partition key. Usage: set the <code>SequenceNumberForOrdering</code> of record
    #                   <i>n</i> to the sequence number of record <i>n-1</i> (as
    #               returned in the result when putting record <i>n-1</i>). If this parameter
    #               is not set, records are coarsely ordered based on arrival time.</p>
    #
    # @return [Types::PutRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_record(
    #     stream_name: 'StreamName', # required
    #     data: 'Data', # required
    #     partition_key: 'PartitionKey', # required
    #     explicit_hash_key: 'ExplicitHashKey',
    #     sequence_number_for_ordering: 'SequenceNumberForOrdering'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRecordOutput
    #   resp.data.shard_id #=> String
    #   resp.data.sequence_number #=> String
    #   resp.data.encryption_type #=> String, one of ["NONE", "KMS"]
    #
    def put_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRecordInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRecordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRecord
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::KMSAccessDeniedException, Errors::KMSDisabledException, Errors::KMSInvalidStateException, Errors::KMSNotFoundException, Errors::KMSOptInRequired, Errors::KMSThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutRecord
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRecord,
        stubs: @stubs,
        params_class: Params::PutRecordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_record
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Writes multiple data records into a Kinesis data stream in a single call (also
    #             referred to as a <code>PutRecords</code> request). Use this operation to send data into
    #             the stream for data ingestion and processing. </p>
    #         <p>Each <code>PutRecords</code> request can support up to 500 records. Each record in the
    #             request can be as large as 1 MiB, up to a limit of 5 MiB for the entire request,
    #             including partition keys. Each shard can support writes up to 1,000 records per second,
    #             up to a maximum data write total of 1 MiB per second.</p>
    #         <p>You must specify the name of the stream that captures, stores, and transports the
    #             data; and an array of request <code>Records</code>, with each record in the array
    #             requiring a partition key and data blob. The record size limit applies to the total size
    #             of the partition key and data blob.</p>
    #         <p>The data blob can be any type of data; for example, a segment from a log file,
    #             geographic/location data, website clickstream data, and so on.</p>
    #         <p>The partition key is used by Kinesis Data Streams as input to a hash function that
    #             maps the partition key and associated data to a specific shard. An MD5 hash function is
    #             used to map partition keys to 128-bit integer values and to map associated data records
    #             to shards. As a result of this hashing mechanism, all data records with the same
    #             partition key map to the same shard within the stream. For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>.</p>
    #         <p>Each record in the <code>Records</code> array may include an optional parameter,
    #                 <code>ExplicitHashKey</code>, which overrides the partition key to shard mapping.
    #             This parameter allows a data producer to determine explicitly the shard where the record
    #             is stored. For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis
    #                 Data Streams Developer Guide</i>.</p>
    #         <p>The <code>PutRecords</code> response includes an array of response
    #                 <code>Records</code>. Each record in the response array directly correlates with a
    #             record in the request array using natural ordering, from the top to the bottom of the
    #             request and response. The response <code>Records</code> array always includes the same
    #             number of records as the request array.</p>
    #         <p>The response <code>Records</code> array includes both successfully and unsuccessfully
    #             processed records. Kinesis Data Streams attempts to process all records in each
    #                 <code>PutRecords</code> request. A single record failure does not stop the
    #             processing of subsequent records. As a result, PutRecords doesn't guarantee the ordering
    #             of records. If you need to read records in the same order they are written to the
    #             stream, use <a>PutRecord</a> instead of <code>PutRecords</code>, and write to
    #             the same shard.</p>
    #         <p>A successfully processed record includes <code>ShardId</code> and
    #                 <code>SequenceNumber</code> values. The <code>ShardId</code> parameter identifies
    #             the shard in the stream where the record is stored. The <code>SequenceNumber</code>
    #             parameter is an identifier assigned to the put record, unique to all records in the
    #             stream.</p>
    #         <p>An unsuccessfully processed record includes <code>ErrorCode</code> and
    #                 <code>ErrorMessage</code> values. <code>ErrorCode</code> reflects the type of error
    #             and can be one of the following values:
    #                 <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>.
    #                 <code>ErrorMessage</code> provides more detailed information about the
    #                 <code>ProvisionedThroughputExceededException</code> exception including the account
    #             ID, stream name, and shard ID of the record that was throttled. For more information
    #             about partially successful responses, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis
    #                 Data Streams Developer Guide</i>.</p>
    #         <important>
    #             <p>After you write a record to a stream, you cannot modify that record or its order
    #                 within the stream.</p>
    #         </important>
    #         <p>By default, data records are accessible for 24 hours from the time that they are added
    #             to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRecordsInput}.
    #
    # @option params [Array<PutRecordsRequestEntry>] :records
    #   <p>The records associated with the request.</p>
    #
    # @option params [String] :stream_name
    #   <p>The stream name associated with the request.</p>
    #
    # @return [Types::PutRecordsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_records(
    #     records: [
    #       {
    #         data: 'Data', # required
    #         explicit_hash_key: 'ExplicitHashKey',
    #         partition_key: 'PartitionKey' # required
    #       }
    #     ], # required
    #     stream_name: 'StreamName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRecordsOutput
    #   resp.data.failed_record_count #=> Integer
    #   resp.data.records #=> Array<PutRecordsResultEntry>
    #   resp.data.records[0] #=> Types::PutRecordsResultEntry
    #   resp.data.records[0].sequence_number #=> String
    #   resp.data.records[0].shard_id #=> String
    #   resp.data.records[0].error_code #=> String
    #   resp.data.records[0].error_message #=> String
    #   resp.data.encryption_type #=> String, one of ["NONE", "KMS"]
    #
    def put_records(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRecordsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRecordsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRecords
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::KMSAccessDeniedException, Errors::KMSDisabledException, Errors::KMSInvalidStateException, Errors::KMSNotFoundException, Errors::KMSOptInRequired, Errors::KMSThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutRecords
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRecords,
        stubs: @stubs,
        params_class: Params::PutRecordsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_records
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a consumer with a Kinesis data stream. When you use this operation, the
    #             consumer you register can then call <a>SubscribeToShard</a> to receive data
    #             from the stream using enhanced fan-out, at a rate of up to 2 MiB per second for every
    #             shard you subscribe to. This rate is unaffected by the total number of consumers that
    #             read from the same stream.</p>
    #         <p>You can register up to 20 consumers per stream. A given consumer can only be
    #             registered with one stream at a time.</p>
    #         <p>For an example of how to use this operations, see <a href="/streams/latest/dev/building-enhanced-consumers-api.html">Enhanced Fan-Out
    #                 Using the Kinesis Data Streams API</a>.</p>
    #         <p>The use of this operation has a limit of five transactions per second per account.
    #             Also, only 5 consumers can be created simultaneously. In other words, you cannot have
    #             more than 5 consumers in a <code>CREATING</code> status at the same time. Registering a
    #             6th consumer while there are 5 in a <code>CREATING</code> status results in a
    #                 <code>LimitExceededException</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterStreamConsumerInput}.
    #
    # @option params [String] :stream_arn
    #   <p>The ARN of the Kinesis data stream that you want to register the consumer with. For
    #               more info, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    #
    # @option params [String] :consumer_name
    #   <p>For a given Kinesis data stream, each consumer must have a unique name. However,
    #               consumer names don't have to be unique across data streams.</p>
    #
    # @return [Types::RegisterStreamConsumerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_stream_consumer(
    #     stream_arn: 'StreamARN', # required
    #     consumer_name: 'ConsumerName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterStreamConsumerOutput
    #   resp.data.consumer #=> Types::Consumer
    #   resp.data.consumer.consumer_name #=> String
    #   resp.data.consumer.consumer_arn #=> String
    #   resp.data.consumer.consumer_status #=> String, one of ["CREATING", "DELETING", "ACTIVE"]
    #   resp.data.consumer.consumer_creation_timestamp #=> Time
    #
    def register_stream_consumer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterStreamConsumerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterStreamConsumerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterStreamConsumer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RegisterStreamConsumer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterStreamConsumer,
        stubs: @stubs,
        params_class: Params::RegisterStreamConsumerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_stream_consumer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from the specified Kinesis data stream. Removed tags are deleted and
    #             cannot be recovered after this operation successfully completes.</p>
    #         <p>If you specify a tag that does not exist, it is ignored.</p>
    #         <p>
    #             <a>RemoveTagsFromStream</a> has a limit of five transactions per second per
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromStreamInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Each corresponding tag is removed from the stream.</p>
    #
    # @return [Types::RemoveTagsFromStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_stream(
    #     stream_name: 'StreamName', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsFromStreamOutput
    #
    def remove_tags_from_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsFromStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsFromStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTagsFromStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RemoveTagsFromStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTagsFromStream,
        stubs: @stubs,
        params_class: Params::RemoveTagsFromStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags_from_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Splits a shard into two new shards in the Kinesis data stream, to increase the
    #             stream's capacity to ingest and transport data. <code>SplitShard</code> is called when
    #             there is a need to increase the overall capacity of a stream because of an expected
    #             increase in the volume of data records being ingested. </p>
    #         <p>You can also use <code>SplitShard</code> when a shard appears to be approaching its
    #             maximum utilization; for example, the producers sending data into the specific shard are
    #             suddenly sending more than previously anticipated. You can also call
    #                 <code>SplitShard</code> to increase stream capacity, so that more Kinesis Data
    #             Streams applications can simultaneously read data from the stream for real-time
    #             processing. </p>
    #         <p>You must specify the shard to be split and the new hash key, which is the position in
    #             the shard where the shard gets split in two. In many cases, the new hash key might be
    #             the average of the beginning and ending hash key, but it can be any hash key value in
    #             the range being mapped into the shard. For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html">Split a
    #                 Shard</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>.</p>
    #         <p>You can use <a>DescribeStreamSummary</a> and the <a>ListShards</a> APIs to determine the shard ID and hash key values for the <code>ShardToSplit</code>
    #             and <code>NewStartingHashKey</code> parameters that are specified in the
    #                 <code>SplitShard</code> request.</p>
    #         <p>
    #             <code>SplitShard</code> is an asynchronous operation. Upon receiving a
    #                 <code>SplitShard</code> request, Kinesis Data Streams immediately returns a response
    #             and sets the stream status to <code>UPDATING</code>. After the operation is completed,
    #             Kinesis Data Streams sets the stream status to <code>ACTIVE</code>. Read and write
    #             operations continue to work while the stream is in the <code>UPDATING</code> state. </p>
    #         <p>You can use <a>DescribeStreamSummary</a> to check the status of the stream,
    #             which is returned in <code>StreamStatus</code>. If the stream is in the
    #                 <code>ACTIVE</code> state, you can call <code>SplitShard</code>.
    #             </p>
    #         <p>If the specified stream does not exist, <a>DescribeStreamSummary</a>
    #             returns a <code>ResourceNotFoundException</code>. If you try to create more shards than
    #             are authorized for your account, you receive a <code>LimitExceededException</code>. </p>
    #         <p>For the default shard limit for an Amazon Web Services account, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Kinesis
    #                 Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>. To increase this limit, <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact Amazon Web Services
    #                 Support</a>.</p>
    #         <p>If you try to operate on too many streams simultaneously using <a>CreateStream</a>, <a>DeleteStream</a>, <a>MergeShards</a>, and/or <a>SplitShard</a>, you receive a
    #                 <code>LimitExceededException</code>. </p>
    #         <p>
    #             <code>SplitShard</code> has a limit of five transactions per second per account.</p>
    #
    # @param [Hash] params
    #   See {Types::SplitShardInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream for the shard split.</p>
    #
    # @option params [String] :shard_to_split
    #   <p>The shard ID of the shard to split.</p>
    #
    # @option params [String] :new_starting_hash_key
    #   <p>A hash key value for the starting hash key of one of the child shards created by the
    #               split. The hash key range for a given shard constitutes a set of ordered contiguous
    #               positive integers. The value for <code>NewStartingHashKey</code> must be in the range of
    #               hash keys being mapped into the shard. The <code>NewStartingHashKey</code> hash key
    #               value and all higher hash key values in hash key range are distributed to one of the
    #               child shards. All the lower hash key values in the range are distributed to the other
    #               child shard.</p>
    #
    # @return [Types::SplitShardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.split_shard(
    #     stream_name: 'StreamName', # required
    #     shard_to_split: 'ShardToSplit', # required
    #     new_starting_hash_key: 'NewStartingHashKey' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SplitShardOutput
    #
    def split_shard(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SplitShardInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SplitShardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SplitShard
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::SplitShard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SplitShard,
        stubs: @stubs,
        params_class: Params::SplitShardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :split_shard
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables or updates server-side encryption using an Amazon Web Services KMS key for a
    #             specified stream. </p>
    #         <p>Starting encryption is an asynchronous operation. Upon receiving the request, Kinesis
    #             Data Streams returns immediately and sets the status of the stream to
    #                 <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the
    #             status of the stream back to <code>ACTIVE</code>. Updating or applying encryption
    #             normally takes a few seconds to complete, but it can take minutes. You can continue to
    #             read and write data to your stream while its status is <code>UPDATING</code>. Once the
    #             status of the stream is <code>ACTIVE</code>, encryption begins for records written to
    #             the stream. </p>
    #         <p>API Limits: You can successfully apply a new Amazon Web Services KMS key for
    #             server-side encryption 25 times in a rolling 24-hour period.</p>
    #         <p>Note: It can take up to 5 seconds after the stream is in an <code>ACTIVE</code> status
    #             before all records written to the stream are encrypted. After you enable encryption, you
    #             can verify that encryption is applied by inspecting the API response from
    #                 <code>PutRecord</code> or <code>PutRecords</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartStreamEncryptionInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream for which to start encrypting records.</p>
    #
    # @option params [String] :encryption_type
    #   <p>The encryption type to use. The only valid value is <code>KMS</code>.</p>
    #
    # @option params [String] :key_id
    #   <p>The GUID for the customer-managed Amazon Web Services KMS key to use for encryption.
    #               This value can be a globally unique identifier, a fully specified Amazon Resource Name
    #               (ARN) to either an alias or a key, or an alias name prefixed by "alias/".You can also
    #               use a master key owned by Kinesis Data Streams by specifying the alias
    #                   <code>aws/kinesis</code>.</p>
    #           <ul>
    #               <li>
    #                   <p>Key ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Alias ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Globally unique key ID example:
    #                           <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Alias name example: <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Master key owned by Kinesis Data Streams:
    #                       <code>alias/aws/kinesis</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::StartStreamEncryptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_stream_encryption(
    #     stream_name: 'StreamName', # required
    #     encryption_type: 'NONE', # required - accepts ["NONE", "KMS"]
    #     key_id: 'KeyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartStreamEncryptionOutput
    #
    def start_stream_encryption(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartStreamEncryptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartStreamEncryptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartStreamEncryption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::KMSAccessDeniedException, Errors::KMSDisabledException, Errors::KMSInvalidStateException, Errors::KMSNotFoundException, Errors::KMSOptInRequired, Errors::KMSThrottlingException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartStreamEncryption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartStreamEncryption,
        stubs: @stubs,
        params_class: Params::StartStreamEncryptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_stream_encryption
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables server-side encryption for a specified stream. </p>
    #         <p>Stopping encryption is an asynchronous operation. Upon receiving the request, Kinesis
    #             Data Streams returns immediately and sets the status of the stream to
    #                 <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the
    #             status of the stream back to <code>ACTIVE</code>. Stopping encryption normally takes a
    #             few seconds to complete, but it can take minutes. You can continue to read and write
    #             data to your stream while its status is <code>UPDATING</code>. Once the status of the
    #             stream is <code>ACTIVE</code>, records written to the stream are no longer encrypted by
    #             Kinesis Data Streams. </p>
    #         <p>API Limits: You can successfully disable server-side encryption 25 times in a rolling
    #             24-hour period. </p>
    #         <p>Note: It can take up to 5 seconds after the stream is in an <code>ACTIVE</code> status
    #             before all records written to the stream are no longer subject to encryption. After you
    #             disabled encryption, you can verify that encryption is not applied by inspecting the API
    #             response from <code>PutRecord</code> or <code>PutRecords</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopStreamEncryptionInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream on which to stop encrypting records.</p>
    #
    # @option params [String] :encryption_type
    #   <p>The encryption type. The only valid value is <code>KMS</code>.</p>
    #
    # @option params [String] :key_id
    #   <p>The GUID for the customer-managed Amazon Web Services KMS key to use for encryption.
    #               This value can be a globally unique identifier, a fully specified Amazon Resource Name
    #               (ARN) to either an alias or a key, or an alias name prefixed by "alias/".You can also
    #               use a master key owned by Kinesis Data Streams by specifying the alias
    #                   <code>aws/kinesis</code>.</p>
    #           <ul>
    #               <li>
    #                   <p>Key ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Alias ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Globally unique key ID example:
    #                           <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Alias name example: <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Master key owned by Kinesis Data Streams:
    #                       <code>alias/aws/kinesis</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::StopStreamEncryptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stream_encryption(
    #     stream_name: 'StreamName', # required
    #     encryption_type: 'NONE', # required - accepts ["NONE", "KMS"]
    #     key_id: 'KeyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopStreamEncryptionOutput
    #
    def stop_stream_encryption(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopStreamEncryptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopStreamEncryptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopStreamEncryption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopStreamEncryption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopStreamEncryption,
        stubs: @stubs,
        params_class: Params::StopStreamEncryptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_stream_encryption
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the shard count of the specified stream to the specified number of
    #             shards.</p>
    #         <p>Updating the shard count is an asynchronous operation. Upon receiving the request,
    #             Kinesis Data Streams returns immediately and sets the status of the stream to
    #                 <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the
    #             status of the stream back to <code>ACTIVE</code>. Depending on the size of the stream,
    #             the scaling action could take a few minutes to complete. You can continue to read and
    #             write data to your stream while its status is <code>UPDATING</code>.</p>
    #         <p>To update the shard count, Kinesis Data Streams performs splits or merges on
    #             individual shards. This can cause short-lived shards to be created, in addition to the
    #             final shards. These short-lived shards count towards your total shard limit for your
    #             account in the Region.</p>
    #         <p>When using this operation, we recommend that you specify a target shard count that is
    #             a multiple of 25% (25%, 50%, 75%, 100%). You can specify any target value within your
    #             shard limit. However, if you specify a target that isn't a multiple of 25%, the scaling
    #             action might take longer to complete. </p>
    #         <p>This operation has the following default limits. By default, you cannot do the
    #             following:</p>
    #         <ul>
    #             <li>
    #                 <p>Scale more than ten times per rolling 24-hour period per stream</p>
    #             </li>
    #             <li>
    #                 <p>Scale up to more than double your current shard count for a stream</p>
    #             </li>
    #             <li>
    #                 <p>Scale down below half your current shard count for a stream</p>
    #             </li>
    #             <li>
    #                 <p>Scale up to more than 10000 shards in a stream</p>
    #             </li>
    #             <li>
    #                 <p>Scale a stream with more than 10000 shards down unless the result is less than
    #                     10000 shards</p>
    #             </li>
    #             <li>
    #                 <p>Scale up to more than the shard limit for your account</p>
    #             </li>
    #          </ul>
    #         <p>For the default limits for an Amazon Web Services account, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams
    #                 Limits</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>. To request an increase in the call rate limit, the shard limit for
    #             this API, or your overall shard limit, use the <a href="https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&limitType=service-code-kinesis">limits form</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateShardCountInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    #
    # @option params [Integer] :target_shard_count
    #   <p>The new number of shards. This value has the following default limits. By default, you
    #               cannot do the following: </p>
    #           <ul>
    #               <li>
    #                   <p>Set this value to more than double your current shard count for a
    #                       stream.</p>
    #               </li>
    #               <li>
    #                   <p>Set this value below half your current shard count for a stream.</p>
    #               </li>
    #               <li>
    #                   <p>Set this value to more than 10000 shards in a stream (the default limit for
    #                       shard count per stream is 10000 per account per region), unless you request a
    #                       limit increase.</p>
    #               </li>
    #               <li>
    #                   <p>Scale a stream with more than 10000 shards down unless you set this value to
    #                       less than 10000 shards.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :scaling_type
    #   <p>The scaling type. Uniform scaling creates shards of equal size.</p>
    #
    # @return [Types::UpdateShardCountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_shard_count(
    #     stream_name: 'StreamName', # required
    #     target_shard_count: 1, # required
    #     scaling_type: 'UNIFORM_SCALING' # required - accepts ["UNIFORM_SCALING"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateShardCountOutput
    #   resp.data.stream_name #=> String
    #   resp.data.current_shard_count #=> Integer
    #   resp.data.target_shard_count #=> Integer
    #
    def update_shard_count(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateShardCountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateShardCountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateShardCount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateShardCount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateShardCount,
        stubs: @stubs,
        params_class: Params::UpdateShardCountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_shard_count
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates the capacity mode of the data stream. Currently, in Kinesis Data Streams, you
    #             can choose between an <b>on-demand</b> capacity mode and a
    #                 <b>provisioned</b> capacity mode for your data stream.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStreamModeInput}.
    #
    # @option params [String] :stream_arn
    #   <p> Specifies the ARN of the data stream whose capacity mode you want to update. </p>
    #
    # @option params [StreamModeDetails] :stream_mode_details
    #   <p> Specifies the capacity mode to which you want to set your data stream. Currently, in
    #               Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>
    #
    # @return [Types::UpdateStreamModeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stream_mode(
    #     stream_arn: 'StreamARN', # required
    #     stream_mode_details: {
    #       stream_mode: 'PROVISIONED' # required - accepts ["PROVISIONED", "ON_DEMAND"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStreamModeOutput
    #
    def update_stream_mode(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStreamModeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStreamModeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStreamMode
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateStreamMode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStreamMode,
        stubs: @stubs,
        params_class: Params::UpdateStreamModeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_stream_mode
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
