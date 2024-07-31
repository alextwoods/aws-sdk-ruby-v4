# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'plugins/global_config'

module AWS::SDK::Kinesis
  # <fullname>Amazon Kinesis Data Streams Service API Reference</fullname>
  #          <p>Amazon Kinesis Data Streams is a managed service that scales elastically for real-time
  #             processing of streaming big data.</p>
  class Client < Hearth::Client

    # @api private
    @plugins = Hearth::PluginList.new([
      Plugins::GlobalConfig.new
    ])

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      super(options, Config)
    end

    # @return [Config] config
    attr_reader :config

    # <p>Adds or updates tags for the specified Kinesis data stream. You can assign up to 50
    #             tags to a data stream.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>If tags have already been assigned to the stream, <code>AddTagsToStream</code>
    #             overwrites any existing tags that correspond to the specified tag keys.</p>
    #          <p>
    #             <a>AddTagsToStream</a> has a limit of five transactions per second per
    #             account.</p>
    # @param [Hash | Types::AddTagsToStreamInput] params
    #   Request parameters for this operation.
    #   See {Types::AddTagsToStreamInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.add_tags_to_stream(
    #     stream_name: 'StreamName',
    #     tags: {
    #       'key' => 'value'
    #     }, # required
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::AddTagsToStreamOutput
    def add_tags_to_stream(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::AddTagsToStreamInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::AddTagsToStream.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :add_tags_to_stream,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#add_tags_to_stream] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#add_tags_to_stream] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#add_tags_to_stream] #{output.data}")
      output
    end

    # <p>Creates a Kinesis data stream. A stream captures and transports data records that are
    #             continuously emitted from different data sources or <i>producers</i>.
    #             Scale-out within a stream is explicitly supported by means of shards, which are uniquely
    #             identified groups of data records in a stream.</p>
    #          <p>You can create your data stream using either on-demand or provisioned capacity mode.
    #             Data streams with an on-demand mode require no capacity planning and automatically scale
    #             to handle gigabytes of write and read throughput per minute. With the on-demand mode,
    #             Kinesis Data Streams automatically manages the shards in order to provide the necessary
    #             throughput. For the data streams with a provisioned mode, you must specify the number of
    #             shards for the data stream. Each shard can support reads up to five transactions per
    #             second, up to a maximum data read total of 2 MiB per second. Each shard can support
    #             writes up to 1,000 records per second, up to a maximum data write total of 1 MiB per
    #             second. If the amount of data input increases or decreases, you can add or remove
    #             shards.</p>
    #          <p>The stream name identifies the stream. The name is scoped to the Amazon Web Services
    #             account used by the application. It is also scoped by Amazon Web Services Region. That
    #             is, two streams in two different accounts can have the same name, and two streams in the
    #             same account, but in two different Regions, can have the same name.</p>
    #          <p>
    #             <code>CreateStream</code> is an asynchronous operation. Upon receiving a
    #                 <code>CreateStream</code> request, Kinesis Data Streams immediately returns and sets
    #             the stream status to <code>CREATING</code>. After the stream is created, Kinesis Data
    #             Streams sets the stream status to <code>ACTIVE</code>. You should perform read and write
    #             operations only on an <code>ACTIVE</code> stream. </p>
    #          <p>You receive a <code>LimitExceededException</code> when making a
    #                 <code>CreateStream</code> request when you try to do one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Have more than five streams in the <code>CREATING</code> state at any point in
    #                     time.</p>
    #             </li>
    #             <li>
    #                <p>Create more shards than are authorized for your account.</p>
    #             </li>
    #          </ul>
    #          <p>For the default shard limit for an Amazon Web Services account, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Amazon
    #                 Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>. To increase this limit, <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact Amazon Web Services
    #                 Support</a>.</p>
    #          <p>You can use <a>DescribeStreamSummary</a> to check the stream status, which
    #             is returned in <code>StreamStatus</code>.</p>
    #          <p>
    #             <a>CreateStream</a> has a limit of five transactions per second per
    #             account.</p>
    # @param [Hash | Types::CreateStreamInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateStreamInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_stream(
    #     stream_name: 'StreamName', # required
    #     shard_count: 1,
    #     stream_mode_details: {
    #       stream_mode: 'PROVISIONED' # required - accepts ["PROVISIONED", "ON_DEMAND"]
    #     }
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateStreamOutput
    def create_stream(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::CreateStreamInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::CreateStream.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_stream,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_stream] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_stream] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_stream] #{output.data}")
      output
    end

    # <p>Decreases the Kinesis data stream's retention period, which is the length of time data
    #             records are accessible after they are added to the stream. The minimum value of a
    #             stream's retention period is 24 hours.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>This operation may result in lost data. For example, if the stream's retention period
    #             is 48 hours and is decreased to 24 hours, any data already in the stream that is older
    #             than 24 hours is inaccessible.</p>
    # @param [Hash | Types::DecreaseStreamRetentionPeriodInput] params
    #   Request parameters for this operation.
    #   See {Types::DecreaseStreamRetentionPeriodInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.decrease_stream_retention_period(
    #     stream_name: 'StreamName',
    #     retention_period_hours: 1, # required
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DecreaseStreamRetentionPeriodOutput
    def decrease_stream_retention_period(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::DecreaseStreamRetentionPeriodInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::DecreaseStreamRetentionPeriod.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :decrease_stream_retention_period,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#decrease_stream_retention_period] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#decrease_stream_retention_period] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#decrease_stream_retention_period] #{output.data}")
      output
    end

    # <p>Delete a policy for the specified data stream or consumer. Request patterns can be one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Data stream pattern: <code>arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Consumer pattern: <code>^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::DeleteResourcePolicyInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteResourcePolicyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_resource_policy(
    #     resource_arn: 'ResourceARN' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteResourcePolicyOutput
    def delete_resource_policy(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::DeleteResourcePolicyInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::DeleteResourcePolicy.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_resource_policy,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_resource_policy] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_resource_policy] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_resource_policy] #{output.data}")
      output
    end

    # <p>Deletes a Kinesis data stream and all its shards and data. You must shut down any
    #             applications that are operating on the stream before you delete the stream. If an
    #             application attempts to operate on a deleted stream, it receives the exception
    #                 <code>ResourceNotFoundException</code>.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>If the stream is in the <code>ACTIVE</code> state, you can delete it. After a
    #                 <code>DeleteStream</code> request, the specified stream is in the
    #                 <code>DELETING</code> state until Kinesis Data Streams completes the
    #             deletion.</p>
    #          <p>
    #             <b>Note:</b> Kinesis Data Streams might continue to accept
    #             data read and write operations, such as <a>PutRecord</a>, <a>PutRecords</a>, and <a>GetRecords</a>, on a stream in the
    #                 <code>DELETING</code> state until the stream deletion is complete.</p>
    #          <p>When you delete a stream, any shards in that stream are also deleted, and any tags are
    #             dissociated from the stream.</p>
    #          <p>You can use the <a>DescribeStreamSummary</a> operation to check the state
    #             of the stream, which is returned in <code>StreamStatus</code>.</p>
    #          <p>
    #             <a>DeleteStream</a> has a limit of five transactions per second per
    #             account.</p>
    # @param [Hash | Types::DeleteStreamInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteStreamInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_stream(
    #     stream_name: 'StreamName',
    #     enforce_consumer_deletion: false,
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteStreamOutput
    def delete_stream(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::DeleteStreamInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::DeleteStream.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_stream,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_stream] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_stream] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_stream] #{output.data}")
      output
    end

    # <p>To deregister a consumer, provide its ARN. Alternatively, you can provide the ARN of
    #             the data stream and the name you gave the consumer when you registered it. You may also
    #             provide all three parameters, as long as they don't conflict with each other. If you
    #             don't know the name or ARN of the consumer that you want to deregister, you can use the
    #                 <a>ListStreamConsumers</a> operation to get a list of the descriptions of
    #             all the consumers that are currently registered with a given data stream. The
    #             description of a consumer contains its name and ARN.</p>
    #          <p>This operation has a limit of five transactions per second per stream.</p>
    # @param [Hash | Types::DeregisterStreamConsumerInput] params
    #   Request parameters for this operation.
    #   See {Types::DeregisterStreamConsumerInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.deregister_stream_consumer(
    #     stream_arn: 'StreamARN',
    #     consumer_name: 'ConsumerName',
    #     consumer_arn: 'ConsumerARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeregisterStreamConsumerOutput
    def deregister_stream_consumer(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::DeregisterStreamConsumerInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::DeregisterStreamConsumer.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :deregister_stream_consumer,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#deregister_stream_consumer] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#deregister_stream_consumer] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#deregister_stream_consumer] #{output.data}")
      output
    end

    # <p>Describes the shard limits and usage for the account.</p>
    #          <p>If you update your account limits, the old limits might be returned for a few
    #             minutes.</p>
    #          <p>This operation has a limit of one transaction per second per account.</p>
    # @param [Hash | Types::DescribeLimitsInput] params
    #   Request parameters for this operation.
    #   See {Types::DescribeLimitsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.describe_limits()
    # @example Response structure
    #   resp.data #=> Types::DescribeLimitsOutput
    #   resp.data.shard_limit #=> Integer
    #   resp.data.open_shard_count #=> Integer
    #   resp.data.on_demand_stream_count #=> Integer
    #   resp.data.on_demand_stream_count_limit #=> Integer
    def describe_limits(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::DescribeLimitsInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::DescribeLimits.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :describe_limits,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_limits] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#describe_limits] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_limits] #{output.data}")
      output
    end

    # <p>Describes the specified Kinesis data stream.</p>
    #          <note>
    #             <p>This API has been revised. It's highly recommended that you use the <a>DescribeStreamSummary</a> API to get a summarized description of the
    #                 specified Kinesis data stream and the <a>ListShards</a> API to list the
    #                 shards in a specified data stream and obtain information about each shard. </p>
    #          </note>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>The information returned includes the stream name, Amazon Resource Name (ARN),
    #             creation time, enhanced metric configuration, and shard map. The shard map is an array
    #             of shard objects. For each shard object, there is the hash key and sequence number
    #             ranges that the shard spans, and the IDs of any earlier shards that played in a role in
    #             creating the shard. Every record ingested in the stream is identified by a sequence
    #             number, which is assigned when the record is put into the stream.</p>
    #          <p>You can limit the number of shards returned by each call. For more information, see
    #                 <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html">Retrieving
    #                 Shards from a Stream</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>.</p>
    #          <p>There are no guarantees about the chronological order shards returned. To process
    #             shards in chronological order, use the ID of the parent shard to track the lineage to
    #             the oldest shard.</p>
    #          <p>This operation has a limit of 10 transactions per second per account.</p>
    # @param [Hash | Types::DescribeStreamInput] params
    #   Request parameters for this operation.
    #   See {Types::DescribeStreamInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.describe_stream(
    #     stream_name: 'StreamName',
    #     limit: 1,
    #     exclusive_start_shard_id: 'ExclusiveStartShardId',
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
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
    def describe_stream(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::DescribeStreamInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::DescribeStream.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :describe_stream,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_stream] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#describe_stream] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_stream] #{output.data}")
      output
    end

    # <p>To get the description of a registered consumer, provide the ARN of the consumer.
    #             Alternatively, you can provide the ARN of the data stream and the name you gave the
    #             consumer when you registered it. You may also provide all three parameters, as long as
    #             they don't conflict with each other. If you don't know the name or ARN of the consumer
    #             that you want to describe, you can use the <a>ListStreamConsumers</a>
    #             operation to get a list of the descriptions of all the consumers that are currently
    #             registered with a given data stream.</p>
    #          <p>This operation has a limit of 20 transactions per second per stream.</p>
    #          <note>
    #             <p>When making a cross-account call with <code>DescribeStreamConsumer</code>, make sure to provide the ARN of the consumer.  </p>
    #          </note>
    # @param [Hash | Types::DescribeStreamConsumerInput] params
    #   Request parameters for this operation.
    #   See {Types::DescribeStreamConsumerInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.describe_stream_consumer(
    #     stream_arn: 'StreamARN',
    #     consumer_name: 'ConsumerName',
    #     consumer_arn: 'ConsumerARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeStreamConsumerOutput
    #   resp.data.consumer_description #=> Types::ConsumerDescription
    #   resp.data.consumer_description.consumer_name #=> String
    #   resp.data.consumer_description.consumer_arn #=> String
    #   resp.data.consumer_description.consumer_status #=> String, one of ["CREATING", "DELETING", "ACTIVE"]
    #   resp.data.consumer_description.consumer_creation_timestamp #=> Time
    #   resp.data.consumer_description.stream_arn #=> String
    def describe_stream_consumer(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::DescribeStreamConsumerInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::DescribeStreamConsumer.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :describe_stream_consumer,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_stream_consumer] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#describe_stream_consumer] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_stream_consumer] #{output.data}")
      output
    end

    # <p>Provides a summarized description of the specified Kinesis data stream without the
    #             shard list.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>The information returned includes the stream name, Amazon Resource Name (ARN), status,
    #             record retention period, approximate creation time, monitoring, encryption details, and
    #             open shard count. </p>
    #          <p>
    #             <a>DescribeStreamSummary</a> has a limit of 20 transactions per second per
    #             account.</p>
    # @param [Hash | Types::DescribeStreamSummaryInput] params
    #   Request parameters for this operation.
    #   See {Types::DescribeStreamSummaryInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.describe_stream_summary(
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
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
    def describe_stream_summary(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::DescribeStreamSummaryInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::DescribeStreamSummary.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :describe_stream_summary,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_stream_summary] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#describe_stream_summary] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#describe_stream_summary] #{output.data}")
      output
    end

    # <p>Disables enhanced monitoring.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    # @param [Hash | Types::DisableEnhancedMonitoringInput] params
    #   Request parameters for this operation.
    #   See {Types::DisableEnhancedMonitoringInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.disable_enhanced_monitoring(
    #     stream_name: 'StreamName',
    #     shard_level_metrics: [
    #       'IncomingBytes' # accepts ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]
    #     ], # required
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DisableEnhancedMonitoringOutput
    #   resp.data.stream_name #=> String
    #   resp.data.current_shard_level_metrics #=> Array<String>
    #   resp.data.current_shard_level_metrics[0] #=> String, one of ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]
    #   resp.data.desired_shard_level_metrics #=> Array<String>
    #   resp.data.stream_arn #=> String
    def disable_enhanced_monitoring(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::DisableEnhancedMonitoringInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::DisableEnhancedMonitoring.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :disable_enhanced_monitoring,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#disable_enhanced_monitoring] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#disable_enhanced_monitoring] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#disable_enhanced_monitoring] #{output.data}")
      output
    end

    # <p>Enables enhanced Kinesis data stream monitoring for shard-level metrics.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    # @param [Hash | Types::EnableEnhancedMonitoringInput] params
    #   Request parameters for this operation.
    #   See {Types::EnableEnhancedMonitoringInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.enable_enhanced_monitoring(
    #     stream_name: 'StreamName',
    #     shard_level_metrics: [
    #       'IncomingBytes' # accepts ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]
    #     ], # required
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::EnableEnhancedMonitoringOutput
    #   resp.data.stream_name #=> String
    #   resp.data.current_shard_level_metrics #=> Array<String>
    #   resp.data.current_shard_level_metrics[0] #=> String, one of ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]
    #   resp.data.desired_shard_level_metrics #=> Array<String>
    #   resp.data.stream_arn #=> String
    def enable_enhanced_monitoring(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::EnableEnhancedMonitoringInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::EnableEnhancedMonitoring.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :enable_enhanced_monitoring,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#enable_enhanced_monitoring] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#enable_enhanced_monitoring] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#enable_enhanced_monitoring] #{output.data}")
      output
    end

    # <p>Gets data records from a Kinesis data stream's shard.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard
    #             iterator specifies the position in the shard from which you want to start reading data
    #             records sequentially. If there are no records available in the portion of the shard that
    #             the iterator points to, <a>GetRecords</a> returns an empty list. It might
    #             take multiple calls to get to a portion of the shard that contains records.</p>
    #          <p>You can scale by provisioning multiple shards per stream while considering service
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
    #          <p>Each data record can be up to 1 MiB in size, and each shard can read up to 2 MiB per
    #             second. You can ensure that your calls don't exceed the maximum supported size or
    #             throughput by using the <code>Limit</code> parameter to specify the maximum number of
    #             records that <a>GetRecords</a> can return. Consider your average record size
    #             when determining this limit. The maximum number of records that can be returned per call
    #             is 10,000.</p>
    #          <p>The size of the data returned by <a>GetRecords</a> varies depending on the
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
    #          <p>To detect whether the application is falling behind in processing, you can use the
    #                 <code>MillisBehindLatest</code> response attribute. You can also monitor the stream
    #             using CloudWatch metrics and other mechanisms (see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html">Monitoring</a> in the <i>Amazon
    #                 Kinesis Data Streams Developer Guide</i>).</p>
    #          <p>Each Amazon Kinesis record includes a value, <code>ApproximateArrivalTimestamp</code>,
    #             that is set when a stream successfully receives and stores a record. This is commonly
    #             referred to as a server-side time stamp, whereas a client-side time stamp is set when a
    #             data producer creates or sends the record to a stream (a data producer is any data
    #             source putting data records into a stream, for example with <a>PutRecords</a>). The time stamp has millisecond precision. There are no guarantees about the time
    #             stamp accuracy, or that the time stamp is always increasing. For example, records in a
    #             shard or across a stream might have time stamps that are out of order.</p>
    #          <p>This operation has a limit of five transactions per second per shard.</p>
    # @param [Hash | Types::GetRecordsInput] params
    #   Request parameters for this operation.
    #   See {Types::GetRecordsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_records(
    #     shard_iterator: 'ShardIterator', # required
    #     limit: 1,
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
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
    def get_records(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::GetRecordsInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::GetRecords.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_records,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_records] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_records] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_records] #{output.data}")
      output
    end

    # <p>Returns a policy attached to the specified data stream or consumer. Request patterns can be one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Data stream pattern: <code>arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p> Consumer pattern: <code>^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::GetResourcePolicyInput] params
    #   Request parameters for this operation.
    #   See {Types::GetResourcePolicyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_resource_policy(
    #     resource_arn: 'ResourceARN' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetResourcePolicyOutput
    #   resp.data.policy #=> String
    def get_resource_policy(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::GetResourcePolicyInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::GetResourcePolicy.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_resource_policy,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_resource_policy] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_resource_policy] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_resource_policy] #{output.data}")
      output
    end

    # <p>Gets an Amazon Kinesis shard iterator. A shard iterator expires 5 minutes after it is
    #             returned to the requester.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>A shard iterator specifies the shard position from which to start reading data records
    #             sequentially. The position is specified using the sequence number of a data record in a
    #             shard. A sequence number is the identifier associated with every record ingested in the
    #             stream, and is assigned when a record is put into the stream. Each stream has one or
    #             more shards.</p>
    #          <p>You must specify the shard iterator type. For example, you can set the
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
    #          <p>When you read repeatedly from a stream, use a <a>GetShardIterator</a>
    #             request to get the first shard iterator for use in your first <a>GetRecords</a> request and for subsequent reads use the shard iterator returned by the <a>GetRecords</a> request in <code>NextShardIterator</code>. A new shard
    #             iterator is returned by every <a>GetRecords</a> request in
    #                 <code>NextShardIterator</code>, which you use in the <code>ShardIterator</code>
    #             parameter of the next <a>GetRecords</a> request. </p>
    #          <p>If a <a>GetShardIterator</a> request is made too often, you receive a
    #                 <code>ProvisionedThroughputExceededException</code>. For more information about
    #             throughput limits, see <a>GetRecords</a>, and <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the
    #                 <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>
    #          <p>If the shard is closed, <a>GetShardIterator</a> returns a valid iterator
    #             for the last sequence number of the shard. A shard can be closed as a result of using
    #                 <a>SplitShard</a> or <a>MergeShards</a>.</p>
    #          <p>
    #             <a>GetShardIterator</a> has a limit of five transactions per second per
    #             account per open shard.</p>
    # @param [Hash | Types::GetShardIteratorInput] params
    #   Request parameters for this operation.
    #   See {Types::GetShardIteratorInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_shard_iterator(
    #     stream_name: 'StreamName',
    #     shard_id: 'ShardId', # required
    #     shard_iterator_type: 'AT_SEQUENCE_NUMBER', # required - accepts ["AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER", "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"]
    #     starting_sequence_number: 'StartingSequenceNumber',
    #     timestamp: Time.now,
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetShardIteratorOutput
    #   resp.data.shard_iterator #=> String
    def get_shard_iterator(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::GetShardIteratorInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::GetShardIterator.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_shard_iterator,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_shard_iterator] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_shard_iterator] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_shard_iterator] #{output.data}")
      output
    end

    # <p>Increases the Kinesis data stream's retention period, which is the length of time data
    #             records are accessible after they are added to the stream. The maximum value of a
    #             stream's retention period is 8760 hours (365 days).</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>If you choose a longer stream retention period, this operation increases the time
    #             period during which records that have not yet expired are accessible. However, it does
    #             not make previous, expired data (older than the stream's previous retention period)
    #             accessible after the operation has been called. For example, if a stream's retention
    #             period is set to 24 hours and is increased to 168 hours, any data that is older than 24
    #             hours remains inaccessible to consumer applications.</p>
    # @param [Hash | Types::IncreaseStreamRetentionPeriodInput] params
    #   Request parameters for this operation.
    #   See {Types::IncreaseStreamRetentionPeriodInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.increase_stream_retention_period(
    #     stream_name: 'StreamName',
    #     retention_period_hours: 1, # required
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::IncreaseStreamRetentionPeriodOutput
    def increase_stream_retention_period(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::IncreaseStreamRetentionPeriodInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::IncreaseStreamRetentionPeriod.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :increase_stream_retention_period,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#increase_stream_retention_period] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#increase_stream_retention_period] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#increase_stream_retention_period] #{output.data}")
      output
    end

    # <p>Lists the shards in a stream and provides information about each shard. This operation
    #             has a limit of 1000 transactions per second per data stream.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>This action does not list expired shards. For information about expired shards, see
    #                 <a href="https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing">Data Routing, Data Persistence, and Shard State after a Reshard</a>. </p>
    #          <important>
    #             <p>This API is a new operation that is used by the Amazon Kinesis Client Library
    #                 (KCL). If you have a fine-grained IAM policy that only allows specific operations,
    #                 you must update your policy to allow calls to this API. For more information, see
    #                     <a href="https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html">Controlling Access to Amazon Kinesis Data Streams Resources Using
    #                 IAM</a>.</p>
    #          </important>
    # @param [Hash | Types::ListShardsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListShardsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #     },
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
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
    def list_shards(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::ListShardsInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::ListShards.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_shards,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_shards] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_shards] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_shards] #{output.data}")
      output
    end

    # <p>Lists the consumers registered to receive data from a stream using enhanced fan-out,
    #             and provides information about each consumer.</p>
    #          <p>This operation has a limit of 5 transactions per second per stream.</p>
    # @param [Hash | Types::ListStreamConsumersInput] params
    #   Request parameters for this operation.
    #   See {Types::ListStreamConsumersInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_stream_consumers(
    #     stream_arn: 'StreamARN', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     stream_creation_timestamp: Time.now
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListStreamConsumersOutput
    #   resp.data.consumers #=> Array<Consumer>
    #   resp.data.consumers[0] #=> Types::Consumer
    #   resp.data.consumers[0].consumer_name #=> String
    #   resp.data.consumers[0].consumer_arn #=> String
    #   resp.data.consumers[0].consumer_status #=> String, one of ["CREATING", "DELETING", "ACTIVE"]
    #   resp.data.consumers[0].consumer_creation_timestamp #=> Time
    #   resp.data.next_token #=> String
    def list_stream_consumers(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::ListStreamConsumersInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::ListStreamConsumers.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_stream_consumers,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_stream_consumers] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_stream_consumers] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_stream_consumers] #{output.data}")
      output
    end

    # <p>Lists your Kinesis data streams.</p>
    #          <p>The number of streams may be too large to return from a single call to
    #                 <code>ListStreams</code>. You can limit the number of returned streams using the
    #                 <code>Limit</code> parameter. If you do not specify a value for the
    #                 <code>Limit</code> parameter, Kinesis Data Streams uses the default limit, which is
    #             currently 100.</p>
    #          <p>You can detect if there are more streams available to list by using the
    #                 <code>HasMoreStreams</code> flag from the returned output. If there are more streams
    #             available, you can request more streams by using the name of the last stream returned by
    #             the <code>ListStreams</code> request in the <code>ExclusiveStartStreamName</code>
    #             parameter in a subsequent request to <code>ListStreams</code>. The group of stream names
    #             returned by the subsequent request is then added to the list. You can continue this
    #             process until all the stream names have been collected in the list. </p>
    #          <p>
    #             <a>ListStreams</a> has a limit of five transactions per second per
    #             account.</p>
    # @param [Hash | Types::ListStreamsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListStreamsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_streams(
    #     limit: 1,
    #     exclusive_start_stream_name: 'ExclusiveStartStreamName',
    #     next_token: 'NextToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListStreamsOutput
    #   resp.data.stream_names #=> Array<String>
    #   resp.data.stream_names[0] #=> String
    #   resp.data.has_more_streams #=> Boolean
    #   resp.data.next_token #=> String
    #   resp.data.stream_summaries #=> Array<StreamSummary>
    #   resp.data.stream_summaries[0] #=> Types::StreamSummary
    #   resp.data.stream_summaries[0].stream_name #=> String
    #   resp.data.stream_summaries[0].stream_arn #=> String
    #   resp.data.stream_summaries[0].stream_status #=> String, one of ["CREATING", "DELETING", "ACTIVE", "UPDATING"]
    #   resp.data.stream_summaries[0].stream_mode_details #=> Types::StreamModeDetails
    #   resp.data.stream_summaries[0].stream_mode_details.stream_mode #=> String, one of ["PROVISIONED", "ON_DEMAND"]
    #   resp.data.stream_summaries[0].stream_creation_timestamp #=> Time
    def list_streams(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::ListStreamsInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::ListStreams.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_streams,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_streams] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_streams] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_streams] #{output.data}")
      output
    end

    # <p>Lists the tags for the specified Kinesis data stream. This operation has a limit of
    #             five transactions per second per account.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    # @param [Hash | Types::ListTagsForStreamInput] params
    #   Request parameters for this operation.
    #   See {Types::ListTagsForStreamInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_tags_for_stream(
    #     stream_name: 'StreamName',
    #     exclusive_start_tag_key: 'ExclusiveStartTagKey',
    #     limit: 1,
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListTagsForStreamOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.has_more_tags #=> Boolean
    def list_tags_for_stream(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::ListTagsForStreamInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::ListTagsForStream.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_tags_for_stream,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_tags_for_stream] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_tags_for_stream] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_tags_for_stream] #{output.data}")
      output
    end

    # <p>Merges two adjacent shards in a Kinesis data stream and combines them into a single
    #             shard to reduce the stream's capacity to ingest and transport data. This API is only
    #             supported for the data streams with the provisioned capacity mode. Two shards are
    #             considered adjacent if the union of the hash key ranges for the two shards form a
    #             contiguous set with no gaps. For example, if you have two shards, one with a hash key
    #             range of 276...381 and the other with a hash key range of 382...454, then you could
    #             merge these two shards into a single shard that would have a hash key range of
    #             276...454. After the merge, the single child shard receives data for all hash key values
    #             covered by the two parent shards.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>
    #             <code>MergeShards</code> is called when there is a need to reduce the overall capacity
    #             of a stream because of excess capacity that is not being used. You must specify the
    #             shard to be merged and the adjacent shard for a stream. For more information about
    #             merging shards, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html">Merge Two
    #                 Shards</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>.</p>
    #          <p>If the stream is in the <code>ACTIVE</code> state, you can call
    #                 <code>MergeShards</code>. If a stream is in the <code>CREATING</code>,
    #                 <code>UPDATING</code>, or <code>DELETING</code> state, <code>MergeShards</code>
    #             returns a <code>ResourceInUseException</code>. If the specified stream does not exist,
    #                 <code>MergeShards</code> returns a <code>ResourceNotFoundException</code>. </p>
    #          <p>You can use <a>DescribeStreamSummary</a> to check the state of the stream,
    #             which is returned in <code>StreamStatus</code>.</p>
    #          <p>
    #             <code>MergeShards</code> is an asynchronous operation. Upon receiving a
    #                 <code>MergeShards</code> request, Amazon Kinesis Data Streams immediately returns a
    #             response and sets the <code>StreamStatus</code> to <code>UPDATING</code>. After the
    #             operation is completed, Kinesis Data Streams sets the <code>StreamStatus</code> to
    #                 <code>ACTIVE</code>. Read and write operations continue to work while the stream is
    #             in the <code>UPDATING</code> state. </p>
    #          <p>You use <a>DescribeStreamSummary</a> and the <a>ListShards</a>
    #             APIs to determine the shard IDs that are specified in the <code>MergeShards</code>
    #             request. </p>
    #          <p>If you try to operate on too many streams in parallel using <a>CreateStream</a>, <a>DeleteStream</a>, <code>MergeShards</code>,
    #             or <a>SplitShard</a>, you receive a <code>LimitExceededException</code>. </p>
    #          <p>
    #             <code>MergeShards</code> has a limit of five transactions per second per account.</p>
    # @param [Hash | Types::MergeShardsInput] params
    #   Request parameters for this operation.
    #   See {Types::MergeShardsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.merge_shards(
    #     stream_name: 'StreamName',
    #     shard_to_merge: 'ShardToMerge', # required
    #     adjacent_shard_to_merge: 'AdjacentShardToMerge', # required
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::MergeShardsOutput
    def merge_shards(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::MergeShardsInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::MergeShards.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :merge_shards,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#merge_shards] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#merge_shards] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#merge_shards] #{output.data}")
      output
    end

    # <p>Writes a single data record into an Amazon Kinesis data stream. Call
    #                 <code>PutRecord</code> to send data into the stream for real-time ingestion and
    #             subsequent processing, one record at a time. Each shard can support writes up to 1,000
    #             records per second, up to a maximum data write total of 1 MiB per second.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>You must specify the name of the stream that captures, stores, and transports the
    #             data; a partition key; and the data blob itself.</p>
    #          <p>The data blob can be any type of data; for example, a segment from a log file,
    #             geographic/location data, website clickstream data, and so on.</p>
    #          <p>The partition key is used by Kinesis Data Streams to distribute data across shards.
    #             Kinesis Data Streams segregates the data records that belong to a stream into multiple
    #             shards, using the partition key associated with each data record to determine the shard
    #             to which a given data record belongs.</p>
    #          <p>Partition keys are Unicode strings, with a maximum length limit of 256 characters for
    #             each key. An MD5 hash function is used to map partition keys to 128-bit integer values
    #             and to map associated data records to shards using the hash key ranges of the shards.
    #             You can override hashing the partition key to determine the shard by explicitly
    #             specifying a hash value using the <code>ExplicitHashKey</code> parameter. For more
    #             information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>.</p>
    #          <p>
    #             <code>PutRecord</code> returns the shard ID of where the data record was placed and the
    #             sequence number that was assigned to the data record.</p>
    #          <p>Sequence numbers increase over time and are specific to a shard within a stream, not
    #             across all shards within a stream. To guarantee strictly increasing ordering, write
    #             serially to a shard and use the <code>SequenceNumberForOrdering</code> parameter. For
    #             more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>.</p>
    #          <important>
    #             <p>After you write a record to a stream, you cannot modify that record or its order
    #                 within the stream.</p>
    #          </important>
    #          <p>If a <code>PutRecord</code> request cannot be processed because of insufficient
    #             provisioned throughput on the shard involved in the request, <code>PutRecord</code>
    #             throws <code>ProvisionedThroughputExceededException</code>. </p>
    #          <p>By default, data records are accessible for 24 hours from the time that they are added
    #             to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>
    # @param [Hash | Types::PutRecordInput] params
    #   Request parameters for this operation.
    #   See {Types::PutRecordInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_record(
    #     stream_name: 'StreamName',
    #     data: 'Data', # required
    #     partition_key: 'PartitionKey', # required
    #     explicit_hash_key: 'ExplicitHashKey',
    #     sequence_number_for_ordering: 'SequenceNumberForOrdering',
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutRecordOutput
    #   resp.data.shard_id #=> String
    #   resp.data.sequence_number #=> String
    #   resp.data.encryption_type #=> String, one of ["NONE", "KMS"]
    def put_record(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::PutRecordInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::PutRecord.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_record,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_record] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_record] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_record] #{output.data}")
      output
    end

    # <p>Writes multiple data records into a Kinesis data stream in a single call (also
    #             referred to as a <code>PutRecords</code> request). Use this operation to send data into
    #             the stream for data ingestion and processing. </p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>Each <code>PutRecords</code> request can support up to 500 records. Each record in the
    #             request can be as large as 1 MiB, up to a limit of 5 MiB for the entire request,
    #             including partition keys. Each shard can support writes up to 1,000 records per second,
    #             up to a maximum data write total of 1 MiB per second.</p>
    #          <p>You must specify the name of the stream that captures, stores, and transports the
    #             data; and an array of request <code>Records</code>, with each record in the array
    #             requiring a partition key and data blob. The record size limit applies to the total size
    #             of the partition key and data blob.</p>
    #          <p>The data blob can be any type of data; for example, a segment from a log file,
    #             geographic/location data, website clickstream data, and so on.</p>
    #          <p>The partition key is used by Kinesis Data Streams as input to a hash function that
    #             maps the partition key and associated data to a specific shard. An MD5 hash function is
    #             used to map partition keys to 128-bit integer values and to map associated data records
    #             to shards. As a result of this hashing mechanism, all data records with the same
    #             partition key map to the same shard within the stream. For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>.</p>
    #          <p>Each record in the <code>Records</code> array may include an optional parameter,
    #                 <code>ExplicitHashKey</code>, which overrides the partition key to shard mapping.
    #             This parameter allows a data producer to determine explicitly the shard where the record
    #             is stored. For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis
    #                 Data Streams Developer Guide</i>.</p>
    #          <p>The <code>PutRecords</code> response includes an array of response
    #                 <code>Records</code>. Each record in the response array directly correlates with a
    #             record in the request array using natural ordering, from the top to the bottom of the
    #             request and response. The response <code>Records</code> array always includes the same
    #             number of records as the request array.</p>
    #          <p>The response <code>Records</code> array includes both successfully and unsuccessfully
    #             processed records. Kinesis Data Streams attempts to process all records in each
    #                 <code>PutRecords</code> request. A single record failure does not stop the
    #             processing of subsequent records. As a result, PutRecords doesn't guarantee the ordering
    #             of records. If you need to read records in the same order they are written to the
    #             stream, use <a>PutRecord</a> instead of <code>PutRecords</code>, and write to
    #             the same shard.</p>
    #          <p>A successfully processed record includes <code>ShardId</code> and
    #                 <code>SequenceNumber</code> values. The <code>ShardId</code> parameter identifies
    #             the shard in the stream where the record is stored. The <code>SequenceNumber</code>
    #             parameter is an identifier assigned to the put record, unique to all records in the
    #             stream.</p>
    #          <p>An unsuccessfully processed record includes <code>ErrorCode</code> and
    #                 <code>ErrorMessage</code> values. <code>ErrorCode</code> reflects the type of error
    #             and can be one of the following values:
    #                 <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>.
    #                 <code>ErrorMessage</code> provides more detailed information about the
    #                 <code>ProvisionedThroughputExceededException</code> exception including the account
    #             ID, stream name, and shard ID of the record that was throttled. For more information
    #             about partially successful responses, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis
    #                 Data Streams Developer Guide</i>.</p>
    #          <important>
    #             <p>After you write a record to a stream, you cannot modify that record or its order
    #                 within the stream.</p>
    #          </important>
    #          <p>By default, data records are accessible for 24 hours from the time that they are added
    #             to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>
    # @param [Hash | Types::PutRecordsInput] params
    #   Request parameters for this operation.
    #   See {Types::PutRecordsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_records(
    #     records: [
    #       {
    #         data: 'Data', # required
    #         explicit_hash_key: 'ExplicitHashKey',
    #         partition_key: 'PartitionKey' # required
    #       }
    #     ], # required
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutRecordsOutput
    #   resp.data.failed_record_count #=> Integer
    #   resp.data.records #=> Array<PutRecordsResultEntry>
    #   resp.data.records[0] #=> Types::PutRecordsResultEntry
    #   resp.data.records[0].sequence_number #=> String
    #   resp.data.records[0].shard_id #=> String
    #   resp.data.records[0].error_code #=> String
    #   resp.data.records[0].error_message #=> String
    #   resp.data.encryption_type #=> String, one of ["NONE", "KMS"]
    def put_records(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::PutRecordsInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::PutRecords.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_records,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_records] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_records] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_records] #{output.data}")
      output
    end

    # <p>Attaches a resource-based policy to a data stream or registered consumer. If you are using an identity other than the root user of
    #             the Amazon Web Services account that owns the resource, the calling identity must have the <code>PutResourcePolicy</code> permissions on the
    #             specified Kinesis Data Streams resource and belong to the owner's account in order to use this operation.
    #             If you don't have <code>PutResourcePolicy</code> permissions, Amazon Kinesis Data Streams returns a <code>403 Access Denied error</code>.
    #             If you receive a <code>ResourceNotFoundException</code>, check to see if you passed a valid stream or consumer resource.
    #         </p>
    #          <p> Request patterns can be one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Data stream pattern: <code>arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Consumer pattern: <code>^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html">Controlling Access to Amazon Kinesis Data Streams Resources Using IAM</a>.</p>
    # @param [Hash | Types::PutResourcePolicyInput] params
    #   Request parameters for this operation.
    #   See {Types::PutResourcePolicyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_resource_policy(
    #     resource_arn: 'ResourceARN', # required
    #     policy: 'Policy' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutResourcePolicyOutput
    def put_resource_policy(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::PutResourcePolicyInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::PutResourcePolicy.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_resource_policy,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_resource_policy] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_resource_policy] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_resource_policy] #{output.data}")
      output
    end

    # <p>Registers a consumer with a Kinesis data stream. When you use this operation, the
    #             consumer you register can then call <a>SubscribeToShard</a> to receive data
    #             from the stream using enhanced fan-out, at a rate of up to 2 MiB per second for every
    #             shard you subscribe to. This rate is unaffected by the total number of consumers that
    #             read from the same stream.</p>
    #          <p>You can register up to 20 consumers per stream. A given consumer can only be
    #             registered with one stream at a time.</p>
    #          <p>For an example of how to use this operations, see <a href="/streams/latest/dev/building-enhanced-consumers-api.html">Enhanced Fan-Out
    #                 Using the Kinesis Data Streams API</a>.</p>
    #          <p>The use of this operation has a limit of five transactions per second per account.
    #             Also, only 5 consumers can be created simultaneously. In other words, you cannot have
    #             more than 5 consumers in a <code>CREATING</code> status at the same time. Registering a
    #             6th consumer while there are 5 in a <code>CREATING</code> status results in a
    #                 <code>LimitExceededException</code>.</p>
    # @param [Hash | Types::RegisterStreamConsumerInput] params
    #   Request parameters for this operation.
    #   See {Types::RegisterStreamConsumerInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.register_stream_consumer(
    #     stream_arn: 'StreamARN', # required
    #     consumer_name: 'ConsumerName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::RegisterStreamConsumerOutput
    #   resp.data.consumer #=> Types::Consumer
    #   resp.data.consumer.consumer_name #=> String
    #   resp.data.consumer.consumer_arn #=> String
    #   resp.data.consumer.consumer_status #=> String, one of ["CREATING", "DELETING", "ACTIVE"]
    #   resp.data.consumer.consumer_creation_timestamp #=> Time
    def register_stream_consumer(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::RegisterStreamConsumerInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::RegisterStreamConsumer.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :register_stream_consumer,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#register_stream_consumer] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#register_stream_consumer] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#register_stream_consumer] #{output.data}")
      output
    end

    # <p>Removes tags from the specified Kinesis data stream. Removed tags are deleted and
    #             cannot be recovered after this operation successfully completes.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>If you specify a tag that does not exist, it is ignored.</p>
    #          <p>
    #             <a>RemoveTagsFromStream</a> has a limit of five transactions per second per
    #             account.</p>
    # @param [Hash | Types::RemoveTagsFromStreamInput] params
    #   Request parameters for this operation.
    #   See {Types::RemoveTagsFromStreamInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.remove_tags_from_stream(
    #     stream_name: 'StreamName',
    #     tag_keys: [
    #       'member'
    #     ], # required
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::RemoveTagsFromStreamOutput
    def remove_tags_from_stream(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::RemoveTagsFromStreamInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::RemoveTagsFromStream.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :remove_tags_from_stream,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#remove_tags_from_stream] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#remove_tags_from_stream] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#remove_tags_from_stream] #{output.data}")
      output
    end

    # <p>Splits a shard into two new shards in the Kinesis data stream, to increase the
    #             stream's capacity to ingest and transport data. <code>SplitShard</code> is called when
    #             there is a need to increase the overall capacity of a stream because of an expected
    #             increase in the volume of data records being ingested. This API is only supported for
    #             the data streams with the provisioned capacity mode.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>You can also use <code>SplitShard</code> when a shard appears to be approaching its
    #             maximum utilization; for example, the producers sending data into the specific shard are
    #             suddenly sending more than previously anticipated. You can also call
    #                 <code>SplitShard</code> to increase stream capacity, so that more Kinesis Data
    #             Streams applications can simultaneously read data from the stream for real-time
    #             processing. </p>
    #          <p>You must specify the shard to be split and the new hash key, which is the position in
    #             the shard where the shard gets split in two. In many cases, the new hash key might be
    #             the average of the beginning and ending hash key, but it can be any hash key value in
    #             the range being mapped into the shard. For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html">Split a
    #                 Shard</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>.</p>
    #          <p>You can use <a>DescribeStreamSummary</a> and the <a>ListShards</a> APIs to determine the shard ID and hash key values for the <code>ShardToSplit</code>
    #             and <code>NewStartingHashKey</code> parameters that are specified in the
    #                 <code>SplitShard</code> request.</p>
    #          <p>
    #             <code>SplitShard</code> is an asynchronous operation. Upon receiving a
    #                 <code>SplitShard</code> request, Kinesis Data Streams immediately returns a response
    #             and sets the stream status to <code>UPDATING</code>. After the operation is completed,
    #             Kinesis Data Streams sets the stream status to <code>ACTIVE</code>. Read and write
    #             operations continue to work while the stream is in the <code>UPDATING</code> state. </p>
    #          <p>You can use <a>DescribeStreamSummary</a> to check the status of the stream,
    #             which is returned in <code>StreamStatus</code>. If the stream is in the
    #                 <code>ACTIVE</code> state, you can call <code>SplitShard</code>.
    #             </p>
    #          <p>If the specified stream does not exist, <a>DescribeStreamSummary</a>
    #             returns a <code>ResourceNotFoundException</code>. If you try to create more shards than
    #             are authorized for your account, you receive a <code>LimitExceededException</code>. </p>
    #          <p>For the default shard limit for an Amazon Web Services account, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Kinesis
    #                 Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>. To increase this limit, <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact Amazon Web Services
    #                 Support</a>.</p>
    #          <p>If you try to operate on too many streams simultaneously using <a>CreateStream</a>, <a>DeleteStream</a>, <a>MergeShards</a>, and/or <a>SplitShard</a>, you receive a
    #                 <code>LimitExceededException</code>. </p>
    #          <p>
    #             <code>SplitShard</code> has a limit of five transactions per second per account.</p>
    # @param [Hash | Types::SplitShardInput] params
    #   Request parameters for this operation.
    #   See {Types::SplitShardInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.split_shard(
    #     stream_name: 'StreamName',
    #     shard_to_split: 'ShardToSplit', # required
    #     new_starting_hash_key: 'NewStartingHashKey', # required
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::SplitShardOutput
    def split_shard(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::SplitShardInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::SplitShard.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :split_shard,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#split_shard] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#split_shard] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#split_shard] #{output.data}")
      output
    end

    # <p>Enables or updates server-side encryption using an Amazon Web Services KMS key for a
    #             specified stream. </p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>Starting encryption is an asynchronous operation. Upon receiving the request, Kinesis
    #             Data Streams returns immediately and sets the status of the stream to
    #                 <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the
    #             status of the stream back to <code>ACTIVE</code>. Updating or applying encryption
    #             normally takes a few seconds to complete, but it can take minutes. You can continue to
    #             read and write data to your stream while its status is <code>UPDATING</code>. Once the
    #             status of the stream is <code>ACTIVE</code>, encryption begins for records written to
    #             the stream. </p>
    #          <p>API Limits: You can successfully apply a new Amazon Web Services KMS key for
    #             server-side encryption 25 times in a rolling 24-hour period.</p>
    #          <p>Note: It can take up to 5 seconds after the stream is in an <code>ACTIVE</code> status
    #             before all records written to the stream are encrypted. After you enable encryption, you
    #             can verify that encryption is applied by inspecting the API response from
    #                 <code>PutRecord</code> or <code>PutRecords</code>.</p>
    # @param [Hash | Types::StartStreamEncryptionInput] params
    #   Request parameters for this operation.
    #   See {Types::StartStreamEncryptionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.start_stream_encryption(
    #     stream_name: 'StreamName',
    #     encryption_type: 'NONE', # required - accepts ["NONE", "KMS"]
    #     key_id: 'KeyId', # required
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::StartStreamEncryptionOutput
    def start_stream_encryption(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::StartStreamEncryptionInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::StartStreamEncryption.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :start_stream_encryption,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_stream_encryption] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_stream_encryption] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_stream_encryption] #{output.data}")
      output
    end

    # <p>Disables server-side encryption for a specified stream. </p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>Stopping encryption is an asynchronous operation. Upon receiving the request, Kinesis
    #             Data Streams returns immediately and sets the status of the stream to
    #                 <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the
    #             status of the stream back to <code>ACTIVE</code>. Stopping encryption normally takes a
    #             few seconds to complete, but it can take minutes. You can continue to read and write
    #             data to your stream while its status is <code>UPDATING</code>. Once the status of the
    #             stream is <code>ACTIVE</code>, records written to the stream are no longer encrypted by
    #             Kinesis Data Streams. </p>
    #          <p>API Limits: You can successfully disable server-side encryption 25 times in a rolling
    #             24-hour period. </p>
    #          <p>Note: It can take up to 5 seconds after the stream is in an <code>ACTIVE</code> status
    #             before all records written to the stream are no longer subject to encryption. After you
    #             disabled encryption, you can verify that encryption is not applied by inspecting the API
    #             response from <code>PutRecord</code> or <code>PutRecords</code>.</p>
    # @param [Hash | Types::StopStreamEncryptionInput] params
    #   Request parameters for this operation.
    #   See {Types::StopStreamEncryptionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.stop_stream_encryption(
    #     stream_name: 'StreamName',
    #     encryption_type: 'NONE', # required - accepts ["NONE", "KMS"]
    #     key_id: 'KeyId', # required
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::StopStreamEncryptionOutput
    def stop_stream_encryption(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::StopStreamEncryptionInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::StopStreamEncryption.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :stop_stream_encryption,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#stop_stream_encryption] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#stop_stream_encryption] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#stop_stream_encryption] #{output.data}")
      output
    end

    # <p>This operation establishes an HTTP/2 connection between the consumer you specify in
    #             the <code>ConsumerARN</code> parameter and the shard you specify in the
    #                 <code>ShardId</code> parameter. After the connection is successfully established,
    #             Kinesis Data Streams pushes records from the shard to the consumer over this connection.
    #             Before you call this operation, call <a>RegisterStreamConsumer</a> to
    #             register the consumer with Kinesis Data Streams.</p>
    #          <p>When the <code>SubscribeToShard</code> call succeeds, your consumer starts receiving
    #             events of type <a>SubscribeToShardEvent</a> over the HTTP/2 connection for up
    #             to 5 minutes, after which time you need to call <code>SubscribeToShard</code> again to
    #             renew the subscription if you want to continue to receive records.</p>
    #          <p>You can make one call to <code>SubscribeToShard</code> per second per registered
    #             consumer per shard. For example, if you have a 4000 shard stream and two registered
    #             stream consumers, you can make one <code>SubscribeToShard</code> request per second for
    #             each combination of shard and registered consumer, allowing you to subscribe both
    #             consumers to all 4000 shards in one second. </p>
    #          <p>If you call <code>SubscribeToShard</code> again with the same <code>ConsumerARN</code>
    #             and <code>ShardId</code> within 5 seconds of a successful call, you'll get a
    #                 <code>ResourceInUseException</code>. If you call <code>SubscribeToShard</code> 5
    #             seconds or more after a successful call, the second call takes over the subscription and
    #             the previous connection expires or fails with a
    #             <code>ResourceInUseException</code>.</p>
    #          <p>For an example of how to use this operations, see <a href="/streams/latest/dev/building-enhanced-consumers-api.html">Enhanced Fan-Out
    #                 Using the Kinesis Data Streams API</a>.</p>
    # @param [Hash | Types::SubscribeToShardInput] params
    #   Request parameters for this operation.
    #   See {Types::SubscribeToShardInput#initialize} for available parameters.
    #   Do not set values for the event stream member(`event_stream`).
    #   Instead use the returned output to signal input events.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @option options [EventStream::SubscribeToShardHandler] :event_stream_handler
    #   Event Stream Handler used to register handlers that will be called when events are received.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values and registering an event handler
    #   handler = SubscribeToShardHandler.new
    #   handler.on_initial_response { |event| process_initial_response(event) }
    #   resp = client.subscribe_to_shard({
    #     consumer_arn: 'ConsumerARN', # required
    #     shard_id: 'ShardId', # required
    #     starting_position: {
    #       type: 'AT_SEQUENCE_NUMBER', # required - accepts ["AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER", "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"]
    #       sequence_number: 'SequenceNumber',
    #       timestamp: Time.now
    #     } # required
    #   }, event_stream_handler: handler)
    # @example Response structure
    #   resp.data #=> Types::SubscribeToShardOutput
    def subscribe_to_shard(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      middleware_opts[:event_stream_handler] = options.delete(:event_stream_handler)
      raise ArgumentError, 'Missing `event_stream_handler`' unless middleware_opts[:event_stream_handler]
      config = operation_config(options)
      input = Params::SubscribeToShardInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::SubscribeToShard.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP2::Request.new(uri: URI('')),
        response: Hearth::HTTP2::Response.new(body: response_body),
        config: config,
        operation_name: :subscribe_to_shard,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#subscribe_to_shard] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#subscribe_to_shard] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#subscribe_to_shard] #{output.data}")
      output
    end

    # <p>Updates the shard count of the specified stream to the specified number of shards.
    #             This API is only supported for the data streams with the provisioned capacity
    #             mode.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>Updating the shard count is an asynchronous operation. Upon receiving the request,
    #             Kinesis Data Streams returns immediately and sets the status of the stream to
    #                 <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the
    #             status of the stream back to <code>ACTIVE</code>. Depending on the size of the stream,
    #             the scaling action could take a few minutes to complete. You can continue to read and
    #             write data to your stream while its status is <code>UPDATING</code>.</p>
    #          <p>To update the shard count, Kinesis Data Streams performs splits or merges on
    #             individual shards. This can cause short-lived shards to be created, in addition to the
    #             final shards. These short-lived shards count towards your total shard limit for your
    #             account in the Region.</p>
    #          <p>When using this operation, we recommend that you specify a target shard count that is
    #             a multiple of 25% (25%, 50%, 75%, 100%). You can specify any target value within your
    #             shard limit. However, if you specify a target that isn't a multiple of 25%, the scaling
    #             action might take longer to complete. </p>
    #          <p>This operation has the following default limits. By default, you cannot do the
    #             following:</p>
    #          <ul>
    #             <li>
    #                <p>Scale more than ten times per rolling 24-hour period per stream</p>
    #             </li>
    #             <li>
    #                <p>Scale up to more than double your current shard count for a stream</p>
    #             </li>
    #             <li>
    #                <p>Scale down below half your current shard count for a stream</p>
    #             </li>
    #             <li>
    #                <p>Scale up to more than 10000 shards in a stream</p>
    #             </li>
    #             <li>
    #                <p>Scale a stream with more than 10000 shards down unless the result is less than
    #                     10000 shards</p>
    #             </li>
    #             <li>
    #                <p>Scale up to more than the shard limit for your account</p>
    #             </li>
    #             <li>
    #                <p>Make over 10 TPS. TPS over 10 will trigger the LimitExceededException</p>
    #             </li>
    #          </ul>
    #          <p>For the default limits for an Amazon Web Services account, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams
    #                 Limits</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>. To request an increase in the call rate limit, the shard limit for
    #             this API, or your overall shard limit, use the <a href="https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&limitType=service-code-kinesis">limits form</a>.</p>
    # @param [Hash | Types::UpdateShardCountInput] params
    #   Request parameters for this operation.
    #   See {Types::UpdateShardCountInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.update_shard_count(
    #     stream_name: 'StreamName',
    #     target_shard_count: 1, # required
    #     scaling_type: 'UNIFORM_SCALING', # required - accepts ["UNIFORM_SCALING"]
    #     stream_arn: 'StreamARN'
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateShardCountOutput
    #   resp.data.stream_name #=> String
    #   resp.data.current_shard_count #=> Integer
    #   resp.data.target_shard_count #=> Integer
    #   resp.data.stream_arn #=> String
    def update_shard_count(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::UpdateShardCountInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::UpdateShardCount.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :update_shard_count,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_shard_count] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#update_shard_count] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_shard_count] #{output.data}")
      output
    end

    # <p> Updates the capacity mode of the data stream. Currently, in Kinesis Data Streams, you
    #             can choose between an <b>on-demand</b> capacity mode and a
    #                 <b>provisioned</b> capacity mode for your data stream.
    #         </p>
    # @param [Hash | Types::UpdateStreamModeInput] params
    #   Request parameters for this operation.
    #   See {Types::UpdateStreamModeInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.update_stream_mode(
    #     stream_arn: 'StreamARN', # required
    #     stream_mode_details: {
    #       stream_mode: 'PROVISIONED' # required - accepts ["PROVISIONED", "ON_DEMAND"]
    #     } # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateStreamModeOutput
    def update_stream_mode(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::UpdateStreamModeInput.build(params, context: 'params')
      stack = AWS::SDK::Kinesis::Middleware::UpdateStreamMode.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :update_stream_mode,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_stream_mode] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#update_stream_mode] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_stream_mode] #{output.data}")
      output
    end
  end
end
