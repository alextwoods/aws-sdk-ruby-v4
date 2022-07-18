# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DynamoDBStreams
  # An API client for DynamoDBStreams_20120810
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon DynamoDB</fullname>
  #
  #          <p>Amazon DynamoDB Streams provides API actions for accessing streams and processing
  #          stream records. To learn more about application development with Streams, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html">Capturing
  #             Table Activity with DynamoDB Streams</a> in the Amazon DynamoDB Developer
  #          Guide.</p>
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
    def initialize(config = AWS::SDK::DynamoDBStreams::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.</p>
    #          <note>
    #             <p>You can call <code>DescribeStream</code> at a maximum rate of 10 times per second.</p>
    #          </note>
    #          <p>Each shard in the stream has a <code>SequenceNumberRange</code> associated with it. If the
    #         <code>SequenceNumberRange</code> has a <code>StartingSequenceNumber</code> but no
    #         <code>EndingSequenceNumber</code>, then the shard is still open (able to receive more stream
    #       records). If both <code>StartingSequenceNumber</code> and <code>EndingSequenceNumber</code>
    #       are present, then that shard is closed and can no longer receive more data.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStreamInput}.
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) for the stream.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of shard objects to return. The upper limit is 100.</p>
    #
    # @option params [String] :exclusive_start_shard_id
    #   <p>The shard ID of the first item that this operation will evaluate. Use the value that was
    #         returned for <code>LastEvaluatedShardId</code> in the previous operation. </p>
    #
    # @return [Types::DescribeStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream(
    #     stream_arn: 'StreamArn', # required
    #     limit: 1,
    #     exclusive_start_shard_id: 'ExclusiveStartShardId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStreamOutput
    #   resp.data.stream_description #=> Types::StreamDescription
    #   resp.data.stream_description.stream_arn #=> String
    #   resp.data.stream_description.stream_label #=> String
    #   resp.data.stream_description.stream_status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #   resp.data.stream_description.stream_view_type #=> String, one of ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   resp.data.stream_description.creation_request_date_time #=> Time
    #   resp.data.stream_description.table_name #=> String
    #   resp.data.stream_description.key_schema #=> Array<KeySchemaElement>
    #   resp.data.stream_description.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.stream_description.key_schema[0].attribute_name #=> String
    #   resp.data.stream_description.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.stream_description.shards #=> Array<Shard>
    #   resp.data.stream_description.shards[0] #=> Types::Shard
    #   resp.data.stream_description.shards[0].shard_id #=> String
    #   resp.data.stream_description.shards[0].sequence_number_range #=> Types::SequenceNumberRange
    #   resp.data.stream_description.shards[0].sequence_number_range.starting_sequence_number #=> String
    #   resp.data.stream_description.shards[0].sequence_number_range.ending_sequence_number #=> String
    #   resp.data.stream_description.shards[0].parent_shard_id #=> String
    #   resp.data.stream_description.last_evaluated_shard_id #=> String
    #
    def describe_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStreamInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ResourceNotFoundException]),
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

    # <p>Retrieves the stream records from a given shard.</p>
    #          <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard iterator
    #       specifies the position in the shard from which you want to start reading stream records
    #       sequentially. If there are no stream records available in the portion of the shard that the
    #       iterator points to, <code>GetRecords</code> returns an empty list. Note that it might take
    #       multiple calls to get to a portion of the shard that contains stream records.</p>
    #          <note>
    #             <p>
    #                <code>GetRecords</code> can retrieve a maximum of 1 MB of data or 1000 stream records,
    #         whichever comes first.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetRecordsInput}.
    #
    # @option params [String] :shard_iterator
    #   <p>A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of records to return from the shard. The upper limit is 1000.</p>
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
    #   resp.data.records[0].event_id #=> String
    #   resp.data.records[0].event_name #=> String, one of ["INSERT", "MODIFY", "REMOVE"]
    #   resp.data.records[0].event_version #=> String
    #   resp.data.records[0].event_source #=> String
    #   resp.data.records[0].aws_region #=> String
    #   resp.data.records[0].dynamodb #=> Types::StreamRecord
    #   resp.data.records[0].dynamodb.approximate_creation_date_time #=> Time
    #   resp.data.records[0].dynamodb.keys #=> Hash<String, AttributeValue>
    #   resp.data.records[0].dynamodb.keys['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.records[0].dynamodb.keys['key'].s #=> String
    #   resp.data.records[0].dynamodb.keys['key'].n #=> String
    #   resp.data.records[0].dynamodb.keys['key'].b #=> String
    #   resp.data.records[0].dynamodb.keys['key'].ss #=> Array<String>
    #   resp.data.records[0].dynamodb.keys['key'].ss[0] #=> String
    #   resp.data.records[0].dynamodb.keys['key'].ns #=> Array<String>
    #   resp.data.records[0].dynamodb.keys['key'].ns[0] #=> String
    #   resp.data.records[0].dynamodb.keys['key'].bs #=> Array<String>
    #   resp.data.records[0].dynamodb.keys['key'].bs[0] #=> String
    #   resp.data.records[0].dynamodb.keys['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.records[0].dynamodb.keys['key'].l #=> Array<AttributeValue>
    #   resp.data.records[0].dynamodb.keys['key'].null #=> Boolean
    #   resp.data.records[0].dynamodb.keys['key'].bool #=> Boolean
    #   resp.data.records[0].dynamodb.new_image #=> Hash<String, AttributeValue>
    #   resp.data.records[0].dynamodb.old_image #=> Hash<String, AttributeValue>
    #   resp.data.records[0].dynamodb.sequence_number #=> String
    #   resp.data.records[0].dynamodb.size_bytes #=> Integer
    #   resp.data.records[0].dynamodb.stream_view_type #=> String, one of ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   resp.data.records[0].user_identity #=> Types::Identity
    #   resp.data.records[0].user_identity.principal_id #=> String
    #   resp.data.records[0].user_identity.type #=> String
    #   resp.data.next_shard_iterator #=> String
    #
    def get_records(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecordsInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExpiredIteratorException, Errors::InternalServerError, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::TrimmedDataAccessException]),
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

    # <p>Returns a shard iterator. A shard iterator provides information
    #       about how to retrieve the stream records from within a shard.  Use
    #       the shard iterator in a subsequent
    #       <code>GetRecords</code> request to read the stream records
    #       from the shard.</p>
    #          <note>
    #             <p>A shard iterator expires 15 minutes after it is returned to the requester.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetShardIteratorInput}.
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) for the stream.</p>
    #
    # @option params [String] :shard_id
    #   <p>The identifier of the shard. The iterator will be returned for this shard ID.</p>
    #
    # @option params [String] :shard_iterator_type
    #   <p>Determines how the shard iterator is used to start reading stream records from the shard:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the position denoted by a
    #             specific sequence number.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the position denoted by a
    #             specific sequence number.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRIM_HORIZON</code> - Start reading at the last (untrimmed) stream record, which is
    #             the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention.
    #             Stream records whose age exceeds this limit are subject to removal (trimming) from the
    #             stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LATEST</code> - Start reading just after the most recent stream record in the
    #             shard, so that you always read the most recent data in the shard.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :sequence_number
    #   <p>The sequence number of a stream record in the shard from which to start reading.</p>
    #
    # @return [Types::GetShardIteratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_shard_iterator(
    #     stream_arn: 'StreamArn', # required
    #     shard_id: 'ShardId', # required
    #     shard_iterator_type: 'TRIM_HORIZON', # required - accepts ["TRIM_HORIZON", "LATEST", "AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER"]
    #     sequence_number: 'SequenceNumber'
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ResourceNotFoundException, Errors::TrimmedDataAccessException]),
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

    # <p>Returns an array of stream ARNs associated with the current account and endpoint. If the
    #         <code>TableName</code> parameter is present, then <code>ListStreams</code> will return only the
    #       streams ARNs for that table.</p>
    #          <note>
    #             <p>You can call <code>ListStreams</code> at a maximum rate of 5 times per second.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListStreamsInput}.
    #
    # @option params [String] :table_name
    #   <p>If this parameter is provided, then only the streams associated with this table name are returned.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of streams to return. The upper limit is 100.</p>
    #
    # @option params [String] :exclusive_start_stream_arn
    #   <p>The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the
    #         value that was returned for <code>LastEvaluatedStreamArn</code> in the previous operation.
    #       </p>
    #
    # @return [Types::ListStreamsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams(
    #     table_name: 'TableName',
    #     limit: 1,
    #     exclusive_start_stream_arn: 'ExclusiveStartStreamArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamsOutput
    #   resp.data.streams #=> Array<Stream>
    #   resp.data.streams[0] #=> Types::Stream
    #   resp.data.streams[0].stream_arn #=> String
    #   resp.data.streams[0].table_name #=> String
    #   resp.data.streams[0].stream_label #=> String
    #   resp.data.last_evaluated_stream_arn #=> String
    #
    def list_streams(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamsInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ResourceNotFoundException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
