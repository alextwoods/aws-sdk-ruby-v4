# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DynamoDB
  # An API client for DynamoDB_20120810
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon DynamoDB</fullname>
  #
  #         <p>Amazon DynamoDB is a fully managed NoSQL database service that provides fast
  #             and predictable performance with seamless scalability. DynamoDB lets you
  #             offload the administrative burdens of operating and scaling a distributed database, so
  #             that you don't have to worry about hardware provisioning, setup and configuration,
  #             replication, software patching, or cluster scaling.</p>
  #
  #         <p>With DynamoDB, you can create database tables that can store and retrieve
  #             any amount of data, and serve any level of request traffic. You can scale up or scale
  #             down your tables' throughput capacity without downtime or performance degradation, and
  #             use the Amazon Web Services Management Console to monitor resource utilization and performance
  #             metrics.</p>
  #
  #         <p>DynamoDB automatically spreads the data and traffic for your tables over
  #             a sufficient number of servers to handle your throughput and storage requirements, while
  #             maintaining consistent and fast performance. All of your data is stored on solid state
  #             disks (SSDs) and automatically replicated across multiple Availability Zones in an
  #                 Amazon Web Services Region, providing built-in high availability and data
  #             durability.</p>
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
    def initialize(config = AWS::SDK::DynamoDB::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>This operation allows you to perform batch reads or writes on data stored in DynamoDB,
    #             using PartiQL.</p>
    #         <note>
    #             <p>The entire batch must consist of either read statements or write statements, you
    #                 cannot mix both in one batch.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::BatchExecuteStatementInput}.
    #
    # @option params [Array<BatchStatementRequest>] :statements
    #   <p>The list of PartiQL statements representing the batch to run.</p>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::BatchExecuteStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_execute_statement(
    #     statements: [
    #       {
    #         statement: 'Statement', # required
    #         parameters: [
    #           {
    #             # One of:
    #             s: 'S',
    #             n: 'N',
    #             b: 'B',
    #             ss: [
    #               'member'
    #             ],
    #             ns: [
    #               'member'
    #             ],
    #             bs: [
    #               'member'
    #             ],
    #             null: false,
    #             bool: false
    #           }
    #         ],
    #         consistent_read: false
    #       }
    #     ], # required
    #     return_consumed_capacity: 'INDEXES' # accepts ["INDEXES", "TOTAL", "NONE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchExecuteStatementOutput
    #   resp.data.responses #=> Array<BatchStatementResponse>
    #   resp.data.responses[0] #=> Types::BatchStatementResponse
    #   resp.data.responses[0].error #=> Types::BatchStatementError
    #   resp.data.responses[0].error.code #=> String, one of ["ConditionalCheckFailed", "ItemCollectionSizeLimitExceeded", "RequestLimitExceeded", "ValidationError", "ProvisionedThroughputExceeded", "TransactionConflict", "ThrottlingError", "InternalServerError", "ResourceNotFound", "AccessDenied", "DuplicateItem"]
    #   resp.data.responses[0].error.message #=> String
    #   resp.data.responses[0].table_name #=> String
    #   resp.data.responses[0].item #=> Hash<String, AttributeValue>
    #   resp.data.responses[0].item['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.responses[0].item['key'].s #=> String
    #   resp.data.responses[0].item['key'].n #=> String
    #   resp.data.responses[0].item['key'].b #=> String
    #   resp.data.responses[0].item['key'].ss #=> Array<String>
    #   resp.data.responses[0].item['key'].ss[0] #=> String
    #   resp.data.responses[0].item['key'].ns #=> Array<String>
    #   resp.data.responses[0].item['key'].ns[0] #=> String
    #   resp.data.responses[0].item['key'].bs #=> Array<String>
    #   resp.data.responses[0].item['key'].bs[0] #=> String
    #   resp.data.responses[0].item['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.responses[0].item['key'].l #=> Array<AttributeValue>
    #   resp.data.responses[0].item['key'].null #=> Boolean
    #   resp.data.responses[0].item['key'].bool #=> Boolean
    #   resp.data.consumed_capacity #=> Array<ConsumedCapacity>
    #   resp.data.consumed_capacity[0] #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity[0].table_name #=> String
    #   resp.data.consumed_capacity[0].capacity_units #=> Float
    #   resp.data.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table #=> Types::Capacity
    #   resp.data.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.data.consumed_capacity[0].local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity[0].global_secondary_indexes #=> Hash<String, Capacity>
    #
    def batch_execute_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchExecuteStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchExecuteStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchExecuteStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::RequestLimitExceeded]),
        data_parser: Parsers::BatchExecuteStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchExecuteStatement,
        stubs: @stubs,
        params_class: Params::BatchExecuteStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_execute_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>BatchGetItem</code> operation returns the attributes of one or more items
    #             from one or more tables. You identify requested items by primary key.</p>
    #         <p>A single operation can retrieve up to 16 MB of data, which can contain as many as 100
    #             items. <code>BatchGetItem</code> returns a partial result if the response size limit is
    #             exceeded, the table's provisioned throughput is exceeded, or an internal processing
    #             failure occurs. If a partial result is returned, the operation returns a value for
    #                 <code>UnprocessedKeys</code>. You can use this value to retry the operation starting
    #             with the next item to get.</p>
    #         <important>
    #             <p>If you request more than 100 items, <code>BatchGetItem</code> returns a
    #                     <code>ValidationException</code> with the message "Too many items requested for
    #                 the BatchGetItem call."</p>
    #         </important>
    #         <p>For example, if you ask to retrieve 100 items, but each individual item is 300 KB in
    #             size, the system returns 52 items (so as not to exceed the 16 MB limit). It also returns
    #             an appropriate <code>UnprocessedKeys</code> value so you can get the next page of
    #             results. If desired, your application can include its own logic to assemble the pages of
    #             results into one dataset.</p>
    #         <p>If <i>none</i> of the items can be processed due to insufficient
    #             provisioned throughput on all of the tables in the request, then
    #                 <code>BatchGetItem</code> returns a
    #                 <code>ProvisionedThroughputExceededException</code>. If <i>at least
    #                 one</i> of the items is successfully processed, then
    #                 <code>BatchGetItem</code> completes successfully, while returning the keys of the
    #             unread items in <code>UnprocessedKeys</code>.</p>
    #         <important>
    #             <p>If DynamoDB returns any unprocessed items, you should retry the batch operation on
    #                 those items. However, <i>we strongly recommend that you use an exponential
    #                     backoff algorithm</i>. If you retry the batch operation immediately, the
    #                 underlying read or write requests can still fail due to throttling on the individual
    #                 tables. If you delay the batch operation using exponential backoff, the individual
    #                 requests in the batch are much more likely to succeed.</p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations">Batch Operations and Error Handling</a> in the <i>Amazon DynamoDB
    #                     Developer Guide</i>.</p>
    #         </important>
    #         <p>By default, <code>BatchGetItem</code> performs eventually consistent reads on every
    #             table in the request. If you want strongly consistent reads instead, you can set
    #                 <code>ConsistentRead</code> to <code>true</code> for any or all tables.</p>
    #         <p>In order to minimize response latency, <code>BatchGetItem</code> retrieves items in
    #             parallel.</p>
    #         <p>When designing your application, keep in mind that DynamoDB does not return items in
    #             any particular order. To help parse the response by item, include the primary key values
    #             for the items in your request in the <code>ProjectionExpression</code> parameter.</p>
    #         <p>If a requested item does not exist, it is not returned in the result. Requests for
    #             nonexistent items consume the minimum read capacity units according to the type of read.
    #             For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations">Working with Tables</a> in the <i>Amazon DynamoDB Developer
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetItemInput}.
    #
    # @option params [Hash<String, KeysAndAttributes>] :request_items
    #   <p>A map of one or more table names and, for each table, a map that describes one or more
    #               items to retrieve from that table. Each table name can be used only once per
    #                   <code>BatchGetItem</code> request.</p>
    #           <p>Each element in the map of items to retrieve consists of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>ConsistentRead</code> - If <code>true</code>, a strongly consistent read
    #                       is used; if <code>false</code> (the default), an eventually consistent read is
    #                       used.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ExpressionAttributeNames</code> - One or more substitution tokens for
    #                       attribute names in the <code>ProjectionExpression</code> parameter. The
    #                       following are some use cases for using
    #                       <code>ExpressionAttributeNames</code>:</p>
    #                   <ul>
    #                     <li>
    #                           <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                               word.</p>
    #                       </li>
    #                     <li>
    #                           <p>To create a placeholder for repeating occurrences of an attribute name
    #                               in an expression.</p>
    #                       </li>
    #                     <li>
    #                           <p>To prevent special characters in an attribute name from being
    #                               misinterpreted in an expression.</p>
    #                       </li>
    #                  </ul>
    #                   <p>Use the <b>#</b> character in an expression to
    #                       dereference an attribute name. For example, consider the following attribute
    #                       name:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                               <code>Percentile</code>
    #                           </p>
    #                       </li>
    #                  </ul>
    #                   <p>The name of this attribute conflicts with a reserved word, so it cannot be
    #                       used directly in an expression. (For the complete list of reserved words, see
    #                           <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved
    #                           Words</a> in the <i>Amazon DynamoDB Developer Guide</i>).
    #                       To work around this, you could specify the following for
    #                           <code>ExpressionAttributeNames</code>:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                               <code>{"#P":"Percentile"}</code>
    #                           </p>
    #                       </li>
    #                  </ul>
    #                   <p>You could then use this substitution in an expression, as in this
    #                       example:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                               <code>#P = :val</code>
    #                           </p>
    #                       </li>
    #                  </ul>
    #                   <note>
    #                       <p>Tokens that begin with the <b>:</b> character
    #                           are <i>expression attribute values</i>, which are placeholders
    #                           for the actual value at runtime.</p>
    #                   </note>
    #                   <p>For more information about expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB
    #                           Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Keys</code> - An array of primary key attribute values that define
    #                       specific items in the table. For each primary key, you must provide
    #                           <i>all</i> of the key attributes. For example, with a simple
    #                       primary key, you only need to provide the partition key value. For a composite
    #                       key, you must provide <i>both</i> the partition key value and the
    #                       sort key value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ProjectionExpression</code> - A string that identifies one or more
    #                       attributes to retrieve from the table. These attributes can include scalars,
    #                       sets, or elements of a JSON document. The attributes in the expression must be
    #                       separated by commas.</p>
    #                   <p>If no attribute names are specified, then all attributes are returned. If any
    #                       of the requested attributes are not found, they do not appear in the
    #                       result.</p>
    #                   <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB
    #                           Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AttributesToGet</code> - This is a legacy parameter. Use
    #                           <code>ProjectionExpression</code> instead. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #                           Guide</i>. </p>
    #
    #               </li>
    #            </ul>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::BatchGetItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_item(
    #     request_items: {
    #       'key' => {
    #         keys: [
    #           {
    #             'key' => {
    #               # One of:
    #               s: 'S',
    #               n: 'N',
    #               b: 'B',
    #               ss: [
    #                 'member'
    #               ],
    #               ns: [
    #                 'member'
    #               ],
    #               bs: [
    #                 'member'
    #               ],
    #               null: false,
    #               bool: false
    #             }
    #           }
    #         ], # required
    #         attributes_to_get: [
    #           'member'
    #         ],
    #         consistent_read: false,
    #         projection_expression: 'ProjectionExpression',
    #         expression_attribute_names: {
    #           'key' => 'value'
    #         }
    #       }
    #     }, # required
    #     return_consumed_capacity: 'INDEXES' # accepts ["INDEXES", "TOTAL", "NONE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetItemOutput
    #   resp.data.responses #=> Hash<String, Array<Hash<String, AttributeValue>>>
    #   resp.data.responses['key'] #=> Array<Hash<String, AttributeValue>>
    #   resp.data.responses['key'][0] #=> Hash<String, AttributeValue>
    #   resp.data.responses['key'][0]['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.responses['key'][0]['key'].s #=> String
    #   resp.data.responses['key'][0]['key'].n #=> String
    #   resp.data.responses['key'][0]['key'].b #=> String
    #   resp.data.responses['key'][0]['key'].ss #=> Array<String>
    #   resp.data.responses['key'][0]['key'].ss[0] #=> String
    #   resp.data.responses['key'][0]['key'].ns #=> Array<String>
    #   resp.data.responses['key'][0]['key'].ns[0] #=> String
    #   resp.data.responses['key'][0]['key'].bs #=> Array<String>
    #   resp.data.responses['key'][0]['key'].bs[0] #=> String
    #   resp.data.responses['key'][0]['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.responses['key'][0]['key'].l #=> Array<AttributeValue>
    #   resp.data.responses['key'][0]['key'].null #=> Boolean
    #   resp.data.responses['key'][0]['key'].bool #=> Boolean
    #   resp.data.unprocessed_keys #=> Hash<String, KeysAndAttributes>
    #   resp.data.unprocessed_keys['key'] #=> Types::KeysAndAttributes
    #   resp.data.unprocessed_keys['key'].keys #=> Array<Hash<String, AttributeValue>>
    #   resp.data.unprocessed_keys['key'].keys[0] #=> Hash<String, AttributeValue>
    #   resp.data.unprocessed_keys['key'].attributes_to_get #=> Array<String>
    #   resp.data.unprocessed_keys['key'].attributes_to_get[0] #=> String
    #   resp.data.unprocessed_keys['key'].consistent_read #=> Boolean
    #   resp.data.unprocessed_keys['key'].projection_expression #=> String
    #   resp.data.unprocessed_keys['key'].expression_attribute_names #=> Hash<String, String>
    #   resp.data.unprocessed_keys['key'].expression_attribute_names['key'] #=> String
    #   resp.data.consumed_capacity #=> Array<ConsumedCapacity>
    #   resp.data.consumed_capacity[0] #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity[0].table_name #=> String
    #   resp.data.consumed_capacity[0].capacity_units #=> Float
    #   resp.data.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table #=> Types::Capacity
    #   resp.data.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.data.consumed_capacity[0].local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity[0].global_secondary_indexes #=> Hash<String, Capacity>
    #
    def batch_get_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]),
        data_parser: Parsers::BatchGetItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetItem,
        stubs: @stubs,
        params_class: Params::BatchGetItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>BatchWriteItem</code> operation puts or deletes multiple items in one or
    #             more tables. A single call to <code>BatchWriteItem</code> can transmit up to 16MB of
    #             data over the network, consisting of up to 25 item put or delete operations. While
    #             individual items can be up to 400 KB once stored, it's important to
    #             note that an item's representation might be greater than 400KB while being sent in
    #             DynamoDB's JSON format for the API call. For more details on this distinction, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html">Naming Rules and Data Types</a>.</p>
    #         <note>
    #             <p>
    #                 <code>BatchWriteItem</code> cannot update items. To update items, use the
    #                     <code>UpdateItem</code> action.</p>
    #         </note>
    #         <p>The individual <code>PutItem</code> and <code>DeleteItem</code> operations specified
    #             in <code>BatchWriteItem</code> are atomic; however <code>BatchWriteItem</code> as a
    #             whole is not. If any requested operations fail because the table's provisioned
    #             throughput is exceeded or an internal processing failure occurs, the failed operations
    #             are returned in the <code>UnprocessedItems</code> response parameter. You can
    #             investigate and optionally resend the requests. Typically, you would call
    #                 <code>BatchWriteItem</code> in a loop. Each iteration would check for unprocessed
    #             items and submit a new <code>BatchWriteItem</code> request with those unprocessed items
    #             until all items have been processed.</p>
    #         <p>If <i>none</i> of the items can be processed due to insufficient
    #             provisioned throughput on all of the tables in the request, then
    #                 <code>BatchWriteItem</code> returns a
    #                 <code>ProvisionedThroughputExceededException</code>.</p>
    #         <important>
    #             <p>If DynamoDB returns any unprocessed items, you should retry the batch operation on
    #                 those items. However, <i>we strongly recommend that you use an exponential
    #                     backoff algorithm</i>. If you retry the batch operation immediately, the
    #                 underlying read or write requests can still fail due to throttling on the individual
    #                 tables. If you delay the batch operation using exponential backoff, the individual
    #                 requests in the batch are much more likely to succeed.</p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#Programming.Errors.BatchOperations">Batch Operations and Error Handling</a> in the <i>Amazon DynamoDB
    #                     Developer Guide</i>.</p>
    #         </important>
    #
    #         <p>With <code>BatchWriteItem</code>, you can efficiently write or delete large amounts of
    #             data, such as from Amazon EMR, or copy data from another database into DynamoDB. In
    #             order to improve performance with these large-scale operations,
    #                 <code>BatchWriteItem</code> does not behave in the same way as individual
    #                 <code>PutItem</code> and <code>DeleteItem</code> calls would. For example, you
    #             cannot specify conditions on individual put and delete requests, and
    #                 <code>BatchWriteItem</code> does not return deleted items in the response.</p>
    #         <p>If you use a programming language that supports concurrency, you can use threads to
    #             write items in parallel. Your application must include the necessary logic to manage the
    #             threads. With languages that don't support threading, you must update or delete the
    #             specified items one at a time. In both situations, <code>BatchWriteItem</code> performs
    #             the specified put and delete operations in parallel, giving you the power of the thread
    #             pool approach without having to introduce complexity into your application.</p>
    #         <p>Parallel processing reduces latency, but each specified put and delete request
    #             consumes the same number of write capacity units whether it is processed in parallel or
    #             not. Delete operations on nonexistent items consume one write capacity unit.</p>
    #         <p>If one or more of the following is true, DynamoDB rejects the entire batch write
    #             operation:</p>
    #         <ul>
    #             <li>
    #                 <p>One or more tables specified in the <code>BatchWriteItem</code> request does
    #                     not exist.</p>
    #             </li>
    #             <li>
    #                 <p>Primary key attributes specified on an item in the request do not match those
    #                     in the corresponding table's primary key schema.</p>
    #             </li>
    #             <li>
    #                 <p>You try to perform multiple operations on the same item in the same
    #                         <code>BatchWriteItem</code> request. For example, you cannot put and delete
    #                     the same item in the same <code>BatchWriteItem</code> request. </p>
    #             </li>
    #             <li>
    #                 <p> Your request contains at least two items with identical hash and range keys
    #                     (which essentially is two put operations). </p>
    #             </li>
    #             <li>
    #                 <p>There are more than 25 requests in the batch.</p>
    #             </li>
    #             <li>
    #                 <p>Any individual item in a batch exceeds 400 KB.</p>
    #             </li>
    #             <li>
    #                 <p>The total request size exceeds 16 MB.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::BatchWriteItemInput}.
    #
    # @option params [Hash<String, Array<WriteRequest>>] :request_items
    #   <p>A map of one or more table names and, for each table, a list of operations to be
    #               performed (<code>DeleteRequest</code> or <code>PutRequest</code>). Each element in the
    #               map consists of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the
    #                       specified item. The item to be deleted is identified by a <code>Key</code>
    #                       subelement:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                               <code>Key</code> - A map of primary key attribute values that uniquely
    #                               identify the item. Each entry in this map consists of an attribute name
    #                               and an attribute value. For each primary key, you must provide
    #                                   <i>all</i> of the key attributes. For example, with a
    #                               simple primary key, you only need to provide a value for the partition
    #                               key. For a composite primary key, you must provide values for
    #                                   <i>both</i> the partition key and the sort key.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the
    #                       specified item. The item to be put is identified by an <code>Item</code>
    #                       subelement:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                               <code>Item</code> - A map of attributes and their values. Each entry in
    #                               this map consists of an attribute name and an attribute value. Attribute
    #                               values must not be null; string and binary type attributes must have
    #                               lengths greater than zero; and set type attributes must not be empty.
    #                               Requests that contain empty values are rejected with a
    #                                   <code>ValidationException</code> exception.</p>
    #                           <p>If you specify any attributes that are part of an index key, then the
    #                               data types for those attributes must match those of the schema in the
    #                               table's attribute definition.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #
    # @return [Types::BatchWriteItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_write_item(
    #     request_items: {
    #       'key' => [
    #         {
    #           put_request: {
    #             item: {
    #               'key' => {
    #                 # One of:
    #                 s: 'S',
    #                 n: 'N',
    #                 b: 'B',
    #                 ss: [
    #                   'member'
    #                 ],
    #                 ns: [
    #                   'member'
    #                 ],
    #                 bs: [
    #                   'member'
    #                 ],
    #                 null: false,
    #                 bool: false
    #               }
    #             } # required
    #           },
    #           delete_request: {
    #           }
    #         }
    #       ]
    #     }, # required
    #     return_consumed_capacity: 'INDEXES', # accepts ["INDEXES", "TOTAL", "NONE"]
    #     return_item_collection_metrics: 'SIZE' # accepts ["SIZE", "NONE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchWriteItemOutput
    #   resp.data.unprocessed_items #=> Hash<String, Array<WriteRequest>>
    #   resp.data.unprocessed_items['key'] #=> Array<WriteRequest>
    #   resp.data.unprocessed_items['key'][0] #=> Types::WriteRequest
    #   resp.data.unprocessed_items['key'][0].put_request #=> Types::PutRequest
    #   resp.data.unprocessed_items['key'][0].put_request.item #=> Hash<String, AttributeValue>
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].s #=> String
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].n #=> String
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].b #=> String
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].ss #=> Array<String>
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].ss[0] #=> String
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].ns #=> Array<String>
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].ns[0] #=> String
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].bs #=> Array<String>
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].bs[0] #=> String
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].l #=> Array<AttributeValue>
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].null #=> Boolean
    #   resp.data.unprocessed_items['key'][0].put_request.item['key'].bool #=> Boolean
    #   resp.data.unprocessed_items['key'][0].delete_request #=> Types::DeleteRequest
    #   resp.data.unprocessed_items['key'][0].delete_request.key #=> Hash<String, AttributeValue>
    #   resp.data.item_collection_metrics #=> Hash<String, Array<ItemCollectionMetrics>>
    #   resp.data.item_collection_metrics['key'] #=> Array<ItemCollectionMetrics>
    #   resp.data.item_collection_metrics['key'][0] #=> Types::ItemCollectionMetrics
    #   resp.data.item_collection_metrics['key'][0].item_collection_key #=> Hash<String, AttributeValue>
    #   resp.data.item_collection_metrics['key'][0].size_estimate_range_gb #=> Array<Float>
    #   resp.data.item_collection_metrics['key'][0].size_estimate_range_gb[0] #=> Float
    #   resp.data.consumed_capacity #=> Array<ConsumedCapacity>
    #   resp.data.consumed_capacity[0] #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity[0].table_name #=> String
    #   resp.data.consumed_capacity[0].capacity_units #=> Float
    #   resp.data.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table #=> Types::Capacity
    #   resp.data.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.data.consumed_capacity[0].local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity[0].global_secondary_indexes #=> Hash<String, Capacity>
    #
    def batch_write_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchWriteItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchWriteItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchWriteItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]),
        data_parser: Parsers::BatchWriteItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchWriteItem,
        stubs: @stubs,
        params_class: Params::BatchWriteItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_write_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a backup for an existing table.</p>
    #         <p> Each time you create an on-demand backup, the entire table data is backed up. There
    #             is no limit to the number of on-demand backups that can be taken. </p>
    #         <p> When you create an on-demand backup, a time marker of the request is cataloged, and
    #             the backup is created asynchronously, by applying all changes until the time of the
    #             request to the last full table snapshot. Backup requests are processed instantaneously
    #             and become available for restore within minutes. </p>
    #         <p>You can call <code>CreateBackup</code> at a maximum rate of 50 times per
    #             second.</p>
    #         <p>All backups in DynamoDB work without consuming any provisioned throughput on the
    #             table.</p>
    #         <p> If you submit a backup request on 2018-12-14 at 14:25:00, the backup is guaranteed to
    #             contain all data committed to the table up to 14:24:00, and data committed after
    #             14:26:00 will not be. The backup might contain data modifications made between 14:24:00
    #             and 14:26:00. On-demand backup does not support causal consistency. </p>
    #         <p> Along with data, the following are also included on the backups: </p>
    #         <ul>
    #             <li>
    #                 <p>Global secondary indexes (GSIs)</p>
    #             </li>
    #             <li>
    #                 <p>Local secondary indexes (LSIs)</p>
    #             </li>
    #             <li>
    #                 <p>Streams</p>
    #             </li>
    #             <li>
    #                 <p>Provisioned read and write capacity</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateBackupInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    #
    # @option params [String] :backup_name
    #   <p>Specified name for the backup.</p>
    #
    # @return [Types::CreateBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup(
    #     table_name: 'TableName', # required
    #     backup_name: 'BackupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackupOutput
    #   resp.data.backup_details #=> Types::BackupDetails
    #   resp.data.backup_details.backup_arn #=> String
    #   resp.data.backup_details.backup_name #=> String
    #   resp.data.backup_details.backup_size_bytes #=> Integer
    #   resp.data.backup_details.backup_status #=> String, one of ["CREATING", "DELETED", "AVAILABLE"]
    #   resp.data.backup_details.backup_type #=> String, one of ["USER", "SYSTEM", "AWS_BACKUP"]
    #   resp.data.backup_details.backup_creation_date_time #=> Time
    #   resp.data.backup_details.backup_expiry_date_time #=> Time
    #
    def create_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::TableInUseException, Errors::BackupInUseException, Errors::TableNotFoundException, Errors::ContinuousBackupsUnavailableException]),
        data_parser: Parsers::CreateBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackup,
        stubs: @stubs,
        params_class: Params::CreateBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a global table from an existing table. A global table creates a replication
    #             relationship between two or more DynamoDB tables with the same table name in the
    #             provided Regions. </p>
    #         <note>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                     2017.11.29</a> of global tables.</p>
    #         </note>
    #
    #         <p>If you want to add a new replica table to a global table, each of the following
    #             conditions must be true:</p>
    #         <ul>
    #             <li>
    #                 <p>The table must have the same primary key as all of the other replicas.</p>
    #             </li>
    #             <li>
    #                 <p>The table must have the same name as all of the other replicas.</p>
    #             </li>
    #             <li>
    #                 <p>The table must have DynamoDB Streams enabled, with the stream containing both
    #                     the new and the old images of the item.</p>
    #             </li>
    #             <li>
    #                 <p>None of the replica tables in the global table can contain any data.</p>
    #             </li>
    #          </ul>
    #         <p> If global secondary indexes are specified, then the following conditions must also be
    #             met: </p>
    #         <ul>
    #             <li>
    #                 <p> The global secondary indexes must have the same name. </p>
    #             </li>
    #             <li>
    #                 <p> The global secondary indexes must have the same hash key and sort key (if
    #                     present). </p>
    #             </li>
    #          </ul>
    #         <p> If local secondary indexes are specified, then the following conditions must also be
    #             met: </p>
    #         <ul>
    #             <li>
    #                 <p> The local secondary indexes must have the same name. </p>
    #             </li>
    #             <li>
    #                 <p> The local secondary indexes must have the same hash key and sort key (if
    #                     present). </p>
    #             </li>
    #          </ul>
    #
    #         <important>
    #             <p> Write capacity settings should be set consistently across your replica tables and
    #                 secondary indexes. DynamoDB strongly recommends enabling auto scaling to manage the
    #                 write capacity settings for all of your global tables replicas and indexes. </p>
    #             <p> If you prefer to manage write capacity settings manually, you should provision
    #                 equal replicated write capacity units to your replica tables. You should also
    #                 provision equal replicated write capacity units to matching secondary indexes across
    #                 your global table. </p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::CreateGlobalTableInput}.
    #
    # @option params [String] :global_table_name
    #   <p>The global table name.</p>
    #
    # @option params [Array<Replica>] :replication_group
    #   <p>The Regions where the global table needs to be created.</p>
    #
    # @return [Types::CreateGlobalTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_global_table(
    #     global_table_name: 'GlobalTableName', # required
    #     replication_group: [
    #       {
    #         region_name: 'RegionName'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGlobalTableOutput
    #   resp.data.global_table_description #=> Types::GlobalTableDescription
    #   resp.data.global_table_description.replication_group #=> Array<ReplicaDescription>
    #   resp.data.global_table_description.replication_group[0] #=> Types::ReplicaDescription
    #   resp.data.global_table_description.replication_group[0].region_name #=> String
    #   resp.data.global_table_description.replication_group[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.global_table_description.replication_group[0].replica_status_description #=> String
    #   resp.data.global_table_description.replication_group[0].replica_status_percent_progress #=> String
    #   resp.data.global_table_description.replication_group[0].kms_master_key_id #=> String
    #   resp.data.global_table_description.replication_group[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.global_table_description.replication_group[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexDescription>
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexDescription
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.global_table_description.replication_group[0].replica_inaccessible_date_time #=> Time
    #   resp.data.global_table_description.replication_group[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.global_table_description.replication_group[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.global_table_description.replication_group[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.data.global_table_description.global_table_arn #=> String
    #   resp.data.global_table_description.creation_date_time #=> Time
    #   resp.data.global_table_description.global_table_status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "UPDATING"]
    #   resp.data.global_table_description.global_table_name #=> String
    #
    def create_global_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGlobalTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGlobalTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGlobalTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::TableNotFoundException, Errors::GlobalTableAlreadyExistsException]),
        data_parser: Parsers::CreateGlobalTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGlobalTable,
        stubs: @stubs,
        params_class: Params::CreateGlobalTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_global_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>CreateTable</code> operation adds a new table to your account. In an Amazon Web Services account, table names must be unique within each Region. That is, you can
    #             have two tables with same name if you create the tables in different Regions.</p>
    #         <p>
    #             <code>CreateTable</code> is an asynchronous operation. Upon receiving a
    #                 <code>CreateTable</code> request, DynamoDB immediately returns a response with a
    #                 <code>TableStatus</code> of <code>CREATING</code>. After the table is created,
    #             DynamoDB sets the <code>TableStatus</code> to <code>ACTIVE</code>. You can perform read
    #             and write operations only on an <code>ACTIVE</code> table. </p>
    #         <p>You can optionally define secondary indexes on the new table, as part of the
    #                 <code>CreateTable</code> operation. If you want to create multiple tables with
    #             secondary indexes on them, you must create the tables sequentially. Only one table with
    #             secondary indexes can be in the <code>CREATING</code> state at any given time.</p>
    #         <p>You can use the <code>DescribeTable</code> action to check the table status.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTableInput}.
    #
    # @option params [Array<AttributeDefinition>] :attribute_definitions
    #   <p>An array of attributes that describe the key schema for the table and indexes.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the table to create.</p>
    #
    # @option params [Array<KeySchemaElement>] :key_schema
    #   <p>Specifies the attributes that make up the primary key for a table or an index. The
    #               attributes in <code>KeySchema</code> must also be defined in the
    #                   <code>AttributeDefinitions</code> array. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html">Data
    #                   Model</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #           <p>Each <code>KeySchemaElement</code> in the array is composed of:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>AttributeName</code> - The name of this key attribute.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>KeyType</code> - The role that the key attribute will assume:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                               <code>HASH</code> - partition key</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                               <code>RANGE</code> - sort key</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from the DynamoDB usage
    #                   of an internal hash function to evenly distribute data items across partitions,
    #                   based on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #           </note>
    #
    #           <p>For a simple primary key (partition key), you must provide exactly one element with a
    #                   <code>KeyType</code> of <code>HASH</code>.</p>
    #           <p>For a composite primary key (partition key and sort key), you must provide exactly two
    #               elements, in this order: The first element must have a <code>KeyType</code> of
    #                   <code>HASH</code>, and the second element must have a <code>KeyType</code> of
    #                   <code>RANGE</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key">Working with Tables</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Array<LocalSecondaryIndex>] :local_secondary_indexes
    #   <p>One or more local secondary indexes (the maximum is 5) to be created on the table.
    #               Each index is scoped to a given partition key value. There is a 10 GB size limit per
    #               partition key value; otherwise, the size of a local secondary index is
    #               unconstrained.</p>
    #           <p>Each local secondary index in the array includes the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>IndexName</code> - The name of the local secondary index. Must be unique
    #                       only for this table.</p>
    #                   <p></p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>KeySchema</code> - Specifies the key schema for the local secondary index.
    #                       The key schema must begin with the same partition key as the table.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                               <code>ProjectionType</code> - One of the following:</p>
    #                           <ul>
    #                           <li>
    #                                   <p>
    #                                       <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                               </li>
    #                           <li>
    #                                   <p>
    #                                       <code>INCLUDE</code> - Only the specified table attributes are
    #                                       projected into the index. The list of projected attributes is in
    #                                           <code>NonKeyAttributes</code>.</p>
    #                               </li>
    #                           <li>
    #                                   <p>
    #                                       <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                               </li>
    #                        </ul>
    #                       </li>
    #                     <li>
    #                           <p>
    #                               <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [Array<GlobalSecondaryIndex>] :global_secondary_indexes
    #   <p>One or more global secondary indexes (the maximum is 20) to be created on the table.
    #               Each global secondary index in the array includes the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>IndexName</code> - The name of the global secondary index. Must be unique
    #                       only for this table.</p>
    #                   <p></p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>KeySchema</code> - Specifies the key schema for the global secondary
    #                       index.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                               <code>ProjectionType</code> - One of the following:</p>
    #                           <ul>
    #                           <li>
    #                                   <p>
    #                                       <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                               </li>
    #                           <li>
    #                                   <p>
    #                                       <code>INCLUDE</code> - Only the specified table attributes are
    #                                       projected into the index. The list of projected attributes is in
    #                                           <code>NonKeyAttributes</code>.</p>
    #                               </li>
    #                           <li>
    #                                   <p>
    #                                       <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                               </li>
    #                        </ul>
    #                       </li>
    #                     <li>
    #                           <p>
    #                               <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ProvisionedThroughput</code> - The provisioned throughput settings for the
    #                       global secondary index, consisting of read and write capacity units.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. This setting can be changed later.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual">Provisioned Mode</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand">On-Demand Mode</a>. </p>
    #               </li>
    #            </ul>
    #
    # @option params [ProvisionedThroughput] :provisioned_throughput
    #   <p>Represents the provisioned throughput settings for a specified table or index. The
    #               settings can be modified using the <code>UpdateTable</code> operation.</p>
    #           <p> If you set BillingMode as <code>PROVISIONED</code>, you must specify this property.
    #               If you set BillingMode as <code>PAY_PER_REQUEST</code>, you cannot specify this
    #               property.</p>
    #           <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [StreamSpecification] :stream_specification
    #   <p>The settings for DynamoDB Streams on the table. These settings consist of:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>StreamEnabled</code> - Indicates whether DynamoDB Streams is to be enabled
    #                       (true) or disabled (false).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>StreamViewType</code> - When an item in the table is modified,
    #                           <code>StreamViewType</code> determines what information is written to the
    #                       table's stream. Valid values for <code>StreamViewType</code> are:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                               <code>KEYS_ONLY</code> - Only the key attributes of the modified item
    #                               are written to the stream.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                               <code>NEW_IMAGE</code> - The entire item, as it appears after it was
    #                               modified, is written to the stream.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                               <code>OLD_IMAGE</code> - The entire item, as it appeared before it was
    #                               modified, is written to the stream.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                               <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images
    #                               of the item are written to the stream.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [SSESpecification] :sse_specification
    #   <p>Represents the settings used to enable server-side encryption.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of key-value pairs to label the table. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging
    #                   for DynamoDB</a>.</p>
    #
    # @option params [String] :table_class
    #   <p>The table class of the new table. Valid values are <code>STANDARD</code> and
    #                   <code>STANDARD_INFREQUENT_ACCESS</code>.</p>
    #
    # @return [Types::CreateTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table(
    #     attribute_definitions: [
    #       {
    #         attribute_name: 'AttributeName', # required
    #         attribute_type: 'S' # required - accepts ["S", "N", "B"]
    #       }
    #     ], # required
    #     table_name: 'TableName', # required
    #     key_schema: [
    #       {
    #         attribute_name: 'AttributeName', # required
    #         key_type: 'HASH' # required - accepts ["HASH", "RANGE"]
    #       }
    #     ], # required
    #     local_secondary_indexes: [
    #       {
    #         index_name: 'IndexName', # required
    #         projection: {
    #           projection_type: 'ALL', # accepts ["ALL", "KEYS_ONLY", "INCLUDE"]
    #           non_key_attributes: [
    #             'member'
    #           ]
    #         } # required
    #       }
    #     ],
    #     global_secondary_indexes: [
    #       {
    #         index_name: 'IndexName', # required
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1 # required
    #         }
    #       }
    #     ],
    #     billing_mode: 'PROVISIONED', # accepts ["PROVISIONED", "PAY_PER_REQUEST"]
    #     stream_specification: {
    #       stream_enabled: false, # required
    #       stream_view_type: 'NEW_IMAGE' # accepts ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #     },
    #     sse_specification: {
    #       enabled: false,
    #       sse_type: 'AES256', # accepts ["AES256", "KMS"]
    #       kms_master_key_id: 'KMSMasterKeyId'
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     table_class: 'STANDARD' # accepts ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTableOutput
    #   resp.data.table_description #=> Types::TableDescription
    #   resp.data.table_description.attribute_definitions #=> Array<AttributeDefinition>
    #   resp.data.table_description.attribute_definitions[0] #=> Types::AttributeDefinition
    #   resp.data.table_description.attribute_definitions[0].attribute_name #=> String
    #   resp.data.table_description.attribute_definitions[0].attribute_type #=> String, one of ["S", "N", "B"]
    #   resp.data.table_description.table_name #=> String
    #   resp.data.table_description.key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.table_description.key_schema[0].attribute_name #=> String
    #   resp.data.table_description.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.table_description.table_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED"]
    #   resp.data.table_description.creation_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table_description.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.data.table_description.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.table_description.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.table_description.table_size_bytes #=> Integer
    #   resp.data.table_description.item_count #=> Integer
    #   resp.data.table_description.table_arn #=> String
    #   resp.data.table_description.table_id #=> String
    #   resp.data.table_description.billing_mode_summary #=> Types::BillingModeSummary
    #   resp.data.table_description.billing_mode_summary.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.table_description.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.data.table_description.local_secondary_indexes #=> Array<LocalSecondaryIndexDescription>
    #   resp.data.table_description.local_secondary_indexes[0] #=> Types::LocalSecondaryIndexDescription
    #   resp.data.table_description.local_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.local_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.local_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   resp.data.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.data.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table_description.local_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table_description.local_secondary_indexes[0].index_arn #=> String
    #   resp.data.table_description.global_secondary_indexes #=> Array<GlobalSecondaryIndexDescription>
    #   resp.data.table_description.global_secondary_indexes[0] #=> Types::GlobalSecondaryIndexDescription
    #   resp.data.table_description.global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.global_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.global_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table_description.global_secondary_indexes[0].index_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   resp.data.table_description.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.data.table_description.global_secondary_indexes[0].provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table_description.global_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table_description.global_secondary_indexes[0].index_arn #=> String
    #   resp.data.table_description.stream_specification #=> Types::StreamSpecification
    #   resp.data.table_description.stream_specification.stream_enabled #=> Boolean
    #   resp.data.table_description.stream_specification.stream_view_type #=> String, one of ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   resp.data.table_description.latest_stream_label #=> String
    #   resp.data.table_description.latest_stream_arn #=> String
    #   resp.data.table_description.global_table_version #=> String
    #   resp.data.table_description.replicas #=> Array<ReplicaDescription>
    #   resp.data.table_description.replicas[0] #=> Types::ReplicaDescription
    #   resp.data.table_description.replicas[0].region_name #=> String
    #   resp.data.table_description.replicas[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.table_description.replicas[0].replica_status_description #=> String
    #   resp.data.table_description.replicas[0].replica_status_percent_progress #=> String
    #   resp.data.table_description.replicas[0].kms_master_key_id #=> String
    #   resp.data.table_description.replicas[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table_description.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.data.table_description.replicas[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexDescription>
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexDescription
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table_description.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.data.table_description.replicas[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.table_description.replicas[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.table_description.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.data.table_description.restore_summary #=> Types::RestoreSummary
    #   resp.data.table_description.restore_summary.source_backup_arn #=> String
    #   resp.data.table_description.restore_summary.source_table_arn #=> String
    #   resp.data.table_description.restore_summary.restore_date_time #=> Time
    #   resp.data.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.data.table_description.sse_description #=> Types::SSEDescription
    #   resp.data.table_description.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"]
    #   resp.data.table_description.sse_description.sse_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.table_description.sse_description.kms_master_key_arn #=> String
    #   resp.data.table_description.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.data.table_description.archival_summary #=> Types::ArchivalSummary
    #   resp.data.table_description.archival_summary.archival_date_time #=> Time
    #   resp.data.table_description.archival_summary.archival_reason #=> String
    #   resp.data.table_description.archival_summary.archival_backup_arn #=> String
    #   resp.data.table_description.table_class_summary #=> Types::TableClassSummary
    #
    def create_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::CreateTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTable,
        stubs: @stubs,
        params_class: Params::CreateTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing backup of a table.</p>
    #         <p>You can call <code>DeleteBackup</code> at a maximum rate of 10 times per
    #             second.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackupInput}.
    #
    # @option params [String] :backup_arn
    #   <p>The ARN associated with the backup.</p>
    #
    # @return [Types::DeleteBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup(
    #     backup_arn: 'BackupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackupOutput
    #   resp.data.backup_description #=> Types::BackupDescription
    #   resp.data.backup_description.backup_details #=> Types::BackupDetails
    #   resp.data.backup_description.backup_details.backup_arn #=> String
    #   resp.data.backup_description.backup_details.backup_name #=> String
    #   resp.data.backup_description.backup_details.backup_size_bytes #=> Integer
    #   resp.data.backup_description.backup_details.backup_status #=> String, one of ["CREATING", "DELETED", "AVAILABLE"]
    #   resp.data.backup_description.backup_details.backup_type #=> String, one of ["USER", "SYSTEM", "AWS_BACKUP"]
    #   resp.data.backup_description.backup_details.backup_creation_date_time #=> Time
    #   resp.data.backup_description.backup_details.backup_expiry_date_time #=> Time
    #   resp.data.backup_description.source_table_details #=> Types::SourceTableDetails
    #   resp.data.backup_description.source_table_details.table_name #=> String
    #   resp.data.backup_description.source_table_details.table_id #=> String
    #   resp.data.backup_description.source_table_details.table_arn #=> String
    #   resp.data.backup_description.source_table_details.table_size_bytes #=> Integer
    #   resp.data.backup_description.source_table_details.key_schema #=> Array<KeySchemaElement>
    #   resp.data.backup_description.source_table_details.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.backup_description.source_table_details.key_schema[0].attribute_name #=> String
    #   resp.data.backup_description.source_table_details.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.backup_description.source_table_details.table_creation_date_time #=> Time
    #   resp.data.backup_description.source_table_details.provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.backup_description.source_table_details.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.backup_description.source_table_details.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.backup_description.source_table_details.item_count #=> Integer
    #   resp.data.backup_description.source_table_details.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.backup_description.source_table_feature_details #=> Types::SourceTableFeatureDetails
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes #=> Array<LocalSecondaryIndexInfo>
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0] #=> Types::LocalSecondaryIndexInfo
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].index_name #=> String
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.projection_type #=> String, one of ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes #=> Array<GlobalSecondaryIndexInfo>
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes[0] #=> Types::GlobalSecondaryIndexInfo
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes[0].index_name #=> String
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes[0].provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.backup_description.source_table_feature_details.stream_description #=> Types::StreamSpecification
    #   resp.data.backup_description.source_table_feature_details.stream_description.stream_enabled #=> Boolean
    #   resp.data.backup_description.source_table_feature_details.stream_description.stream_view_type #=> String, one of ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   resp.data.backup_description.source_table_feature_details.time_to_live_description #=> Types::TimeToLiveDescription
    #   resp.data.backup_description.source_table_feature_details.time_to_live_description.time_to_live_status #=> String, one of ["ENABLING", "DISABLING", "ENABLED", "DISABLED"]
    #   resp.data.backup_description.source_table_feature_details.time_to_live_description.attribute_name #=> String
    #   resp.data.backup_description.source_table_feature_details.sse_description #=> Types::SSEDescription
    #   resp.data.backup_description.source_table_feature_details.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"]
    #   resp.data.backup_description.source_table_feature_details.sse_description.sse_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.backup_description.source_table_feature_details.sse_description.kms_master_key_arn #=> String
    #   resp.data.backup_description.source_table_feature_details.sse_description.inaccessible_encryption_date_time #=> Time
    #
    def delete_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::BackupNotFoundException, Errors::LimitExceededException, Errors::BackupInUseException]),
        data_parser: Parsers::DeleteBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackup,
        stubs: @stubs,
        params_class: Params::DeleteBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a single item in a table by primary key. You can perform a conditional delete
    #             operation that deletes the item if it exists, or if it has an expected attribute
    #             value.</p>
    #         <p>In addition to deleting an item, you can also return the item's attribute values in
    #             the same operation, using the <code>ReturnValues</code> parameter.</p>
    #         <p>Unless you specify conditions, the <code>DeleteItem</code> is an idempotent operation;
    #             running it multiple times on the same item or attribute does <i>not</i>
    #             result in an error response.</p>
    #         <p>Conditional deletes are useful for deleting items only if specific conditions are met.
    #             If those conditions are met, DynamoDB performs the delete. Otherwise, the item is not
    #             deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteItemInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table from which to delete the item.</p>
    #
    # @option params [Hash<String, AttributeValue>] :key
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the
    #               primary key of the item to delete.</p>
    #           <p>For the primary key, you must provide all of the attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    #
    # @option params [Hash<String, ExpectedAttributeValue>] :expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [String] :conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [String] :return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared
    #               before they were deleted. For <code>DeleteItem</code>, the valid values are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ALL_OLD</code> - The content of the old item is returned.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations;
    #                   however, <code>DeleteItem</code> does not recognize any values other than
    #                       <code>NONE</code> or <code>ALL_OLD</code>.</p>
    #           </note>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #
    # @option params [String] :condition_expression
    #   <p>A condition that must be satisfied in order for a conditional <code>DeleteItem</code>
    #               to succeed.</p>
    #           <p>An expression can contain any of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                   </p>
    #                   <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p> Logical operators: <code>AND | OR | NOT</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>For more information about condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                   <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                   <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #           <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Percentile</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>{"#P":"Percentile"}</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>You could then use this substitution in an expression, as in this example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>#P = :val</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #           </note>
    #           <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #           <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #           <p>
    #               <code>Available | Backordered | Discontinued</code>
    #           </p>
    #           <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #           <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #           </p>
    #           <p>You could then use these values in an expression, such as this:</p>
    #           <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #           </p>
    #           <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @return [Types::DeleteItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_item(
    #     table_name: 'TableName', # required
    #     key: {
    #       'key' => {
    #         # One of:
    #         s: 'S',
    #         n: 'N',
    #         b: 'B',
    #         ss: [
    #           'member'
    #         ],
    #         ns: [
    #           'member'
    #         ],
    #         bs: [
    #           'member'
    #         ],
    #         null: false,
    #         bool: false
    #       }
    #     }, # required
    #     expected: {
    #       'key' => {
    #         exists: false,
    #         comparison_operator: 'EQ', # accepts ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"]
    #       }
    #     },
    #     conditional_operator: 'AND', # accepts ["AND", "OR"]
    #     return_values: 'NONE', # accepts ["NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW", "UPDATED_NEW"]
    #     return_consumed_capacity: 'INDEXES', # accepts ["INDEXES", "TOTAL", "NONE"]
    #     return_item_collection_metrics: 'SIZE', # accepts ["SIZE", "NONE"]
    #     condition_expression: 'ConditionExpression',
    #     expression_attribute_names: {
    #       'key' => 'value'
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteItemOutput
    #   resp.data.attributes #=> Hash<String, AttributeValue>
    #   resp.data.attributes['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.attributes['key'].s #=> String
    #   resp.data.attributes['key'].n #=> String
    #   resp.data.attributes['key'].b #=> String
    #   resp.data.attributes['key'].ss #=> Array<String>
    #   resp.data.attributes['key'].ss[0] #=> String
    #   resp.data.attributes['key'].ns #=> Array<String>
    #   resp.data.attributes['key'].ns[0] #=> String
    #   resp.data.attributes['key'].bs #=> Array<String>
    #   resp.data.attributes['key'].bs[0] #=> String
    #   resp.data.attributes['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.attributes['key'].l #=> Array<AttributeValue>
    #   resp.data.attributes['key'].null #=> Boolean
    #   resp.data.attributes['key'].bool #=> Boolean
    #   resp.data.consumed_capacity #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity.table_name #=> String
    #   resp.data.consumed_capacity.capacity_units #=> Float
    #   resp.data.consumed_capacity.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table #=> Types::Capacity
    #   resp.data.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.capacity_units #=> Float
    #   resp.data.consumed_capacity.local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity.global_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.item_collection_metrics #=> Types::ItemCollectionMetrics
    #   resp.data.item_collection_metrics.item_collection_key #=> Hash<String, AttributeValue>
    #   resp.data.item_collection_metrics.size_estimate_range_gb #=> Array<Float>
    #   resp.data.item_collection_metrics.size_estimate_range_gb[0] #=> Float
    #
    def delete_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]),
        data_parser: Parsers::DeleteItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteItem,
        stubs: @stubs,
        params_class: Params::DeleteItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>DeleteTable</code> operation deletes a table and all of its items. After a
    #                 <code>DeleteTable</code> request, the specified table is in the
    #                 <code>DELETING</code> state until DynamoDB completes the deletion. If the table is
    #             in the <code>ACTIVE</code> state, you can delete it. If a table is in
    #                 <code>CREATING</code> or <code>UPDATING</code> states, then DynamoDB returns a
    #                 <code>ResourceInUseException</code>. If the specified table does not exist, DynamoDB
    #             returns a <code>ResourceNotFoundException</code>. If table is already in the
    #                 <code>DELETING</code> state, no error is returned. </p>
    #         <note>
    #             <p>DynamoDB might continue to accept data read and write operations, such as
    #                     <code>GetItem</code> and <code>PutItem</code>, on a table in the
    #                     <code>DELETING</code> state until the table deletion is complete.</p>
    #         </note>
    #         <p>When you delete a table, any indexes on that table are also deleted.</p>
    #         <p>If you have DynamoDB Streams enabled on the table, then the corresponding stream on
    #             that table goes into the <code>DISABLED</code> state, and the stream is automatically
    #             deleted after 24 hours.</p>
    #
    #         <p>Use the <code>DescribeTable</code> action to check the status of the table. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTableInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table to delete.</p>
    #
    # @return [Types::DeleteTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table(
    #     table_name: 'TableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTableOutput
    #   resp.data.table_description #=> Types::TableDescription
    #   resp.data.table_description.attribute_definitions #=> Array<AttributeDefinition>
    #   resp.data.table_description.attribute_definitions[0] #=> Types::AttributeDefinition
    #   resp.data.table_description.attribute_definitions[0].attribute_name #=> String
    #   resp.data.table_description.attribute_definitions[0].attribute_type #=> String, one of ["S", "N", "B"]
    #   resp.data.table_description.table_name #=> String
    #   resp.data.table_description.key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.table_description.key_schema[0].attribute_name #=> String
    #   resp.data.table_description.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.table_description.table_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED"]
    #   resp.data.table_description.creation_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table_description.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.data.table_description.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.table_description.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.table_description.table_size_bytes #=> Integer
    #   resp.data.table_description.item_count #=> Integer
    #   resp.data.table_description.table_arn #=> String
    #   resp.data.table_description.table_id #=> String
    #   resp.data.table_description.billing_mode_summary #=> Types::BillingModeSummary
    #   resp.data.table_description.billing_mode_summary.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.table_description.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.data.table_description.local_secondary_indexes #=> Array<LocalSecondaryIndexDescription>
    #   resp.data.table_description.local_secondary_indexes[0] #=> Types::LocalSecondaryIndexDescription
    #   resp.data.table_description.local_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.local_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.local_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   resp.data.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.data.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table_description.local_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table_description.local_secondary_indexes[0].index_arn #=> String
    #   resp.data.table_description.global_secondary_indexes #=> Array<GlobalSecondaryIndexDescription>
    #   resp.data.table_description.global_secondary_indexes[0] #=> Types::GlobalSecondaryIndexDescription
    #   resp.data.table_description.global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.global_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.global_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table_description.global_secondary_indexes[0].index_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   resp.data.table_description.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.data.table_description.global_secondary_indexes[0].provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table_description.global_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table_description.global_secondary_indexes[0].index_arn #=> String
    #   resp.data.table_description.stream_specification #=> Types::StreamSpecification
    #   resp.data.table_description.stream_specification.stream_enabled #=> Boolean
    #   resp.data.table_description.stream_specification.stream_view_type #=> String, one of ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   resp.data.table_description.latest_stream_label #=> String
    #   resp.data.table_description.latest_stream_arn #=> String
    #   resp.data.table_description.global_table_version #=> String
    #   resp.data.table_description.replicas #=> Array<ReplicaDescription>
    #   resp.data.table_description.replicas[0] #=> Types::ReplicaDescription
    #   resp.data.table_description.replicas[0].region_name #=> String
    #   resp.data.table_description.replicas[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.table_description.replicas[0].replica_status_description #=> String
    #   resp.data.table_description.replicas[0].replica_status_percent_progress #=> String
    #   resp.data.table_description.replicas[0].kms_master_key_id #=> String
    #   resp.data.table_description.replicas[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table_description.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.data.table_description.replicas[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexDescription>
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexDescription
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table_description.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.data.table_description.replicas[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.table_description.replicas[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.table_description.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.data.table_description.restore_summary #=> Types::RestoreSummary
    #   resp.data.table_description.restore_summary.source_backup_arn #=> String
    #   resp.data.table_description.restore_summary.source_table_arn #=> String
    #   resp.data.table_description.restore_summary.restore_date_time #=> Time
    #   resp.data.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.data.table_description.sse_description #=> Types::SSEDescription
    #   resp.data.table_description.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"]
    #   resp.data.table_description.sse_description.sse_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.table_description.sse_description.kms_master_key_arn #=> String
    #   resp.data.table_description.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.data.table_description.archival_summary #=> Types::ArchivalSummary
    #   resp.data.table_description.archival_summary.archival_date_time #=> Time
    #   resp.data.table_description.archival_summary.archival_reason #=> String
    #   resp.data.table_description.archival_summary.archival_backup_arn #=> String
    #   resp.data.table_description.table_class_summary #=> Types::TableClassSummary
    #
    def delete_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTable,
        stubs: @stubs,
        params_class: Params::DeleteTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing backup of a table.</p>
    #         <p>You can call <code>DescribeBackup</code> at a maximum rate of 10 times per
    #             second.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBackupInput}.
    #
    # @option params [String] :backup_arn
    #   <p>The Amazon Resource Name (ARN) associated with the backup.</p>
    #
    # @return [Types::DescribeBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backup(
    #     backup_arn: 'BackupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBackupOutput
    #   resp.data.backup_description #=> Types::BackupDescription
    #   resp.data.backup_description.backup_details #=> Types::BackupDetails
    #   resp.data.backup_description.backup_details.backup_arn #=> String
    #   resp.data.backup_description.backup_details.backup_name #=> String
    #   resp.data.backup_description.backup_details.backup_size_bytes #=> Integer
    #   resp.data.backup_description.backup_details.backup_status #=> String, one of ["CREATING", "DELETED", "AVAILABLE"]
    #   resp.data.backup_description.backup_details.backup_type #=> String, one of ["USER", "SYSTEM", "AWS_BACKUP"]
    #   resp.data.backup_description.backup_details.backup_creation_date_time #=> Time
    #   resp.data.backup_description.backup_details.backup_expiry_date_time #=> Time
    #   resp.data.backup_description.source_table_details #=> Types::SourceTableDetails
    #   resp.data.backup_description.source_table_details.table_name #=> String
    #   resp.data.backup_description.source_table_details.table_id #=> String
    #   resp.data.backup_description.source_table_details.table_arn #=> String
    #   resp.data.backup_description.source_table_details.table_size_bytes #=> Integer
    #   resp.data.backup_description.source_table_details.key_schema #=> Array<KeySchemaElement>
    #   resp.data.backup_description.source_table_details.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.backup_description.source_table_details.key_schema[0].attribute_name #=> String
    #   resp.data.backup_description.source_table_details.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.backup_description.source_table_details.table_creation_date_time #=> Time
    #   resp.data.backup_description.source_table_details.provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.backup_description.source_table_details.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.backup_description.source_table_details.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.backup_description.source_table_details.item_count #=> Integer
    #   resp.data.backup_description.source_table_details.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.backup_description.source_table_feature_details #=> Types::SourceTableFeatureDetails
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes #=> Array<LocalSecondaryIndexInfo>
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0] #=> Types::LocalSecondaryIndexInfo
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].index_name #=> String
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.projection_type #=> String, one of ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes #=> Array<GlobalSecondaryIndexInfo>
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes[0] #=> Types::GlobalSecondaryIndexInfo
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes[0].index_name #=> String
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.backup_description.source_table_feature_details.global_secondary_indexes[0].provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.backup_description.source_table_feature_details.stream_description #=> Types::StreamSpecification
    #   resp.data.backup_description.source_table_feature_details.stream_description.stream_enabled #=> Boolean
    #   resp.data.backup_description.source_table_feature_details.stream_description.stream_view_type #=> String, one of ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   resp.data.backup_description.source_table_feature_details.time_to_live_description #=> Types::TimeToLiveDescription
    #   resp.data.backup_description.source_table_feature_details.time_to_live_description.time_to_live_status #=> String, one of ["ENABLING", "DISABLING", "ENABLED", "DISABLED"]
    #   resp.data.backup_description.source_table_feature_details.time_to_live_description.attribute_name #=> String
    #   resp.data.backup_description.source_table_feature_details.sse_description #=> Types::SSEDescription
    #   resp.data.backup_description.source_table_feature_details.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"]
    #   resp.data.backup_description.source_table_feature_details.sse_description.sse_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.backup_description.source_table_feature_details.sse_description.kms_master_key_arn #=> String
    #   resp.data.backup_description.source_table_feature_details.sse_description.inaccessible_encryption_date_time #=> Time
    #
    def describe_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBackup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::BackupNotFoundException]),
        data_parser: Parsers::DescribeBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBackup,
        stubs: @stubs,
        params_class: Params::DescribeBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Checks the status of continuous backups and point in time recovery on the specified
    #             table. Continuous backups are <code>ENABLED</code> on all tables at table creation. If
    #             point in time recovery is enabled, <code>PointInTimeRecoveryStatus</code> will be set to
    #             ENABLED.</p>
    #         <p> After continuous backups and point in time recovery are enabled, you can restore to
    #             any point in time within <code>EarliestRestorableDateTime</code> and
    #                 <code>LatestRestorableDateTime</code>. </p>
    #         <p>
    #             <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time.
    #             You can restore your table to any point in time during the last 35 days. </p>
    #         <p>You can call <code>DescribeContinuousBackups</code> at a maximum rate of 10 times per
    #             second.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeContinuousBackupsInput}.
    #
    # @option params [String] :table_name
    #   <p>Name of the table for which the customer wants to check the continuous backups and
    #               point in time recovery settings.</p>
    #
    # @return [Types::DescribeContinuousBackupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_continuous_backups(
    #     table_name: 'TableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeContinuousBackupsOutput
    #   resp.data.continuous_backups_description #=> Types::ContinuousBackupsDescription
    #   resp.data.continuous_backups_description.continuous_backups_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.continuous_backups_description.point_in_time_recovery_description #=> Types::PointInTimeRecoveryDescription
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.point_in_time_recovery_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.earliest_restorable_date_time #=> Time
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.latest_restorable_date_time #=> Time
    #
    def describe_continuous_backups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContinuousBackupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContinuousBackupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContinuousBackups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::TableNotFoundException]),
        data_parser: Parsers::DescribeContinuousBackups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeContinuousBackups,
        stubs: @stubs,
        params_class: Params::DescribeContinuousBackupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_continuous_backups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about contributor insights, for a given table or global secondary
    #             index.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeContributorInsightsInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table to describe.</p>
    #
    # @option params [String] :index_name
    #   <p>The name of the global secondary index to describe, if applicable.</p>
    #
    # @return [Types::DescribeContributorInsightsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contributor_insights(
    #     table_name: 'TableName', # required
    #     index_name: 'IndexName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeContributorInsightsOutput
    #   resp.data.table_name #=> String
    #   resp.data.index_name #=> String
    #   resp.data.contributor_insights_rule_list #=> Array<String>
    #   resp.data.contributor_insights_rule_list[0] #=> String
    #   resp.data.contributor_insights_status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"]
    #   resp.data.last_update_date_time #=> Time
    #   resp.data.failure_exception #=> Types::FailureException
    #   resp.data.failure_exception.exception_name #=> String
    #   resp.data.failure_exception.exception_description #=> String
    #
    def describe_contributor_insights(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContributorInsightsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContributorInsightsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContributorInsights
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
        data_parser: Parsers::DescribeContributorInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeContributorInsights,
        stubs: @stubs,
        params_class: Params::DescribeContributorInsightsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_contributor_insights
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the regional endpoint information.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointsInput}.
    #
    # @return [Types::DescribeEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoints()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointsOutput
    #   resp.data.endpoints #=> Array<Endpoint>
    #   resp.data.endpoints[0] #=> Types::Endpoint
    #   resp.data.endpoints[0].address #=> String
    #   resp.data.endpoints[0].cache_period_in_minutes #=> Integer
    #
    def describe_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpoints
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
        data_parser: Parsers::DescribeEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpoints,
        stubs: @stubs,
        params_class: Params::DescribeEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing table export.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExportInput}.
    #
    # @option params [String] :export_arn
    #   <p>The Amazon Resource Name (ARN) associated with the export.</p>
    #
    # @return [Types::DescribeExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export(
    #     export_arn: 'ExportArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExportOutput
    #   resp.data.export_description #=> Types::ExportDescription
    #   resp.data.export_description.export_arn #=> String
    #   resp.data.export_description.export_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.export_description.start_time #=> Time
    #   resp.data.export_description.end_time #=> Time
    #   resp.data.export_description.export_manifest #=> String
    #   resp.data.export_description.table_arn #=> String
    #   resp.data.export_description.table_id #=> String
    #   resp.data.export_description.export_time #=> Time
    #   resp.data.export_description.client_token #=> String
    #   resp.data.export_description.s3_bucket #=> String
    #   resp.data.export_description.s3_bucket_owner #=> String
    #   resp.data.export_description.s3_prefix #=> String
    #   resp.data.export_description.s3_sse_algorithm #=> String, one of ["AES256", "KMS"]
    #   resp.data.export_description.s3_sse_kms_key_id #=> String
    #   resp.data.export_description.failure_code #=> String
    #   resp.data.export_description.failure_message #=> String
    #   resp.data.export_description.export_format #=> String, one of ["DYNAMODB_JSON", "ION"]
    #   resp.data.export_description.billed_size_bytes #=> Integer
    #   resp.data.export_description.item_count #=> Integer
    #
    def describe_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::LimitExceededException, Errors::ExportNotFoundException]),
        data_parser: Parsers::DescribeExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExport,
        stubs: @stubs,
        params_class: Params::DescribeExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified global table.</p>
    #         <note>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                     2017.11.29</a> of global tables. If you are using global tables <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version
    #                     2019.11.21</a> you can use <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_DescribeTable.html">DescribeTable</a> instead.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeGlobalTableInput}.
    #
    # @option params [String] :global_table_name
    #   <p>The name of the global table.</p>
    #
    # @return [Types::DescribeGlobalTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_table(
    #     global_table_name: 'GlobalTableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGlobalTableOutput
    #   resp.data.global_table_description #=> Types::GlobalTableDescription
    #   resp.data.global_table_description.replication_group #=> Array<ReplicaDescription>
    #   resp.data.global_table_description.replication_group[0] #=> Types::ReplicaDescription
    #   resp.data.global_table_description.replication_group[0].region_name #=> String
    #   resp.data.global_table_description.replication_group[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.global_table_description.replication_group[0].replica_status_description #=> String
    #   resp.data.global_table_description.replication_group[0].replica_status_percent_progress #=> String
    #   resp.data.global_table_description.replication_group[0].kms_master_key_id #=> String
    #   resp.data.global_table_description.replication_group[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.global_table_description.replication_group[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexDescription>
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexDescription
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.global_table_description.replication_group[0].replica_inaccessible_date_time #=> Time
    #   resp.data.global_table_description.replication_group[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.global_table_description.replication_group[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.global_table_description.replication_group[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.data.global_table_description.global_table_arn #=> String
    #   resp.data.global_table_description.creation_date_time #=> Time
    #   resp.data.global_table_description.global_table_status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "UPDATING"]
    #   resp.data.global_table_description.global_table_name #=> String
    #
    def describe_global_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGlobalTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGlobalTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGlobalTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::GlobalTableNotFoundException]),
        data_parser: Parsers::DescribeGlobalTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGlobalTable,
        stubs: @stubs,
        params_class: Params::DescribeGlobalTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_global_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes Region-specific settings for a global table.</p>
    #         <note>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                     2017.11.29</a> of global tables.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeGlobalTableSettingsInput}.
    #
    # @option params [String] :global_table_name
    #   <p>The name of the global table to describe.</p>
    #
    # @return [Types::DescribeGlobalTableSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_table_settings(
    #     global_table_name: 'GlobalTableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGlobalTableSettingsOutput
    #   resp.data.global_table_name #=> String
    #   resp.data.replica_settings #=> Array<ReplicaSettingsDescription>
    #   resp.data.replica_settings[0] #=> Types::ReplicaSettingsDescription
    #   resp.data.replica_settings[0].region_name #=> String
    #   resp.data.replica_settings[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.replica_settings[0].replica_billing_mode_summary #=> Types::BillingModeSummary
    #   resp.data.replica_settings[0].replica_billing_mode_summary.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.replica_settings[0].replica_billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_units #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array<AutoScalingPolicyDescription>
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0] #=> Types::AutoScalingPolicyDescription
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration #=> Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.data.replica_settings[0].replica_provisioned_write_capacity_units #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings #=> Array<ReplicaGlobalSecondaryIndexSettingsDescription>
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0] #=> Types::ReplicaGlobalSecondaryIndexSettingsDescription
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].index_name #=> String
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].index_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_units #=> Integer
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_units #=> Integer
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.replica_settings[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.replica_settings[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.replica_settings[0].replica_table_class_summary.last_update_date_time #=> Time
    #
    def describe_global_table_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGlobalTableSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGlobalTableSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGlobalTableSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::GlobalTableNotFoundException]),
        data_parser: Parsers::DescribeGlobalTableSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGlobalTableSettings,
        stubs: @stubs,
        params_class: Params::DescribeGlobalTableSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_global_table_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the status of Kinesis streaming.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeKinesisStreamingDestinationInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table being described.</p>
    #
    # @return [Types::DescribeKinesisStreamingDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_kinesis_streaming_destination(
    #     table_name: 'TableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeKinesisStreamingDestinationOutput
    #   resp.data.table_name #=> String
    #   resp.data.kinesis_data_stream_destinations #=> Array<KinesisDataStreamDestination>
    #   resp.data.kinesis_data_stream_destinations[0] #=> Types::KinesisDataStreamDestination
    #   resp.data.kinesis_data_stream_destinations[0].stream_arn #=> String
    #   resp.data.kinesis_data_stream_destinations[0].destination_status #=> String, one of ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED"]
    #   resp.data.kinesis_data_stream_destinations[0].destination_status_description #=> String
    #
    def describe_kinesis_streaming_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeKinesisStreamingDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeKinesisStreamingDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeKinesisStreamingDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeKinesisStreamingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeKinesisStreamingDestination,
        stubs: @stubs,
        params_class: Params::DescribeKinesisStreamingDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_kinesis_streaming_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the current provisioned-capacity quotas for your Amazon Web Services account in
    #             a Region, both for the Region as a whole and for any one DynamoDB table that you create
    #             there.</p>
    #         <p>When you establish an Amazon Web Services account, the account has initial quotas on
    #             the maximum read capacity units and write capacity units that you can provision across
    #             all of your DynamoDB tables in a given Region. Also, there are per-table
    #             quotas that apply when you create a table there. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                 Account, and Table Quotas</a> page in the <i>Amazon DynamoDB
    #                 Developer Guide</i>.</p>
    #
    #         <p>Although you can increase these quotas by filing a case at <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support Center</a>, obtaining the
    #             increase is not instantaneous. The <code>DescribeLimits</code> action lets you write
    #             code to compare the capacity you are currently using to those quotas imposed by your
    #             account so that you have enough time to apply for an increase before you hit a
    #             quota.</p>
    #
    #         <p>For example, you could use one of the Amazon Web Services SDKs to do the
    #             following:</p>
    #
    #         <ol>
    #             <li>
    #                 <p>Call <code>DescribeLimits</code> for a particular Region to obtain your
    #                     current account quotas on provisioned capacity there.</p>
    #             </li>
    #             <li>
    #                 <p>Create a variable to hold the aggregate read capacity units provisioned for
    #                     all your tables in that Region, and one to hold the aggregate write capacity
    #                     units. Zero them both.</p>
    #             </li>
    #             <li>
    #                 <p>Call <code>ListTables</code> to obtain a list of all your DynamoDB
    #                     tables.</p>
    #             </li>
    #             <li>
    #                 <p>For each table name listed by <code>ListTables</code>, do the
    #                     following:</p>
    #                 <ul>
    #                   <li>
    #                         <p>Call <code>DescribeTable</code> with the table name.</p>
    #                     </li>
    #                   <li>
    #                         <p>Use the data returned by <code>DescribeTable</code> to add the read
    #                             capacity units and write capacity units provisioned for the table itself
    #                             to your variables.</p>
    #                     </li>
    #                   <li>
    #                         <p>If the table has one or more global secondary indexes (GSIs), loop
    #                             over these GSIs and add their provisioned capacity values to your
    #                             variables as well.</p>
    #                     </li>
    #                </ul>
    #             </li>
    #             <li>
    #                 <p>Report the account quotas for that Region returned by
    #                         <code>DescribeLimits</code>, along with the total current provisioned
    #                     capacity levels you have calculated.</p>
    #             </li>
    #          </ol>
    #
    #         <p>This will let you see whether you are getting close to your account-level
    #             quotas.</p>
    #         <p>The per-table quotas apply only when you are creating a new table. They restrict the
    #             sum of the provisioned capacity of the new table itself and all its global secondary
    #             indexes.</p>
    #         <p>For existing tables and their GSIs, DynamoDB doesn't let you increase provisioned
    #             capacity extremely rapidly, but the only quota that applies is that the aggregate
    #             provisioned capacity over all your tables and GSIs cannot exceed either of the
    #             per-account quotas.</p>
    #         <note>
    #             <p>
    #                 <code>DescribeLimits</code> should only be called periodically. You can expect
    #                 throttling errors if you call it more than once in a minute.</p>
    #         </note>
    #         <p>The <code>DescribeLimits</code> Request element has no content.</p>
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
    #   resp.data.account_max_read_capacity_units #=> Integer
    #   resp.data.account_max_write_capacity_units #=> Integer
    #   resp.data.table_max_read_capacity_units #=> Integer
    #   resp.data.table_max_write_capacity_units #=> Integer
    #
    def describe_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLimitsInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException]),
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

    # <p>Returns information about the table, including the current status of the table, when
    #             it was created, the primary key schema, and any indexes on the table.</p>
    #         <note>
    #             <p>If you issue a <code>DescribeTable</code> request immediately after a
    #                     <code>CreateTable</code> request, DynamoDB might return a
    #                     <code>ResourceNotFoundException</code>. This is because
    #                     <code>DescribeTable</code> uses an eventually consistent query, and the metadata
    #                 for your table might not be available at that moment. Wait for a few seconds, and
    #                 then try the <code>DescribeTable</code> request again.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeTableInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table to describe.</p>
    #
    # @return [Types::DescribeTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table(
    #     table_name: 'TableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTableOutput
    #   resp.data.table #=> Types::TableDescription
    #   resp.data.table.attribute_definitions #=> Array<AttributeDefinition>
    #   resp.data.table.attribute_definitions[0] #=> Types::AttributeDefinition
    #   resp.data.table.attribute_definitions[0].attribute_name #=> String
    #   resp.data.table.attribute_definitions[0].attribute_type #=> String, one of ["S", "N", "B"]
    #   resp.data.table.table_name #=> String
    #   resp.data.table.key_schema #=> Array<KeySchemaElement>
    #   resp.data.table.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.table.key_schema[0].attribute_name #=> String
    #   resp.data.table.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.table.table_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED"]
    #   resp.data.table.creation_date_time #=> Time
    #   resp.data.table.provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.data.table.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.data.table.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.data.table.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.table.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.table.table_size_bytes #=> Integer
    #   resp.data.table.item_count #=> Integer
    #   resp.data.table.table_arn #=> String
    #   resp.data.table.table_id #=> String
    #   resp.data.table.billing_mode_summary #=> Types::BillingModeSummary
    #   resp.data.table.billing_mode_summary.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.table.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.data.table.local_secondary_indexes #=> Array<LocalSecondaryIndexDescription>
    #   resp.data.table.local_secondary_indexes[0] #=> Types::LocalSecondaryIndexDescription
    #   resp.data.table.local_secondary_indexes[0].index_name #=> String
    #   resp.data.table.local_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table.local_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table.local_secondary_indexes[0].projection.projection_type #=> String, one of ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   resp.data.table.local_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.table.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.data.table.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table.local_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table.local_secondary_indexes[0].index_arn #=> String
    #   resp.data.table.global_secondary_indexes #=> Array<GlobalSecondaryIndexDescription>
    #   resp.data.table.global_secondary_indexes[0] #=> Types::GlobalSecondaryIndexDescription
    #   resp.data.table.global_secondary_indexes[0].index_name #=> String
    #   resp.data.table.global_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table.global_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table.global_secondary_indexes[0].index_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   resp.data.table.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.data.table.global_secondary_indexes[0].provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table.global_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table.global_secondary_indexes[0].index_arn #=> String
    #   resp.data.table.stream_specification #=> Types::StreamSpecification
    #   resp.data.table.stream_specification.stream_enabled #=> Boolean
    #   resp.data.table.stream_specification.stream_view_type #=> String, one of ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   resp.data.table.latest_stream_label #=> String
    #   resp.data.table.latest_stream_arn #=> String
    #   resp.data.table.global_table_version #=> String
    #   resp.data.table.replicas #=> Array<ReplicaDescription>
    #   resp.data.table.replicas[0] #=> Types::ReplicaDescription
    #   resp.data.table.replicas[0].region_name #=> String
    #   resp.data.table.replicas[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.table.replicas[0].replica_status_description #=> String
    #   resp.data.table.replicas[0].replica_status_percent_progress #=> String
    #   resp.data.table.replicas[0].kms_master_key_id #=> String
    #   resp.data.table.replicas[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.data.table.replicas[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexDescription>
    #   resp.data.table.replicas[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexDescription
    #   resp.data.table.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.table.replicas[0].global_secondary_indexes[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.data.table.replicas[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.table.replicas[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.table.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.data.table.restore_summary #=> Types::RestoreSummary
    #   resp.data.table.restore_summary.source_backup_arn #=> String
    #   resp.data.table.restore_summary.source_table_arn #=> String
    #   resp.data.table.restore_summary.restore_date_time #=> Time
    #   resp.data.table.restore_summary.restore_in_progress #=> Boolean
    #   resp.data.table.sse_description #=> Types::SSEDescription
    #   resp.data.table.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"]
    #   resp.data.table.sse_description.sse_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.table.sse_description.kms_master_key_arn #=> String
    #   resp.data.table.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.data.table.archival_summary #=> Types::ArchivalSummary
    #   resp.data.table.archival_summary.archival_date_time #=> Time
    #   resp.data.table.archival_summary.archival_reason #=> String
    #   resp.data.table.archival_summary.archival_backup_arn #=> String
    #   resp.data.table.table_class_summary #=> Types::TableClassSummary
    #
    def describe_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTable,
        stubs: @stubs,
        params_class: Params::DescribeTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes auto scaling settings across replicas of the global table at once.</p>
    #         <note>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version
    #                     2019.11.21</a> of global tables.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeTableReplicaAutoScalingInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    #
    # @return [Types::DescribeTableReplicaAutoScalingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table_replica_auto_scaling(
    #     table_name: 'TableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTableReplicaAutoScalingOutput
    #   resp.data.table_auto_scaling_description #=> Types::TableAutoScalingDescription
    #   resp.data.table_auto_scaling_description.table_name #=> String
    #   resp.data.table_auto_scaling_description.table_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED"]
    #   resp.data.table_auto_scaling_description.replicas #=> Array<ReplicaAutoScalingDescription>
    #   resp.data.table_auto_scaling_description.replicas[0] #=> Types::ReplicaAutoScalingDescription
    #   resp.data.table_auto_scaling_description.replicas[0].region_name #=> String
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexAutoScalingDescription>
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexAutoScalingDescription
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].index_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array<AutoScalingPolicyDescription>
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0] #=> Types::AutoScalingPolicyDescription
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration #=> Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.table_auto_scaling_description.replicas[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #
    def describe_table_replica_auto_scaling(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTableReplicaAutoScalingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTableReplicaAutoScalingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTableReplicaAutoScaling
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
        data_parser: Parsers::DescribeTableReplicaAutoScaling
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTableReplicaAutoScaling,
        stubs: @stubs,
        params_class: Params::DescribeTableReplicaAutoScalingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_table_replica_auto_scaling
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gives a description of the Time to Live (TTL) status on the specified table. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTimeToLiveInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table to be described.</p>
    #
    # @return [Types::DescribeTimeToLiveOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_time_to_live(
    #     table_name: 'TableName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTimeToLiveOutput
    #   resp.data.time_to_live_description #=> Types::TimeToLiveDescription
    #   resp.data.time_to_live_description.time_to_live_status #=> String, one of ["ENABLING", "DISABLING", "ENABLED", "DISABLED"]
    #   resp.data.time_to_live_description.attribute_name #=> String
    #
    def describe_time_to_live(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTimeToLiveInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTimeToLiveInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTimeToLive
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeTimeToLive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTimeToLive,
        stubs: @stubs,
        params_class: Params::DescribeTimeToLiveOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_time_to_live
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops replication from the DynamoDB table to the Kinesis data stream. This is done
    #             without deleting either of the resources.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableKinesisStreamingDestinationInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the DynamoDB table.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The ARN for a Kinesis data stream.</p>
    #
    # @return [Types::DisableKinesisStreamingDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_kinesis_streaming_destination(
    #     table_name: 'TableName', # required
    #     stream_arn: 'StreamArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableKinesisStreamingDestinationOutput
    #   resp.data.table_name #=> String
    #   resp.data.stream_arn #=> String
    #   resp.data.destination_status #=> String, one of ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED"]
    #
    def disable_kinesis_streaming_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableKinesisStreamingDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableKinesisStreamingDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableKinesisStreamingDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::DisableKinesisStreamingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableKinesisStreamingDestination,
        stubs: @stubs,
        params_class: Params::DisableKinesisStreamingDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_kinesis_streaming_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts table data replication to the specified Kinesis data stream at a timestamp
    #             chosen during the enable workflow. If this operation doesn't return results immediately,
    #             use DescribeKinesisStreamingDestination to check if streaming to the Kinesis data stream
    #             is ACTIVE.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableKinesisStreamingDestinationInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the DynamoDB table.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The ARN for a Kinesis data stream.</p>
    #
    # @return [Types::EnableKinesisStreamingDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_kinesis_streaming_destination(
    #     table_name: 'TableName', # required
    #     stream_arn: 'StreamArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableKinesisStreamingDestinationOutput
    #   resp.data.table_name #=> String
    #   resp.data.stream_arn #=> String
    #   resp.data.destination_status #=> String, one of ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED"]
    #
    def enable_kinesis_streaming_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableKinesisStreamingDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableKinesisStreamingDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableKinesisStreamingDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::EnableKinesisStreamingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableKinesisStreamingDestination,
        stubs: @stubs,
        params_class: Params::EnableKinesisStreamingDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_kinesis_streaming_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation allows you to perform reads and singleton writes on data stored in
    #             DynamoDB, using PartiQL.</p>
    #         <p>For PartiQL reads (<code>SELECT</code> statement), if the total number of processed
    #             items exceeds the maximum dataset size limit of 1 MB, the read stops and results are
    #             returned to the user as a <code>LastEvaluatedKey</code> value to continue the read in a
    #             subsequent operation. If the filter criteria in <code>WHERE</code> clause does not match
    #             any data, the read will return an empty result set.</p>
    #         <p>A single <code>SELECT</code> statement response can return up to the maximum number of
    #             items (if using the Limit parameter) or a maximum of 1 MB of data (and then apply any
    #             filtering to the results using <code>WHERE</code> clause). If
    #                 <code>LastEvaluatedKey</code> is present in the response, you need to paginate the
    #             result set.</p>
    #
    # @param [Hash] params
    #   See {Types::ExecuteStatementInput}.
    #
    # @option params [String] :statement
    #   <p>The PartiQL statement representing the operation to run.</p>
    #
    # @option params [Array<AttributeValue>] :parameters
    #   <p>The parameters for the PartiQL statement, if any.</p>
    #
    # @option params [Boolean] :consistent_read
    #   <p>The consistency of a read operation. If set to <code>true</code>, then a strongly
    #               consistent read is used; otherwise, an eventually consistent read is used.</p>
    #
    # @option params [String] :next_token
    #   <p>Set this value to get remaining results, if <code>NextToken</code> was returned in the
    #               statement response.</p>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, along
    #               with a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation so you
    #               can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. </p>
    #
    # @return [Types::ExecuteStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_statement(
    #     statement: 'Statement', # required
    #     parameters: [
    #       {
    #         # One of:
    #         s: 'S',
    #         n: 'N',
    #         b: 'B',
    #         ss: [
    #           'member'
    #         ],
    #         ns: [
    #           'member'
    #         ],
    #         bs: [
    #           'member'
    #         ],
    #         null: false,
    #         bool: false
    #       }
    #     ],
    #     consistent_read: false,
    #     next_token: 'NextToken',
    #     return_consumed_capacity: 'INDEXES', # accepts ["INDEXES", "TOTAL", "NONE"]
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteStatementOutput
    #   resp.data.items #=> Array<Hash<String, AttributeValue>>
    #   resp.data.items[0] #=> Hash<String, AttributeValue>
    #   resp.data.items[0]['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.items[0]['key'].s #=> String
    #   resp.data.items[0]['key'].n #=> String
    #   resp.data.items[0]['key'].b #=> String
    #   resp.data.items[0]['key'].ss #=> Array<String>
    #   resp.data.items[0]['key'].ss[0] #=> String
    #   resp.data.items[0]['key'].ns #=> Array<String>
    #   resp.data.items[0]['key'].ns[0] #=> String
    #   resp.data.items[0]['key'].bs #=> Array<String>
    #   resp.data.items[0]['key'].bs[0] #=> String
    #   resp.data.items[0]['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.items[0]['key'].l #=> Array<AttributeValue>
    #   resp.data.items[0]['key'].null #=> Boolean
    #   resp.data.items[0]['key'].bool #=> Boolean
    #   resp.data.next_token #=> String
    #   resp.data.consumed_capacity #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity.table_name #=> String
    #   resp.data.consumed_capacity.capacity_units #=> Float
    #   resp.data.consumed_capacity.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table #=> Types::Capacity
    #   resp.data.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.capacity_units #=> Float
    #   resp.data.consumed_capacity.local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity.global_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.last_evaluated_key #=> Hash<String, AttributeValue>
    #
    def execute_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ResourceNotFoundException, Errors::DuplicateItemException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]),
        data_parser: Parsers::ExecuteStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteStatement,
        stubs: @stubs,
        params_class: Params::ExecuteStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation allows you to perform transactional reads or writes on data stored in
    #             DynamoDB, using PartiQL.</p>
    #         <note>
    #             <p>The entire transaction must consist of either read statements or write statements,
    #                 you cannot mix both in one transaction. The EXISTS function is an exception and can
    #                 be used to check the condition of specific attributes of the item in a similar
    #                 manner to <code>ConditionCheck</code> in the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems">TransactWriteItems</a> API.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ExecuteTransactionInput}.
    #
    # @option params [Array<ParameterizedStatement>] :transact_statements
    #   <p>The list of PartiQL statements representing the transaction to run.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Set this value to get remaining results, if <code>NextToken</code> was returned in the
    #               statement response.</p>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput consumption that is
    #               returned in the response. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactGetItems.html">TransactGetItems</a> and <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactWriteItems.html">TransactWriteItems</a>.</p>
    #
    # @return [Types::ExecuteTransactionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_transaction(
    #     transact_statements: [
    #       {
    #         statement: 'Statement', # required
    #         parameters: [
    #           {
    #             # One of:
    #             s: 'S',
    #             n: 'N',
    #             b: 'B',
    #             ss: [
    #               'member'
    #             ],
    #             ns: [
    #               'member'
    #             ],
    #             bs: [
    #               'member'
    #             ],
    #             null: false,
    #             bool: false
    #           }
    #         ]
    #       }
    #     ], # required
    #     client_request_token: 'ClientRequestToken',
    #     return_consumed_capacity: 'INDEXES' # accepts ["INDEXES", "TOTAL", "NONE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteTransactionOutput
    #   resp.data.responses #=> Array<ItemResponse>
    #   resp.data.responses[0] #=> Types::ItemResponse
    #   resp.data.responses[0].item #=> Hash<String, AttributeValue>
    #   resp.data.responses[0].item['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.responses[0].item['key'].s #=> String
    #   resp.data.responses[0].item['key'].n #=> String
    #   resp.data.responses[0].item['key'].b #=> String
    #   resp.data.responses[0].item['key'].ss #=> Array<String>
    #   resp.data.responses[0].item['key'].ss[0] #=> String
    #   resp.data.responses[0].item['key'].ns #=> Array<String>
    #   resp.data.responses[0].item['key'].ns[0] #=> String
    #   resp.data.responses[0].item['key'].bs #=> Array<String>
    #   resp.data.responses[0].item['key'].bs[0] #=> String
    #   resp.data.responses[0].item['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.responses[0].item['key'].l #=> Array<AttributeValue>
    #   resp.data.responses[0].item['key'].null #=> Boolean
    #   resp.data.responses[0].item['key'].bool #=> Boolean
    #   resp.data.consumed_capacity #=> Array<ConsumedCapacity>
    #   resp.data.consumed_capacity[0] #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity[0].table_name #=> String
    #   resp.data.consumed_capacity[0].capacity_units #=> Float
    #   resp.data.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table #=> Types::Capacity
    #   resp.data.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.data.consumed_capacity[0].local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity[0].global_secondary_indexes #=> Hash<String, Capacity>
    #
    def execute_transaction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteTransactionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteTransactionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteTransaction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ResourceNotFoundException, Errors::IdempotentParameterMismatchException, Errors::TransactionCanceledException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException, Errors::TransactionInProgressException]),
        data_parser: Parsers::ExecuteTransaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteTransaction,
        stubs: @stubs,
        params_class: Params::ExecuteTransactionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_transaction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports table data to an S3 bucket. The table must have point in time recovery
    #             enabled, and you can export data from any time within the point in time recovery
    #             window.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportTableToPointInTimeInput}.
    #
    # @option params [String] :table_arn
    #   <p>The Amazon Resource Name (ARN) associated with the table to export.</p>
    #
    # @option params [Time] :export_time
    #   <p>Time in the past from which to export table data. The table export will be a snapshot
    #               of the table's state at this point in time.</p>
    #
    # @option params [String] :client_token
    #   <p>Providing a <code>ClientToken</code> makes the call to
    #                   <code>ExportTableToPointInTimeInput</code> idempotent, meaning that multiple
    #               identical calls have the same effect as one single call.</p>
    #           <p>A client token is valid for 8 hours after the first request that uses it is completed.
    #               After 8 hours, any request with the same client token is treated as a new request. Do
    #               not resubmit the same request with the same client token for more than 8 hours, or the
    #               result might not be idempotent.</p>
    #           <p>If you submit a request with the same client token but a change in other parameters
    #               within the 8-hour idempotency window, DynamoDB returns an
    #                   <code>IdempotentParameterMismatch</code> exception.</p>
    #
    # @option params [String] :s3_bucket
    #   <p>The name of the Amazon S3 bucket to export the snapshot to.</p>
    #
    # @option params [String] :s3_bucket_owner
    #   <p>The ID of the Amazon Web Services account that owns the bucket the export will be
    #               stored in.</p>
    #
    # @option params [String] :s3_prefix
    #   <p>The Amazon S3 bucket prefix to use as the file name and path of the exported
    #               snapshot.</p>
    #
    # @option params [String] :s3_sse_algorithm
    #   <p>Type of encryption used on the bucket where export data will be stored. Valid values
    #               for <code>S3SseAlgorithm</code> are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>AES256</code> - server-side encryption with Amazon S3 managed
    #                       keys</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>KMS</code> - server-side encryption with KMS managed
    #                       keys</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :s3_sse_kms_key_id
    #   <p>The ID of the KMS managed key used to encrypt the S3 bucket where
    #               export data will be stored (if applicable).</p>
    #
    # @option params [String] :export_format
    #   <p>The format for the exported data. Valid values for <code>ExportFormat</code> are
    #                   <code>DYNAMODB_JSON</code> or <code>ION</code>.</p>
    #
    # @return [Types::ExportTableToPointInTimeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_table_to_point_in_time(
    #     table_arn: 'TableArn', # required
    #     export_time: Time.now,
    #     client_token: 'ClientToken',
    #     s3_bucket: 'S3Bucket', # required
    #     s3_bucket_owner: 'S3BucketOwner',
    #     s3_prefix: 'S3Prefix',
    #     s3_sse_algorithm: 'AES256', # accepts ["AES256", "KMS"]
    #     s3_sse_kms_key_id: 'S3SseKmsKeyId',
    #     export_format: 'DYNAMODB_JSON' # accepts ["DYNAMODB_JSON", "ION"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportTableToPointInTimeOutput
    #   resp.data.export_description #=> Types::ExportDescription
    #   resp.data.export_description.export_arn #=> String
    #   resp.data.export_description.export_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.export_description.start_time #=> Time
    #   resp.data.export_description.end_time #=> Time
    #   resp.data.export_description.export_manifest #=> String
    #   resp.data.export_description.table_arn #=> String
    #   resp.data.export_description.table_id #=> String
    #   resp.data.export_description.export_time #=> Time
    #   resp.data.export_description.client_token #=> String
    #   resp.data.export_description.s3_bucket #=> String
    #   resp.data.export_description.s3_bucket_owner #=> String
    #   resp.data.export_description.s3_prefix #=> String
    #   resp.data.export_description.s3_sse_algorithm #=> String, one of ["AES256", "KMS"]
    #   resp.data.export_description.s3_sse_kms_key_id #=> String
    #   resp.data.export_description.failure_code #=> String
    #   resp.data.export_description.failure_message #=> String
    #   resp.data.export_description.export_format #=> String, one of ["DYNAMODB_JSON", "ION"]
    #   resp.data.export_description.billed_size_bytes #=> Integer
    #   resp.data.export_description.item_count #=> Integer
    #
    def export_table_to_point_in_time(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportTableToPointInTimeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportTableToPointInTimeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportTableToPointInTime
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidExportTimeException, Errors::LimitExceededException, Errors::PointInTimeRecoveryUnavailableException, Errors::ExportConflictException, Errors::TableNotFoundException]),
        data_parser: Parsers::ExportTableToPointInTime
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportTableToPointInTime,
        stubs: @stubs,
        params_class: Params::ExportTableToPointInTimeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_table_to_point_in_time
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>GetItem</code> operation returns a set of attributes for the item with the
    #             given primary key. If there is no matching item, <code>GetItem</code> does not return
    #             any data and there will be no <code>Item</code> element in the response.</p>
    #         <p>
    #             <code>GetItem</code> provides an eventually consistent read by default. If your
    #             application requires a strongly consistent read, set <code>ConsistentRead</code> to
    #                 <code>true</code>. Although a strongly consistent read might take more time than an
    #             eventually consistent read, it always returns the last updated value.</p>
    #
    # @param [Hash] params
    #   See {Types::GetItemInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table containing the requested item.</p>
    #
    # @option params [Hash<String, AttributeValue>] :key
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the
    #               primary key of the item to retrieve.</p>
    #           <p>For the primary key, you must provide all of the attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    #
    # @option params [Array<String>] :attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [Boolean] :consistent_read
    #   <p>Determines the read consistency model: If set to <code>true</code>, then the operation
    #               uses strongly consistent reads; otherwise, the operation uses eventually consistent
    #               reads.</p>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the table. These
    #               attributes can include scalars, sets, or elements of a JSON document. The attributes in
    #               the expression must be separated by commas.</p>
    #           <p>If no attribute names are specified, then all attributes are returned. If any of the
    #               requested attributes are not found, they do not appear in the result.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                   <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                   <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #           <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Percentile</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>{"#P":"Percentile"}</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>You could then use this substitution in an expression, as in this example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>#P = :val</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #           </note>
    #           <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @return [Types::GetItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_item(
    #     table_name: 'TableName', # required
    #     key: {
    #       'key' => {
    #         # One of:
    #         s: 'S',
    #         n: 'N',
    #         b: 'B',
    #         ss: [
    #           'member'
    #         ],
    #         ns: [
    #           'member'
    #         ],
    #         bs: [
    #           'member'
    #         ],
    #         null: false,
    #         bool: false
    #       }
    #     }, # required
    #     attributes_to_get: [
    #       'member'
    #     ],
    #     consistent_read: false,
    #     return_consumed_capacity: 'INDEXES', # accepts ["INDEXES", "TOTAL", "NONE"]
    #     projection_expression: 'ProjectionExpression',
    #     expression_attribute_names: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetItemOutput
    #   resp.data.item #=> Hash<String, AttributeValue>
    #   resp.data.item['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.item['key'].s #=> String
    #   resp.data.item['key'].n #=> String
    #   resp.data.item['key'].b #=> String
    #   resp.data.item['key'].ss #=> Array<String>
    #   resp.data.item['key'].ss[0] #=> String
    #   resp.data.item['key'].ns #=> Array<String>
    #   resp.data.item['key'].ns[0] #=> String
    #   resp.data.item['key'].bs #=> Array<String>
    #   resp.data.item['key'].bs[0] #=> String
    #   resp.data.item['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.item['key'].l #=> Array<AttributeValue>
    #   resp.data.item['key'].null #=> Boolean
    #   resp.data.item['key'].bool #=> Boolean
    #   resp.data.consumed_capacity #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity.table_name #=> String
    #   resp.data.consumed_capacity.capacity_units #=> Float
    #   resp.data.consumed_capacity.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table #=> Types::Capacity
    #   resp.data.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.capacity_units #=> Float
    #   resp.data.consumed_capacity.local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity.global_secondary_indexes #=> Hash<String, Capacity>
    #
    def get_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]),
        data_parser: Parsers::GetItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetItem,
        stubs: @stubs,
        params_class: Params::GetItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List backups associated with an Amazon Web Services account. To list backups for a
    #             given table, specify <code>TableName</code>. <code>ListBackups</code> returns a
    #             paginated list of results with at most 1 MB worth of items in a page. You can also
    #             specify a maximum number of entries to be returned in a page.</p>
    #         <p>In the request, start time is inclusive, but end time is exclusive. Note that these
    #             boundaries are for the time at which the original backup was requested.</p>
    #         <p>You can call <code>ListBackups</code> a maximum of five times per second.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBackupsInput}.
    #
    # @option params [String] :table_name
    #   <p>The backups from the table specified by <code>TableName</code> are listed. </p>
    #
    # @option params [Integer] :limit
    #   <p>Maximum number of backups to return at once.</p>
    #
    # @option params [Time] :time_range_lower_bound
    #   <p>Only backups created after this time are listed. <code>TimeRangeLowerBound</code> is
    #               inclusive.</p>
    #
    # @option params [Time] :time_range_upper_bound
    #   <p>Only backups created before this time are listed. <code>TimeRangeUpperBound</code> is
    #               exclusive. </p>
    #
    # @option params [String] :exclusive_start_backup_arn
    #   <p>
    #               <code>LastEvaluatedBackupArn</code> is the Amazon Resource Name (ARN) of the backup last
    #               evaluated when the current page of results was returned, inclusive of the current page
    #               of results. This value may be specified as the <code>ExclusiveStartBackupArn</code> of a
    #               new <code>ListBackups</code> operation in order to fetch the next page of results.
    #           </p>
    #
    # @option params [String] :backup_type
    #   <p>The backups from the table specified by <code>BackupType</code> are listed.</p>
    #           <p>Where <code>BackupType</code> can be:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>USER</code> - On-demand backup created by you.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>SYSTEM</code> - On-demand backup automatically created by DynamoDB.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ALL</code> - All types of on-demand backups (USER and SYSTEM).</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListBackupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backups(
    #     table_name: 'TableName',
    #     limit: 1,
    #     time_range_lower_bound: Time.now,
    #     time_range_upper_bound: Time.now,
    #     exclusive_start_backup_arn: 'ExclusiveStartBackupArn',
    #     backup_type: 'USER' # accepts ["USER", "SYSTEM", "AWS_BACKUP", "ALL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBackupsOutput
    #   resp.data.backup_summaries #=> Array<BackupSummary>
    #   resp.data.backup_summaries[0] #=> Types::BackupSummary
    #   resp.data.backup_summaries[0].table_name #=> String
    #   resp.data.backup_summaries[0].table_id #=> String
    #   resp.data.backup_summaries[0].table_arn #=> String
    #   resp.data.backup_summaries[0].backup_arn #=> String
    #   resp.data.backup_summaries[0].backup_name #=> String
    #   resp.data.backup_summaries[0].backup_creation_date_time #=> Time
    #   resp.data.backup_summaries[0].backup_expiry_date_time #=> Time
    #   resp.data.backup_summaries[0].backup_status #=> String, one of ["CREATING", "DELETED", "AVAILABLE"]
    #   resp.data.backup_summaries[0].backup_type #=> String, one of ["USER", "SYSTEM", "AWS_BACKUP"]
    #   resp.data.backup_summaries[0].backup_size_bytes #=> Integer
    #   resp.data.last_evaluated_backup_arn #=> String
    #
    def list_backups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBackupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBackupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBackups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException]),
        data_parser: Parsers::ListBackups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBackups,
        stubs: @stubs,
        params_class: Params::ListBackupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_backups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of ContributorInsightsSummary for a table and all its global secondary
    #             indexes.</p>
    #
    # @param [Hash] params
    #   See {Types::ListContributorInsightsInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to for the desired page, if there is one.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per page.</p>
    #
    # @return [Types::ListContributorInsightsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contributor_insights(
    #     table_name: 'TableName',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContributorInsightsOutput
    #   resp.data.contributor_insights_summaries #=> Array<ContributorInsightsSummary>
    #   resp.data.contributor_insights_summaries[0] #=> Types::ContributorInsightsSummary
    #   resp.data.contributor_insights_summaries[0].table_name #=> String
    #   resp.data.contributor_insights_summaries[0].index_name #=> String
    #   resp.data.contributor_insights_summaries[0].contributor_insights_status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"]
    #   resp.data.next_token #=> String
    #
    def list_contributor_insights(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContributorInsightsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContributorInsightsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContributorInsights
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
        data_parser: Parsers::ListContributorInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContributorInsights,
        stubs: @stubs,
        params_class: Params::ListContributorInsightsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_contributor_insights
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists completed exports within the past 90 days.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExportsInput}.
    #
    # @option params [String] :table_arn
    #   <p>The Amazon Resource Name (ARN) associated with the exported table.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per page.</p>
    #
    # @option params [String] :next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous
    #               call to <code>ListExports</code>. When provided in this manner, the API fetches the next
    #               page of results.</p>
    #
    # @return [Types::ListExportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exports(
    #     table_arn: 'TableArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExportsOutput
    #   resp.data.export_summaries #=> Array<ExportSummary>
    #   resp.data.export_summaries[0] #=> Types::ExportSummary
    #   resp.data.export_summaries[0].export_arn #=> String
    #   resp.data.export_summaries[0].export_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.next_token #=> String
    #
    def list_exports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExports
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::LimitExceededException]),
        data_parser: Parsers::ListExports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExports,
        stubs: @stubs,
        params_class: Params::ListExportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_exports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all global tables that have a replica in the specified Region.</p>
    #         <note>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                     2017.11.29</a> of global tables.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ListGlobalTablesInput}.
    #
    # @option params [String] :exclusive_start_global_table_name
    #   <p>The first global table name that this operation will evaluate.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of table names to return, if the parameter is not specified
    #               DynamoDB defaults to 100.</p>
    #           <p>If the number of global tables DynamoDB finds reaches this limit, it stops the
    #               operation and returns the table names collected up to that point, with a table name in
    #               the <code>LastEvaluatedGlobalTableName</code> to apply in a subsequent operation to the
    #                   <code>ExclusiveStartGlobalTableName</code> parameter.</p>
    #
    # @option params [String] :region_name
    #   <p>Lists the global tables in a specific Region.</p>
    #
    # @return [Types::ListGlobalTablesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_global_tables(
    #     exclusive_start_global_table_name: 'ExclusiveStartGlobalTableName',
    #     limit: 1,
    #     region_name: 'RegionName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGlobalTablesOutput
    #   resp.data.global_tables #=> Array<GlobalTable>
    #   resp.data.global_tables[0] #=> Types::GlobalTable
    #   resp.data.global_tables[0].global_table_name #=> String
    #   resp.data.global_tables[0].replication_group #=> Array<Replica>
    #   resp.data.global_tables[0].replication_group[0] #=> Types::Replica
    #   resp.data.global_tables[0].replication_group[0].region_name #=> String
    #   resp.data.last_evaluated_global_table_name #=> String
    #
    def list_global_tables(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGlobalTablesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGlobalTablesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGlobalTables
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException]),
        data_parser: Parsers::ListGlobalTables
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGlobalTables,
        stubs: @stubs,
        params_class: Params::ListGlobalTablesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_global_tables
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of table names associated with the current account and endpoint. The
    #             output from <code>ListTables</code> is paginated, with each page returning a maximum of
    #             100 table names.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTablesInput}.
    #
    # @option params [String] :exclusive_start_table_name
    #   <p>The first table name that this operation will evaluate. Use the value that was
    #               returned for <code>LastEvaluatedTableName</code> in a previous operation, so that you
    #               can obtain the next page of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>A maximum number of table names to return. If this parameter is not specified, the
    #               limit is 100.</p>
    #
    # @return [Types::ListTablesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables(
    #     exclusive_start_table_name: 'ExclusiveStartTableName',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTablesOutput
    #   resp.data.table_names #=> Array<String>
    #   resp.data.table_names[0] #=> String
    #   resp.data.last_evaluated_table_name #=> String
    #
    def list_tables(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTablesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTablesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTables
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException]),
        data_parser: Parsers::ListTables
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTables,
        stubs: @stubs,
        params_class: Params::ListTablesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tables
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all tags on an Amazon DynamoDB resource. You can call ListTagsOfResource up to 10
    #             times per second, per account.</p>
    #         <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a>
    #             in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsOfResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource
    #               Name (ARN).</p>
    #
    # @option params [String] :next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous
    #               call to ListTagOfResource. When provided in this manner, this API fetches the next page
    #               of results.</p>
    #
    # @return [Types::ListTagsOfResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_of_resource(
    #     resource_arn: 'ResourceArn', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOfResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_tags_of_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsOfResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsOfResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsOfResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTagsOfResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsOfResource,
        stubs: @stubs,
        params_class: Params::ListTagsOfResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_of_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new item, or replaces an old item with a new item. If an item that has the
    #             same primary key as the new item already exists in the specified table, the new item
    #             completely replaces the existing item. You can perform a conditional put operation (add
    #             a new item if one with the specified primary key doesn't exist), or replace an existing
    #             item if it has certain attribute values. You can return the item's attribute values in
    #             the same operation, using the <code>ReturnValues</code> parameter.</p>
    #         <important>
    #             <p>This topic provides general information about the <code>PutItem</code> API.</p>
    #             <p>For information on how to call the <code>PutItem</code> API using the Amazon Web Services SDK in specific languages, see the following:</p>
    #             <ul>
    #                <li>
    #                     <p>
    #                         <a href="http://docs.aws.amazon.com/goto/aws-cli/dynamodb-2012-08-10/PutItem"> PutItem in the Command Line Interface</a>
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         <a href="http://docs.aws.amazon.com/goto/DotNetSDKV3/dynamodb-2012-08-10/PutItem"> PutItem in the SDK for .NET</a>
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         <a href="http://docs.aws.amazon.com/goto/SdkForCpp/dynamodb-2012-08-10/PutItem"> PutItem in the SDK for C++</a>
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         <a href="http://docs.aws.amazon.com/goto/SdkForGoV1/dynamodb-2012-08-10/PutItem"> PutItem in the SDK for Go</a>
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         <a href="http://docs.aws.amazon.com/goto/SdkForJava/dynamodb-2012-08-10/PutItem"> PutItem in the SDK for Java</a>
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         <a href="http://docs.aws.amazon.com/goto/AWSJavaScriptSDK/dynamodb-2012-08-10/PutItem"> PutItem in the SDK for JavaScript</a>
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         <a href="http://docs.aws.amazon.com/goto/SdkForPHPV3/dynamodb-2012-08-10/PutItem"> PutItem in the SDK for PHP V3</a>
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         <a href="http://docs.aws.amazon.com/goto/boto3/dynamodb-2012-08-10/PutItem">
    #                             PutItem in the SDK for Python (Boto)</a>
    #                     </p>
    #                 </li>
    #                <li>
    #                     <p>
    #                         <a href="http://docs.aws.amazon.com/goto/SdkForRubyV2/dynamodb-2012-08-10/PutItem"> PutItem in the SDK for Ruby V2</a>
    #                     </p>
    #                 </li>
    #             </ul>
    #         </important>
    #
    #         <p>When you add an item, the primary key attributes are the only required attributes.
    #             Attribute values cannot be null.</p>
    #         <p>Empty String and Binary attribute values are allowed. Attribute values of type String
    #             and Binary must have a length greater than zero if the attribute is used as a key
    #             attribute for a table or index. Set type attributes cannot be empty. </p>
    #         <p>Invalid Requests with empty values will be rejected with a
    #                 <code>ValidationException</code> exception.</p>
    #         <note>
    #             <p>To prevent a new item from replacing an existing item, use a conditional
    #                 expression that contains the <code>attribute_not_exists</code> function with the
    #                 name of the attribute being used as the partition key for the table. Since every
    #                 record must contain that attribute, the <code>attribute_not_exists</code> function
    #                 will only succeed if no matching item exists.</p>
    #         </note>
    #         <p>For more information about <code>PutItem</code>, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html">Working with
    #                 Items</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutItemInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table to contain the item.</p>
    #
    # @option params [Hash<String, AttributeValue>] :item
    #   <p>A map of attribute name/value pairs, one for each attribute. Only the primary key
    #               attributes are required; you can optionally provide other attribute name-value pairs for
    #               the item.</p>
    #           <p>You must provide all of the attributes for the primary key. For example, with a simple
    #               primary key, you only need to provide a value for the partition key. For a composite
    #               primary key, you must provide both values for both the partition key and the sort
    #               key.</p>
    #           <p>If you specify any attributes that are part of an index key, then the data types for
    #               those attributes must match those of the schema in the table's attribute
    #               definition.</p>
    #           <p>Empty String and Binary attribute values are allowed. Attribute values of type String
    #               and Binary must have a length greater than zero if the attribute is used as a key
    #               attribute for a table or index.</p>
    #
    #           <p>For more information about primary keys, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #           <p>Each element in the <code>Item</code> map is an <code>AttributeValue</code>
    #               object.</p>
    #
    # @option params [Hash<String, ExpectedAttributeValue>] :expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [String] :return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared
    #               before they were updated with the <code>PutItem</code> request. For
    #               <code>PutItem</code>, the valid values are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ALL_OLD</code> - If <code>PutItem</code> overwrote an attribute name-value
    #                       pair, then the content of the old item is returned.</p>
    #               </li>
    #            </ul>
    #           <p>The values returned are strongly consistent.</p>
    #           <note>
    #               <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations;
    #                   however, <code>PutItem</code> does not recognize any values other than
    #                       <code>NONE</code> or <code>ALL_OLD</code>.</p>
    #           </note>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #
    # @option params [String] :conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [String] :condition_expression
    #   <p>A condition that must be satisfied in order for a conditional <code>PutItem</code>
    #               operation to succeed.</p>
    #           <p>An expression can contain any of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                   </p>
    #                   <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p> Logical operators: <code>AND | OR | NOT</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>For more information on condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                   <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                   <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #           <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Percentile</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>{"#P":"Percentile"}</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>You could then use this substitution in an expression, as in this example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>#P = :val</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #           </note>
    #           <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #           <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #           <p>
    #               <code>Available | Backordered | Discontinued</code>
    #           </p>
    #           <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #           <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #           </p>
    #           <p>You could then use these values in an expression, such as this:</p>
    #           <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #           </p>
    #           <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @return [Types::PutItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_item(
    #     table_name: 'TableName', # required
    #     item: {
    #       'key' => {
    #         # One of:
    #         s: 'S',
    #         n: 'N',
    #         b: 'B',
    #         ss: [
    #           'member'
    #         ],
    #         ns: [
    #           'member'
    #         ],
    #         bs: [
    #           'member'
    #         ],
    #         null: false,
    #         bool: false
    #       }
    #     }, # required
    #     expected: {
    #       'key' => {
    #         exists: false,
    #         comparison_operator: 'EQ', # accepts ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"]
    #       }
    #     },
    #     return_values: 'NONE', # accepts ["NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW", "UPDATED_NEW"]
    #     return_consumed_capacity: 'INDEXES', # accepts ["INDEXES", "TOTAL", "NONE"]
    #     return_item_collection_metrics: 'SIZE', # accepts ["SIZE", "NONE"]
    #     conditional_operator: 'AND', # accepts ["AND", "OR"]
    #     condition_expression: 'ConditionExpression',
    #     expression_attribute_names: {
    #       'key' => 'value'
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutItemOutput
    #   resp.data.attributes #=> Hash<String, AttributeValue>
    #   resp.data.attributes['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.attributes['key'].s #=> String
    #   resp.data.attributes['key'].n #=> String
    #   resp.data.attributes['key'].b #=> String
    #   resp.data.attributes['key'].ss #=> Array<String>
    #   resp.data.attributes['key'].ss[0] #=> String
    #   resp.data.attributes['key'].ns #=> Array<String>
    #   resp.data.attributes['key'].ns[0] #=> String
    #   resp.data.attributes['key'].bs #=> Array<String>
    #   resp.data.attributes['key'].bs[0] #=> String
    #   resp.data.attributes['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.attributes['key'].l #=> Array<AttributeValue>
    #   resp.data.attributes['key'].null #=> Boolean
    #   resp.data.attributes['key'].bool #=> Boolean
    #   resp.data.consumed_capacity #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity.table_name #=> String
    #   resp.data.consumed_capacity.capacity_units #=> Float
    #   resp.data.consumed_capacity.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table #=> Types::Capacity
    #   resp.data.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.capacity_units #=> Float
    #   resp.data.consumed_capacity.local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity.global_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.item_collection_metrics #=> Types::ItemCollectionMetrics
    #   resp.data.item_collection_metrics.item_collection_key #=> Hash<String, AttributeValue>
    #   resp.data.item_collection_metrics.size_estimate_range_gb #=> Array<Float>
    #   resp.data.item_collection_metrics.size_estimate_range_gb[0] #=> Float
    #
    def put_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]),
        data_parser: Parsers::PutItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutItem,
        stubs: @stubs,
        params_class: Params::PutItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>You must provide the name of the partition key attribute and a single value for that
    #             attribute. <code>Query</code> returns all items with that partition key value.
    #             Optionally, you can provide a sort key attribute and use a comparison operator to refine
    #             the search results.</p>
    #
    #         <p>Use the <code>KeyConditionExpression</code> parameter to provide a specific value for
    #             the partition key. The <code>Query</code> operation will return all of the items from
    #             the table or index with that partition key value. You can optionally narrow the scope of
    #             the <code>Query</code> operation by specifying a sort key value and a comparison
    #             operator in <code>KeyConditionExpression</code>. To further refine the
    #                 <code>Query</code> results, you can optionally provide a
    #                 <code>FilterExpression</code>. A <code>FilterExpression</code> determines which
    #             items within the results should be returned to you. All of the other results are
    #             discarded. </p>
    #         <p> A <code>Query</code> operation always returns a result set. If no matching items are
    #             found, the result set will be empty. Queries that do not return results consume the
    #             minimum number of read capacity units for that type of read operation. </p>
    #         <note>
    #             <p> DynamoDB calculates the number of read capacity units consumed based on item
    #                 size, not on the amount of data that is returned to an application. The number of
    #                 capacity units consumed will be the same whether you request all of the attributes
    #                 (the default behavior) or just some of them (using a projection expression). The
    #                 number will also be the same whether or not you use a <code>FilterExpression</code>.
    #             </p>
    #         </note>
    #         <p>
    #             <code>Query</code> results are always sorted by the sort key value. If the data type of
    #             the sort key is Number, the results are returned in numeric order; otherwise, the
    #             results are returned in order of UTF-8 bytes. By default, the sort order is ascending.
    #             To reverse the order, set the <code>ScanIndexForward</code> parameter to false. </p>
    #         <p> A single <code>Query</code> operation will read up to the maximum number of items set
    #             (if using the <code>Limit</code> parameter) or a maximum of 1 MB of data and then apply
    #             any filtering to the results using <code>FilterExpression</code>. If
    #                 <code>LastEvaluatedKey</code> is present in the response, you will need to paginate
    #             the result set. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination">Paginating
    #                 the Results</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
    #         <p>
    #             <code>FilterExpression</code> is applied after a <code>Query</code> finishes, but before
    #             the results are returned. A <code>FilterExpression</code> cannot contain partition key
    #             or sort key attributes. You need to specify those attributes in the
    #                 <code>KeyConditionExpression</code>. </p>
    #         <note>
    #             <p> A <code>Query</code> operation can return an empty result set and a
    #                     <code>LastEvaluatedKey</code> if all the items read for the page of results are
    #                 filtered out. </p>
    #         </note>
    #         <p>You can query a table, a local secondary index, or a global secondary index. For a
    #             query on a table or on a local secondary index, you can set the
    #                 <code>ConsistentRead</code> parameter to <code>true</code> and obtain a strongly
    #             consistent result. Global secondary indexes support eventually consistent reads only, so
    #             do not specify <code>ConsistentRead</code> when querying a global secondary
    #             index.</p>
    #
    # @param [Hash] params
    #   See {Types::QueryInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table containing the requested items.</p>
    #
    # @option params [String] :index_name
    #   <p>The name of an index to query. This index can be any local secondary index or global
    #               secondary index on the table. Note that if you use the <code>IndexName</code> parameter,
    #               you must also provide <code>TableName.</code>
    #           </p>
    #
    # @option params [String] :select
    #   <p>The attributes to be returned in the result. You can retrieve all item attributes,
    #               specific item attributes, the count of matching items, or in the case of an index, some
    #               or all of the attributes projected into the index.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the
    #                       specified table or index. If you query a local secondary index, then for each
    #                       matching item in the index, DynamoDB fetches the entire item from the parent
    #                       table. If the index is configured to project all item attributes, then all of
    #                       the data can be obtained from the local secondary index, and no fetching is
    #                       required.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index.
    #                       Retrieves all attributes that have been projected into the index. If the index
    #                       is configured to project all attributes, this return value is equivalent to
    #                       specifying <code>ALL_ATTRIBUTES</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>COUNT</code> - Returns the number of matching items, rather than the
    #                       matching items themselves.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in
    #                           <code>AttributesToGet</code>. This return value is equivalent to specifying
    #                           <code>AttributesToGet</code> without specifying any value for
    #                           <code>Select</code>.</p>
    #                   <p>If you query or scan a local secondary index and request only attributes that
    #                       are projected into that index, the operation will read only the index and not
    #                       the table. If any of the requested attributes are not projected into the local
    #                       secondary index, DynamoDB fetches each of these attributes from the parent
    #                       table. This extra fetching incurs additional throughput cost and latency.</p>
    #                   <p>If you query or scan a global secondary index, you can only request attributes
    #                       that are projected into the index. Global secondary index queries cannot fetch
    #                       attributes from the parent table.</p>
    #               </li>
    #            </ul>
    #           <p>If neither <code>Select</code> nor <code>AttributesToGet</code> are specified,
    #               DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and
    #                   <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both
    #                   <code>Select</code> and <code>AttributesToGet</code> together in a single request,
    #               unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>. (This
    #               usage is equivalent to specifying <code>AttributesToGet</code> without any value for
    #                   <code>Select</code>.)</p>
    #           <note>
    #               <p>If you use the <code>ProjectionExpression</code> parameter, then the value for
    #                       <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other
    #                   value for <code>Select</code> will return an error.</p>
    #           </note>
    #
    # @option params [Array<String>] :attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, and a
    #               key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can
    #               pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query and Scan</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [Boolean] :consistent_read
    #   <p>Determines the read consistency model: If set to <code>true</code>, then the operation
    #               uses strongly consistent reads; otherwise, the operation uses eventually consistent
    #               reads.</p>
    #           <p>Strongly consistent reads are not supported on global secondary indexes. If you query
    #               a global secondary index with <code>ConsistentRead</code> set to <code>true</code>, you
    #               will receive a <code>ValidationException</code>.</p>
    #
    # @option params [Hash<String, Condition>] :key_conditions
    #   <p>This is a legacy parameter. Use <code>KeyConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html">KeyConditions</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [Hash<String, Condition>] :query_filter
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html">QueryFilter</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [String] :conditional_operator
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Boolean] :scan_index_forward
    #   <p>Specifies the order for index traversal: If <code>true</code> (default), the traversal
    #               is performed in ascending order; if <code>false</code>, the traversal is performed in
    #               descending order. </p>
    #           <p>Items with the same partition key value are stored in sorted order by sort key. If the
    #               sort key data type is Number, the results are stored in numeric order. For type String,
    #               the results are stored in order of UTF-8 bytes. For type Binary, DynamoDB treats each
    #               byte of the binary data as unsigned.</p>
    #           <p>If <code>ScanIndexForward</code> is <code>true</code>, DynamoDB returns the results in
    #               the order in which they are stored (by sort key value). This is the default behavior. If
    #                   <code>ScanIndexForward</code> is <code>false</code>, DynamoDB reads the results in
    #               reverse order by sort key value, and then returns the results to the client.</p>
    #
    # @option params [Hash<String, AttributeValue>] :exclusive_start_key
    #   <p>The primary key of the first item that this operation will evaluate. Use the value
    #               that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p>
    #           <p>The data type for <code>ExclusiveStartKey</code> must be String, Number, or Binary. No
    #               set data types are allowed.</p>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the table. These
    #               attributes can include scalars, sets, or elements of a JSON document. The attributes in
    #               the expression must be separated by commas.</p>
    #           <p>If no attribute names are specified, then all attributes will be returned. If any of
    #               the requested attributes are not found, they will not appear in the result.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [String] :filter_expression
    #   <p>A string that contains conditions that DynamoDB applies after the <code>Query</code>
    #               operation, but before the data is returned to you. Items that do not satisfy the
    #                   <code>FilterExpression</code> criteria are not returned.</p>
    #           <p>A <code>FilterExpression</code> does not allow key attributes. You cannot define a
    #               filter expression based on a partition key or a sort key.</p>
    #           <note>
    #               <p>A <code>FilterExpression</code> is applied after the items have already been read;
    #                   the process of filtering does not consume any additional read capacity units.</p>
    #           </note>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults">Filter
    #                   Expressions</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [String] :key_condition_expression
    #   <p>The condition that specifies the key values for items to be retrieved by the
    #                   <code>Query</code> action.</p>
    #
    #           <p>The condition must perform an equality test on a single partition key value.</p>
    #           <p>The condition can optionally perform one of several comparison tests on a single sort
    #               key value. This allows <code>Query</code> to retrieve one item with a given partition
    #               key value and sort key value, or several items that have the same partition key value
    #               but different sort key values.</p>
    #
    #           <p>The partition key equality test is required, and must be specified in the following
    #               format:</p>
    #
    #           <p>
    #               <code>partitionKeyName</code>
    #               <i>=</i>
    #               <code>:partitionkeyval</code>
    #           </p>
    #
    #           <p>If you also want to provide a condition for the sort key, it must be combined using
    #                   <code>AND</code> with the condition for the sort key. Following is an example, using
    #               the <b>=</b> comparison operator for the sort key:</p>
    #
    #           <p>
    #               <code>partitionKeyName</code>
    #               <code>=</code>
    #               <code>:partitionkeyval</code>
    #               <code>AND</code>
    #               <code>sortKeyName</code>
    #               <code>=</code>
    #               <code>:sortkeyval</code>
    #           </p>
    #           <p>Valid comparisons for the sort key condition are as follows:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>sortKeyName</code>
    #                       <code>=</code>
    #                       <code>:sortkeyval</code> - true if the sort key value is equal to
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>sortKeyName</code>
    #                       <code><</code>
    #                       <code>:sortkeyval</code> - true if the sort key value is less than
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>sortKeyName</code>
    #                       <code><=</code>
    #                       <code>:sortkeyval</code> - true if the sort key value is less than or equal to
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>sortKeyName</code>
    #                       <code>></code>
    #                       <code>:sortkeyval</code> - true if the sort key value is greater than
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>sortKeyName</code>
    #                       <code>>= </code>
    #                       <code>:sortkeyval</code> - true if the sort key value is greater than or equal
    #                       to <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>sortKeyName</code>
    #                       <code>BETWEEN</code>
    #                       <code>:sortkeyval1</code>
    #                       <code>AND</code>
    #                       <code>:sortkeyval2</code> - true if the sort key value is greater than or equal
    #                       to <code>:sortkeyval1</code>, and less than or equal to
    #                           <code>:sortkeyval2</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>begins_with (</code>
    #                       <code>sortKeyName</code>, <code>:sortkeyval</code>
    #                       <code>)</code> - true if the sort key value begins with a particular operand.
    #                       (You cannot use this function with a sort key that is of type Number.) Note that
    #                       the function name <code>begins_with</code> is case-sensitive.</p>
    #
    #               </li>
    #            </ul>
    #
    #           <p>Use the <code>ExpressionAttributeValues</code> parameter to replace tokens such as
    #                   <code>:partitionval</code> and <code>:sortval</code> with actual values at
    #               runtime.</p>
    #
    #           <p>You can optionally use the <code>ExpressionAttributeNames</code> parameter to replace
    #               the names of the partition key and sort key with placeholder tokens. This option might
    #               be necessary if an attribute name conflicts with a DynamoDB reserved word. For example,
    #               the following <code>KeyConditionExpression</code> parameter causes an error because
    #                   <i>Size</i> is a reserved word:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Size = :myval</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>To work around this, define a placeholder (such a <code>#S</code>) to represent the
    #               attribute name <i>Size</i>. <code>KeyConditionExpression</code> then is as
    #               follows:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>#S = :myval</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>For a list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a>
    #               in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #
    #           <p>For more information on <code>ExpressionAttributeNames</code> and
    #                   <code>ExpressionAttributeValues</code>, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html">Using
    #                   Placeholders for Attribute Names and Values</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                   <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                   <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #           <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Percentile</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>{"#P":"Percentile"}</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>You could then use this substitution in an expression, as in this example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>#P = :val</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #           </note>
    #           <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #           <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #           <p>
    #               <code>Available | Backordered | Discontinued</code>
    #           </p>
    #           <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #           <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #           </p>
    #           <p>You could then use these values in an expression, such as this:</p>
    #           <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #           </p>
    #           <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @return [Types::QueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query(
    #     table_name: 'TableName', # required
    #     index_name: 'IndexName',
    #     select: 'ALL_ATTRIBUTES', # accepts ["ALL_ATTRIBUTES", "ALL_PROJECTED_ATTRIBUTES", "SPECIFIC_ATTRIBUTES", "COUNT"]
    #     attributes_to_get: [
    #       'member'
    #     ],
    #     limit: 1,
    #     consistent_read: false,
    #     key_conditions: {
    #       'key' => {
    #         attribute_value_list: [
    #           {
    #             # One of:
    #             s: 'S',
    #             n: 'N',
    #             b: 'B',
    #             ss: [
    #               'member'
    #             ],
    #             ns: [
    #               'member'
    #             ],
    #             bs: [
    #               'member'
    #             ],
    #             null: false,
    #             bool: false
    #           }
    #         ],
    #         comparison_operator: 'EQ' # required - accepts ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"]
    #       }
    #     },
    #     conditional_operator: 'AND', # accepts ["AND", "OR"]
    #     scan_index_forward: false,
    #     return_consumed_capacity: 'INDEXES', # accepts ["INDEXES", "TOTAL", "NONE"]
    #     projection_expression: 'ProjectionExpression',
    #     filter_expression: 'FilterExpression',
    #     key_condition_expression: 'KeyConditionExpression',
    #     expression_attribute_names: {
    #       'key' => 'value'
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::QueryOutput
    #   resp.data.items #=> Array<Hash<String, AttributeValue>>
    #   resp.data.items[0] #=> Hash<String, AttributeValue>
    #   resp.data.items[0]['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.items[0]['key'].s #=> String
    #   resp.data.items[0]['key'].n #=> String
    #   resp.data.items[0]['key'].b #=> String
    #   resp.data.items[0]['key'].ss #=> Array<String>
    #   resp.data.items[0]['key'].ss[0] #=> String
    #   resp.data.items[0]['key'].ns #=> Array<String>
    #   resp.data.items[0]['key'].ns[0] #=> String
    #   resp.data.items[0]['key'].bs #=> Array<String>
    #   resp.data.items[0]['key'].bs[0] #=> String
    #   resp.data.items[0]['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.items[0]['key'].l #=> Array<AttributeValue>
    #   resp.data.items[0]['key'].null #=> Boolean
    #   resp.data.items[0]['key'].bool #=> Boolean
    #   resp.data.count #=> Integer
    #   resp.data.scanned_count #=> Integer
    #   resp.data.last_evaluated_key #=> Hash<String, AttributeValue>
    #   resp.data.consumed_capacity #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity.table_name #=> String
    #   resp.data.consumed_capacity.capacity_units #=> Float
    #   resp.data.consumed_capacity.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table #=> Types::Capacity
    #   resp.data.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.capacity_units #=> Float
    #   resp.data.consumed_capacity.local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity.global_secondary_indexes #=> Hash<String, Capacity>
    #
    def query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::QueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::QueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Query
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]),
        data_parser: Parsers::Query
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Query,
        stubs: @stubs,
        params_class: Params::QueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new table from an existing backup. Any number of users can execute up to 4
    #             concurrent restores (any type of restore) in a given account. </p>
    #         <p>You can call <code>RestoreTableFromBackup</code> at a maximum rate of 10 times per
    #             second.</p>
    #         <p>You must manually set up the following on the restored table:</p>
    #         <ul>
    #             <li>
    #                 <p>Auto scaling policies</p>
    #             </li>
    #             <li>
    #                 <p>IAM policies</p>
    #             </li>
    #             <li>
    #                 <p>Amazon CloudWatch metrics and alarms</p>
    #             </li>
    #             <li>
    #                 <p>Tags</p>
    #             </li>
    #             <li>
    #                 <p>Stream settings</p>
    #             </li>
    #             <li>
    #                 <p>Time to Live (TTL) settings</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::RestoreTableFromBackupInput}.
    #
    # @option params [String] :target_table_name
    #   <p>The name of the new table to which the backup must be restored.</p>
    #
    # @option params [String] :backup_arn
    #   <p>The Amazon Resource Name (ARN) associated with the backup.</p>
    #
    # @option params [String] :billing_mode_override
    #   <p>The billing mode of the restored table.</p>
    #
    # @option params [Array<GlobalSecondaryIndex>] :global_secondary_index_override
    #   <p>List of global secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #
    # @option params [Array<LocalSecondaryIndex>] :local_secondary_index_override
    #   <p>List of local secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #
    # @option params [ProvisionedThroughput] :provisioned_throughput_override
    #   <p>Provisioned throughput settings for the restored table.</p>
    #
    # @option params [SSESpecification] :sse_specification_override
    #   <p>The new server-side encryption settings for the restored table.</p>
    #
    # @return [Types::RestoreTableFromBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table_from_backup(
    #     target_table_name: 'TargetTableName', # required
    #     backup_arn: 'BackupArn', # required
    #     billing_mode_override: 'PROVISIONED', # accepts ["PROVISIONED", "PAY_PER_REQUEST"]
    #     global_secondary_index_override: [
    #       {
    #         index_name: 'IndexName', # required
    #         key_schema: [
    #           {
    #             attribute_name: 'AttributeName', # required
    #             key_type: 'HASH' # required - accepts ["HASH", "RANGE"]
    #           }
    #         ], # required
    #         projection: {
    #           projection_type: 'ALL', # accepts ["ALL", "KEYS_ONLY", "INCLUDE"]
    #           non_key_attributes: [
    #             'member'
    #           ]
    #         }, # required
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1 # required
    #         }
    #       }
    #     ],
    #     local_secondary_index_override: [
    #       {
    #         index_name: 'IndexName', # required
    #       }
    #     ],
    #     sse_specification_override: {
    #       enabled: false,
    #       sse_type: 'AES256', # accepts ["AES256", "KMS"]
    #       kms_master_key_id: 'KMSMasterKeyId'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreTableFromBackupOutput
    #   resp.data.table_description #=> Types::TableDescription
    #   resp.data.table_description.attribute_definitions #=> Array<AttributeDefinition>
    #   resp.data.table_description.attribute_definitions[0] #=> Types::AttributeDefinition
    #   resp.data.table_description.attribute_definitions[0].attribute_name #=> String
    #   resp.data.table_description.attribute_definitions[0].attribute_type #=> String, one of ["S", "N", "B"]
    #   resp.data.table_description.table_name #=> String
    #   resp.data.table_description.key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.table_description.key_schema[0].attribute_name #=> String
    #   resp.data.table_description.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.table_description.table_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED"]
    #   resp.data.table_description.creation_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table_description.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.data.table_description.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.table_description.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.table_description.table_size_bytes #=> Integer
    #   resp.data.table_description.item_count #=> Integer
    #   resp.data.table_description.table_arn #=> String
    #   resp.data.table_description.table_id #=> String
    #   resp.data.table_description.billing_mode_summary #=> Types::BillingModeSummary
    #   resp.data.table_description.billing_mode_summary.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.table_description.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.data.table_description.local_secondary_indexes #=> Array<LocalSecondaryIndexDescription>
    #   resp.data.table_description.local_secondary_indexes[0] #=> Types::LocalSecondaryIndexDescription
    #   resp.data.table_description.local_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.local_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.local_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   resp.data.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.data.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table_description.local_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table_description.local_secondary_indexes[0].index_arn #=> String
    #   resp.data.table_description.global_secondary_indexes #=> Array<GlobalSecondaryIndexDescription>
    #   resp.data.table_description.global_secondary_indexes[0] #=> Types::GlobalSecondaryIndexDescription
    #   resp.data.table_description.global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.global_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.global_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table_description.global_secondary_indexes[0].index_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   resp.data.table_description.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.data.table_description.global_secondary_indexes[0].provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table_description.global_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table_description.global_secondary_indexes[0].index_arn #=> String
    #   resp.data.table_description.stream_specification #=> Types::StreamSpecification
    #   resp.data.table_description.stream_specification.stream_enabled #=> Boolean
    #   resp.data.table_description.stream_specification.stream_view_type #=> String, one of ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   resp.data.table_description.latest_stream_label #=> String
    #   resp.data.table_description.latest_stream_arn #=> String
    #   resp.data.table_description.global_table_version #=> String
    #   resp.data.table_description.replicas #=> Array<ReplicaDescription>
    #   resp.data.table_description.replicas[0] #=> Types::ReplicaDescription
    #   resp.data.table_description.replicas[0].region_name #=> String
    #   resp.data.table_description.replicas[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.table_description.replicas[0].replica_status_description #=> String
    #   resp.data.table_description.replicas[0].replica_status_percent_progress #=> String
    #   resp.data.table_description.replicas[0].kms_master_key_id #=> String
    #   resp.data.table_description.replicas[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table_description.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.data.table_description.replicas[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexDescription>
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexDescription
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table_description.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.data.table_description.replicas[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.table_description.replicas[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.table_description.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.data.table_description.restore_summary #=> Types::RestoreSummary
    #   resp.data.table_description.restore_summary.source_backup_arn #=> String
    #   resp.data.table_description.restore_summary.source_table_arn #=> String
    #   resp.data.table_description.restore_summary.restore_date_time #=> Time
    #   resp.data.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.data.table_description.sse_description #=> Types::SSEDescription
    #   resp.data.table_description.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"]
    #   resp.data.table_description.sse_description.sse_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.table_description.sse_description.kms_master_key_arn #=> String
    #   resp.data.table_description.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.data.table_description.archival_summary #=> Types::ArchivalSummary
    #   resp.data.table_description.archival_summary.archival_date_time #=> Time
    #   resp.data.table_description.archival_summary.archival_reason #=> String
    #   resp.data.table_description.archival_summary.archival_backup_arn #=> String
    #   resp.data.table_description.table_class_summary #=> Types::TableClassSummary
    #
    def restore_table_from_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreTableFromBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreTableFromBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreTableFromBackup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::BackupNotFoundException, Errors::LimitExceededException, Errors::TableInUseException, Errors::BackupInUseException, Errors::TableAlreadyExistsException]),
        data_parser: Parsers::RestoreTableFromBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreTableFromBackup,
        stubs: @stubs,
        params_class: Params::RestoreTableFromBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_table_from_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores the specified table to the specified point in time within
    #                 <code>EarliestRestorableDateTime</code> and <code>LatestRestorableDateTime</code>.
    #             You can restore your table to any point in time during the last 35 days. Any number of
    #             users can execute up to 4 concurrent restores (any type of restore) in a given account. </p>
    #         <p> When you restore using point in time recovery, DynamoDB restores your table data to
    #             the state based on the selected date and time (day:hour:minute:second) to a new table. </p>
    #         <p> Along with data, the following are also included on the new restored table using
    #             point in time recovery: </p>
    #         <ul>
    #             <li>
    #                 <p>Global secondary indexes (GSIs)</p>
    #             </li>
    #             <li>
    #                 <p>Local secondary indexes (LSIs)</p>
    #             </li>
    #             <li>
    #                 <p>Provisioned read and write capacity</p>
    #             </li>
    #             <li>
    #                 <p>Encryption settings</p>
    #                 <important>
    #                     <p> All these settings come from the current settings of the source table at
    #                         the time of restore. </p>
    #                 </important>
    #             </li>
    #          </ul>
    #
    #         <p>You must manually set up the following on the restored table:</p>
    #         <ul>
    #             <li>
    #                 <p>Auto scaling policies</p>
    #             </li>
    #             <li>
    #                 <p>IAM policies</p>
    #             </li>
    #             <li>
    #                 <p>Amazon CloudWatch metrics and alarms</p>
    #             </li>
    #             <li>
    #                 <p>Tags</p>
    #             </li>
    #             <li>
    #                 <p>Stream settings</p>
    #             </li>
    #             <li>
    #                 <p>Time to Live (TTL) settings</p>
    #             </li>
    #             <li>
    #                 <p>Point in time recovery settings</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::RestoreTableToPointInTimeInput}.
    #
    # @option params [String] :source_table_arn
    #   <p>The DynamoDB table that will be restored. This value is an Amazon Resource Name
    #               (ARN).</p>
    #
    # @option params [String] :source_table_name
    #   <p>Name of the source table that is being restored.</p>
    #
    # @option params [String] :target_table_name
    #   <p>The name of the new table to which it must be restored to.</p>
    #
    # @option params [Boolean] :use_latest_restorable_time
    #   <p>Restore the table to the latest possible time. <code>LatestRestorableDateTime</code>
    #               is typically 5 minutes before the current time. </p>
    #
    # @option params [Time] :restore_date_time
    #   <p>Time in the past to restore the table to.</p>
    #
    # @option params [String] :billing_mode_override
    #   <p>The billing mode of the restored table.</p>
    #
    # @option params [Array<GlobalSecondaryIndex>] :global_secondary_index_override
    #   <p>List of global secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #
    # @option params [Array<LocalSecondaryIndex>] :local_secondary_index_override
    #   <p>List of local secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #
    # @option params [ProvisionedThroughput] :provisioned_throughput_override
    #   <p>Provisioned throughput settings for the restored table.</p>
    #
    # @option params [SSESpecification] :sse_specification_override
    #   <p>The new server-side encryption settings for the restored table.</p>
    #
    # @return [Types::RestoreTableToPointInTimeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table_to_point_in_time(
    #     source_table_arn: 'SourceTableArn',
    #     source_table_name: 'SourceTableName',
    #     target_table_name: 'TargetTableName', # required
    #     use_latest_restorable_time: false,
    #     restore_date_time: Time.now,
    #     billing_mode_override: 'PROVISIONED', # accepts ["PROVISIONED", "PAY_PER_REQUEST"]
    #     global_secondary_index_override: [
    #       {
    #         index_name: 'IndexName', # required
    #         key_schema: [
    #           {
    #             attribute_name: 'AttributeName', # required
    #             key_type: 'HASH' # required - accepts ["HASH", "RANGE"]
    #           }
    #         ], # required
    #         projection: {
    #           projection_type: 'ALL', # accepts ["ALL", "KEYS_ONLY", "INCLUDE"]
    #           non_key_attributes: [
    #             'member'
    #           ]
    #         }, # required
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1 # required
    #         }
    #       }
    #     ],
    #     local_secondary_index_override: [
    #       {
    #         index_name: 'IndexName', # required
    #       }
    #     ],
    #     sse_specification_override: {
    #       enabled: false,
    #       sse_type: 'AES256', # accepts ["AES256", "KMS"]
    #       kms_master_key_id: 'KMSMasterKeyId'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreTableToPointInTimeOutput
    #   resp.data.table_description #=> Types::TableDescription
    #   resp.data.table_description.attribute_definitions #=> Array<AttributeDefinition>
    #   resp.data.table_description.attribute_definitions[0] #=> Types::AttributeDefinition
    #   resp.data.table_description.attribute_definitions[0].attribute_name #=> String
    #   resp.data.table_description.attribute_definitions[0].attribute_type #=> String, one of ["S", "N", "B"]
    #   resp.data.table_description.table_name #=> String
    #   resp.data.table_description.key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.table_description.key_schema[0].attribute_name #=> String
    #   resp.data.table_description.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.table_description.table_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED"]
    #   resp.data.table_description.creation_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table_description.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.data.table_description.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.table_description.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.table_description.table_size_bytes #=> Integer
    #   resp.data.table_description.item_count #=> Integer
    #   resp.data.table_description.table_arn #=> String
    #   resp.data.table_description.table_id #=> String
    #   resp.data.table_description.billing_mode_summary #=> Types::BillingModeSummary
    #   resp.data.table_description.billing_mode_summary.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.table_description.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.data.table_description.local_secondary_indexes #=> Array<LocalSecondaryIndexDescription>
    #   resp.data.table_description.local_secondary_indexes[0] #=> Types::LocalSecondaryIndexDescription
    #   resp.data.table_description.local_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.local_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.local_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   resp.data.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.data.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table_description.local_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table_description.local_secondary_indexes[0].index_arn #=> String
    #   resp.data.table_description.global_secondary_indexes #=> Array<GlobalSecondaryIndexDescription>
    #   resp.data.table_description.global_secondary_indexes[0] #=> Types::GlobalSecondaryIndexDescription
    #   resp.data.table_description.global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.global_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.global_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table_description.global_secondary_indexes[0].index_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   resp.data.table_description.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.data.table_description.global_secondary_indexes[0].provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table_description.global_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table_description.global_secondary_indexes[0].index_arn #=> String
    #   resp.data.table_description.stream_specification #=> Types::StreamSpecification
    #   resp.data.table_description.stream_specification.stream_enabled #=> Boolean
    #   resp.data.table_description.stream_specification.stream_view_type #=> String, one of ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   resp.data.table_description.latest_stream_label #=> String
    #   resp.data.table_description.latest_stream_arn #=> String
    #   resp.data.table_description.global_table_version #=> String
    #   resp.data.table_description.replicas #=> Array<ReplicaDescription>
    #   resp.data.table_description.replicas[0] #=> Types::ReplicaDescription
    #   resp.data.table_description.replicas[0].region_name #=> String
    #   resp.data.table_description.replicas[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.table_description.replicas[0].replica_status_description #=> String
    #   resp.data.table_description.replicas[0].replica_status_percent_progress #=> String
    #   resp.data.table_description.replicas[0].kms_master_key_id #=> String
    #   resp.data.table_description.replicas[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table_description.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.data.table_description.replicas[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexDescription>
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexDescription
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table_description.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.data.table_description.replicas[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.table_description.replicas[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.table_description.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.data.table_description.restore_summary #=> Types::RestoreSummary
    #   resp.data.table_description.restore_summary.source_backup_arn #=> String
    #   resp.data.table_description.restore_summary.source_table_arn #=> String
    #   resp.data.table_description.restore_summary.restore_date_time #=> Time
    #   resp.data.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.data.table_description.sse_description #=> Types::SSEDescription
    #   resp.data.table_description.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"]
    #   resp.data.table_description.sse_description.sse_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.table_description.sse_description.kms_master_key_arn #=> String
    #   resp.data.table_description.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.data.table_description.archival_summary #=> Types::ArchivalSummary
    #   resp.data.table_description.archival_summary.archival_date_time #=> Time
    #   resp.data.table_description.archival_summary.archival_reason #=> String
    #   resp.data.table_description.archival_summary.archival_backup_arn #=> String
    #   resp.data.table_description.table_class_summary #=> Types::TableClassSummary
    #
    def restore_table_to_point_in_time(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreTableToPointInTimeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreTableToPointInTimeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreTableToPointInTime
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::TableInUseException, Errors::PointInTimeRecoveryUnavailableException, Errors::InvalidRestoreTimeException, Errors::TableAlreadyExistsException, Errors::TableNotFoundException]),
        data_parser: Parsers::RestoreTableToPointInTime
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreTableToPointInTime,
        stubs: @stubs,
        params_class: Params::RestoreTableToPointInTimeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_table_to_point_in_time
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>Scan</code> operation returns one or more items and item attributes by
    #             accessing every item in a table or a secondary index. To have DynamoDB return fewer
    #             items, you can provide a <code>FilterExpression</code> operation.</p>
    #         <p>If the total number of scanned items exceeds the maximum dataset size limit of 1 MB,
    #             the scan stops and results are returned to the user as a <code>LastEvaluatedKey</code>
    #             value to continue the scan in a subsequent operation. The results also include the
    #             number of items exceeding the limit. A scan can result in no table data meeting the
    #             filter criteria. </p>
    #         <p>A single <code>Scan</code> operation reads up to the maximum number of items set (if
    #             using the <code>Limit</code> parameter) or a maximum of 1 MB of data and then apply any
    #             filtering to the results using <code>FilterExpression</code>. If
    #                 <code>LastEvaluatedKey</code> is present in the response, you need to paginate the
    #             result set. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination">Paginating the
    #                 Results</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
    #         <p>
    #             <code>Scan</code> operations proceed sequentially; however, for faster performance on
    #             a large table or secondary index, applications can request a parallel <code>Scan</code>
    #             operation by providing the <code>Segment</code> and <code>TotalSegments</code>
    #             parameters. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan">Parallel
    #                 Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #         <p>
    #             <code>Scan</code> uses eventually consistent reads when accessing the data in a table;
    #             therefore, the result set might not include the changes to data in the table immediately
    #             before the operation began. If you need a consistent copy of the data, as of the time
    #             that the <code>Scan</code> begins, you can set the <code>ConsistentRead</code> parameter
    #             to <code>true</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ScanInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table containing the requested items; or, if you provide
    #                   <code>IndexName</code>, the name of the table to which that index belongs.</p>
    #
    # @option params [String] :index_name
    #   <p>The name of a secondary index to scan. This index can be any local secondary index or
    #               global secondary index. Note that if you use the <code>IndexName</code> parameter, you
    #               must also provide <code>TableName</code>.</p>
    #
    # @option params [Array<String>] :attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, and a
    #               key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can
    #               pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Working with Queries</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [String] :select
    #   <p>The attributes to be returned in the result. You can retrieve all item attributes,
    #               specific item attributes, the count of matching items, or in the case of an index, some
    #               or all of the attributes projected into the index.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the
    #                       specified table or index. If you query a local secondary index, then for each
    #                       matching item in the index, DynamoDB fetches the entire item from the parent
    #                       table. If the index is configured to project all item attributes, then all of
    #                       the data can be obtained from the local secondary index, and no fetching is
    #                       required.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index.
    #                       Retrieves all attributes that have been projected into the index. If the index
    #                       is configured to project all attributes, this return value is equivalent to
    #                       specifying <code>ALL_ATTRIBUTES</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>COUNT</code> - Returns the number of matching items, rather than the
    #                       matching items themselves.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in
    #                           <code>AttributesToGet</code>. This return value is equivalent to specifying
    #                           <code>AttributesToGet</code> without specifying any value for
    #                           <code>Select</code>.</p>
    #                   <p>If you query or scan a local secondary index and request only attributes that
    #                       are projected into that index, the operation reads only the index and not the
    #                       table. If any of the requested attributes are not projected into the local
    #                       secondary index, DynamoDB fetches each of these attributes from the parent
    #                       table. This extra fetching incurs additional throughput cost and latency.</p>
    #                   <p>If you query or scan a global secondary index, you can only request attributes
    #                       that are projected into the index. Global secondary index queries cannot fetch
    #                       attributes from the parent table.</p>
    #               </li>
    #            </ul>
    #           <p>If neither <code>Select</code> nor <code>AttributesToGet</code> are specified,
    #               DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and
    #                   <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both
    #                   <code>Select</code> and <code>AttributesToGet</code> together in a single request,
    #               unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>. (This
    #               usage is equivalent to specifying <code>AttributesToGet</code> without any value for
    #                   <code>Select</code>.)</p>
    #           <note>
    #               <p>If you use the <code>ProjectionExpression</code> parameter, then the value for
    #                       <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other
    #                   value for <code>Select</code> will return an error.</p>
    #           </note>
    #
    # @option params [Hash<String, Condition>] :scan_filter
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html">ScanFilter</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [String] :conditional_operator
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, AttributeValue>] :exclusive_start_key
    #   <p>The primary key of the first item that this operation will evaluate. Use the value
    #               that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p>
    #           <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No
    #               set data types are allowed.</p>
    #           <p>In a parallel scan, a <code>Scan</code> request that includes
    #                   <code>ExclusiveStartKey</code> must specify the same segment whose previous
    #                   <code>Scan</code> returned the corresponding value of
    #               <code>LastEvaluatedKey</code>.</p>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :total_segments
    #   <p>For a parallel <code>Scan</code> request, <code>TotalSegments</code> represents the
    #               total number of segments into which the <code>Scan</code> operation will be divided. The
    #               value of <code>TotalSegments</code> corresponds to the number of application workers
    #               that will perform the parallel scan. For example, if you want to use four application
    #               threads to scan a table or an index, specify a <code>TotalSegments</code> value of
    #               4.</p>
    #           <p>The value for <code>TotalSegments</code> must be greater than or equal to 1, and less
    #               than or equal to 1000000. If you specify a <code>TotalSegments</code> value of 1, the
    #                   <code>Scan</code> operation will be sequential rather than parallel.</p>
    #           <p>If you specify <code>TotalSegments</code>, you must also specify
    #               <code>Segment</code>.</p>
    #
    # @option params [Integer] :segment
    #   <p>For a parallel <code>Scan</code> request, <code>Segment</code> identifies an
    #               individual segment to be scanned by an application worker.</p>
    #           <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want
    #               to use four application threads to scan a table or an index, then the first thread
    #               specifies a <code>Segment</code> value of 0, the second thread specifies 1, and so
    #               on.</p>
    #           <p>The value of <code>LastEvaluatedKey</code> returned from a parallel <code>Scan</code>
    #               request must be used as <code>ExclusiveStartKey</code> with the same segment ID in a
    #               subsequent <code>Scan</code> operation.</p>
    #           <p>The value for <code>Segment</code> must be greater than or equal to 0, and less than
    #               the value provided for <code>TotalSegments</code>.</p>
    #           <p>If you provide <code>Segment</code>, you must also provide
    #               <code>TotalSegments</code>.</p>
    #
    # @option params [String] :projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the specified table
    #               or index. These attributes can include scalars, sets, or elements of a JSON document.
    #               The attributes in the expression must be separated by commas.</p>
    #           <p>If no attribute names are specified, then all attributes will be returned. If any of
    #               the requested attributes are not found, they will not appear in the result.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [String] :filter_expression
    #   <p>A string that contains conditions that DynamoDB applies after the <code>Scan</code>
    #               operation, but before the data is returned to you. Items that do not satisfy the
    #                   <code>FilterExpression</code> criteria are not returned.</p>
    #           <note>
    #               <p>A <code>FilterExpression</code> is applied after the items have already been read;
    #                   the process of filtering does not consume any additional read capacity units.</p>
    #           </note>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults">Filter
    #                   Expressions</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                   <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                   <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #           <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Percentile</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>{"#P":"Percentile"}</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>You could then use this substitution in an expression, as in this example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>#P = :val</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #           </note>
    #           <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #           <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <code>ProductStatus</code> attribute was one of the following: </p>
    #           <p>
    #               <code>Available | Backordered | Discontinued</code>
    #           </p>
    #           <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #           <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #           </p>
    #           <p>You could then use these values in an expression, such as this:</p>
    #           <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #           </p>
    #           <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Boolean] :consistent_read
    #   <p>A Boolean value that determines the read consistency model during the scan:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>ConsistentRead</code> is <code>false</code>, then the data returned
    #                       from <code>Scan</code> might not contain the results from other recently
    #                       completed write operations (<code>PutItem</code>, <code>UpdateItem</code>, or
    #                           <code>DeleteItem</code>).</p>
    #               </li>
    #               <li>
    #                   <p>If <code>ConsistentRead</code> is <code>true</code>, then all of the write
    #                       operations that completed before the <code>Scan</code> began are guaranteed to
    #                       be contained in the <code>Scan</code> response.</p>
    #               </li>
    #            </ul>
    #           <p>The default setting for <code>ConsistentRead</code> is <code>false</code>.</p>
    #           <p>The <code>ConsistentRead</code> parameter is not supported on global secondary
    #               indexes. If you scan a global secondary index with <code>ConsistentRead</code> set to
    #               true, you will receive a <code>ValidationException</code>.</p>
    #
    # @return [Types::ScanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.scan(
    #     table_name: 'TableName', # required
    #     index_name: 'IndexName',
    #     attributes_to_get: [
    #       'member'
    #     ],
    #     limit: 1,
    #     select: 'ALL_ATTRIBUTES', # accepts ["ALL_ATTRIBUTES", "ALL_PROJECTED_ATTRIBUTES", "SPECIFIC_ATTRIBUTES", "COUNT"]
    #     scan_filter: {
    #       'key' => {
    #         attribute_value_list: [
    #           {
    #             # One of:
    #             s: 'S',
    #             n: 'N',
    #             b: 'B',
    #             ss: [
    #               'member'
    #             ],
    #             ns: [
    #               'member'
    #             ],
    #             bs: [
    #               'member'
    #             ],
    #             null: false,
    #             bool: false
    #           }
    #         ],
    #         comparison_operator: 'EQ' # required - accepts ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"]
    #       }
    #     },
    #     conditional_operator: 'AND', # accepts ["AND", "OR"]
    #     return_consumed_capacity: 'INDEXES', # accepts ["INDEXES", "TOTAL", "NONE"]
    #     total_segments: 1,
    #     segment: 1,
    #     projection_expression: 'ProjectionExpression',
    #     filter_expression: 'FilterExpression',
    #     expression_attribute_names: {
    #       'key' => 'value'
    #     },
    #     consistent_read: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ScanOutput
    #   resp.data.items #=> Array<Hash<String, AttributeValue>>
    #   resp.data.items[0] #=> Hash<String, AttributeValue>
    #   resp.data.items[0]['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.items[0]['key'].s #=> String
    #   resp.data.items[0]['key'].n #=> String
    #   resp.data.items[0]['key'].b #=> String
    #   resp.data.items[0]['key'].ss #=> Array<String>
    #   resp.data.items[0]['key'].ss[0] #=> String
    #   resp.data.items[0]['key'].ns #=> Array<String>
    #   resp.data.items[0]['key'].ns[0] #=> String
    #   resp.data.items[0]['key'].bs #=> Array<String>
    #   resp.data.items[0]['key'].bs[0] #=> String
    #   resp.data.items[0]['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.items[0]['key'].l #=> Array<AttributeValue>
    #   resp.data.items[0]['key'].null #=> Boolean
    #   resp.data.items[0]['key'].bool #=> Boolean
    #   resp.data.count #=> Integer
    #   resp.data.scanned_count #=> Integer
    #   resp.data.last_evaluated_key #=> Hash<String, AttributeValue>
    #   resp.data.consumed_capacity #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity.table_name #=> String
    #   resp.data.consumed_capacity.capacity_units #=> Float
    #   resp.data.consumed_capacity.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table #=> Types::Capacity
    #   resp.data.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.capacity_units #=> Float
    #   resp.data.consumed_capacity.local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity.global_secondary_indexes #=> Hash<String, Capacity>
    #
    def scan(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ScanInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ScanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Scan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]),
        data_parser: Parsers::Scan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Scan,
        stubs: @stubs,
        params_class: Params::ScanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :scan
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associate a set of tags with an Amazon DynamoDB resource. You can then activate these
    #             user-defined tags so that they appear on the Billing and Cost Management console for
    #             cost allocation tracking. You can call TagResource up to five times per second, per
    #             account. </p>
    #         <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a>
    #             in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Identifies the Amazon DynamoDB resource to which tags should be added. This value is
    #               an Amazon Resource Name (ARN).</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the Amazon DynamoDB resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]),
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

    # <p>
    #             <code>TransactGetItems</code> is a synchronous operation that atomically retrieves
    #             multiple items from one or more tables (but not from indexes) in a single account and
    #             Region. A <code>TransactGetItems</code> call can contain up to 25
    #                 <code>TransactGetItem</code> objects, each of which contains a <code>Get</code>
    #             structure that specifies an item to retrieve from a table in the account and Region. A
    #             call to <code>TransactGetItems</code> cannot retrieve items from tables in more than one
    #                 Amazon Web Services account or Region. The aggregate size of the items in the
    #             transaction cannot exceed 4 MB.</p>
    #         <p>DynamoDB rejects the entire <code>TransactGetItems</code> request if any of
    #             the following is true:</p>
    #         <ul>
    #             <li>
    #                 <p>A conflicting operation is in the process of updating an item to be
    #                     read.</p>
    #             </li>
    #             <li>
    #                 <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                 <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #             <li>
    #                 <p>The aggregate size of the items in the transaction cannot exceed 4 MB.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::TransactGetItemsInput}.
    #
    # @option params [Array<TransactGetItem>] :transact_items
    #   <p>An ordered array of up to 25 <code>TransactGetItem</code> objects, each of which
    #               contains a <code>Get</code> structure.</p>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>A value of <code>TOTAL</code> causes consumed capacity information to be returned, and
    #               a value of <code>NONE</code> prevents that information from being returned. No other
    #               value is valid.</p>
    #
    # @return [Types::TransactGetItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transact_get_items(
    #     transact_items: [
    #       {
    #         get: {
    #           key: {
    #             'key' => {
    #               # One of:
    #               s: 'S',
    #               n: 'N',
    #               b: 'B',
    #               ss: [
    #                 'member'
    #               ],
    #               ns: [
    #                 'member'
    #               ],
    #               bs: [
    #                 'member'
    #               ],
    #               null: false,
    #               bool: false
    #             }
    #           }, # required
    #           table_name: 'TableName', # required
    #           projection_expression: 'ProjectionExpression',
    #           expression_attribute_names: {
    #             'key' => 'value'
    #           }
    #         } # required
    #       }
    #     ], # required
    #     return_consumed_capacity: 'INDEXES' # accepts ["INDEXES", "TOTAL", "NONE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TransactGetItemsOutput
    #   resp.data.consumed_capacity #=> Array<ConsumedCapacity>
    #   resp.data.consumed_capacity[0] #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity[0].table_name #=> String
    #   resp.data.consumed_capacity[0].capacity_units #=> Float
    #   resp.data.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table #=> Types::Capacity
    #   resp.data.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.data.consumed_capacity[0].local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity[0].global_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.responses #=> Array<ItemResponse>
    #   resp.data.responses[0] #=> Types::ItemResponse
    #   resp.data.responses[0].item #=> Hash<String, AttributeValue>
    #   resp.data.responses[0].item['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.responses[0].item['key'].s #=> String
    #   resp.data.responses[0].item['key'].n #=> String
    #   resp.data.responses[0].item['key'].b #=> String
    #   resp.data.responses[0].item['key'].ss #=> Array<String>
    #   resp.data.responses[0].item['key'].ss[0] #=> String
    #   resp.data.responses[0].item['key'].ns #=> Array<String>
    #   resp.data.responses[0].item['key'].ns[0] #=> String
    #   resp.data.responses[0].item['key'].bs #=> Array<String>
    #   resp.data.responses[0].item['key'].bs[0] #=> String
    #   resp.data.responses[0].item['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.responses[0].item['key'].l #=> Array<AttributeValue>
    #   resp.data.responses[0].item['key'].null #=> Boolean
    #   resp.data.responses[0].item['key'].bool #=> Boolean
    #
    def transact_get_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TransactGetItemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TransactGetItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TransactGetItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::TransactionCanceledException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]),
        data_parser: Parsers::TransactGetItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TransactGetItems,
        stubs: @stubs,
        params_class: Params::TransactGetItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :transact_get_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <code>TransactWriteItems</code> is a synchronous write operation that groups up to 25
    #             action requests. These actions can target items in different tables, but not in
    #             different Amazon Web Services accounts or Regions, and no two actions can target the same
    #             item. For example, you cannot both <code>ConditionCheck</code> and <code>Update</code>
    #             the same item. The aggregate size of the items in the transaction cannot exceed 4
    #             MB.</p>
    #
    #         <p>The actions are completed atomically so that either all of them succeed, or all of
    #             them fail. They are defined by the following objects:</p>
    #
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>Put</code>  —   Initiates a <code>PutItem</code>
    #                     operation to write a new item. This structure specifies the primary key of the
    #                     item to be written, the name of the table to write it in, an optional condition
    #                     expression that must be satisfied for the write to succeed, a list of the item's
    #                     attributes, and a field indicating whether to retrieve the item's attributes if
    #                     the condition is not met.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Update</code>  —   Initiates an <code>UpdateItem</code>
    #                     operation to update an existing item. This structure specifies the primary key
    #                     of the item to be updated, the name of the table where it resides, an optional
    #                     condition expression that must be satisfied for the update to succeed, an
    #                     expression that defines one or more attributes to be updated, and a field
    #                     indicating whether to retrieve the item's attributes if the condition is not
    #                     met.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Delete</code>  —   Initiates a <code>DeleteItem</code>
    #                     operation to delete an existing item. This structure specifies the primary key
    #                     of the item to be deleted, the name of the table where it resides, an optional
    #                     condition expression that must be satisfied for the deletion to succeed, and a
    #                     field indicating whether to retrieve the item's attributes if the condition is
    #                     not met.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ConditionCheck</code>  —   Applies a condition to an item
    #                     that is not being modified by the transaction. This structure specifies the
    #                     primary key of the item to be checked, the name of the table where it resides, a
    #                     condition expression that must be satisfied for the transaction to succeed, and
    #                     a field indicating whether to retrieve the item's attributes if the condition is
    #                     not met.</p>
    #             </li>
    #          </ul>
    #
    #         <p>DynamoDB rejects the entire <code>TransactWriteItems</code> request if any of the
    #             following is true:</p>
    #         <ul>
    #             <li>
    #                 <p>A condition in one of the condition expressions is not met.</p>
    #             </li>
    #             <li>
    #                 <p>An ongoing operation is in the process of updating the same item.</p>
    #             </li>
    #             <li>
    #                 <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                 <p>An item size becomes too large (bigger than 400 KB), a local secondary index
    #                     (LSI) becomes too large, or a similar validation error occurs because of changes
    #                     made by the transaction.</p>
    #             </li>
    #             <li>
    #                 <p>The aggregate size of the items in the transaction exceeds 4 MB.</p>
    #             </li>
    #             <li>
    #                 <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::TransactWriteItemsInput}.
    #
    # @option params [Array<TransactWriteItem>] :transact_items
    #   <p>An ordered array of up to 25 <code>TransactWriteItem</code> objects, each of which
    #               contains a <code>ConditionCheck</code>, <code>Put</code>, <code>Update</code>, or
    #                   <code>Delete</code> object. These can operate on items in different tables, but the
    #               tables must reside in the same Amazon Web Services account and Region, and no two of them
    #               can operate on the same item. </p>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections (if any), that were modified
    #               during the operation and are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned. </p>
    #
    # @option params [String] :client_request_token
    #   <p>Providing a <code>ClientRequestToken</code> makes the call to
    #                   <code>TransactWriteItems</code> idempotent, meaning that multiple identical calls
    #               have the same effect as one single call.</p>
    #           <p>Although multiple identical calls using the same client request token produce the same
    #               result on the server (no side effects), the responses to the calls might not be the
    #               same. If the <code>ReturnConsumedCapacity></code> parameter is set, then the initial
    #                   <code>TransactWriteItems</code> call returns the amount of write capacity units
    #               consumed in making the changes. Subsequent <code>TransactWriteItems</code> calls with
    #               the same client token return the number of read capacity units consumed in reading the
    #               item.</p>
    #           <p>A client request token is valid for 10 minutes after the first request that uses it is
    #               completed. After 10 minutes, any request with the same client token is treated as a new
    #               request. Do not resubmit the same request with the same client token for more than 10
    #               minutes, or the result might not be idempotent.</p>
    #           <p>If you submit a request with the same client token but a change in other parameters
    #               within the 10-minute idempotency window, DynamoDB returns an
    #                   <code>IdempotentParameterMismatch</code> exception.</p>
    #
    # @return [Types::TransactWriteItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transact_write_items(
    #     transact_items: [
    #       {
    #         condition_check: {
    #           key: {
    #             'key' => {
    #               # One of:
    #               s: 'S',
    #               n: 'N',
    #               b: 'B',
    #               ss: [
    #                 'member'
    #               ],
    #               ns: [
    #                 'member'
    #               ],
    #               bs: [
    #                 'member'
    #               ],
    #               null: false,
    #               bool: false
    #             }
    #           }, # required
    #           table_name: 'TableName', # required
    #           condition_expression: 'ConditionExpression', # required
    #           expression_attribute_names: {
    #             'key' => 'value'
    #           },
    #           return_values_on_condition_check_failure: 'ALL_OLD' # accepts ["ALL_OLD", "NONE"]
    #         },
    #         put: {
    #           table_name: 'TableName', # required
    #           condition_expression: 'ConditionExpression',
    #           return_values_on_condition_check_failure: 'ALL_OLD' # accepts ["ALL_OLD", "NONE"]
    #         },
    #         delete: {
    #           table_name: 'TableName', # required
    #           condition_expression: 'ConditionExpression',
    #           return_values_on_condition_check_failure: 'ALL_OLD' # accepts ["ALL_OLD", "NONE"]
    #         },
    #         update: {
    #           update_expression: 'UpdateExpression', # required
    #           table_name: 'TableName', # required
    #           condition_expression: 'ConditionExpression',
    #           return_values_on_condition_check_failure: 'ALL_OLD' # accepts ["ALL_OLD", "NONE"]
    #         }
    #       }
    #     ], # required
    #     return_consumed_capacity: 'INDEXES', # accepts ["INDEXES", "TOTAL", "NONE"]
    #     return_item_collection_metrics: 'SIZE', # accepts ["SIZE", "NONE"]
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TransactWriteItemsOutput
    #   resp.data.consumed_capacity #=> Array<ConsumedCapacity>
    #   resp.data.consumed_capacity[0] #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity[0].table_name #=> String
    #   resp.data.consumed_capacity[0].capacity_units #=> Float
    #   resp.data.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table #=> Types::Capacity
    #   resp.data.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.data.consumed_capacity[0].local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity[0].global_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.item_collection_metrics #=> Hash<String, Array<ItemCollectionMetrics>>
    #   resp.data.item_collection_metrics['key'] #=> Array<ItemCollectionMetrics>
    #   resp.data.item_collection_metrics['key'][0] #=> Types::ItemCollectionMetrics
    #   resp.data.item_collection_metrics['key'][0].item_collection_key #=> Hash<String, AttributeValue>
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].s #=> String
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].n #=> String
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].b #=> String
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].ss #=> Array<String>
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].ss[0] #=> String
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].ns #=> Array<String>
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].ns[0] #=> String
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].bs #=> Array<String>
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].bs[0] #=> String
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].l #=> Array<AttributeValue>
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].null #=> Boolean
    #   resp.data.item_collection_metrics['key'][0].item_collection_key['key'].bool #=> Boolean
    #   resp.data.item_collection_metrics['key'][0].size_estimate_range_gb #=> Array<Float>
    #   resp.data.item_collection_metrics['key'][0].size_estimate_range_gb[0] #=> Float
    #
    def transact_write_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TransactWriteItemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TransactWriteItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TransactWriteItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::IdempotentParameterMismatchException, Errors::TransactionCanceledException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException, Errors::TransactionInProgressException]),
        data_parser: Parsers::TransactWriteItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TransactWriteItems,
        stubs: @stubs,
        params_class: Params::TransactWriteItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :transact_write_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the association of tags from an Amazon DynamoDB resource. You can call
    #                 <code>UntagResource</code> up to five times per second, per account. </p>
    #         <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a>
    #             in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The DynamoDB resource that the tags will be removed from. This value is an Amazon
    #               Resource Name (ARN).</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Existing tags of the resource whose keys are members of this list
    #               will be removed from the DynamoDB resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]),
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

    # <p>
    #             <code>UpdateContinuousBackups</code> enables or disables point in time recovery for
    #             the specified table. A successful <code>UpdateContinuousBackups</code> call returns the
    #             current <code>ContinuousBackupsDescription</code>. Continuous backups are
    #                 <code>ENABLED</code> on all tables at table creation. If point in time recovery is
    #             enabled, <code>PointInTimeRecoveryStatus</code> will be set to ENABLED.</p>
    #         <p> Once continuous backups and point in time recovery are enabled, you can restore to
    #             any point in time within <code>EarliestRestorableDateTime</code> and
    #                 <code>LatestRestorableDateTime</code>. </p>
    #         <p>
    #             <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time.
    #             You can restore your table to any point in time during the last 35 days. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContinuousBackupsInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    #
    # @option params [PointInTimeRecoverySpecification] :point_in_time_recovery_specification
    #   <p>Represents the settings used to enable point in time recovery.</p>
    #
    # @return [Types::UpdateContinuousBackupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_continuous_backups(
    #     table_name: 'TableName', # required
    #     point_in_time_recovery_specification: {
    #       point_in_time_recovery_enabled: false # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContinuousBackupsOutput
    #   resp.data.continuous_backups_description #=> Types::ContinuousBackupsDescription
    #   resp.data.continuous_backups_description.continuous_backups_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.continuous_backups_description.point_in_time_recovery_description #=> Types::PointInTimeRecoveryDescription
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.point_in_time_recovery_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.earliest_restorable_date_time #=> Time
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.latest_restorable_date_time #=> Time
    #
    def update_continuous_backups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContinuousBackupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContinuousBackupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContinuousBackups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::TableNotFoundException, Errors::ContinuousBackupsUnavailableException]),
        data_parser: Parsers::UpdateContinuousBackups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContinuousBackups,
        stubs: @stubs,
        params_class: Params::UpdateContinuousBackupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_continuous_backups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status for contributor insights for a specific table or index. CloudWatch
    #             Contributor Insights for DynamoDB graphs display the partition key and (if applicable)
    #             sort key of frequently accessed items and frequently throttled items in plaintext. If
    #             you require the use of Amazon Web Services Key Management Service (KMS) to encrypt this table’s
    #             partition key and sort key data with an Amazon Web Services managed key or customer managed key, you
    #             should not enable CloudWatch Contributor Insights for DynamoDB for this table.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContributorInsightsInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    #
    # @option params [String] :index_name
    #   <p>The global secondary index name, if applicable.</p>
    #
    # @option params [String] :contributor_insights_action
    #   <p>Represents the contributor insights action.</p>
    #
    # @return [Types::UpdateContributorInsightsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contributor_insights(
    #     table_name: 'TableName', # required
    #     index_name: 'IndexName',
    #     contributor_insights_action: 'ENABLE' # required - accepts ["ENABLE", "DISABLE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContributorInsightsOutput
    #   resp.data.table_name #=> String
    #   resp.data.index_name #=> String
    #   resp.data.contributor_insights_status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"]
    #
    def update_contributor_insights(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContributorInsightsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContributorInsightsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContributorInsights
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
        data_parser: Parsers::UpdateContributorInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContributorInsights,
        stubs: @stubs,
        params_class: Params::UpdateContributorInsightsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contributor_insights
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or removes replicas in the specified global table. The global table must already
    #             exist to be able to use this operation. Any replica to be added must be empty, have the
    #             same name as the global table, have the same key schema, have DynamoDB Streams enabled,
    #             and have the same provisioned and maximum write capacity units.</p>
    #         <note>
    #             <p>Although you can use <code>UpdateGlobalTable</code> to add replicas and remove
    #                 replicas in a single request, for simplicity we recommend that you issue separate
    #                 requests for adding or removing replicas.</p>
    #         </note>
    #         <p> If global secondary indexes are specified, then the following conditions must also be
    #             met: </p>
    #         <ul>
    #             <li>
    #                 <p> The global secondary indexes must have the same name. </p>
    #             </li>
    #             <li>
    #                 <p> The global secondary indexes must have the same hash key and sort key (if
    #                     present). </p>
    #             </li>
    #             <li>
    #                 <p> The global secondary indexes must have the same provisioned and maximum write
    #                     capacity units. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateGlobalTableInput}.
    #
    # @option params [String] :global_table_name
    #   <p>The global table name.</p>
    #
    # @option params [Array<ReplicaUpdate>] :replica_updates
    #   <p>A list of Regions that should be added or removed from the global table.</p>
    #
    # @return [Types::UpdateGlobalTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_table(
    #     global_table_name: 'GlobalTableName', # required
    #     replica_updates: [
    #       {
    #         create: {
    #           region_name: 'RegionName' # required
    #         },
    #         delete: {
    #           region_name: 'RegionName' # required
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGlobalTableOutput
    #   resp.data.global_table_description #=> Types::GlobalTableDescription
    #   resp.data.global_table_description.replication_group #=> Array<ReplicaDescription>
    #   resp.data.global_table_description.replication_group[0] #=> Types::ReplicaDescription
    #   resp.data.global_table_description.replication_group[0].region_name #=> String
    #   resp.data.global_table_description.replication_group[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.global_table_description.replication_group[0].replica_status_description #=> String
    #   resp.data.global_table_description.replication_group[0].replica_status_percent_progress #=> String
    #   resp.data.global_table_description.replication_group[0].kms_master_key_id #=> String
    #   resp.data.global_table_description.replication_group[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.global_table_description.replication_group[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexDescription>
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexDescription
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.global_table_description.replication_group[0].global_secondary_indexes[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.global_table_description.replication_group[0].replica_inaccessible_date_time #=> Time
    #   resp.data.global_table_description.replication_group[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.global_table_description.replication_group[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.global_table_description.replication_group[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.data.global_table_description.global_table_arn #=> String
    #   resp.data.global_table_description.creation_date_time #=> Time
    #   resp.data.global_table_description.global_table_status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "UPDATING"]
    #   resp.data.global_table_description.global_table_name #=> String
    #
    def update_global_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGlobalTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGlobalTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGlobalTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::GlobalTableNotFoundException, Errors::ReplicaNotFoundException, Errors::TableNotFoundException, Errors::ReplicaAlreadyExistsException]),
        data_parser: Parsers::UpdateGlobalTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGlobalTable,
        stubs: @stubs,
        params_class: Params::UpdateGlobalTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_global_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates settings for a global table.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGlobalTableSettingsInput}.
    #
    # @option params [String] :global_table_name
    #   <p>The name of the global table</p>
    #
    # @option params [String] :global_table_billing_mode
    #   <p>The billing mode of the global table. If <code>GlobalTableBillingMode</code> is not
    #               specified, the global table defaults to <code>PROVISIONED</code> capacity billing
    #               mode.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual">Provisioned Mode</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand">On-Demand Mode</a>. </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :global_table_provisioned_write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException.</code>
    #            </p>
    #
    # @option params [AutoScalingSettingsUpdate] :global_table_provisioned_write_capacity_auto_scaling_settings_update
    #   <p>Auto scaling settings for managing provisioned write capacity for the global
    #               table.</p>
    #
    # @option params [Array<GlobalTableGlobalSecondaryIndexSettingsUpdate>] :global_table_global_secondary_index_settings_update
    #   <p>Represents the settings of a global secondary index for a global table that will be
    #               modified.</p>
    #
    # @option params [Array<ReplicaSettingsUpdate>] :replica_settings_update
    #   <p>Represents the settings for a global table in a Region that will be modified.</p>
    #
    # @return [Types::UpdateGlobalTableSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_table_settings(
    #     global_table_name: 'GlobalTableName', # required
    #     global_table_billing_mode: 'PROVISIONED', # accepts ["PROVISIONED", "PAY_PER_REQUEST"]
    #     global_table_provisioned_write_capacity_units: 1,
    #     global_table_provisioned_write_capacity_auto_scaling_settings_update: {
    #       minimum_units: 1,
    #       maximum_units: 1,
    #       auto_scaling_disabled: false,
    #       auto_scaling_role_arn: 'AutoScalingRoleArn',
    #       scaling_policy_update: {
    #         policy_name: 'PolicyName',
    #         target_tracking_scaling_policy_configuration: {
    #           disable_scale_in: false,
    #           scale_in_cooldown: 1,
    #           scale_out_cooldown: 1,
    #           target_value: 1.0 # required
    #         } # required
    #       }
    #     },
    #     global_table_global_secondary_index_settings_update: [
    #       {
    #         index_name: 'IndexName', # required
    #         provisioned_write_capacity_units: 1,
    #       }
    #     ],
    #     replica_settings_update: [
    #       {
    #         region_name: 'RegionName', # required
    #         replica_provisioned_read_capacity_units: 1,
    #         replica_global_secondary_index_settings_update: [
    #           {
    #             index_name: 'IndexName', # required
    #             provisioned_read_capacity_units: 1,
    #           }
    #         ],
    #         replica_table_class: 'STANDARD' # accepts ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGlobalTableSettingsOutput
    #   resp.data.global_table_name #=> String
    #   resp.data.replica_settings #=> Array<ReplicaSettingsDescription>
    #   resp.data.replica_settings[0] #=> Types::ReplicaSettingsDescription
    #   resp.data.replica_settings[0].region_name #=> String
    #   resp.data.replica_settings[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.replica_settings[0].replica_billing_mode_summary #=> Types::BillingModeSummary
    #   resp.data.replica_settings[0].replica_billing_mode_summary.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.replica_settings[0].replica_billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_units #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array<AutoScalingPolicyDescription>
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0] #=> Types::AutoScalingPolicyDescription
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration #=> Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.data.replica_settings[0].replica_provisioned_write_capacity_units #=> Integer
    #   resp.data.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings #=> Array<ReplicaGlobalSecondaryIndexSettingsDescription>
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0] #=> Types::ReplicaGlobalSecondaryIndexSettingsDescription
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].index_name #=> String
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].index_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_units #=> Integer
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_units #=> Integer
    #   resp.data.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.replica_settings[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.replica_settings[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.replica_settings[0].replica_table_class_summary.last_update_date_time #=> Time
    #
    def update_global_table_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGlobalTableSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGlobalTableSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGlobalTableSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::GlobalTableNotFoundException, Errors::IndexNotFoundException, Errors::ReplicaNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateGlobalTableSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGlobalTableSettings,
        stubs: @stubs,
        params_class: Params::UpdateGlobalTableSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_global_table_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Edits an existing item's attributes, or adds a new item to the table if it does not
    #             already exist. You can put, delete, or add attribute values. You can also perform a
    #             conditional update on an existing item (insert a new attribute name-value pair if it
    #             doesn't exist, or replace an existing name-value pair if it has certain expected
    #             attribute values).</p>
    #         <p>You can also return the item's attribute values in the same <code>UpdateItem</code>
    #             operation using the <code>ReturnValues</code> parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateItemInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table containing the item to update.</p>
    #
    # @option params [Hash<String, AttributeValue>] :key
    #   <p>The primary key of the item to be updated. Each element consists of an attribute name
    #               and a value for that attribute.</p>
    #           <p>For the primary key, you must provide all of the attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    #
    # @option params [Hash<String, AttributeValueUpdate>] :attribute_updates
    #   <p>This is a legacy parameter. Use <code>UpdateExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html">AttributeUpdates</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, ExpectedAttributeValue>] :expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #
    # @option params [String] :conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [String] :return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appear
    #               before or after they are updated. For <code>UpdateItem</code>, the valid values
    #               are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ALL_OLD</code> - Returns all of the attributes of the item, as they
    #                       appeared before the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>UPDATED_OLD</code> - Returns only the updated attributes, as they appeared
    #                       before the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ALL_NEW</code> - Returns all of the attributes of the item, as they appear
    #                       after the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>UPDATED_NEW</code> - Returns only the updated attributes, as they appear
    #                       after the UpdateItem operation.</p>
    #               </li>
    #            </ul>
    #           <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #           <p>The values returned are strongly consistent.</p>
    #
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                   <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #
    # @option params [String] :update_expression
    #   <p>An expression that defines one or more attributes to be updated, the action to be
    #               performed on them, and new values for them.</p>
    #           <p>The following action values are available for <code>UpdateExpression</code>.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>SET</code> - Adds one or more attributes and values to an item. If any of
    #                       these attributes already exist, they are replaced by the new values. You can
    #                       also use <code>SET</code> to add or subtract from an attribute that is of type
    #                       Number. For example: <code>SET myNum = myNum + :val</code>
    #                   </p>
    #                   <p>
    #                       <code>SET</code> supports the following functions:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                               <code>if_not_exists (path, operand)</code> - if the item does not
    #                               contain an attribute at the specified path, then
    #                                   <code>if_not_exists</code> evaluates to operand; otherwise, it
    #                               evaluates to path. You can use this function to avoid overwriting an
    #                               attribute that may already be present in the item.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                               <code>list_append (operand, operand)</code> - evaluates to a list with a
    #                               new element added to it. You can append the new element to the start or
    #                               the end of the list by reversing the order of the operands.</p>
    #                       </li>
    #                  </ul>
    #                   <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>REMOVE</code> - Removes one or more attributes from an item.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ADD</code> - Adds the specified value to the item, if the attribute does
    #                       not already exist. If the attribute does exist, then the behavior of
    #                           <code>ADD</code> depends on the data type of the attribute:</p>
    #                   <ul>
    #                     <li>
    #                           <p>If the existing attribute is a number, and if <code>Value</code> is
    #                               also a number, then <code>Value</code> is mathematically added to the
    #                               existing attribute. If <code>Value</code> is a negative number, then it
    #                               is subtracted from the existing attribute.</p>
    #                           <note>
    #                               <p>If you use <code>ADD</code> to increment or decrement a number
    #                                   value for an item that doesn't exist before the update, DynamoDB
    #                                   uses <code>0</code> as the initial value.</p>
    #                               <p>Similarly, if you use <code>ADD</code> for an existing item to
    #                                   increment or decrement an attribute value that doesn't exist before
    #                                   the update, DynamoDB uses <code>0</code> as the initial value. For
    #                                   example, suppose that the item you want to update doesn't have an
    #                                   attribute named <code>itemcount</code>, but you decide to
    #                                       <code>ADD</code> the number <code>3</code> to this attribute
    #                                   anyway. DynamoDB will create the <code>itemcount</code> attribute,
    #                                   set its initial value to <code>0</code>, and finally add
    #                                       <code>3</code> to it. The result will be a new
    #                                       <code>itemcount</code> attribute in the item, with a value of
    #                                       <code>3</code>.</p>
    #                           </note>
    #                       </li>
    #                     <li>
    #                           <p>If the existing data type is a set and if <code>Value</code> is also a
    #                               set, then <code>Value</code> is added to the existing set. For example,
    #                               if the attribute value is the set <code>[1,2]</code>, and the
    #                                   <code>ADD</code> action specified <code>[3]</code>, then the final
    #                               attribute value is <code>[1,2,3]</code>. An error occurs if an
    #                                   <code>ADD</code> action is specified for a set attribute and the
    #                               attribute type specified does not match the existing set type. </p>
    #                           <p>Both sets must have the same primitive data type. For example, if the
    #                               existing data type is a set of strings, the <code>Value</code> must also
    #                               be a set of strings.</p>
    #                       </li>
    #                  </ul>
    #                   <important>
    #                       <p>The <code>ADD</code> action only supports Number and set data types. In
    #                           addition, <code>ADD</code> can only be used on top-level attributes, not
    #                           nested attributes.</p>
    #                   </important>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>DELETE</code> - Deletes an element from a set.</p>
    #                   <p>If a set of values is specified, then those values are subtracted from the old
    #                       set. For example, if the attribute value was the set <code>[a,b,c]</code> and
    #                       the <code>DELETE</code> action specifies <code>[a,c]</code>, then the final
    #                       attribute value is <code>[b]</code>. Specifying an empty set is an error.</p>
    #                   <important>
    #                       <p>The <code>DELETE</code> action only supports set data types. In addition,
    #                               <code>DELETE</code> can only be used on top-level attributes, not nested
    #                           attributes.</p>
    #                   </important>
    #
    #               </li>
    #            </ul>
    #           <p>You can have many actions in a single expression, such as the following: <code>SET
    #                   a=:value1, b=:value2 DELETE :value3, :value4, :value5</code>
    #           </p>
    #           <p>For more information on update expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html">Modifying
    #                   Items and Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [String] :condition_expression
    #   <p>A condition that must be satisfied in order for a conditional update to
    #               succeed.</p>
    #           <p>An expression can contain any of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                   </p>
    #                   <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p> Logical operators: <code>AND | OR | NOT</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>For more information about condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                   <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                   <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #           <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Percentile</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.) To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>{"#P":"Percentile"}</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>You could then use this substitution in an expression, as in this example:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>#P = :val</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #           </note>
    #           <p>For more information about expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #           <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <code>ProductStatus</code> attribute was one of the following: </p>
    #           <p>
    #               <code>Available | Backordered | Discontinued</code>
    #           </p>
    #           <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #           <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #           </p>
    #           <p>You could then use these values in an expression, such as this:</p>
    #           <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #           </p>
    #           <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #
    # @return [Types::UpdateItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_item(
    #     table_name: 'TableName', # required
    #     key: {
    #       'key' => {
    #         # One of:
    #         s: 'S',
    #         n: 'N',
    #         b: 'B',
    #         ss: [
    #           'member'
    #         ],
    #         ns: [
    #           'member'
    #         ],
    #         bs: [
    #           'member'
    #         ],
    #         null: false,
    #         bool: false
    #       }
    #     }, # required
    #     attribute_updates: {
    #       'key' => {
    #         action: 'ADD' # accepts ["ADD", "PUT", "DELETE"]
    #       }
    #     },
    #     expected: {
    #       'key' => {
    #         exists: false,
    #         comparison_operator: 'EQ', # accepts ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"]
    #       }
    #     },
    #     conditional_operator: 'AND', # accepts ["AND", "OR"]
    #     return_values: 'NONE', # accepts ["NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW", "UPDATED_NEW"]
    #     return_consumed_capacity: 'INDEXES', # accepts ["INDEXES", "TOTAL", "NONE"]
    #     return_item_collection_metrics: 'SIZE', # accepts ["SIZE", "NONE"]
    #     update_expression: 'UpdateExpression',
    #     condition_expression: 'ConditionExpression',
    #     expression_attribute_names: {
    #       'key' => 'value'
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateItemOutput
    #   resp.data.attributes #=> Hash<String, AttributeValue>
    #   resp.data.attributes['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.attributes['key'].s #=> String
    #   resp.data.attributes['key'].n #=> String
    #   resp.data.attributes['key'].b #=> String
    #   resp.data.attributes['key'].ss #=> Array<String>
    #   resp.data.attributes['key'].ss[0] #=> String
    #   resp.data.attributes['key'].ns #=> Array<String>
    #   resp.data.attributes['key'].ns[0] #=> String
    #   resp.data.attributes['key'].bs #=> Array<String>
    #   resp.data.attributes['key'].bs[0] #=> String
    #   resp.data.attributes['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.attributes['key'].l #=> Array<AttributeValue>
    #   resp.data.attributes['key'].null #=> Boolean
    #   resp.data.attributes['key'].bool #=> Boolean
    #   resp.data.consumed_capacity #=> Types::ConsumedCapacity
    #   resp.data.consumed_capacity.table_name #=> String
    #   resp.data.consumed_capacity.capacity_units #=> Float
    #   resp.data.consumed_capacity.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table #=> Types::Capacity
    #   resp.data.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.data.consumed_capacity.table.capacity_units #=> Float
    #   resp.data.consumed_capacity.local_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.consumed_capacity.global_secondary_indexes #=> Hash<String, Capacity>
    #   resp.data.item_collection_metrics #=> Types::ItemCollectionMetrics
    #   resp.data.item_collection_metrics.item_collection_key #=> Hash<String, AttributeValue>
    #   resp.data.item_collection_metrics.size_estimate_range_gb #=> Array<Float>
    #   resp.data.item_collection_metrics.size_estimate_range_gb[0] #=> Float
    #
    def update_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateItemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]),
        data_parser: Parsers::UpdateItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateItem,
        stubs: @stubs,
        params_class: Params::UpdateItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the provisioned throughput settings, global secondary indexes, or DynamoDB
    #             Streams settings for a given table.</p>
    #         <p>You can only perform one of the following operations at once:</p>
    #         <ul>
    #             <li>
    #                 <p>Modify the provisioned throughput settings of the table.</p>
    #             </li>
    #             <li>
    #                 <p>Enable or disable DynamoDB Streams on the table.</p>
    #             </li>
    #             <li>
    #                 <p>Remove a global secondary index from the table.</p>
    #             </li>
    #             <li>
    #                 <p>Create a new global secondary index on the table. After the index begins
    #                     backfilling, you can use <code>UpdateTable</code> to perform other
    #                     operations.</p>
    #             </li>
    #          </ul>
    #         <p>
    #             <code>UpdateTable</code> is an asynchronous operation; while it is executing, the table
    #             status changes from <code>ACTIVE</code> to <code>UPDATING</code>. While it is
    #                 <code>UPDATING</code>, you cannot issue another <code>UpdateTable</code> request.
    #             When the table returns to the <code>ACTIVE</code> state, the <code>UpdateTable</code>
    #             operation is complete.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTableInput}.
    #
    # @option params [Array<AttributeDefinition>] :attribute_definitions
    #   <p>An array of attributes that describe the key schema for the table and indexes. If you
    #               are adding a new global secondary index to the table, <code>AttributeDefinitions</code>
    #               must include the key element(s) of the new index.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the table to be updated.</p>
    #
    # @option params [String] :billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. When switching from pay-per-request to provisioned capacity, initial
    #               provisioned capacity values must be set. The initial provisioned capacity values are
    #               estimated based on the consumed read and write capacity of your table and global
    #               secondary indexes over the past 30 minutes.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual">Provisioned Mode</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand">On-Demand Mode</a>. </p>
    #               </li>
    #            </ul>
    #
    # @option params [ProvisionedThroughput] :provisioned_throughput
    #   <p>The new provisioned throughput settings for the specified table or index.</p>
    #
    # @option params [Array<GlobalSecondaryIndexUpdate>] :global_secondary_index_updates
    #   <p>An array of one or more global secondary indexes for the table. For each index in the
    #               array, you can request one action:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Create</code> - add a new global secondary index to the table.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Update</code> - modify the provisioned throughput settings of an existing
    #                       global secondary index.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Delete</code> - remove a global secondary index from the table.</p>
    #               </li>
    #            </ul>
    #           <p>You can create or delete only one global secondary index per <code>UpdateTable</code>
    #               operation.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html">Managing Global
    #                   Secondary Indexes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>. </p>
    #
    # @option params [StreamSpecification] :stream_specification
    #   <p>Represents the DynamoDB Streams configuration for the table.</p>
    #           <note>
    #               <p>You receive a <code>ResourceInUseException</code> if you try to enable a stream on
    #                   a table that already has a stream, or if you try to disable a stream on a table that
    #                   doesn't have a stream.</p>
    #           </note>
    #
    # @option params [SSESpecification] :sse_specification
    #   <p>The new server-side encryption settings for the specified table.</p>
    #
    # @option params [Array<ReplicationGroupUpdate>] :replica_updates
    #   <p>A list of replica update actions (create, delete, or update) for the table.</p>
    #           <note>
    #               <p>This property only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version
    #                       2019.11.21</a> of global tables.</p>
    #           </note>
    #
    # @option params [String] :table_class
    #   <p>The table class of the table to be updated. Valid values are <code>STANDARD</code> and
    #                   <code>STANDARD_INFREQUENT_ACCESS</code>.</p>
    #
    # @return [Types::UpdateTableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table(
    #     attribute_definitions: [
    #       {
    #         attribute_name: 'AttributeName', # required
    #         attribute_type: 'S' # required - accepts ["S", "N", "B"]
    #       }
    #     ],
    #     table_name: 'TableName', # required
    #     billing_mode: 'PROVISIONED', # accepts ["PROVISIONED", "PAY_PER_REQUEST"]
    #     provisioned_throughput: {
    #       read_capacity_units: 1, # required
    #       write_capacity_units: 1 # required
    #     },
    #     global_secondary_index_updates: [
    #       {
    #         update: {
    #           index_name: 'IndexName', # required
    #         },
    #         create: {
    #           index_name: 'IndexName', # required
    #           key_schema: [
    #             {
    #               attribute_name: 'AttributeName', # required
    #               key_type: 'HASH' # required - accepts ["HASH", "RANGE"]
    #             }
    #           ], # required
    #           projection: {
    #             projection_type: 'ALL', # accepts ["ALL", "KEYS_ONLY", "INCLUDE"]
    #             non_key_attributes: [
    #               'member'
    #             ]
    #           }, # required
    #         },
    #         delete: {
    #           index_name: 'IndexName' # required
    #         }
    #       }
    #     ],
    #     stream_specification: {
    #       stream_enabled: false, # required
    #       stream_view_type: 'NEW_IMAGE' # accepts ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #     },
    #     sse_specification: {
    #       enabled: false,
    #       sse_type: 'AES256', # accepts ["AES256", "KMS"]
    #       kms_master_key_id: 'KMSMasterKeyId'
    #     },
    #     replica_updates: [
    #       {
    #         create: {
    #           region_name: 'RegionName', # required
    #           kms_master_key_id: 'KMSMasterKeyId',
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: 'IndexName', # required
    #             }
    #           ],
    #           table_class_override: 'STANDARD' # accepts ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #         },
    #         update: {
    #           region_name: 'RegionName', # required
    #           kms_master_key_id: 'KMSMasterKeyId',
    #           table_class_override: 'STANDARD' # accepts ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #         },
    #         delete: {
    #           region_name: 'RegionName' # required
    #         }
    #       }
    #     ],
    #     table_class: 'STANDARD' # accepts ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTableOutput
    #   resp.data.table_description #=> Types::TableDescription
    #   resp.data.table_description.attribute_definitions #=> Array<AttributeDefinition>
    #   resp.data.table_description.attribute_definitions[0] #=> Types::AttributeDefinition
    #   resp.data.table_description.attribute_definitions[0].attribute_name #=> String
    #   resp.data.table_description.attribute_definitions[0].attribute_type #=> String, one of ["S", "N", "B"]
    #   resp.data.table_description.table_name #=> String
    #   resp.data.table_description.key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.table_description.key_schema[0].attribute_name #=> String
    #   resp.data.table_description.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.table_description.table_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED"]
    #   resp.data.table_description.creation_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table_description.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.data.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.data.table_description.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.table_description.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.table_description.table_size_bytes #=> Integer
    #   resp.data.table_description.item_count #=> Integer
    #   resp.data.table_description.table_arn #=> String
    #   resp.data.table_description.table_id #=> String
    #   resp.data.table_description.billing_mode_summary #=> Types::BillingModeSummary
    #   resp.data.table_description.billing_mode_summary.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.table_description.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.data.table_description.local_secondary_indexes #=> Array<LocalSecondaryIndexDescription>
    #   resp.data.table_description.local_secondary_indexes[0] #=> Types::LocalSecondaryIndexDescription
    #   resp.data.table_description.local_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.local_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.local_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   resp.data.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.data.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table_description.local_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table_description.local_secondary_indexes[0].index_arn #=> String
    #   resp.data.table_description.global_secondary_indexes #=> Array<GlobalSecondaryIndexDescription>
    #   resp.data.table_description.global_secondary_indexes[0] #=> Types::GlobalSecondaryIndexDescription
    #   resp.data.table_description.global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.global_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.table_description.global_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.table_description.global_secondary_indexes[0].index_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   resp.data.table_description.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.data.table_description.global_secondary_indexes[0].provisioned_throughput #=> Types::ProvisionedThroughputDescription
    #   resp.data.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.data.table_description.global_secondary_indexes[0].item_count #=> Integer
    #   resp.data.table_description.global_secondary_indexes[0].index_arn #=> String
    #   resp.data.table_description.stream_specification #=> Types::StreamSpecification
    #   resp.data.table_description.stream_specification.stream_enabled #=> Boolean
    #   resp.data.table_description.stream_specification.stream_view_type #=> String, one of ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   resp.data.table_description.latest_stream_label #=> String
    #   resp.data.table_description.latest_stream_arn #=> String
    #   resp.data.table_description.global_table_version #=> String
    #   resp.data.table_description.replicas #=> Array<ReplicaDescription>
    #   resp.data.table_description.replicas[0] #=> Types::ReplicaDescription
    #   resp.data.table_description.replicas[0].region_name #=> String
    #   resp.data.table_description.replicas[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   resp.data.table_description.replicas[0].replica_status_description #=> String
    #   resp.data.table_description.replicas[0].replica_status_percent_progress #=> String
    #   resp.data.table_description.replicas[0].kms_master_key_id #=> String
    #   resp.data.table_description.replicas[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table_description.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.data.table_description.replicas[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexDescription>
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexDescription
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_description.replicas[0].global_secondary_indexes[0].provisioned_throughput_override #=> Types::ProvisionedThroughputOverride
    #   resp.data.table_description.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.data.table_description.replicas[0].replica_table_class_summary #=> Types::TableClassSummary
    #   resp.data.table_description.replicas[0].replica_table_class_summary.table_class #=> String, one of ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   resp.data.table_description.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.data.table_description.restore_summary #=> Types::RestoreSummary
    #   resp.data.table_description.restore_summary.source_backup_arn #=> String
    #   resp.data.table_description.restore_summary.source_table_arn #=> String
    #   resp.data.table_description.restore_summary.restore_date_time #=> Time
    #   resp.data.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.data.table_description.sse_description #=> Types::SSEDescription
    #   resp.data.table_description.sse_description.status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"]
    #   resp.data.table_description.sse_description.sse_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.table_description.sse_description.kms_master_key_arn #=> String
    #   resp.data.table_description.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.data.table_description.archival_summary #=> Types::ArchivalSummary
    #   resp.data.table_description.archival_summary.archival_date_time #=> Time
    #   resp.data.table_description.archival_summary.archival_reason #=> String
    #   resp.data.table_description.archival_summary.archival_backup_arn #=> String
    #   resp.data.table_description.table_class_summary #=> Types::TableClassSummary
    #
    def update_table(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTable
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTable,
        stubs: @stubs,
        params_class: Params::UpdateTableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_table
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates auto scaling settings on your global tables at once.</p>
    #         <note>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version
    #                     2019.11.21</a> of global tables.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateTableReplicaAutoScalingInput}.
    #
    # @option params [Array<GlobalSecondaryIndexAutoScalingUpdate>] :global_secondary_index_updates
    #   <p>Represents the auto scaling settings of the global secondary indexes of the replica to
    #               be updated.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the global table to be updated.</p>
    #
    # @option params [AutoScalingSettingsUpdate] :provisioned_write_capacity_auto_scaling_update
    #   <p>Represents the auto scaling settings to be modified for a global table or global
    #               secondary index.</p>
    #
    # @option params [Array<ReplicaAutoScalingUpdate>] :replica_updates
    #   <p>Represents the auto scaling settings of replicas of the table that will be
    #               modified.</p>
    #
    # @return [Types::UpdateTableReplicaAutoScalingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table_replica_auto_scaling(
    #     global_secondary_index_updates: [
    #       {
    #         index_name: 'IndexName',
    #         provisioned_write_capacity_auto_scaling_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: 'AutoScalingRoleArn',
    #           scaling_policy_update: {
    #             policy_name: 'PolicyName',
    #             target_tracking_scaling_policy_configuration: {
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0 # required
    #             } # required
    #           }
    #         }
    #       }
    #     ],
    #     table_name: 'TableName', # required
    #     replica_updates: [
    #       {
    #         region_name: 'RegionName', # required
    #         replica_global_secondary_index_updates: [
    #           {
    #             index_name: 'IndexName',
    #           }
    #         ],
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTableReplicaAutoScalingOutput
    #   resp.data.table_auto_scaling_description #=> Types::TableAutoScalingDescription
    #   resp.data.table_auto_scaling_description.table_name #=> String
    #   resp.data.table_auto_scaling_description.table_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED"]
    #   resp.data.table_auto_scaling_description.replicas #=> Array<ReplicaAutoScalingDescription>
    #   resp.data.table_auto_scaling_description.replicas[0] #=> Types::ReplicaAutoScalingDescription
    #   resp.data.table_auto_scaling_description.replicas[0].region_name #=> String
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes #=> Array<ReplicaGlobalSecondaryIndexAutoScalingDescription>
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0] #=> Types::ReplicaGlobalSecondaryIndexAutoScalingDescription
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].index_status #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array<AutoScalingPolicyDescription>
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0] #=> Types::AutoScalingPolicyDescription
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration #=> Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.data.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings #=> Types::AutoScalingSettingsDescription
    #   resp.data.table_auto_scaling_description.replicas[0].replica_status #=> String, one of ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #
    def update_table_replica_auto_scaling(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTableReplicaAutoScalingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTableReplicaAutoScalingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTableReplicaAutoScaling
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateTableReplicaAutoScaling
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTableReplicaAutoScaling,
        stubs: @stubs,
        params_class: Params::UpdateTableReplicaAutoScalingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_table_replica_auto_scaling
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>UpdateTimeToLive</code> method enables or disables Time to Live (TTL) for
    #             the specified table. A successful <code>UpdateTimeToLive</code> call returns the current
    #                 <code>TimeToLiveSpecification</code>. It can take up to one hour for the change to
    #             fully process. Any additional <code>UpdateTimeToLive</code> calls for the same table
    #             during this one hour duration result in a <code>ValidationException</code>. </p>
    #         <p>TTL compares the current time in epoch time format to the time stored in the TTL
    #             attribute of an item. If the epoch time value stored in the attribute is less than the
    #             current time, the item is marked as expired and subsequently deleted.</p>
    #         <note>
    #             <p> The epoch time format is the number of seconds elapsed since 12:00:00 AM January
    #                 1, 1970 UTC. </p>
    #         </note>
    #         <p>DynamoDB deletes expired items on a best-effort basis to ensure availability of
    #             throughput for other data operations. </p>
    #         <important>
    #             <p>DynamoDB typically deletes expired items within two days of expiration. The exact
    #                 duration within which an item gets deleted after expiration is specific to the
    #                 nature of the workload. Items that have expired and not been deleted will still show
    #                 up in reads, queries, and scans.</p>
    #         </important>
    #         <p>As items are deleted, they are removed from any local secondary index and global
    #             secondary index immediately in the same eventually consistent way as a standard delete
    #             operation.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html">Time To Live</a> in the
    #             Amazon DynamoDB Developer Guide. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTimeToLiveInput}.
    #
    # @option params [String] :table_name
    #   <p>The name of the table to be configured.</p>
    #
    # @option params [TimeToLiveSpecification] :time_to_live_specification
    #   <p>Represents the settings used to enable or disable Time to Live for the specified
    #               table.</p>
    #
    # @return [Types::UpdateTimeToLiveOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_time_to_live(
    #     table_name: 'TableName', # required
    #     time_to_live_specification: {
    #       enabled: false, # required
    #       attribute_name: 'AttributeName' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTimeToLiveOutput
    #   resp.data.time_to_live_specification #=> Types::TimeToLiveSpecification
    #   resp.data.time_to_live_specification.enabled #=> Boolean
    #   resp.data.time_to_live_specification.attribute_name #=> String
    #
    def update_time_to_live(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTimeToLiveInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTimeToLiveInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTimeToLive
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateTimeToLive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTimeToLive,
        stubs: @stubs,
        params_class: Params::UpdateTimeToLiveOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_time_to_live
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
