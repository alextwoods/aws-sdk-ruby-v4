# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::EBS
  # An API client for Ebs
  # See {#initialize} for a full list of supported configuration options
  # <p>You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to create Amazon EBS snapshots, write data directly to
  #     		your snapshots, read data on your snapshots, and identify the differences or changes between
  #     		two snapshots. If you’re an independent software vendor (ISV) who offers backup services for
  #     		Amazon EBS, the EBS direct APIs make it more efficient and cost-effective to track incremental changes on
  #     		your Amazon EBS volumes through snapshots. This can be done without having to create new volumes
  #     		from snapshots, and then use Amazon Elastic Compute Cloud (Amazon EC2) instances to compare the differences.</p>
  #     		
  #     	    <p>You can create incremental snapshots directly from data on-premises into volumes and the
  #     		cloud to use for quick disaster recovery. With the ability to write and read snapshots, you can
  #     		write your on-premises data to an snapshot during a disaster. Then after recovery, you can
  #     		restore it back to Amazon Web Services or on-premises from the snapshot. You no longer need to build and
  #     		maintain complex mechanisms to copy data to and from Amazon EBS.</p>
  #
  #
  #         <p>This API reference provides detailed information about the actions, data types,
  #             parameters, and errors of the EBS direct APIs. For more information about the elements that
  #             make up the EBS direct APIs, and examples of how to use them effectively, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html">Accessing the Contents of an Amazon EBS Snapshot</a> in the <i>Amazon Elastic Compute Cloud User
  #                 Guide</i>. For more information about the supported Amazon Web Services Regions, endpoints,
  #             and service quotas for the EBS direct APIs, see <a href="https://docs.aws.amazon.com/general/latest/gr/ebs-service.html">Amazon Elastic Block Store Endpoints and Quotas</a> in
  #             the <i>Amazon Web Services General Reference</i>.</p>
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
    def initialize(config = AWS::SDK::EBS::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Seals and completes the snapshot after all of the required blocks of data have been
    #             written to it. Completing the snapshot changes the status to <code>completed</code>. You
    #             cannot write new blocks to a snapshot after it has been completed.</p>
    #
    # @param [Hash] params
    #   See {Types::CompleteSnapshotInput}.
    #
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot.</p>
    #
    # @option params [Integer] :changed_blocks_count
    #   <p>The number of blocks that were written to the snapshot.</p>
    #
    # @option params [String] :checksum
    #   <p>An aggregated Base-64 SHA256 checksum based on the checksums of each written
    #               block.</p>
    #           <p>To generate the aggregated checksum using the linear aggregation method, arrange the
    #               checksums for each written block in ascending order of their block index, concatenate
    #               them to form a single string, and then generate the checksum on the entire string using
    #               the SHA256 algorithm.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>The algorithm used to generate the checksum. Currently, the only supported algorithm
    #               is <code>SHA256</code>.</p>
    #
    # @option params [String] :checksum_aggregation_method
    #   <p>The aggregation method used to generate the checksum. Currently, the only supported
    #               aggregation method is <code>LINEAR</code>.</p>
    #
    # @return [Types::CompleteSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_snapshot(
    #     snapshot_id: 'SnapshotId', # required
    #     changed_blocks_count: 1, # required
    #     checksum: 'Checksum',
    #     checksum_algorithm: 'SHA256', # accepts ["SHA256"]
    #     checksum_aggregation_method: 'LINEAR' # accepts ["LINEAR"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CompleteSnapshotOutput
    #   resp.data.status #=> String, one of ["completed", "pending", "error"]
    #
    def complete_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CompleteSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CompleteSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CompleteSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ValidationException, Errors::RequestThrottledException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CompleteSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CompleteSnapshot,
        stubs: @stubs,
        params_class: Params::CompleteSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :complete_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the data in a block in an Amazon Elastic Block Store snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSnapshotBlockInput}.
    #
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot containing the block from which to get data.</p>
    #           <important>
    #               <p>If the specified snapshot is encrypted, you must have permission to use the
    #                   KMS key that was used to encrypt the snapshot. For more information, see
    #                   <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User
    #                           Guide</i>.</p>
    #           </important>
    #
    # @option params [Integer] :block_index
    #   <p>The block index of the block in which to read the data. A block index is a logical
    #               index in units of <code>512</code> KiB blocks. To identify the block index, divide
    #               the logical offset of the data in the logical volume by the block size (logical offset
    #               of data/<code>524288</code>). The logical offset of the data must be <code>512</code>
    #               KiB aligned.</p>
    #
    # @option params [String] :block_token
    #   <p>The block token of the block from which to get data. You can obtain the <code>BlockToken</code>
    #               by running the <code>ListChangedBlocks</code> or <code>ListSnapshotBlocks</code> operations.</p>
    #
    # @return [Types::GetSnapshotBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_snapshot_block(
    #     snapshot_id: 'SnapshotId', # required
    #     block_index: 1, # required
    #     block_token: 'BlockToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSnapshotBlockOutput
    #   resp.data.data_length #=> Integer
    #   resp.data.block_data #=> String
    #   resp.data.checksum #=> String
    #   resp.data.checksum_algorithm #=> String, one of ["SHA256"]
    #
    def get_snapshot_block(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSnapshotBlockInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSnapshotBlockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSnapshotBlock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ValidationException, Errors::RequestThrottledException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetSnapshotBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSnapshotBlock,
        stubs: @stubs,
        params_class: Params::GetSnapshotBlockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_snapshot_block
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the blocks that are different between two
    #             Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.</p>
    #
    # @param [Hash] params
    #   See {Types::ListChangedBlocksInput}.
    #
    # @option params [String] :first_snapshot_id
    #   <p>The ID of the first snapshot to use for the comparison.</p>
    #           <important>
    #               <p>The <code>FirstSnapshotID</code> parameter must be specified with a
    #                       <code>SecondSnapshotId</code> parameter; otherwise, an error occurs.</p>
    #           </important>
    #
    # @option params [String] :second_snapshot_id
    #   <p>The ID of the second snapshot to use for the comparison.</p>
    #           <important>
    #               <p>The <code>SecondSnapshotId</code> parameter must be specified with a
    #                       <code>FirstSnapshotID</code> parameter; otherwise, an error occurs.</p>
    #           </important>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #           <p>If you specify <b>NextToken</b>, then
    #               <b>StartingBlockIndex</b> is ignored.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of blocks to be returned by the request.</p>
    #           <p>Even if additional blocks can be retrieved from the snapshot, the request can
    #               return less blocks than <b>MaxResults</b> or an empty
    #               array of blocks.</p>
    #           <p>To retrieve the next set of blocks from the snapshot, make another request with
    #               the returned <b>NextToken</b> value. The value of
    #               <b>NextToken</b> is <code>null</code> when there are no
    #               more blocks to return.</p>
    #
    # @option params [Integer] :starting_block_index
    #   <p>The block index from which the comparison should start.</p>
    #           <p>The list in the response will start from this block index or the next valid block
    #               index in the snapshots.</p>
    #           <p>If you specify <b>NextToken</b>, then
    #               <b>StartingBlockIndex</b> is ignored.</p>
    #
    # @return [Types::ListChangedBlocksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_changed_blocks(
    #     first_snapshot_id: 'FirstSnapshotId',
    #     second_snapshot_id: 'SecondSnapshotId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     starting_block_index: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChangedBlocksOutput
    #   resp.data.changed_blocks #=> Array<ChangedBlock>
    #   resp.data.changed_blocks[0] #=> Types::ChangedBlock
    #   resp.data.changed_blocks[0].block_index #=> Integer
    #   resp.data.changed_blocks[0].first_block_token #=> String
    #   resp.data.changed_blocks[0].second_block_token #=> String
    #   resp.data.expiry_time #=> Time
    #   resp.data.volume_size #=> Integer
    #   resp.data.block_size #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_changed_blocks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChangedBlocksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChangedBlocksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChangedBlocks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ValidationException, Errors::RequestThrottledException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListChangedBlocks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChangedBlocks,
        stubs: @stubs,
        params_class: Params::ListChangedBlocksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_changed_blocks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the blocks in an Amazon Elastic Block Store snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSnapshotBlocksInput}.
    #
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot from which to get block indexes and block tokens.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #           <p>If you specify <b>NextToken</b>, then
    #               <b>StartingBlockIndex</b> is ignored.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of blocks to be returned by the request.</p>
    #           <p>Even if additional blocks can be retrieved from the snapshot, the request can
    #               return less blocks than <b>MaxResults</b> or an empty
    #               array of blocks.</p>
    #           <p>To retrieve the next set of blocks from the snapshot, make another request with
    #               the returned <b>NextToken</b> value. The value of
    #               <b>NextToken</b> is <code>null</code> when there are no
    #               more blocks to return.</p>
    #
    # @option params [Integer] :starting_block_index
    #   <p>The block index from which the list should start. The list in the response will start
    #               from this block index or the next valid block index in the snapshot.</p>
    #           <p>If you specify <b>NextToken</b>, then
    #               <b>StartingBlockIndex</b> is ignored.</p>
    #
    # @return [Types::ListSnapshotBlocksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_snapshot_blocks(
    #     snapshot_id: 'SnapshotId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     starting_block_index: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSnapshotBlocksOutput
    #   resp.data.blocks #=> Array<Block>
    #   resp.data.blocks[0] #=> Types::Block
    #   resp.data.blocks[0].block_index #=> Integer
    #   resp.data.blocks[0].block_token #=> String
    #   resp.data.expiry_time #=> Time
    #   resp.data.volume_size #=> Integer
    #   resp.data.block_size #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_snapshot_blocks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSnapshotBlocksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSnapshotBlocksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSnapshotBlocks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ValidationException, Errors::RequestThrottledException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListSnapshotBlocks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSnapshotBlocks,
        stubs: @stubs,
        params_class: Params::ListSnapshotBlocksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_snapshot_blocks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Writes a block of data to a snapshot. If the specified block contains
    #             data, the existing data is overwritten. The target snapshot must be in the
    #                 <code>pending</code> state.</p>  	
    #     	    <p>Data written to a snapshot must be aligned with 512-KiB sectors.</p>
    #
    # @param [Hash] params
    #   See {Types::PutSnapshotBlockInput}.
    #
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot.</p>
    #           <important>
    #               <p>If the specified snapshot is encrypted, you must have permission to use
    #                   the KMS key that was used to encrypt the snapshot. For more information,
    #                   see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User
    #                           Guide</i>..</p>
    #           </important>
    #
    # @option params [Integer] :block_index
    #   <p>The block index of the block in which to write the data. A block index is a logical
    #       	index in units of <code>512</code> KiB blocks. To identify the block index, divide
    #           	the logical offset of the data in the logical volume by the block size (logical offset of
    #           	data/<code>524288</code>). The logical offset of the data must be <code>512</code>
    #           	KiB aligned.</p>
    #
    # @option params [String] :block_data
    #   <p>The data to write to the block.</p>
    #           <p>The block data is not signed as part of the Signature Version 4 signing process. As a
    #               result, you must generate and provide a Base64-encoded SHA256 checksum for the block
    #               data using the <b>x-amz-Checksum</b> header. Also, you
    #           	must specify the checksum algorithm using the <b>x-amz-Checksum-Algorithm</b>
    #           	header. The checksum that you provide is part of the Signature Version 4 signing process.
    #           	It is validated against a checksum generated by Amazon EBS to ensure the validity and authenticity
    #           	of the data. If the checksums do not correspond, the request fails. For more information,
    #           	see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-checksums">
    #                   Using checksums with the EBS direct APIs</a> in the <i>Amazon Elastic Compute Cloud User
    #                   Guide</i>.</p>
    #
    # @option params [Integer] :data_length
    #   <p>The size of the data to write to the block, in bytes. Currently, the only supported
    #               size is <code>524288</code> bytes.</p>
    #           <p>Valid values: <code>524288</code>
    #            </p>
    #
    # @option params [Integer] :progress
    #   <p>The progress of the write process, as a percentage.</p>
    #
    # @option params [String] :checksum
    #   <p>A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are
    #               supported.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>The algorithm used to generate the checksum. Currently, the only supported algorithm
    #               is <code>SHA256</code>.</p>
    #
    # @return [Types::PutSnapshotBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_snapshot_block(
    #     snapshot_id: 'SnapshotId', # required
    #     block_index: 1, # required
    #     block_data: 'BlockData', # required
    #     data_length: 1, # required
    #     progress: 1,
    #     checksum: 'Checksum', # required
    #     checksum_algorithm: 'SHA256' # required - accepts ["SHA256"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSnapshotBlockOutput
    #   resp.data.checksum #=> String
    #   resp.data.checksum_algorithm #=> String, one of ["SHA256"]
    #
    def put_snapshot_block(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutSnapshotBlockInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutSnapshotBlockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutSnapshotBlock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ValidationException, Errors::RequestThrottledException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::PutSnapshotBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutSnapshotBlock,
        stubs: @stubs,
        params_class: Params::PutSnapshotBlockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_snapshot_block
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon EBS snapshot. The new snapshot enters the <code>pending</code> state
    #             after the request completes. </p>
    #         <p>After creating the snapshot, use <a href="https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html"> PutSnapshotBlock</a> to
    #             write blocks of data to the snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::StartSnapshotInput}.
    #
    # @option params [Integer] :volume_size
    #   <p>The size of the volume, in GiB. The maximum size is <code>65536</code> GiB (64
    #               TiB).</p>
    #
    # @option params [String] :parent_snapshot_id
    #   <p>The ID of the parent snapshot. If there is no parent snapshot, or if you are creating
    #               the first snapshot for an on-premises volume, omit this parameter.</p>
    #           <p>You can't specify <b>ParentSnapshotId</b> and
    #               <b>Encrypted</b> in the same request. If you specify both
    #               parameters, the request fails with <code>ValidationException</code>.</p>
    #
    #
    #
    #           <p>The encryption status of the snapshot depends on the values that you specify for
    #               <b>Encrypted</b>, <b>KmsKeyArn</b>,
    #               and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account
    #               is enabled for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">
    #                   encryption by default</a>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    #           <important>
    #               <p>If you specify an encrypted parent snapshot, you must have permission to use the
    #                   KMS key that was used to encrypt the parent snapshot. For more information, see
    #                   <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions">
    #                       Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User
    #                           Guide</i>.</p>
    #           </important>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to apply to the snapshot.</p>
    #
    # @option params [String] :description
    #   <p>A description for the snapshot.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. Idempotency ensures that an API request completes only once. With an idempotent
    #               request, if the original request completes successfully. The subsequent retries with the same
    #               client token return the result from the original successful request and they have no additional
    #               effect.</p>
    #           <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services SDK.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-direct-api-idempotency.html">
    #       		Idempotency for StartSnapshot API</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    # @option params [Boolean] :encrypted
    #   <p>Indicates whether to encrypt the snapshot.</p>
    #
    #           <p>You can't specify <b>Encrypted</b> and <b>
    #               ParentSnapshotId</b> in the same request. If you specify both parameters, the
    #               request fails with <code>ValidationException</code>.</p>
    #
    #           <p>The encryption status of the snapshot depends on the values that you specify for
    #               <b>Encrypted</b>, <b>KmsKeyArn</b>,
    #               and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account
    #               is enabled for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">
    #                   encryption by default</a>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #               Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    #
    #
    #           <important>
    #               <p>To create an encrypted snapshot, you must have permission to use the KMS key. For
    #                   more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions">
    #                       Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User
    #                           Guide</i>.</p>
    #           </important>
    #
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key to be used to encrypt the snapshot.</p>
    #
    #           <p>The encryption status of the snapshot depends on the values that you specify for
    #               <b>Encrypted</b>, <b>KmsKeyArn</b>,
    #               and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account
    #               is enabled for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default">
    #                   encryption by default</a>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    #
    #           <important>
    #               <p>To create an encrypted snapshot, you must have permission to use the KMS key. For
    #                   more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html#ebsapi-kms-permissions">
    #                       Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User
    #                           Guide</i>.</p>
    #           </important>
    #
    # @option params [Integer] :timeout
    #   <p>The amount of time (in minutes) after which the snapshot is automatically cancelled
    #               if:</p>
    #           <ul>
    #               <li>
    #                   <p>No blocks are written to the snapshot.</p>
    #               </li>
    #               <li>
    #                   <p>The snapshot is not completed after writing the last block of data.</p>
    #               </li>
    #            </ul>
    #           <p>If no value is specified, the timeout defaults to <code>60</code> minutes.</p>
    #
    # @return [Types::StartSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_snapshot(
    #     volume_size: 1, # required
    #     parent_snapshot_id: 'ParentSnapshotId',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     description: 'Description',
    #     client_token: 'ClientToken',
    #     encrypted: false,
    #     kms_key_arn: 'KmsKeyArn',
    #     timeout: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSnapshotOutput
    #   resp.data.description #=> String
    #   resp.data.snapshot_id #=> String
    #   resp.data.owner_id #=> String
    #   resp.data.status #=> String, one of ["completed", "pending", "error"]
    #   resp.data.start_time #=> Time
    #   resp.data.volume_size #=> Integer
    #   resp.data.block_size #=> Integer
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.parent_snapshot_id #=> String
    #   resp.data.kms_key_arn #=> String
    #
    def start_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ValidationException, Errors::ConflictException, Errors::RequestThrottledException, Errors::ServiceQuotaExceededException, Errors::ConcurrentLimitExceededException]),
        data_parser: Parsers::StartSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSnapshot,
        stubs: @stubs,
        params_class: Params::StartSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_snapshot
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

    def output_stream(options = {}, &block)
      return options[:output_stream] if options[:output_stream]
      return Hearth::BlockIO.new(block) if block

      ::StringIO.new
    end
  end
end
