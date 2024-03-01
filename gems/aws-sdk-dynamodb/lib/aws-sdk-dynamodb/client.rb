# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DynamoDB
  # <fullname>Amazon DynamoDB</fullname>
  #          <p>Amazon DynamoDB is a fully managed NoSQL database service that provides fast
  #             and predictable performance with seamless scalability. DynamoDB lets you
  #             offload the administrative burdens of operating and scaling a distributed database, so
  #             that you don't have to worry about hardware provisioning, setup and configuration,
  #             replication, software patching, or cluster scaling.</p>
  #          <p>With DynamoDB, you can create database tables that can store and retrieve
  #             any amount of data, and serve any level of request traffic. You can scale up or scale
  #             down your tables' throughput capacity without downtime or performance degradation, and
  #             use the Amazon Web Services Management Console to monitor resource utilization and performance
  #             metrics.</p>
  #          <p>DynamoDB automatically spreads the data and traffic for your tables over
  #             a sufficient number of servers to handle your throughput and storage requirements, while
  #             maintaining consistent and fast performance. All of your data is stored on solid state
  #             disks (SSDs) and automatically replicated across multiple Availability Zones in an
  #                 Amazon Web Services Region, providing built-in high availability and data
  #             durability.</p>
  class Client
    include Hearth::ClientStubs

    # @api private
    @plugins = Hearth::PluginList.new

    # @return [Hearth::PluginList]
    def self.plugins
      @plugins
    end

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      @config = initialize_config(options)
      @stubs = Hearth::Stubs.new
    end

    # @return [Config] config
    attr_reader :config

    # <p>This operation allows you to perform batch reads or writes on data stored in DynamoDB,
    #             using PartiQL. Each read statement in a <code>BatchExecuteStatement</code> must specify
    #             an equality condition on all key attributes. This enforces that each <code>SELECT</code>
    #             statement in a batch returns at most a single item.</p>
    #          <note>
    #             <p>The entire batch must consist of either read statements or write statements, you
    #                 cannot mix both in one batch.</p>
    #          </note>
    #          <important>
    #             <p>A HTTP 200 response does not mean that all statements in the BatchExecuteStatement
    #                 succeeded. Error details for individual statements can be found under the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_BatchStatementResponse.html#DDB-Type-BatchStatementResponse-Error">Error</a> field of the <code>BatchStatementResponse</code> for each
    #                 statement.</p>
    #          </important>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::BatchExecuteStatementInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::BatchExecuteStatementOutput]
    # @example Request syntax with placeholder values
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
    #         consistent_read: false,
    #         return_values_on_condition_check_failure: 'ALL_OLD' # accepts ["ALL_OLD", "NONE"]
    #       }
    #     ], # required
    #     return_consumed_capacity: 'INDEXES' # accepts ["INDEXES", "TOTAL", "NONE"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::BatchExecuteStatementOutput
    #   resp.data.responses #=> Array<BatchStatementResponse>
    #   resp.data.responses[0] #=> Types::BatchStatementResponse
    #   resp.data.responses[0].error #=> Types::BatchStatementError
    #   resp.data.responses[0].error.code #=> String, one of ["ConditionalCheckFailed", "ItemCollectionSizeLimitExceeded", "RequestLimitExceeded", "ValidationError", "ProvisionedThroughputExceeded", "TransactionConflict", "ThrottlingError", "InternalServerError", "ResourceNotFound", "AccessDenied", "DuplicateItem"]
    #   resp.data.responses[0].error.message #=> String
    #   resp.data.responses[0].error.item #=> Hash<String, AttributeValue>
    #   resp.data.responses[0].error.item['key'] #=> Types::AttributeValue, one of [S, N, B, Ss, Ns, Bs, M, L, Null, Bool]
    #   resp.data.responses[0].error.item['key'].s #=> String
    #   resp.data.responses[0].error.item['key'].n #=> String
    #   resp.data.responses[0].error.item['key'].b #=> String
    #   resp.data.responses[0].error.item['key'].ss #=> Array<String>
    #   resp.data.responses[0].error.item['key'].ss[0] #=> String
    #   resp.data.responses[0].error.item['key'].ns #=> Array<String>
    #   resp.data.responses[0].error.item['key'].ns[0] #=> String
    #   resp.data.responses[0].error.item['key'].bs #=> Array<String>
    #   resp.data.responses[0].error.item['key'].bs[0] #=> String
    #   resp.data.responses[0].error.item['key'].m #=> Hash<String, AttributeValue>
    #   resp.data.responses[0].error.item['key'].l #=> Array<AttributeValue>
    #   resp.data.responses[0].error.item['key'].null #=> Boolean
    #   resp.data.responses[0].error.item['key'].bool #=> Boolean
    #   resp.data.responses[0].table_name #=> String
    #   resp.data.responses[0].item #=> Hash<String, AttributeValue>
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
    def batch_execute_statement(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchExecuteStatementInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchExecuteStatementInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchExecuteStatement
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :batch_execute_statement),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::BatchExecuteStatement,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::RequestLimitExceeded]
        ),
        data_parser: Parsers::BatchExecuteStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::RequestLimitExceeded],
        stub_data_class: Stubs::BatchExecuteStatement,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :batch_execute_statement,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#batch_execute_statement] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#batch_execute_statement] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#batch_execute_statement] #{output.data}")
      output
    end

    # <p>The <code>BatchGetItem</code> operation returns the attributes of one or more items
    #             from one or more tables. You identify requested items by primary key.</p>
    #          <p>A single operation can retrieve up to 16 MB of data, which can contain as many as 100
    #             items. <code>BatchGetItem</code> returns a partial result if the response size limit is
    #             exceeded, the table's provisioned throughput is exceeded, more than 1MB per partition is requested,
    #             or an internal processing failure occurs. If a partial result is returned, the operation returns a value for
    #                 <code>UnprocessedKeys</code>. You can use this value to retry the operation starting
    #             with the next item to get.</p>
    #          <important>
    #             <p>If you request more than 100 items, <code>BatchGetItem</code> returns a
    #                     <code>ValidationException</code> with the message "Too many items requested for
    #                 the BatchGetItem call."</p>
    #          </important>
    #          <p>For example, if you ask to retrieve 100 items, but each individual item is 300 KB in
    #             size, the system returns 52 items (so as not to exceed the 16 MB limit). It also returns
    #             an appropriate <code>UnprocessedKeys</code> value so you can get the next page of
    #             results. If desired, your application can include its own logic to assemble the pages of
    #             results into one dataset.</p>
    #          <p>If <i>none</i> of the items can be processed due to insufficient
    #             provisioned throughput on all of the tables in the request, then
    #                 <code>BatchGetItem</code> returns a
    #                 <code>ProvisionedThroughputExceededException</code>. If <i>at least
    #                 one</i> of the items is successfully processed, then
    #                 <code>BatchGetItem</code> completes successfully, while returning the keys of the
    #             unread items in <code>UnprocessedKeys</code>.</p>
    #          <important>
    #             <p>If DynamoDB returns any unprocessed items, you should retry the batch operation on
    #                 those items. However, <i>we strongly recommend that you use an exponential
    #                     backoff algorithm</i>. If you retry the batch operation immediately, the
    #                 underlying read or write requests can still fail due to throttling on the individual
    #                 tables. If you delay the batch operation using exponential backoff, the individual
    #                 requests in the batch are much more likely to succeed.</p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations">Batch Operations and Error Handling</a> in the <i>Amazon DynamoDB
    #                     Developer Guide</i>.</p>
    #          </important>
    #          <p>By default, <code>BatchGetItem</code> performs eventually consistent reads on every
    #             table in the request. If you want strongly consistent reads instead, you can set
    #                 <code>ConsistentRead</code> to <code>true</code> for any or all tables.</p>
    #          <p>In order to minimize response latency, <code>BatchGetItem</code> may retrieve items in
    #             parallel.</p>
    #          <p>When designing your application, keep in mind that DynamoDB does not return items in
    #             any particular order. To help parse the response by item, include the primary key values
    #             for the items in your request in the <code>ProjectionExpression</code> parameter.</p>
    #          <p>If a requested item does not exist, it is not returned in the result. Requests for
    #             nonexistent items consume the minimum read capacity units according to the type of read.
    #             For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations">Working with Tables</a> in the <i>Amazon DynamoDB Developer
    #                 Guide</i>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::BatchGetItemInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::BatchGetItemOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    # @example To retrieve multiple items from a table
    #   # This example reads multiple items from the Music table using a batch of three GetItem requests.  Only the AlbumTitle attribute is returned.
    #   resp = client.batch_get_item({
    #     request_items: {
    #       'Music' => {
    #         keys: [
    #           {
    #             'Artist' => {
    #               s: "No One You Know"
    #             },
    #             'SongTitle' => {
    #               s: "Call Me Today"
    #             }
    #           },
    #           {
    #             'Artist' => {
    #               s: "Acme Band"
    #             },
    #             'SongTitle' => {
    #               s: "Happy Day"
    #             }
    #           },
    #           {
    #             'Artist' => {
    #               s: "No One You Know"
    #             },
    #             'SongTitle' => {
    #               s: "Scared of My Shadow"
    #             }
    #           }
    #         ],
    #         projection_expression: "AlbumTitle"
    #       }
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     responses: {
    #       'Music' => [
    #         {
    #           'AlbumTitle' => {
    #             s: "Somewhat Famous"
    #           }
    #         },
    #         {
    #           'AlbumTitle' => {
    #             s: "Blue Sky Blues"
    #           }
    #         },
    #         {
    #           'AlbumTitle' => {
    #             s: "Louder Than Ever"
    #           }
    #         }
    #       ]
    #     }
    #   }
    def batch_get_item(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetItemInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetItemInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetItem
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :batch_get_item),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::BatchGetItem,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]
        ),
        data_parser: Parsers::BatchGetItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
        stub_data_class: Stubs::BatchGetItem,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :batch_get_item,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#batch_get_item] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#batch_get_item] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#batch_get_item] #{output.data}")
      output
    end

    # <p>The <code>BatchWriteItem</code> operation puts or deletes multiple items in one or
    #             more tables. A single call to <code>BatchWriteItem</code> can transmit up to 16MB of
    #             data over the network, consisting of up to 25 item put or delete operations. While
    #             individual items can be up to 400 KB once stored, it's important to note that an item's
    #             representation might be greater than 400KB while being sent in DynamoDB's JSON format
    #             for the API call. For more details on this distinction, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html">Naming Rules and Data Types</a>.</p>
    #          <note>
    #             <p>
    #                <code>BatchWriteItem</code> cannot update items. If you perform a <code>BatchWriteItem</code>
    #                 operation on an existing item, that item's values will be overwritten by the
    #                 operation and it will appear like it was updated. To update items, we recommend you
    #                 use the <code>UpdateItem</code> action.</p>
    #          </note>
    #          <p>The individual <code>PutItem</code> and <code>DeleteItem</code> operations specified
    #             in <code>BatchWriteItem</code> are atomic; however <code>BatchWriteItem</code> as a
    #             whole is not. If any requested operations fail because the table's provisioned
    #             throughput is exceeded or an internal processing failure occurs, the failed operations
    #             are returned in the <code>UnprocessedItems</code> response parameter. You can
    #             investigate and optionally resend the requests. Typically, you would call
    #                 <code>BatchWriteItem</code> in a loop. Each iteration would check for unprocessed
    #             items and submit a new <code>BatchWriteItem</code> request with those unprocessed items
    #             until all items have been processed.</p>
    #          <p>If <i>none</i> of the items can be processed due to insufficient
    #             provisioned throughput on all of the tables in the request, then
    #                 <code>BatchWriteItem</code> returns a
    #                 <code>ProvisionedThroughputExceededException</code>.</p>
    #          <important>
    #             <p>If DynamoDB returns any unprocessed items, you should retry the batch operation on
    #                 those items. However, <i>we strongly recommend that you use an exponential
    #                     backoff algorithm</i>. If you retry the batch operation immediately, the
    #                 underlying read or write requests can still fail due to throttling on the individual
    #                 tables. If you delay the batch operation using exponential backoff, the individual
    #                 requests in the batch are much more likely to succeed.</p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#Programming.Errors.BatchOperations">Batch Operations and Error Handling</a> in the <i>Amazon DynamoDB
    #                     Developer Guide</i>.</p>
    #          </important>
    #          <p>With <code>BatchWriteItem</code>, you can efficiently write or delete large amounts of
    #             data, such as from Amazon EMR, or copy data from another database into DynamoDB. In
    #             order to improve performance with these large-scale operations,
    #                 <code>BatchWriteItem</code> does not behave in the same way as individual
    #                 <code>PutItem</code> and <code>DeleteItem</code> calls would. For example, you
    #             cannot specify conditions on individual put and delete requests, and
    #                 <code>BatchWriteItem</code> does not return deleted items in the response.</p>
    #          <p>If you use a programming language that supports concurrency, you can use threads to
    #             write items in parallel. Your application must include the necessary logic to manage the
    #             threads. With languages that don't support threading, you must update or delete the
    #             specified items one at a time. In both situations, <code>BatchWriteItem</code> performs
    #             the specified put and delete operations in parallel, giving you the power of the thread
    #             pool approach without having to introduce complexity into your application.</p>
    #          <p>Parallel processing reduces latency, but each specified put and delete request
    #             consumes the same number of write capacity units whether it is processed in parallel or
    #             not. Delete operations on nonexistent items consume one write capacity unit.</p>
    #          <p>If one or more of the following is true, DynamoDB rejects the entire batch write
    #             operation:</p>
    #          <ul>
    #             <li>
    #                <p>One or more tables specified in the <code>BatchWriteItem</code> request does
    #                     not exist.</p>
    #             </li>
    #             <li>
    #                <p>Primary key attributes specified on an item in the request do not match those
    #                     in the corresponding table's primary key schema.</p>
    #             </li>
    #             <li>
    #                <p>You try to perform multiple operations on the same item in the same
    #                         <code>BatchWriteItem</code> request. For example, you cannot put and delete
    #                     the same item in the same <code>BatchWriteItem</code> request. </p>
    #             </li>
    #             <li>
    #                <p> Your request contains at least two items with identical hash and range keys
    #                     (which essentially is two put operations). </p>
    #             </li>
    #             <li>
    #                <p>There are more than 25 requests in the batch.</p>
    #             </li>
    #             <li>
    #                <p>Any individual item in a batch exceeds 400 KB.</p>
    #             </li>
    #             <li>
    #                <p>The total request size exceeds 16 MB.</p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::BatchWriteItemInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::BatchWriteItemOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    # @example To add multiple items to a table
    #   # This example adds three new items to the Music table using a batch of three PutItem requests.
    #   resp = client.batch_write_item({
    #     request_items: {
    #       'Music' => [
    #         {
    #           put_request: {
    #             item: {
    #               'AlbumTitle' => {
    #                 s: "Somewhat Famous"
    #               },
    #               'SongTitle' => {
    #                 s: "Call Me Today"
    #               },
    #               'Artist' => {
    #                 s: "No One You Know"
    #               }
    #             }
    #           }
    #         },
    #         {
    #           put_request: {
    #             item: {
    #               'AlbumTitle' => {
    #                 s: "Songs About Life"
    #               },
    #               'SongTitle' => {
    #                 s: "Happy Day"
    #               },
    #               'Artist' => {
    #                 s: "Acme Band"
    #               }
    #             }
    #           }
    #         },
    #         {
    #           put_request: {
    #             item: {
    #               'AlbumTitle' => {
    #                 s: "Blue Sky Blues"
    #               },
    #               'SongTitle' => {
    #                 s: "Scared of My Shadow"
    #               },
    #               'Artist' => {
    #                 s: "No One You Know"
    #               }
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #
    #   }
    def batch_write_item(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchWriteItemInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchWriteItemInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchWriteItem
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :batch_write_item),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::BatchWriteItem,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]
        ),
        data_parser: Parsers::BatchWriteItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
        stub_data_class: Stubs::BatchWriteItem,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :batch_write_item,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#batch_write_item] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#batch_write_item] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#batch_write_item] #{output.data}")
      output
    end

    # <p>Creates a backup for an existing table.</p>
    #          <p> Each time you create an on-demand backup, the entire table data is backed up. There
    #             is no limit to the number of on-demand backups that can be taken. </p>
    #          <p> When you create an on-demand backup, a time marker of the request is cataloged, and
    #             the backup is created asynchronously, by applying all changes until the time of the
    #             request to the last full table snapshot. Backup requests are processed instantaneously
    #             and become available for restore within minutes. </p>
    #          <p>You can call <code>CreateBackup</code> at a maximum rate of 50 times per
    #             second.</p>
    #          <p>All backups in DynamoDB work without consuming any provisioned throughput on the
    #             table.</p>
    #          <p> If you submit a backup request on 2018-12-14 at 14:25:00, the backup is guaranteed to
    #             contain all data committed to the table up to 14:24:00, and data committed after
    #             14:26:00 will not be. The backup might contain data modifications made between 14:24:00
    #             and 14:26:00. On-demand backup does not support causal consistency. </p>
    #          <p> Along with data, the following are also included on the backups: </p>
    #          <ul>
    #             <li>
    #                <p>Global secondary indexes (GSIs)</p>
    #             </li>
    #             <li>
    #                <p>Local secondary indexes (LSIs)</p>
    #             </li>
    #             <li>
    #                <p>Streams</p>
    #             </li>
    #             <li>
    #                <p>Provisioned read and write capacity</p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::CreateBackupInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::CreateBackupOutput]
    # @example Request syntax with placeholder values
    #   resp = client.create_backup(
    #     table_name: 'TableName', # required
    #     backup_name: 'BackupName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateBackupOutput
    #   resp.data.backup_details #=> Types::BackupDetails
    #   resp.data.backup_details.backup_arn #=> String
    #   resp.data.backup_details.backup_name #=> String
    #   resp.data.backup_details.backup_size_bytes #=> Integer
    #   resp.data.backup_details.backup_status #=> String, one of ["CREATING", "DELETED", "AVAILABLE"]
    #   resp.data.backup_details.backup_type #=> String, one of ["USER", "SYSTEM", "AWS_BACKUP"]
    #   resp.data.backup_details.backup_creation_date_time #=> Time
    #   resp.data.backup_details.backup_expiry_date_time #=> Time
    def create_backup(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackupInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackupInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackup
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :create_backup),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::CreateBackup,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::TableInUseException, Errors::BackupInUseException, Errors::TableNotFoundException, Errors::ContinuousBackupsUnavailableException]
        ),
        data_parser: Parsers::CreateBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::TableInUseException, Stubs::BackupInUseException, Stubs::TableNotFoundException, Stubs::ContinuousBackupsUnavailableException],
        stub_data_class: Stubs::CreateBackup,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :create_backup,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#create_backup] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#create_backup] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#create_backup] #{output.data}")
      output
    end

    # <p>Creates a global table from an existing table. A global table creates a replication
    #             relationship between two or more DynamoDB tables with the same table name in the
    #             provided Regions. </p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                 2017.11.29 (Legacy)</a> of global tables. We recommend using
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                 when creating new global tables, as it provides greater flexibility, higher efficiency and consumes less write capacity than
    #                 2017.11.29 (Legacy). To determine which version you are using, see
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the version</a>.
    #                 To update existing global tables from version 2017.11.29 (Legacy) to version
    #                 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">
    #                     Updating global tables</a>.
    #             </p>
    #          </important>
    #          <p>If you want to add a new replica table to a global table, each of the following
    #             conditions must be true:</p>
    #          <ul>
    #             <li>
    #                <p>The table must have the same primary key as all of the other replicas.</p>
    #             </li>
    #             <li>
    #                <p>The table must have the same name as all of the other replicas.</p>
    #             </li>
    #             <li>
    #                <p>The table must have DynamoDB Streams enabled, with the stream containing both
    #                     the new and the old images of the item.</p>
    #             </li>
    #             <li>
    #                <p>None of the replica tables in the global table can contain any data.</p>
    #             </li>
    #          </ul>
    #          <p> If global secondary indexes are specified, then the following conditions must also be
    #             met: </p>
    #          <ul>
    #             <li>
    #                <p> The global secondary indexes must have the same name. </p>
    #             </li>
    #             <li>
    #                <p> The global secondary indexes must have the same hash key and sort key (if
    #                     present). </p>
    #             </li>
    #          </ul>
    #          <p> If local secondary indexes are specified, then the following conditions must also be
    #             met: </p>
    #          <ul>
    #             <li>
    #                <p> The local secondary indexes must have the same name. </p>
    #             </li>
    #             <li>
    #                <p> The local secondary indexes must have the same hash key and sort key (if
    #                     present). </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p> Write capacity settings should be set consistently across your replica tables and
    #                 secondary indexes. DynamoDB strongly recommends enabling auto scaling to manage the
    #                 write capacity settings for all of your global tables replicas and indexes. </p>
    #             <p> If you prefer to manage write capacity settings manually, you should provision
    #                 equal replicated write capacity units to your replica tables. You should also
    #                 provision equal replicated write capacity units to matching secondary indexes across
    #                 your global table. </p>
    #          </important>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::CreateGlobalTableInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::CreateGlobalTableOutput]
    # @example Request syntax with placeholder values
    #   resp = client.create_global_table(
    #     global_table_name: 'GlobalTableName', # required
    #     replication_group: [
    #       {
    #         region_name: 'RegionName'
    #       }
    #     ] # required
    #   )
    # @example Response structure
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
    def create_global_table(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGlobalTableInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGlobalTableInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGlobalTable
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :create_global_table),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::CreateGlobalTable,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::TableNotFoundException, Errors::GlobalTableAlreadyExistsException]
        ),
        data_parser: Parsers::CreateGlobalTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::TableNotFoundException, Stubs::GlobalTableAlreadyExistsException],
        stub_data_class: Stubs::CreateGlobalTable,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :create_global_table,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#create_global_table] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#create_global_table] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#create_global_table] #{output.data}")
      output
    end

    # <p>The <code>CreateTable</code> operation adds a new table to your account. In an Amazon Web Services account, table names must be unique within each Region. That is, you can
    #             have two tables with same name if you create the tables in different Regions.</p>
    #          <p>
    #             <code>CreateTable</code> is an asynchronous operation. Upon receiving a
    #                 <code>CreateTable</code> request, DynamoDB immediately returns a response with a
    #                 <code>TableStatus</code> of <code>CREATING</code>. After the table is created,
    #             DynamoDB sets the <code>TableStatus</code> to <code>ACTIVE</code>. You can perform read
    #             and write operations only on an <code>ACTIVE</code> table. </p>
    #          <p>You can optionally define secondary indexes on the new table, as part of the
    #                 <code>CreateTable</code> operation. If you want to create multiple tables with
    #             secondary indexes on them, you must create the tables sequentially. Only one table with
    #             secondary indexes can be in the <code>CREATING</code> state at any given time.</p>
    #          <p>You can use the <code>DescribeTable</code> action to check the table status.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::CreateTableInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::CreateTableOutput]
    # @example Request syntax with placeholder values
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
    #     table_class: 'STANDARD', # accepts ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #     deletion_protection_enabled: false
    #   )
    # @example Response structure
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
    #   resp.data.table_description.deletion_protection_enabled #=> Boolean
    def create_table(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTableInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTableInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTable
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :create_table),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::CreateTable,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException]
        ),
        data_parser: Parsers::CreateTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
        stub_data_class: Stubs::CreateTable,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :create_table,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#create_table] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#create_table] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#create_table] #{output.data}")
      output
    end

    # <p>Deletes an existing backup of a table.</p>
    #          <p>You can call <code>DeleteBackup</code> at a maximum rate of 10 times per
    #             second.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBackupInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DeleteBackupOutput]
    # @example Request syntax with placeholder values
    #   resp = client.delete_backup(
    #     backup_arn: 'BackupArn' # required
    #   )
    # @example Response structure
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
    def delete_backup(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackupInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackupInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackup
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :delete_backup),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DeleteBackup,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::BackupNotFoundException, Errors::LimitExceededException, Errors::BackupInUseException]
        ),
        data_parser: Parsers::DeleteBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::BackupNotFoundException, Stubs::LimitExceededException, Stubs::BackupInUseException],
        stub_data_class: Stubs::DeleteBackup,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :delete_backup,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_backup] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#delete_backup] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_backup] #{output.data}")
      output
    end

    # <p>Deletes a single item in a table by primary key. You can perform a conditional delete
    #             operation that deletes the item if it exists, or if it has an expected attribute
    #             value.</p>
    #          <p>In addition to deleting an item, you can also return the item's attribute values in
    #             the same operation, using the <code>ReturnValues</code> parameter.</p>
    #          <p>Unless you specify conditions, the <code>DeleteItem</code> is an idempotent operation;
    #             running it multiple times on the same item or attribute does <i>not</i>
    #             result in an error response.</p>
    #          <p>Conditional deletes are useful for deleting items only if specific conditions are met.
    #             If those conditions are met, DynamoDB performs the delete. Otherwise, the item is not
    #             deleted.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DeleteItemInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DeleteItemOutput]
    # @example Request syntax with placeholder values
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
    #     return_values_on_condition_check_failure: 'ALL_OLD' # accepts ["ALL_OLD", "NONE"]
    #   )
    # @example Response structure
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
    # @example To delete an item
    #   # This example deletes an item from the Music table.
    #   resp = client.delete_item({
    #     table_name: "Music",
    #     key: {
    #       'Artist' => {
    #         s: "No One You Know"
    #       },
    #       'SongTitle' => {
    #         s: "Scared of My Shadow"
    #       }
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     consumed_capacity: {
    #       capacity_units: 1,
    #       table_name: "Music"
    #     }
    #   }
    def delete_item(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteItemInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteItemInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteItem
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :delete_item),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DeleteItem,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]
        ),
        data_parser: Parsers::DeleteItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
        stub_data_class: Stubs::DeleteItem,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :delete_item,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_item] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#delete_item] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_item] #{output.data}")
      output
    end

    # <p>The <code>DeleteTable</code> operation deletes a table and all of its items. After a
    #                 <code>DeleteTable</code> request, the specified table is in the
    #                 <code>DELETING</code> state until DynamoDB completes the deletion. If the table is
    #             in the <code>ACTIVE</code> state, you can delete it. If a table is in
    #                 <code>CREATING</code> or <code>UPDATING</code> states, then DynamoDB returns a
    #                 <code>ResourceInUseException</code>. If the specified table does not exist, DynamoDB
    #             returns a <code>ResourceNotFoundException</code>. If table is already in the
    #                 <code>DELETING</code> state, no error is returned. </p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                 of global tables.
    #             </p>
    #          </important>
    #          <note>
    #             <p>DynamoDB might continue to accept data read and write operations, such as
    #                     <code>GetItem</code> and <code>PutItem</code>, on a table in the
    #                     <code>DELETING</code> state until the table deletion is complete.</p>
    #          </note>
    #          <p>When you delete a table, any indexes on that table are also deleted.</p>
    #          <p>If you have DynamoDB Streams enabled on the table, then the corresponding stream on
    #             that table goes into the <code>DISABLED</code> state, and the stream is automatically
    #             deleted after 24 hours.</p>
    #          <p>Use the <code>DescribeTable</code> action to check the status of the table. </p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DeleteTableInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DeleteTableOutput]
    # @example Request syntax with placeholder values
    #   resp = client.delete_table(
    #     table_name: 'TableName' # required
    #   )
    # @example Response structure
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
    #   resp.data.table_description.deletion_protection_enabled #=> Boolean
    # @example To delete a table
    #   # This example deletes the Music table.
    #   resp = client.delete_table({
    #     table_name: "Music"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     table_description: {
    #       table_status: "DELETING",
    #       table_size_bytes: 0,
    #       item_count: 0,
    #       table_name: "Music",
    #       provisioned_throughput: {
    #         number_of_decreases_today: 1,
    #         write_capacity_units: 5,
    #         read_capacity_units: 5
    #       }
    #     }
    #   }
    def delete_table(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTableInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTableInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTable
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :delete_table),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DeleteTable,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]
        ),
        data_parser: Parsers::DeleteTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
        stub_data_class: Stubs::DeleteTable,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :delete_table,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_table] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#delete_table] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_table] #{output.data}")
      output
    end

    # <p>Describes an existing backup of a table.</p>
    #          <p>You can call <code>DescribeBackup</code> at a maximum rate of 10 times per
    #             second.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeBackupInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeBackupOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_backup(
    #     backup_arn: 'BackupArn' # required
    #   )
    # @example Response structure
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
    def describe_backup(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBackupInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBackupInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBackup
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_backup),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeBackup,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::BackupNotFoundException]
        ),
        data_parser: Parsers::DescribeBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::BackupNotFoundException],
        stub_data_class: Stubs::DescribeBackup,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_backup,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_backup] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_backup] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_backup] #{output.data}")
      output
    end

    # <p>Checks the status of continuous backups and point in time recovery on the specified
    #             table. Continuous backups are <code>ENABLED</code> on all tables at table creation. If
    #             point in time recovery is enabled, <code>PointInTimeRecoveryStatus</code> will be set to
    #             ENABLED.</p>
    #          <p> After continuous backups and point in time recovery are enabled, you can restore to
    #             any point in time within <code>EarliestRestorableDateTime</code> and
    #                 <code>LatestRestorableDateTime</code>. </p>
    #          <p>
    #             <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time.
    #             You can restore your table to any point in time during the last 35 days. </p>
    #          <p>You can call <code>DescribeContinuousBackups</code> at a maximum rate of 10 times per
    #             second.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeContinuousBackupsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeContinuousBackupsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_continuous_backups(
    #     table_name: 'TableName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeContinuousBackupsOutput
    #   resp.data.continuous_backups_description #=> Types::ContinuousBackupsDescription
    #   resp.data.continuous_backups_description.continuous_backups_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.continuous_backups_description.point_in_time_recovery_description #=> Types::PointInTimeRecoveryDescription
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.point_in_time_recovery_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.earliest_restorable_date_time #=> Time
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.latest_restorable_date_time #=> Time
    def describe_continuous_backups(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContinuousBackupsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContinuousBackupsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContinuousBackups
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_continuous_backups),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeContinuousBackups,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::TableNotFoundException]
        ),
        data_parser: Parsers::DescribeContinuousBackups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::TableNotFoundException],
        stub_data_class: Stubs::DescribeContinuousBackups,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_continuous_backups,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_continuous_backups] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_continuous_backups] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_continuous_backups] #{output.data}")
      output
    end

    # <p>Returns information about contributor insights for a given table or global secondary
    #             index.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeContributorInsightsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeContributorInsightsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_contributor_insights(
    #     table_name: 'TableName', # required
    #     index_name: 'IndexName'
    #   )
    # @example Response structure
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
    def describe_contributor_insights(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContributorInsightsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContributorInsightsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContributorInsights
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_contributor_insights),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeContributorInsights,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::DescribeContributorInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::DescribeContributorInsights,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_contributor_insights,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_contributor_insights] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_contributor_insights] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_contributor_insights] #{output.data}")
      output
    end

    # <p>Returns the regional endpoint information. For more information
    #             on policy permissions, please see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/inter-network-traffic-privacy.html#inter-network-traffic-DescribeEndpoints">Internetwork traffic privacy</a>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeEndpointsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeEndpointsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_endpoints()
    # @example Response structure
    #   resp.data #=> Types::DescribeEndpointsOutput
    #   resp.data.endpoints #=> Array<Endpoint>
    #   resp.data.endpoints[0] #=> Types::Endpoint
    #   resp.data.endpoints[0].address #=> String
    #   resp.data.endpoints[0].cache_period_in_minutes #=> Integer
    def describe_endpoints(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpoints
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_endpoints),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeEndpoints,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: []
        ),
        data_parser: Parsers::DescribeEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [],
        stub_data_class: Stubs::DescribeEndpoints,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_endpoints,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_endpoints] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_endpoints] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_endpoints] #{output.data}")
      output
    end

    # <p>Describes an existing table export.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeExportInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeExportOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_export(
    #     export_arn: 'ExportArn' # required
    #   )
    # @example Response structure
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
    #   resp.data.export_description.export_type #=> String, one of ["FULL_EXPORT", "INCREMENTAL_EXPORT"]
    #   resp.data.export_description.incremental_export_specification #=> Types::IncrementalExportSpecification
    #   resp.data.export_description.incremental_export_specification.export_from_time #=> Time
    #   resp.data.export_description.incremental_export_specification.export_to_time #=> Time
    #   resp.data.export_description.incremental_export_specification.export_view_type #=> String, one of ["NEW_IMAGE", "NEW_AND_OLD_IMAGES"]
    def describe_export(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExportInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExportInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExport
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_export),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeExport,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::LimitExceededException, Errors::ExportNotFoundException]
        ),
        data_parser: Parsers::DescribeExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::LimitExceededException, Stubs::ExportNotFoundException],
        stub_data_class: Stubs::DescribeExport,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_export,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_export] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_export] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_export] #{output.data}")
      output
    end

    # <p>Returns information about the specified global table.</p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                 2017.11.29 (Legacy)</a> of global tables. We recommend using
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                 when creating new global tables, as it provides greater flexibility, higher efficiency and consumes less write capacity than
    #                 2017.11.29 (Legacy). To determine which version you are using, see
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the version</a>.
    #                 To update existing global tables from version 2017.11.29 (Legacy) to version
    #                 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">
    #                     Updating global tables</a>.
    #             </p>
    #          </important>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeGlobalTableInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeGlobalTableOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_global_table(
    #     global_table_name: 'GlobalTableName' # required
    #   )
    # @example Response structure
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
    def describe_global_table(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGlobalTableInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGlobalTableInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGlobalTable
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_global_table),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeGlobalTable,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::GlobalTableNotFoundException]
        ),
        data_parser: Parsers::DescribeGlobalTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::GlobalTableNotFoundException],
        stub_data_class: Stubs::DescribeGlobalTable,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_global_table,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_global_table] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_global_table] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_global_table] #{output.data}")
      output
    end

    # <p>Describes Region-specific settings for a global table.</p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                 2017.11.29 (Legacy)</a> of global tables. We recommend using
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                 when creating new global tables, as it provides greater flexibility, higher efficiency and consumes less write capacity than
    #                 2017.11.29 (Legacy). To determine which version you are using, see
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the version</a>.
    #                 To update existing global tables from version 2017.11.29 (Legacy) to version
    #                 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">
    #                     Updating global tables</a>.
    #             </p>
    #          </important>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeGlobalTableSettingsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeGlobalTableSettingsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_global_table_settings(
    #     global_table_name: 'GlobalTableName' # required
    #   )
    # @example Response structure
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
    def describe_global_table_settings(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGlobalTableSettingsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGlobalTableSettingsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGlobalTableSettings
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_global_table_settings),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeGlobalTableSettings,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::GlobalTableNotFoundException]
        ),
        data_parser: Parsers::DescribeGlobalTableSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::GlobalTableNotFoundException],
        stub_data_class: Stubs::DescribeGlobalTableSettings,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_global_table_settings,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_global_table_settings] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_global_table_settings] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_global_table_settings] #{output.data}")
      output
    end

    # <p> Represents the properties of the import. </p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeImportInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeImportOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_import(
    #     import_arn: 'ImportArn' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeImportOutput
    #   resp.data.import_table_description #=> Types::ImportTableDescription
    #   resp.data.import_table_description.import_arn #=> String
    #   resp.data.import_table_description.import_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"]
    #   resp.data.import_table_description.table_arn #=> String
    #   resp.data.import_table_description.table_id #=> String
    #   resp.data.import_table_description.client_token #=> String
    #   resp.data.import_table_description.s3_bucket_source #=> Types::S3BucketSource
    #   resp.data.import_table_description.s3_bucket_source.s3_bucket_owner #=> String
    #   resp.data.import_table_description.s3_bucket_source.s3_bucket #=> String
    #   resp.data.import_table_description.s3_bucket_source.s3_key_prefix #=> String
    #   resp.data.import_table_description.error_count #=> Integer
    #   resp.data.import_table_description.cloud_watch_log_group_arn #=> String
    #   resp.data.import_table_description.input_format #=> String, one of ["DYNAMODB_JSON", "ION", "CSV"]
    #   resp.data.import_table_description.input_format_options #=> Types::InputFormatOptions
    #   resp.data.import_table_description.input_format_options.csv #=> Types::CsvOptions
    #   resp.data.import_table_description.input_format_options.csv.delimiter #=> String
    #   resp.data.import_table_description.input_format_options.csv.header_list #=> Array<String>
    #   resp.data.import_table_description.input_format_options.csv.header_list[0] #=> String
    #   resp.data.import_table_description.input_compression_type #=> String, one of ["GZIP", "ZSTD", "NONE"]
    #   resp.data.import_table_description.table_creation_parameters #=> Types::TableCreationParameters
    #   resp.data.import_table_description.table_creation_parameters.table_name #=> String
    #   resp.data.import_table_description.table_creation_parameters.attribute_definitions #=> Array<AttributeDefinition>
    #   resp.data.import_table_description.table_creation_parameters.attribute_definitions[0] #=> Types::AttributeDefinition
    #   resp.data.import_table_description.table_creation_parameters.attribute_definitions[0].attribute_name #=> String
    #   resp.data.import_table_description.table_creation_parameters.attribute_definitions[0].attribute_type #=> String, one of ["S", "N", "B"]
    #   resp.data.import_table_description.table_creation_parameters.key_schema #=> Array<KeySchemaElement>
    #   resp.data.import_table_description.table_creation_parameters.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.import_table_description.table_creation_parameters.key_schema[0].attribute_name #=> String
    #   resp.data.import_table_description.table_creation_parameters.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.import_table_description.table_creation_parameters.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.import_table_description.table_creation_parameters.provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.import_table_description.table_creation_parameters.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.import_table_description.table_creation_parameters.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.import_table_description.table_creation_parameters.sse_specification #=> Types::SSESpecification
    #   resp.data.import_table_description.table_creation_parameters.sse_specification.enabled #=> Boolean
    #   resp.data.import_table_description.table_creation_parameters.sse_specification.sse_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.import_table_description.table_creation_parameters.sse_specification.kms_master_key_id #=> String
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes #=> Array<GlobalSecondaryIndex>
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0] #=> Types::GlobalSecondaryIndex
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].index_name #=> String
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.projection_type #=> String, one of ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.import_table_description.start_time #=> Time
    #   resp.data.import_table_description.end_time #=> Time
    #   resp.data.import_table_description.processed_size_bytes #=> Integer
    #   resp.data.import_table_description.processed_item_count #=> Integer
    #   resp.data.import_table_description.imported_item_count #=> Integer
    #   resp.data.import_table_description.failure_code #=> String
    #   resp.data.import_table_description.failure_message #=> String
    def describe_import(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImportInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImportInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImport
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_import),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeImport,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::ImportNotFoundException]
        ),
        data_parser: Parsers::DescribeImport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::ImportNotFoundException],
        stub_data_class: Stubs::DescribeImport,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_import,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_import] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_import] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_import] #{output.data}")
      output
    end

    # <p>Returns information about the status of Kinesis streaming.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeKinesisStreamingDestinationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeKinesisStreamingDestinationOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_kinesis_streaming_destination(
    #     table_name: 'TableName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeKinesisStreamingDestinationOutput
    #   resp.data.table_name #=> String
    #   resp.data.kinesis_data_stream_destinations #=> Array<KinesisDataStreamDestination>
    #   resp.data.kinesis_data_stream_destinations[0] #=> Types::KinesisDataStreamDestination
    #   resp.data.kinesis_data_stream_destinations[0].stream_arn #=> String
    #   resp.data.kinesis_data_stream_destinations[0].destination_status #=> String, one of ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"]
    #   resp.data.kinesis_data_stream_destinations[0].destination_status_description #=> String
    #   resp.data.kinesis_data_stream_destinations[0].approximate_creation_date_time_precision #=> String, one of ["MILLISECOND", "MICROSECOND"]
    def describe_kinesis_streaming_destination(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeKinesisStreamingDestinationInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeKinesisStreamingDestinationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeKinesisStreamingDestination
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_kinesis_streaming_destination),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeKinesisStreamingDestination,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::DescribeKinesisStreamingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::DescribeKinesisStreamingDestination,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_kinesis_streaming_destination,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_kinesis_streaming_destination] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_kinesis_streaming_destination] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_kinesis_streaming_destination] #{output.data}")
      output
    end

    # <p>Returns the current provisioned-capacity quotas for your Amazon Web Services account in
    #             a Region, both for the Region as a whole and for any one DynamoDB table that you create
    #             there.</p>
    #          <p>When you establish an Amazon Web Services account, the account has initial quotas on
    #             the maximum read capacity units and write capacity units that you can provision across
    #             all of your DynamoDB tables in a given Region. Also, there are per-table
    #             quotas that apply when you create a table there. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                 Account, and Table Quotas</a> page in the <i>Amazon DynamoDB
    #                 Developer Guide</i>.</p>
    #          <p>Although you can increase these quotas by filing a case at <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support Center</a>, obtaining the
    #             increase is not instantaneous. The <code>DescribeLimits</code> action lets you write
    #             code to compare the capacity you are currently using to those quotas imposed by your
    #             account so that you have enough time to apply for an increase before you hit a
    #             quota.</p>
    #          <p>For example, you could use one of the Amazon Web Services SDKs to do the
    #             following:</p>
    #          <ol>
    #             <li>
    #                <p>Call <code>DescribeLimits</code> for a particular Region to obtain your
    #                     current account quotas on provisioned capacity there.</p>
    #             </li>
    #             <li>
    #                <p>Create a variable to hold the aggregate read capacity units provisioned for
    #                     all your tables in that Region, and one to hold the aggregate write capacity
    #                     units. Zero them both.</p>
    #             </li>
    #             <li>
    #                <p>Call <code>ListTables</code> to obtain a list of all your DynamoDB
    #                     tables.</p>
    #             </li>
    #             <li>
    #                <p>For each table name listed by <code>ListTables</code>, do the
    #                     following:</p>
    #                <ul>
    #                   <li>
    #                      <p>Call <code>DescribeTable</code> with the table name.</p>
    #                   </li>
    #                   <li>
    #                      <p>Use the data returned by <code>DescribeTable</code> to add the read
    #                             capacity units and write capacity units provisioned for the table itself
    #                             to your variables.</p>
    #                   </li>
    #                   <li>
    #                      <p>If the table has one or more global secondary indexes (GSIs), loop
    #                             over these GSIs and add their provisioned capacity values to your
    #                             variables as well.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Report the account quotas for that Region returned by
    #                         <code>DescribeLimits</code>, along with the total current provisioned
    #                     capacity levels you have calculated.</p>
    #             </li>
    #          </ol>
    #          <p>This will let you see whether you are getting close to your account-level
    #             quotas.</p>
    #          <p>The per-table quotas apply only when you are creating a new table. They restrict the
    #             sum of the provisioned capacity of the new table itself and all its global secondary
    #             indexes.</p>
    #          <p>For existing tables and their GSIs, DynamoDB doesn't let you increase provisioned
    #             capacity extremely rapidly, but the only quota that applies is that the aggregate
    #             provisioned capacity over all your tables and GSIs cannot exceed either of the
    #             per-account quotas.</p>
    #          <note>
    #             <p>
    #                <code>DescribeLimits</code> should only be called periodically. You can expect
    #                 throttling errors if you call it more than once in a minute.</p>
    #          </note>
    #          <p>The <code>DescribeLimits</code> Request element has no content.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeLimitsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeLimitsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_limits()
    # @example Response structure
    #   resp.data #=> Types::DescribeLimitsOutput
    #   resp.data.account_max_read_capacity_units #=> Integer
    #   resp.data.account_max_write_capacity_units #=> Integer
    #   resp.data.table_max_read_capacity_units #=> Integer
    #   resp.data.table_max_write_capacity_units #=> Integer
    # @example To determine capacity limits per table and account, in the current AWS region
    #   resp = client.describe_limits()
    #
    #   # resp.to_h outputs the following:
    #   {
    #     table_max_write_capacity_units: 10000,
    #     table_max_read_capacity_units: 10000,
    #     account_max_read_capacity_units: 20000,
    #     account_max_write_capacity_units: 20000
    #   }
    def describe_limits(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLimitsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLimitsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLimits
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_limits),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeLimits,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException]
        ),
        data_parser: Parsers::DescribeLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
        stub_data_class: Stubs::DescribeLimits,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_limits,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_limits] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_limits] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_limits] #{output.data}")
      output
    end

    # <p>Returns information about the table, including the current status of the table, when
    #             it was created, the primary key schema, and any indexes on the table.</p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                 of global tables.
    #             </p>
    #          </important>
    #          <note>
    #             <p>If you issue a <code>DescribeTable</code> request immediately after a
    #                     <code>CreateTable</code> request, DynamoDB might return a
    #                     <code>ResourceNotFoundException</code>. This is because
    #                     <code>DescribeTable</code> uses an eventually consistent query, and the metadata
    #                 for your table might not be available at that moment. Wait for a few seconds, and
    #                 then try the <code>DescribeTable</code> request again.</p>
    #          </note>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeTableInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeTableOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_table(
    #     table_name: 'TableName' # required
    #   )
    # @example Response structure
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
    #   resp.data.table.deletion_protection_enabled #=> Boolean
    def describe_table(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTableInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTableInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTable
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_table),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeTable,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::DescribeTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::DescribeTable,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_table,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_table] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_table] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_table] #{output.data}")
      output
    end

    # <p>Describes auto scaling settings across replicas of the global table at once.</p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #             of global tables.</p>
    #          </important>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeTableReplicaAutoScalingInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeTableReplicaAutoScalingOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_table_replica_auto_scaling(
    #     table_name: 'TableName' # required
    #   )
    # @example Response structure
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
    def describe_table_replica_auto_scaling(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTableReplicaAutoScalingInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTableReplicaAutoScalingInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTableReplicaAutoScaling
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_table_replica_auto_scaling),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeTableReplicaAutoScaling,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::DescribeTableReplicaAutoScaling
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::DescribeTableReplicaAutoScaling,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_table_replica_auto_scaling,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_table_replica_auto_scaling] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_table_replica_auto_scaling] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_table_replica_auto_scaling] #{output.data}")
      output
    end

    # <p>Gives a description of the Time to Live (TTL) status on the specified table. </p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeTimeToLiveInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeTimeToLiveOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_time_to_live(
    #     table_name: 'TableName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeTimeToLiveOutput
    #   resp.data.time_to_live_description #=> Types::TimeToLiveDescription
    #   resp.data.time_to_live_description.time_to_live_status #=> String, one of ["ENABLING", "DISABLING", "ENABLED", "DISABLED"]
    #   resp.data.time_to_live_description.attribute_name #=> String
    def describe_time_to_live(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTimeToLiveInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTimeToLiveInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTimeToLive
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_time_to_live),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DescribeTimeToLive,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::DescribeTimeToLive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::DescribeTimeToLive,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_time_to_live,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_time_to_live] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_time_to_live] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_time_to_live] #{output.data}")
      output
    end

    # <p>Stops replication from the DynamoDB table to the Kinesis data stream. This is done
    #             without deleting either of the resources.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DisableKinesisStreamingDestinationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DisableKinesisStreamingDestinationOutput]
    # @example Request syntax with placeholder values
    #   resp = client.disable_kinesis_streaming_destination(
    #     table_name: 'TableName', # required
    #     stream_arn: 'StreamArn', # required
    #     enable_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: 'MILLISECOND' # accepts ["MILLISECOND", "MICROSECOND"]
    #     }
    #   )
    # @example Response structure
    #   resp.data #=> Types::DisableKinesisStreamingDestinationOutput
    #   resp.data.table_name #=> String
    #   resp.data.stream_arn #=> String
    #   resp.data.destination_status #=> String, one of ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"]
    #   resp.data.enable_kinesis_streaming_configuration #=> Types::EnableKinesisStreamingConfiguration
    #   resp.data.enable_kinesis_streaming_configuration.approximate_creation_date_time_precision #=> String, one of ["MILLISECOND", "MICROSECOND"]
    def disable_kinesis_streaming_destination(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableKinesisStreamingDestinationInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableKinesisStreamingDestinationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableKinesisStreamingDestination
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :disable_kinesis_streaming_destination),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::DisableKinesisStreamingDestination,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::DisableKinesisStreamingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::DisableKinesisStreamingDestination,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :disable_kinesis_streaming_destination,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#disable_kinesis_streaming_destination] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#disable_kinesis_streaming_destination] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#disable_kinesis_streaming_destination] #{output.data}")
      output
    end

    # <p>Starts table data replication to the specified Kinesis data stream at a timestamp
    #             chosen during the enable workflow. If this operation doesn't return results immediately,
    #             use DescribeKinesisStreamingDestination to check if streaming to the Kinesis data stream
    #             is ACTIVE.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::EnableKinesisStreamingDestinationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::EnableKinesisStreamingDestinationOutput]
    # @example Request syntax with placeholder values
    #   resp = client.enable_kinesis_streaming_destination(
    #     table_name: 'TableName', # required
    #     stream_arn: 'StreamArn', # required
    #     enable_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: 'MILLISECOND' # accepts ["MILLISECOND", "MICROSECOND"]
    #     }
    #   )
    # @example Response structure
    #   resp.data #=> Types::EnableKinesisStreamingDestinationOutput
    #   resp.data.table_name #=> String
    #   resp.data.stream_arn #=> String
    #   resp.data.destination_status #=> String, one of ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"]
    #   resp.data.enable_kinesis_streaming_configuration #=> Types::EnableKinesisStreamingConfiguration
    #   resp.data.enable_kinesis_streaming_configuration.approximate_creation_date_time_precision #=> String, one of ["MILLISECOND", "MICROSECOND"]
    def enable_kinesis_streaming_destination(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableKinesisStreamingDestinationInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableKinesisStreamingDestinationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableKinesisStreamingDestination
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :enable_kinesis_streaming_destination),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::EnableKinesisStreamingDestination,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::EnableKinesisStreamingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::EnableKinesisStreamingDestination,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :enable_kinesis_streaming_destination,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#enable_kinesis_streaming_destination] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#enable_kinesis_streaming_destination] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#enable_kinesis_streaming_destination] #{output.data}")
      output
    end

    # <p>This operation allows you to perform reads and singleton writes on data stored in
    #             DynamoDB, using PartiQL.</p>
    #          <p>For PartiQL reads (<code>SELECT</code> statement), if the total number of processed
    #             items exceeds the maximum dataset size limit of 1 MB, the read stops and results are
    #             returned to the user as a <code>LastEvaluatedKey</code> value to continue the read in a
    #             subsequent operation. If the filter criteria in <code>WHERE</code> clause does not match
    #             any data, the read will return an empty result set.</p>
    #          <p>A single <code>SELECT</code> statement response can return up to the maximum number of
    #             items (if using the Limit parameter) or a maximum of 1 MB of data (and then apply any
    #             filtering to the results using <code>WHERE</code> clause). If
    #                 <code>LastEvaluatedKey</code> is present in the response, you need to paginate the
    #             result set. If <code>NextToken</code> is present, you need to paginate the result set and include
    #             <code>NextToken</code>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ExecuteStatementInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ExecuteStatementOutput]
    # @example Request syntax with placeholder values
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
    #     limit: 1,
    #     return_values_on_condition_check_failure: 'ALL_OLD' # accepts ["ALL_OLD", "NONE"]
    #   )
    # @example Response structure
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
    def execute_statement(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteStatementInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteStatementInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteStatement
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :execute_statement),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ExecuteStatement,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::ResourceNotFoundException, Errors::DuplicateItemException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]
        ),
        data_parser: Parsers::ExecuteStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException, Stubs::DuplicateItemException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
        stub_data_class: Stubs::ExecuteStatement,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :execute_statement,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#execute_statement] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#execute_statement] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#execute_statement] #{output.data}")
      output
    end

    # <p>This operation allows you to perform transactional reads or writes on data stored in
    #             DynamoDB, using PartiQL.</p>
    #          <note>
    #             <p>The entire transaction must consist of either read statements or write statements,
    #                 you cannot mix both in one transaction. The EXISTS function is an exception and can
    #                 be used to check the condition of specific attributes of the item in a similar
    #                 manner to <code>ConditionCheck</code> in the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems">TransactWriteItems</a> API.</p>
    #          </note>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ExecuteTransactionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ExecuteTransactionOutput]
    # @example Request syntax with placeholder values
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
    #         ],
    #         return_values_on_condition_check_failure: 'ALL_OLD' # accepts ["ALL_OLD", "NONE"]
    #       }
    #     ], # required
    #     client_request_token: 'ClientRequestToken',
    #     return_consumed_capacity: 'INDEXES' # accepts ["INDEXES", "TOTAL", "NONE"]
    #   )
    # @example Response structure
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
    def execute_transaction(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteTransactionInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteTransactionInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteTransaction
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :execute_transaction),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ExecuteTransaction,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::ResourceNotFoundException, Errors::IdempotentParameterMismatchException, Errors::TransactionCanceledException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException, Errors::TransactionInProgressException]
        ),
        data_parser: Parsers::ExecuteTransaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException, Stubs::IdempotentParameterMismatchException, Stubs::TransactionCanceledException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException, Stubs::TransactionInProgressException],
        stub_data_class: Stubs::ExecuteTransaction,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :execute_transaction,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#execute_transaction] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#execute_transaction] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#execute_transaction] #{output.data}")
      output
    end

    # <p>Exports table data to an S3 bucket. The table must have point in time recovery
    #             enabled, and you can export data from any time within the point in time recovery
    #             window.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ExportTableToPointInTimeInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ExportTableToPointInTimeOutput]
    # @example Request syntax with placeholder values
    #   resp = client.export_table_to_point_in_time(
    #     table_arn: 'TableArn', # required
    #     export_time: Time.now,
    #     client_token: 'ClientToken',
    #     s3_bucket: 'S3Bucket', # required
    #     s3_bucket_owner: 'S3BucketOwner',
    #     s3_prefix: 'S3Prefix',
    #     s3_sse_algorithm: 'AES256', # accepts ["AES256", "KMS"]
    #     s3_sse_kms_key_id: 'S3SseKmsKeyId',
    #     export_format: 'DYNAMODB_JSON', # accepts ["DYNAMODB_JSON", "ION"]
    #     export_type: 'FULL_EXPORT', # accepts ["FULL_EXPORT", "INCREMENTAL_EXPORT"]
    #     incremental_export_specification: {
    #       export_from_time: Time.now,
    #       export_to_time: Time.now,
    #       export_view_type: 'NEW_IMAGE' # accepts ["NEW_IMAGE", "NEW_AND_OLD_IMAGES"]
    #     }
    #   )
    # @example Response structure
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
    #   resp.data.export_description.export_type #=> String, one of ["FULL_EXPORT", "INCREMENTAL_EXPORT"]
    #   resp.data.export_description.incremental_export_specification #=> Types::IncrementalExportSpecification
    #   resp.data.export_description.incremental_export_specification.export_from_time #=> Time
    #   resp.data.export_description.incremental_export_specification.export_to_time #=> Time
    #   resp.data.export_description.incremental_export_specification.export_view_type #=> String, one of ["NEW_IMAGE", "NEW_AND_OLD_IMAGES"]
    def export_table_to_point_in_time(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportTableToPointInTimeInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportTableToPointInTimeInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportTableToPointInTime
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :export_table_to_point_in_time),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ExportTableToPointInTime,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidExportTimeException, Errors::LimitExceededException, Errors::PointInTimeRecoveryUnavailableException, Errors::ExportConflictException, Errors::TableNotFoundException]
        ),
        data_parser: Parsers::ExportTableToPointInTime
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidExportTimeException, Stubs::LimitExceededException, Stubs::PointInTimeRecoveryUnavailableException, Stubs::ExportConflictException, Stubs::TableNotFoundException],
        stub_data_class: Stubs::ExportTableToPointInTime,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :export_table_to_point_in_time,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#export_table_to_point_in_time] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#export_table_to_point_in_time] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#export_table_to_point_in_time] #{output.data}")
      output
    end

    # <p>The <code>GetItem</code> operation returns a set of attributes for the item with the
    #             given primary key. If there is no matching item, <code>GetItem</code> does not return
    #             any data and there will be no <code>Item</code> element in the response.</p>
    #          <p>
    #             <code>GetItem</code> provides an eventually consistent read by default. If your
    #             application requires a strongly consistent read, set <code>ConsistentRead</code> to
    #                 <code>true</code>. Although a strongly consistent read might take more time than an
    #             eventually consistent read, it always returns the last updated value.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::GetItemInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::GetItemOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    # @example To read an item from a table
    #   # This example retrieves an item from the Music table. The table has a partition key and a sort key (Artist and SongTitle), so you must specify both of these attributes.
    #   resp = client.get_item({
    #     table_name: "Music",
    #     key: {
    #       'Artist' => {
    #         s: "Acme Band"
    #       },
    #       'SongTitle' => {
    #         s: "Happy Day"
    #       }
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     item: {
    #       'AlbumTitle' => {
    #         s: "Songs About Life"
    #       },
    #       'SongTitle' => {
    #         s: "Happy Day"
    #       },
    #       'Artist' => {
    #         s: "Acme Band"
    #       }
    #     }
    #   }
    def get_item(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetItemInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetItemInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetItem
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :get_item),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::GetItem,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]
        ),
        data_parser: Parsers::GetItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
        stub_data_class: Stubs::GetItem,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :get_item,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_item] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#get_item] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_item] #{output.data}")
      output
    end

    # <p> Imports table data from an S3 bucket. </p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ImportTableInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ImportTableOutput]
    # @example Request syntax with placeholder values
    #   resp = client.import_table(
    #     client_token: 'ClientToken',
    #     s3_bucket_source: {
    #       s3_bucket_owner: 'S3BucketOwner',
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key_prefix: 'S3KeyPrefix'
    #     }, # required
    #     input_format: 'DYNAMODB_JSON', # required - accepts ["DYNAMODB_JSON", "ION", "CSV"]
    #     input_format_options: {
    #       csv: {
    #         delimiter: 'Delimiter',
    #         header_list: [
    #           'member'
    #         ]
    #       }
    #     },
    #     input_compression_type: 'GZIP', # accepts ["GZIP", "ZSTD", "NONE"]
    #     table_creation_parameters: {
    #       table_name: 'TableName', # required
    #       attribute_definitions: [
    #         {
    #           attribute_name: 'AttributeName', # required
    #           attribute_type: 'S' # required - accepts ["S", "N", "B"]
    #         }
    #       ], # required
    #       key_schema: [
    #         {
    #           attribute_name: 'AttributeName', # required
    #           key_type: 'HASH' # required - accepts ["HASH", "RANGE"]
    #         }
    #       ], # required
    #       billing_mode: 'PROVISIONED', # accepts ["PROVISIONED", "PAY_PER_REQUEST"]
    #       provisioned_throughput: {
    #         read_capacity_units: 1, # required
    #         write_capacity_units: 1 # required
    #       },
    #       sse_specification: {
    #         enabled: false,
    #         sse_type: 'AES256', # accepts ["AES256", "KMS"]
    #         kms_master_key_id: 'KMSMasterKeyId'
    #       },
    #       global_secondary_indexes: [
    #         {
    #           index_name: 'IndexName', # required
    #           projection: {
    #             projection_type: 'ALL', # accepts ["ALL", "KEYS_ONLY", "INCLUDE"]
    #             non_key_attributes: [
    #               'member'
    #             ]
    #           }, # required
    #         }
    #       ]
    #     } # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::ImportTableOutput
    #   resp.data.import_table_description #=> Types::ImportTableDescription
    #   resp.data.import_table_description.import_arn #=> String
    #   resp.data.import_table_description.import_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"]
    #   resp.data.import_table_description.table_arn #=> String
    #   resp.data.import_table_description.table_id #=> String
    #   resp.data.import_table_description.client_token #=> String
    #   resp.data.import_table_description.s3_bucket_source #=> Types::S3BucketSource
    #   resp.data.import_table_description.s3_bucket_source.s3_bucket_owner #=> String
    #   resp.data.import_table_description.s3_bucket_source.s3_bucket #=> String
    #   resp.data.import_table_description.s3_bucket_source.s3_key_prefix #=> String
    #   resp.data.import_table_description.error_count #=> Integer
    #   resp.data.import_table_description.cloud_watch_log_group_arn #=> String
    #   resp.data.import_table_description.input_format #=> String, one of ["DYNAMODB_JSON", "ION", "CSV"]
    #   resp.data.import_table_description.input_format_options #=> Types::InputFormatOptions
    #   resp.data.import_table_description.input_format_options.csv #=> Types::CsvOptions
    #   resp.data.import_table_description.input_format_options.csv.delimiter #=> String
    #   resp.data.import_table_description.input_format_options.csv.header_list #=> Array<String>
    #   resp.data.import_table_description.input_format_options.csv.header_list[0] #=> String
    #   resp.data.import_table_description.input_compression_type #=> String, one of ["GZIP", "ZSTD", "NONE"]
    #   resp.data.import_table_description.table_creation_parameters #=> Types::TableCreationParameters
    #   resp.data.import_table_description.table_creation_parameters.table_name #=> String
    #   resp.data.import_table_description.table_creation_parameters.attribute_definitions #=> Array<AttributeDefinition>
    #   resp.data.import_table_description.table_creation_parameters.attribute_definitions[0] #=> Types::AttributeDefinition
    #   resp.data.import_table_description.table_creation_parameters.attribute_definitions[0].attribute_name #=> String
    #   resp.data.import_table_description.table_creation_parameters.attribute_definitions[0].attribute_type #=> String, one of ["S", "N", "B"]
    #   resp.data.import_table_description.table_creation_parameters.key_schema #=> Array<KeySchemaElement>
    #   resp.data.import_table_description.table_creation_parameters.key_schema[0] #=> Types::KeySchemaElement
    #   resp.data.import_table_description.table_creation_parameters.key_schema[0].attribute_name #=> String
    #   resp.data.import_table_description.table_creation_parameters.key_schema[0].key_type #=> String, one of ["HASH", "RANGE"]
    #   resp.data.import_table_description.table_creation_parameters.billing_mode #=> String, one of ["PROVISIONED", "PAY_PER_REQUEST"]
    #   resp.data.import_table_description.table_creation_parameters.provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.import_table_description.table_creation_parameters.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.data.import_table_description.table_creation_parameters.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.data.import_table_description.table_creation_parameters.sse_specification #=> Types::SSESpecification
    #   resp.data.import_table_description.table_creation_parameters.sse_specification.enabled #=> Boolean
    #   resp.data.import_table_description.table_creation_parameters.sse_specification.sse_type #=> String, one of ["AES256", "KMS"]
    #   resp.data.import_table_description.table_creation_parameters.sse_specification.kms_master_key_id #=> String
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes #=> Array<GlobalSecondaryIndex>
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0] #=> Types::GlobalSecondaryIndex
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].index_name #=> String
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].key_schema #=> Array<KeySchemaElement>
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection #=> Types::Projection
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.projection_type #=> String, one of ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.non_key_attributes #=> Array<String>
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.data.import_table_description.table_creation_parameters.global_secondary_indexes[0].provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.import_table_description.start_time #=> Time
    #   resp.data.import_table_description.end_time #=> Time
    #   resp.data.import_table_description.processed_size_bytes #=> Integer
    #   resp.data.import_table_description.processed_item_count #=> Integer
    #   resp.data.import_table_description.imported_item_count #=> Integer
    #   resp.data.import_table_description.failure_code #=> String
    #   resp.data.import_table_description.failure_message #=> String
    def import_table(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportTableInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportTableInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportTable
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :import_table),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ImportTable,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ImportConflictException]
        ),
        data_parser: Parsers::ImportTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ImportConflictException],
        stub_data_class: Stubs::ImportTable,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :import_table,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#import_table] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#import_table] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#import_table] #{output.data}")
      output
    end

    # <p>List DynamoDB backups that are associated with an Amazon Web Services account and weren't made with Amazon Web Services Backup.
    #             To list these backups for a given table, specify <code>TableName</code>. <code>ListBackups</code> returns a
    #             paginated list of results with at most 1 MB worth of items in a page. You can also
    #             specify a maximum number of entries to be returned in a page.</p>
    #          <p>In the request, start time is inclusive, but end time is exclusive. Note that these
    #             boundaries are for the time at which the original backup was requested.</p>
    #          <p>You can call <code>ListBackups</code> a maximum of five times per second.</p>
    #          <p>If you want to retrieve the complete list of backups made with Amazon Web Services Backup, use the
    #             <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_ListBackupJobs.html">Amazon Web Services Backup list API.</a>
    #          </p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListBackupsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListBackupsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_backups(
    #     table_name: 'TableName',
    #     limit: 1,
    #     time_range_lower_bound: Time.now,
    #     time_range_upper_bound: Time.now,
    #     exclusive_start_backup_arn: 'ExclusiveStartBackupArn',
    #     backup_type: 'USER' # accepts ["USER", "SYSTEM", "AWS_BACKUP", "ALL"]
    #   )
    # @example Response structure
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
    def list_backups(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBackupsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBackupsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBackups
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_backups),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ListBackups,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException]
        ),
        data_parser: Parsers::ListBackups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
        stub_data_class: Stubs::ListBackups,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_backups,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_backups] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_backups] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_backups] #{output.data}")
      output
    end

    # <p>Returns a list of ContributorInsightsSummary for a table and all its global secondary
    #             indexes.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListContributorInsightsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListContributorInsightsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_contributor_insights(
    #     table_name: 'TableName',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListContributorInsightsOutput
    #   resp.data.contributor_insights_summaries #=> Array<ContributorInsightsSummary>
    #   resp.data.contributor_insights_summaries[0] #=> Types::ContributorInsightsSummary
    #   resp.data.contributor_insights_summaries[0].table_name #=> String
    #   resp.data.contributor_insights_summaries[0].index_name #=> String
    #   resp.data.contributor_insights_summaries[0].contributor_insights_status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"]
    #   resp.data.next_token #=> String
    def list_contributor_insights(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContributorInsightsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContributorInsightsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContributorInsights
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_contributor_insights),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ListContributorInsights,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::ListContributorInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::ListContributorInsights,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_contributor_insights,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_contributor_insights] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_contributor_insights] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_contributor_insights] #{output.data}")
      output
    end

    # <p>Lists completed exports within the past 90 days.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListExportsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListExportsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_exports(
    #     table_arn: 'TableArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListExportsOutput
    #   resp.data.export_summaries #=> Array<ExportSummary>
    #   resp.data.export_summaries[0] #=> Types::ExportSummary
    #   resp.data.export_summaries[0].export_arn #=> String
    #   resp.data.export_summaries[0].export_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.export_summaries[0].export_type #=> String, one of ["FULL_EXPORT", "INCREMENTAL_EXPORT"]
    #   resp.data.next_token #=> String
    def list_exports(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExportsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExportsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExports
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_exports),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ListExports,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::LimitExceededException]
        ),
        data_parser: Parsers::ListExports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::LimitExceededException],
        stub_data_class: Stubs::ListExports,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_exports,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_exports] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_exports] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_exports] #{output.data}")
      output
    end

    # <p>Lists all global tables that have a replica in the specified Region.</p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                 2017.11.29 (Legacy)</a> of global tables. We recommend using
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                 when creating new global tables, as it provides greater flexibility, higher efficiency and consumes less write capacity than
    #                 2017.11.29 (Legacy). To determine which version you are using, see
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the version</a>.
    #                 To update existing global tables from version 2017.11.29 (Legacy) to version
    #                 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">
    #                     Updating global tables</a>.
    #             </p>
    #          </important>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListGlobalTablesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListGlobalTablesOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_global_tables(
    #     exclusive_start_global_table_name: 'ExclusiveStartGlobalTableName',
    #     limit: 1,
    #     region_name: 'RegionName'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListGlobalTablesOutput
    #   resp.data.global_tables #=> Array<GlobalTable>
    #   resp.data.global_tables[0] #=> Types::GlobalTable
    #   resp.data.global_tables[0].global_table_name #=> String
    #   resp.data.global_tables[0].replication_group #=> Array<Replica>
    #   resp.data.global_tables[0].replication_group[0] #=> Types::Replica
    #   resp.data.global_tables[0].replication_group[0].region_name #=> String
    #   resp.data.last_evaluated_global_table_name #=> String
    def list_global_tables(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGlobalTablesInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGlobalTablesInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGlobalTables
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_global_tables),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ListGlobalTables,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException]
        ),
        data_parser: Parsers::ListGlobalTables
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
        stub_data_class: Stubs::ListGlobalTables,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_global_tables,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_global_tables] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_global_tables] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_global_tables] #{output.data}")
      output
    end

    # <p> Lists completed imports within the past 90 days. </p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListImportsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListImportsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_imports(
    #     table_arn: 'TableArn',
    #     page_size: 1,
    #     next_token: 'NextToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListImportsOutput
    #   resp.data.import_summary_list #=> Array<ImportSummary>
    #   resp.data.import_summary_list[0] #=> Types::ImportSummary
    #   resp.data.import_summary_list[0].import_arn #=> String
    #   resp.data.import_summary_list[0].import_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"]
    #   resp.data.import_summary_list[0].table_arn #=> String
    #   resp.data.import_summary_list[0].s3_bucket_source #=> Types::S3BucketSource
    #   resp.data.import_summary_list[0].s3_bucket_source.s3_bucket_owner #=> String
    #   resp.data.import_summary_list[0].s3_bucket_source.s3_bucket #=> String
    #   resp.data.import_summary_list[0].s3_bucket_source.s3_key_prefix #=> String
    #   resp.data.import_summary_list[0].cloud_watch_log_group_arn #=> String
    #   resp.data.import_summary_list[0].input_format #=> String, one of ["DYNAMODB_JSON", "ION", "CSV"]
    #   resp.data.import_summary_list[0].start_time #=> Time
    #   resp.data.import_summary_list[0].end_time #=> Time
    #   resp.data.next_token #=> String
    def list_imports(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImportsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImportsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImports
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_imports),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ListImports,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::LimitExceededException]
        ),
        data_parser: Parsers::ListImports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::LimitExceededException],
        stub_data_class: Stubs::ListImports,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_imports,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_imports] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_imports] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_imports] #{output.data}")
      output
    end

    # <p>Returns an array of table names associated with the current account and endpoint. The
    #             output from <code>ListTables</code> is paginated, with each page returning a maximum of
    #             100 table names.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListTablesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListTablesOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_tables(
    #     exclusive_start_table_name: 'ExclusiveStartTableName',
    #     limit: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListTablesOutput
    #   resp.data.table_names #=> Array<String>
    #   resp.data.table_names[0] #=> String
    #   resp.data.last_evaluated_table_name #=> String
    # @example To list tables
    #   resp = client.list_tables()
    #
    #   # resp.to_h outputs the following:
    #   {
    #     table_names: [
    #       "Forum",
    #       "ProductCatalog",
    #       "Reply",
    #       "Thread"
    #     ]
    #   }
    def list_tables(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTablesInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTablesInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTables
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_tables),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ListTables,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException]
        ),
        data_parser: Parsers::ListTables
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
        stub_data_class: Stubs::ListTables,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_tables,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_tables] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_tables] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_tables] #{output.data}")
      output
    end

    # <p>List all tags on an Amazon DynamoDB resource. You can call ListTagsOfResource up to 10
    #             times per second, per account.</p>
    #          <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a>
    #             in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListTagsOfResourceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListTagsOfResourceOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_tags_of_resource(
    #     resource_arn: 'ResourceArn', # required
    #     next_token: 'NextToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListTagsOfResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
    def list_tags_of_resource(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsOfResourceInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsOfResourceInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsOfResource
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_tags_of_resource),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::ListTagsOfResource,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::ListTagsOfResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::ListTagsOfResource,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_tags_of_resource,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_tags_of_resource] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_tags_of_resource] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_tags_of_resource] #{output.data}")
      output
    end

    # <p>Creates a new item, or replaces an old item with a new item. If an item that has the
    #             same primary key as the new item already exists in the specified table, the new item
    #             completely replaces the existing item. You can perform a conditional put operation (add
    #             a new item if one with the specified primary key doesn't exist), or replace an existing
    #             item if it has certain attribute values. You can return the item's attribute values in
    #             the same operation, using the <code>ReturnValues</code> parameter.</p>
    #          <p>When you add an item, the primary key attributes are the only required attributes.
    #             </p>
    #          <p>Empty String and Binary attribute values are allowed. Attribute values of type String
    #             and Binary must have a length greater than zero if the attribute is used as a key
    #             attribute for a table or index. Set type attributes cannot be empty. </p>
    #          <p>Invalid Requests with empty values will be rejected with a
    #                 <code>ValidationException</code> exception.</p>
    #          <note>
    #             <p>To prevent a new item from replacing an existing item, use a conditional
    #                 expression that contains the <code>attribute_not_exists</code> function with the
    #                 name of the attribute being used as the partition key for the table. Since every
    #                 record must contain that attribute, the <code>attribute_not_exists</code> function
    #                 will only succeed if no matching item exists.</p>
    #          </note>
    #          <p>For more information about <code>PutItem</code>, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html">Working with
    #                 Items</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::PutItemInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::PutItemOutput]
    # @example Request syntax with placeholder values
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
    #     return_values_on_condition_check_failure: 'ALL_OLD' # accepts ["ALL_OLD", "NONE"]
    #   )
    # @example Response structure
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
    # @example To add an item to a table
    #   # This example adds a new item to the Music table.
    #   resp = client.put_item({
    #     table_name: "Music",
    #     item: {
    #       'AlbumTitle' => {
    #         s: "Somewhat Famous"
    #       },
    #       'SongTitle' => {
    #         s: "Call Me Today"
    #       },
    #       'Artist' => {
    #         s: "No One You Know"
    #       }
    #     },
    #     return_consumed_capacity: "TOTAL"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     consumed_capacity: {
    #       capacity_units: 1,
    #       table_name: "Music"
    #     }
    #   }
    def put_item(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutItemInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutItemInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutItem
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :put_item),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::PutItem,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]
        ),
        data_parser: Parsers::PutItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
        stub_data_class: Stubs::PutItem,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :put_item,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_item] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#put_item] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_item] #{output.data}")
      output
    end

    # <p>You must provide the name of the partition key attribute and a single value for that
    #             attribute. <code>Query</code> returns all items with that partition key value.
    #             Optionally, you can provide a sort key attribute and use a comparison operator to refine
    #             the search results.</p>
    #          <p>Use the <code>KeyConditionExpression</code> parameter to provide a specific value for
    #             the partition key. The <code>Query</code> operation will return all of the items from
    #             the table or index with that partition key value. You can optionally narrow the scope of
    #             the <code>Query</code> operation by specifying a sort key value and a comparison
    #             operator in <code>KeyConditionExpression</code>. To further refine the
    #                 <code>Query</code> results, you can optionally provide a
    #                 <code>FilterExpression</code>. A <code>FilterExpression</code> determines which
    #             items within the results should be returned to you. All of the other results are
    #             discarded. </p>
    #          <p> A <code>Query</code> operation always returns a result set. If no matching items are
    #             found, the result set will be empty. Queries that do not return results consume the
    #             minimum number of read capacity units for that type of read operation. </p>
    #          <note>
    #             <p> DynamoDB calculates the number of read capacity units consumed based on item
    #                 size, not on the amount of data that is returned to an application. The number of
    #                 capacity units consumed will be the same whether you request all of the attributes
    #                 (the default behavior) or just some of them (using a projection expression). The
    #                 number will also be the same whether or not you use a <code>FilterExpression</code>.
    #             </p>
    #          </note>
    #          <p>
    #             <code>Query</code> results are always sorted by the sort key value. If the data type of
    #             the sort key is Number, the results are returned in numeric order; otherwise, the
    #             results are returned in order of UTF-8 bytes. By default, the sort order is ascending.
    #             To reverse the order, set the <code>ScanIndexForward</code> parameter to false. </p>
    #          <p> A single <code>Query</code> operation will read up to the maximum number of items set
    #             (if using the <code>Limit</code> parameter) or a maximum of 1 MB of data and then apply
    #             any filtering to the results using <code>FilterExpression</code>. If
    #                 <code>LastEvaluatedKey</code> is present in the response, you will need to paginate
    #             the result set. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination">Paginating
    #                 the Results</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
    #          <p>
    #             <code>FilterExpression</code> is applied after a <code>Query</code> finishes, but before
    #             the results are returned. A <code>FilterExpression</code> cannot contain partition key
    #             or sort key attributes. You need to specify those attributes in the
    #                 <code>KeyConditionExpression</code>. </p>
    #          <note>
    #             <p> A <code>Query</code> operation can return an empty result set and a
    #                     <code>LastEvaluatedKey</code> if all the items read for the page of results are
    #                 filtered out. </p>
    #          </note>
    #          <p>You can query a table, a local secondary index, or a global secondary index. For a
    #             query on a table or on a local secondary index, you can set the
    #                 <code>ConsistentRead</code> parameter to <code>true</code> and obtain a strongly
    #             consistent result. Global secondary indexes support eventually consistent reads only, so
    #             do not specify <code>ConsistentRead</code> when querying a global secondary
    #             index.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::QueryInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::QueryOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    # @example To query an item
    #   # This example queries items in the Music table. The table has a partition key and sort key (Artist and SongTitle), but this query only specifies the partition key value. It returns song titles by the artist named "No One You Know".
    #   resp = client.query({
    #     table_name: "Music",
    #     projection_expression: "SongTitle",
    #     key_condition_expression: "Artist = :v1",
    #     expression_attribute_values: {
    #       ':v1' => {
    #         s: "No One You Know"
    #       }
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     count: 2,
    #     items: [
    #       {
    #         'SongTitle' => {
    #           s: "Call Me Today"
    #         }
    #       }
    #     ],
    #     scanned_count: 2,
    #     consumed_capacity: {
    #
    #     }
    #   }
    def query(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::QueryInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::QueryInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Query
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :query),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::Query,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]
        ),
        data_parser: Parsers::Query
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
        stub_data_class: Stubs::Query,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :query,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#query] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#query] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#query] #{output.data}")
      output
    end

    # <p>Creates a new table from an existing backup. Any number of users can execute up to 50
    #             concurrent restores (any type of restore) in a given account. </p>
    #          <p>You can call <code>RestoreTableFromBackup</code> at a maximum rate of 10 times per
    #             second.</p>
    #          <p>You must manually set up the following on the restored table:</p>
    #          <ul>
    #             <li>
    #                <p>Auto scaling policies</p>
    #             </li>
    #             <li>
    #                <p>IAM policies</p>
    #             </li>
    #             <li>
    #                <p>Amazon CloudWatch metrics and alarms</p>
    #             </li>
    #             <li>
    #                <p>Tags</p>
    #             </li>
    #             <li>
    #                <p>Stream settings</p>
    #             </li>
    #             <li>
    #                <p>Time to Live (TTL) settings</p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::RestoreTableFromBackupInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::RestoreTableFromBackupOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    #   resp.data.table_description.deletion_protection_enabled #=> Boolean
    def restore_table_from_backup(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreTableFromBackupInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreTableFromBackupInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreTableFromBackup
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :restore_table_from_backup),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::RestoreTableFromBackup,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::BackupNotFoundException, Errors::LimitExceededException, Errors::TableInUseException, Errors::BackupInUseException, Errors::TableAlreadyExistsException]
        ),
        data_parser: Parsers::RestoreTableFromBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::BackupNotFoundException, Stubs::LimitExceededException, Stubs::TableInUseException, Stubs::BackupInUseException, Stubs::TableAlreadyExistsException],
        stub_data_class: Stubs::RestoreTableFromBackup,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :restore_table_from_backup,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#restore_table_from_backup] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#restore_table_from_backup] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#restore_table_from_backup] #{output.data}")
      output
    end

    # <p>Restores the specified table to the specified point in time within
    #                 <code>EarliestRestorableDateTime</code> and <code>LatestRestorableDateTime</code>.
    #             You can restore your table to any point in time during the last 35 days. Any number of
    #             users can execute up to 50 concurrent restores (any type of restore) in a given account. </p>
    #          <p>When you restore using point in time recovery, DynamoDB restores your table data to
    #             the state based on the selected date and time (day:hour:minute:second) to a new table. </p>
    #          <p>Along with data, the following are also included on the new restored table using
    #             point in time recovery: </p>
    #          <ul>
    #             <li>
    #                <p>Global secondary indexes (GSIs)</p>
    #             </li>
    #             <li>
    #                <p>Local secondary indexes (LSIs)</p>
    #             </li>
    #             <li>
    #                <p>Provisioned read and write capacity</p>
    #             </li>
    #             <li>
    #                <p>Encryption settings</p>
    #                <important>
    #                   <p> All these settings come from the current settings of the source table at
    #                         the time of restore. </p>
    #                </important>
    #             </li>
    #          </ul>
    #          <p>You must manually set up the following on the restored table:</p>
    #          <ul>
    #             <li>
    #                <p>Auto scaling policies</p>
    #             </li>
    #             <li>
    #                <p>IAM policies</p>
    #             </li>
    #             <li>
    #                <p>Amazon CloudWatch metrics and alarms</p>
    #             </li>
    #             <li>
    #                <p>Tags</p>
    #             </li>
    #             <li>
    #                <p>Stream settings</p>
    #             </li>
    #             <li>
    #                <p>Time to Live (TTL) settings</p>
    #             </li>
    #             <li>
    #                <p>Point in time recovery settings</p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::RestoreTableToPointInTimeInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::RestoreTableToPointInTimeOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    #   resp.data.table_description.deletion_protection_enabled #=> Boolean
    def restore_table_to_point_in_time(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreTableToPointInTimeInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreTableToPointInTimeInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreTableToPointInTime
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :restore_table_to_point_in_time),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::RestoreTableToPointInTime,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::TableInUseException, Errors::PointInTimeRecoveryUnavailableException, Errors::InvalidRestoreTimeException, Errors::TableAlreadyExistsException, Errors::TableNotFoundException]
        ),
        data_parser: Parsers::RestoreTableToPointInTime
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::TableInUseException, Stubs::PointInTimeRecoveryUnavailableException, Stubs::InvalidRestoreTimeException, Stubs::TableAlreadyExistsException, Stubs::TableNotFoundException],
        stub_data_class: Stubs::RestoreTableToPointInTime,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :restore_table_to_point_in_time,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#restore_table_to_point_in_time] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#restore_table_to_point_in_time] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#restore_table_to_point_in_time] #{output.data}")
      output
    end

    # <p>The <code>Scan</code> operation returns one or more items and item attributes by
    #             accessing every item in a table or a secondary index. To have DynamoDB return fewer
    #             items, you can provide a <code>FilterExpression</code> operation.</p>
    #          <p>If the total size of scanned items exceeds the maximum dataset size limit of 1 MB,
    #             the scan completes and results are returned to the user. The <code>LastEvaluatedKey</code>
    #             value is also returned and the requestor can use the <code>LastEvaluatedKey</code> to continue
    #             the scan in a subsequent operation. Each scan response also includes number of items that were
    #             scanned (ScannedCount) as part of the request. If using a <code>FilterExpression</code>, a scan result
    #             can result in no items meeting the criteria and the <code>Count</code> will result in zero. If
    #             you did not use a <code>FilterExpression</code> in the scan request, then <code>Count</code> is
    #             the same as <code>ScannedCount</code>.</p>
    #          <note>
    #             <p>
    #                <code>Count</code> and <code>ScannedCount</code> only return the count of items specific to a
    #                 single scan request and, unless the table is less than 1MB, do not represent the total number
    #                 of items in the table.
    #             </p>
    #          </note>
    #          <p>A single <code>Scan</code> operation first reads up to the maximum number of items set (if
    #             using the <code>Limit</code> parameter) or a maximum of 1 MB of data and then applies any
    #             filtering to the results if a <code>FilterExpression</code> is provided. If
    #                 <code>LastEvaluatedKey</code> is present in the response, pagination is required to complete the
    #             full table scan. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination">Paginating the
    #                 Results</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #          <p>
    #             <code>Scan</code> operations proceed sequentially; however, for faster performance on
    #             a large table or secondary index, applications can request a parallel <code>Scan</code>
    #             operation by providing the <code>Segment</code> and <code>TotalSegments</code>
    #             parameters. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan">Parallel
    #                 Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #          <p>By default, a <code>Scan</code> uses eventually consistent reads when accessing the items in a table.
    #             Therefore, the results from an eventually consistent <code>Scan</code> may not include the latest item
    #             changes at the time the scan iterates through each item in the table. If you require a strongly consistent
    #             read of each item as the scan iterates through the items in the table, you can set the <code>ConsistentRead</code>
    #             parameter to true. Strong consistency only relates to the consistency of the read at the item level.</p>
    #          <note>
    #             <p>
    #                 DynamoDB does not provide snapshot isolation for a scan operation when the <code>ConsistentRead</code>
    #                 parameter is set to true. Thus, a DynamoDB scan operation does not guarantee that all reads in a scan
    #                 see a consistent snapshot of the table when the scan operation was requested.
    #             </p>
    #          </note>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ScanInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ScanOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    # @example To scan a table
    #   # This example scans the entire Music table, and then narrows the results to songs by the artist "No One You Know". For each item, only the album title and song title are returned.
    #   resp = client.scan({
    #     table_name: "Music",
    #     filter_expression: "Artist = :a",
    #     projection_expression: "#ST, #AT",
    #     expression_attribute_names: {
    #       '#ST' => "SongTitle",
    #       '#AT' => "AlbumTitle"
    #     },
    #     expression_attribute_values: {
    #       ':a' => {
    #         s: "No One You Know"
    #       }
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     count: 2,
    #     items: [
    #       {
    #         'SongTitle' => {
    #           s: "Call Me Today"
    #         },
    #         'AlbumTitle' => {
    #           s: "Somewhat Famous"
    #         }
    #       },
    #       {
    #         'SongTitle' => {
    #           s: "Scared of My Shadow"
    #         },
    #         'AlbumTitle' => {
    #           s: "Blue Sky Blues"
    #         }
    #       }
    #     ],
    #     scanned_count: 3,
    #     consumed_capacity: {
    #
    #     }
    #   }
    def scan(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ScanInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ScanInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Scan
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :scan),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::Scan,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]
        ),
        data_parser: Parsers::Scan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
        stub_data_class: Stubs::Scan,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :scan,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#scan] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#scan] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#scan] #{output.data}")
      output
    end

    # <p>Associate a set of tags with an Amazon DynamoDB resource. You can then activate these
    #             user-defined tags so that they appear on the Billing and Cost Management console for
    #             cost allocation tracking. You can call TagResource up to five times per second, per
    #             account. </p>
    #          <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a>
    #             in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::TagResourceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::TagResourceOutput]
    # @example Request syntax with placeholder values
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::TagResourceOutput
    def tag_resource(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :tag_resource),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::TagResource,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::TagResource,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :tag_resource,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#tag_resource] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#tag_resource] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#tag_resource] #{output.data}")
      output
    end

    # <p>
    #             <code>TransactGetItems</code> is a synchronous operation that atomically retrieves
    #             multiple items from one or more tables (but not from indexes) in a single account and
    #             Region. A <code>TransactGetItems</code> call can contain up to 100
    #                 <code>TransactGetItem</code> objects, each of which contains a <code>Get</code>
    #             structure that specifies an item to retrieve from a table in the account and Region. A
    #             call to <code>TransactGetItems</code> cannot retrieve items from tables in more than one
    #                 Amazon Web Services account or Region. The aggregate size of the items in the
    #             transaction cannot exceed 4 MB.</p>
    #          <p>DynamoDB rejects the entire <code>TransactGetItems</code> request if any of
    #             the following is true:</p>
    #          <ul>
    #             <li>
    #                <p>A conflicting operation is in the process of updating an item to be
    #                     read.</p>
    #             </li>
    #             <li>
    #                <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #             <li>
    #                <p>The aggregate size of the items in the transaction exceeded 4 MB.</p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::TransactGetItemsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::TransactGetItemsOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    def transact_get_items(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::TransactGetItemsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TransactGetItemsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TransactGetItems
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :transact_get_items),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::TransactGetItems,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::TransactionCanceledException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]
        ),
        data_parser: Parsers::TransactGetItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::TransactionCanceledException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
        stub_data_class: Stubs::TransactGetItems,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :transact_get_items,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#transact_get_items] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#transact_get_items] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#transact_get_items] #{output.data}")
      output
    end

    # <p>
    #             <code>TransactWriteItems</code> is a synchronous write operation that groups up to 100
    #             action requests. These actions can target items in different tables, but not in
    #             different Amazon Web Services accounts or Regions, and no two actions can target the same
    #             item. For example, you cannot both <code>ConditionCheck</code> and <code>Update</code>
    #             the same item. The aggregate size of the items in the transaction cannot exceed 4
    #             MB.</p>
    #          <p>The actions are completed atomically so that either all of them succeed, or all of
    #             them fail. They are defined by the following objects:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Put</code>  —   Initiates a <code>PutItem</code>
    #                     operation to write a new item. This structure specifies the primary key of the
    #                     item to be written, the name of the table to write it in, an optional condition
    #                     expression that must be satisfied for the write to succeed, a list of the item's
    #                     attributes, and a field indicating whether to retrieve the item's attributes if
    #                     the condition is not met.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Update</code>  —   Initiates an <code>UpdateItem</code>
    #                     operation to update an existing item. This structure specifies the primary key
    #                     of the item to be updated, the name of the table where it resides, an optional
    #                     condition expression that must be satisfied for the update to succeed, an
    #                     expression that defines one or more attributes to be updated, and a field
    #                     indicating whether to retrieve the item's attributes if the condition is not
    #                     met.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Delete</code>  —   Initiates a <code>DeleteItem</code>
    #                     operation to delete an existing item. This structure specifies the primary key
    #                     of the item to be deleted, the name of the table where it resides, an optional
    #                     condition expression that must be satisfied for the deletion to succeed, and a
    #                     field indicating whether to retrieve the item's attributes if the condition is
    #                     not met.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ConditionCheck</code>  —   Applies a condition to an item
    #                     that is not being modified by the transaction. This structure specifies the
    #                     primary key of the item to be checked, the name of the table where it resides, a
    #                     condition expression that must be satisfied for the transaction to succeed, and
    #                     a field indicating whether to retrieve the item's attributes if the condition is
    #                     not met.</p>
    #             </li>
    #          </ul>
    #          <p>DynamoDB rejects the entire <code>TransactWriteItems</code> request if any of the
    #             following is true:</p>
    #          <ul>
    #             <li>
    #                <p>A condition in one of the condition expressions is not met.</p>
    #             </li>
    #             <li>
    #                <p>An ongoing operation is in the process of updating the same item.</p>
    #             </li>
    #             <li>
    #                <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                <p>An item size becomes too large (bigger than 400 KB), a local secondary index
    #                     (LSI) becomes too large, or a similar validation error occurs because of changes
    #                     made by the transaction.</p>
    #             </li>
    #             <li>
    #                <p>The aggregate size of the items in the transaction exceeds 4 MB.</p>
    #             </li>
    #             <li>
    #                <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::TransactWriteItemsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::TransactWriteItemsOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    def transact_write_items(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::TransactWriteItemsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TransactWriteItemsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TransactWriteItems
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :transact_write_items),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::TransactWriteItems,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::IdempotentParameterMismatchException, Errors::TransactionCanceledException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException, Errors::TransactionInProgressException]
        ),
        data_parser: Parsers::TransactWriteItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::IdempotentParameterMismatchException, Stubs::TransactionCanceledException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException, Stubs::TransactionInProgressException],
        stub_data_class: Stubs::TransactWriteItems,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :transact_write_items,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#transact_write_items] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#transact_write_items] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#transact_write_items] #{output.data}")
      output
    end

    # <p>Removes the association of tags from an Amazon DynamoDB resource. You can call
    #                 <code>UntagResource</code> up to five times per second, per account. </p>
    #          <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a>
    #             in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UntagResourceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UntagResourceOutput]
    # @example Request syntax with placeholder values
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::UntagResourceOutput
    def untag_resource(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :untag_resource),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::UntagResource,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::UntagResource,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :untag_resource,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#untag_resource] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#untag_resource] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#untag_resource] #{output.data}")
      output
    end

    # <p>
    #             <code>UpdateContinuousBackups</code> enables or disables point in time recovery for
    #             the specified table. A successful <code>UpdateContinuousBackups</code> call returns the
    #             current <code>ContinuousBackupsDescription</code>. Continuous backups are
    #                 <code>ENABLED</code> on all tables at table creation. If point in time recovery is
    #             enabled, <code>PointInTimeRecoveryStatus</code> will be set to ENABLED.</p>
    #          <p> Once continuous backups and point in time recovery are enabled, you can restore to
    #             any point in time within <code>EarliestRestorableDateTime</code> and
    #                 <code>LatestRestorableDateTime</code>. </p>
    #          <p>
    #             <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time.
    #             You can restore your table to any point in time during the last 35 days. </p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UpdateContinuousBackupsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UpdateContinuousBackupsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.update_continuous_backups(
    #     table_name: 'TableName', # required
    #     point_in_time_recovery_specification: {
    #       point_in_time_recovery_enabled: false # required
    #     } # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateContinuousBackupsOutput
    #   resp.data.continuous_backups_description #=> Types::ContinuousBackupsDescription
    #   resp.data.continuous_backups_description.continuous_backups_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.continuous_backups_description.point_in_time_recovery_description #=> Types::PointInTimeRecoveryDescription
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.point_in_time_recovery_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.earliest_restorable_date_time #=> Time
    #   resp.data.continuous_backups_description.point_in_time_recovery_description.latest_restorable_date_time #=> Time
    def update_continuous_backups(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContinuousBackupsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContinuousBackupsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContinuousBackups
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :update_continuous_backups),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::UpdateContinuousBackups,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::TableNotFoundException, Errors::ContinuousBackupsUnavailableException]
        ),
        data_parser: Parsers::UpdateContinuousBackups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::TableNotFoundException, Stubs::ContinuousBackupsUnavailableException],
        stub_data_class: Stubs::UpdateContinuousBackups,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :update_continuous_backups,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_continuous_backups] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#update_continuous_backups] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_continuous_backups] #{output.data}")
      output
    end

    # <p>Updates the status for contributor insights for a specific table or index. CloudWatch
    #             Contributor Insights for DynamoDB graphs display the partition key and (if applicable)
    #             sort key of frequently accessed items and frequently throttled items in plaintext. If
    #             you require the use of Amazon Web Services Key Management Service (KMS) to encrypt this
    #             table’s partition key and sort key data with an Amazon Web Services managed key or
    #             customer managed key, you should not enable CloudWatch Contributor Insights for DynamoDB
    #             for this table.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UpdateContributorInsightsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UpdateContributorInsightsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.update_contributor_insights(
    #     table_name: 'TableName', # required
    #     index_name: 'IndexName',
    #     contributor_insights_action: 'ENABLE' # required - accepts ["ENABLE", "DISABLE"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateContributorInsightsOutput
    #   resp.data.table_name #=> String
    #   resp.data.index_name #=> String
    #   resp.data.contributor_insights_status #=> String, one of ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"]
    def update_contributor_insights(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContributorInsightsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContributorInsightsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContributorInsights
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :update_contributor_insights),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::UpdateContributorInsights,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::ResourceNotFoundException]
        ),
        data_parser: Parsers::UpdateContributorInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
        stub_data_class: Stubs::UpdateContributorInsights,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :update_contributor_insights,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_contributor_insights] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#update_contributor_insights] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_contributor_insights] #{output.data}")
      output
    end

    # <p>Adds or removes replicas in the specified global table. The global table must already
    #             exist to be able to use this operation. Any replica to be added must be empty, have the
    #             same name as the global table, have the same key schema, have DynamoDB Streams enabled,
    #             and have the same provisioned and maximum write capacity units.</p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                 2017.11.29 (Legacy)</a> of global tables. We recommend using
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                 when creating new global tables, as it provides greater flexibility, higher efficiency and consumes less write capacity than
    #                 2017.11.29 (Legacy). To determine which version you are using, see
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the version</a>.
    #                 To update existing global tables from version 2017.11.29 (Legacy) to version
    #                 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">
    #                     Updating global tables</a>.
    #             </p>
    #          </important>
    #          <note>
    #             <p>
    #                 This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                     2017.11.29</a> of global tables. If you are using global tables <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version
    #                         2019.11.21</a> you can use <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_DescribeTable.html">DescribeTable</a> instead.
    #             </p>
    #             <p>
    #                 Although you can use <code>UpdateGlobalTable</code> to add replicas and remove
    #                 replicas in a single request, for simplicity we recommend that you issue separate
    #                 requests for adding or removing replicas.
    #             </p>
    #          </note>
    #          <p> If global secondary indexes are specified, then the following conditions must also be
    #             met: </p>
    #          <ul>
    #             <li>
    #                <p> The global secondary indexes must have the same name. </p>
    #             </li>
    #             <li>
    #                <p> The global secondary indexes must have the same hash key and sort key (if
    #                     present). </p>
    #             </li>
    #             <li>
    #                <p> The global secondary indexes must have the same provisioned and maximum write
    #                     capacity units. </p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UpdateGlobalTableInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UpdateGlobalTableOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    def update_global_table(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGlobalTableInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGlobalTableInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGlobalTable
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :update_global_table),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::UpdateGlobalTable,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::GlobalTableNotFoundException, Errors::ReplicaNotFoundException, Errors::TableNotFoundException, Errors::ReplicaAlreadyExistsException]
        ),
        data_parser: Parsers::UpdateGlobalTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::GlobalTableNotFoundException, Stubs::ReplicaNotFoundException, Stubs::TableNotFoundException, Stubs::ReplicaAlreadyExistsException],
        stub_data_class: Stubs::UpdateGlobalTable,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :update_global_table,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_global_table] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#update_global_table] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_global_table] #{output.data}")
      output
    end

    # <p>Updates settings for a global table.</p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html">Version
    #                 2017.11.29 (Legacy)</a> of global tables. We recommend using
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                 when creating new global tables, as it provides greater flexibility, higher efficiency and consumes less write capacity than
    #                 2017.11.29 (Legacy). To determine which version you are using, see
    #                 <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the version</a>.
    #                 To update existing global tables from version 2017.11.29 (Legacy) to version
    #                 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">
    #                     Updating global tables</a>.
    #             </p>
    #          </important>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UpdateGlobalTableSettingsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UpdateGlobalTableSettingsOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    def update_global_table_settings(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGlobalTableSettingsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGlobalTableSettingsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGlobalTableSettings
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :update_global_table_settings),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::UpdateGlobalTableSettings,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::GlobalTableNotFoundException, Errors::IndexNotFoundException, Errors::ReplicaNotFoundException, Errors::ResourceInUseException]
        ),
        data_parser: Parsers::UpdateGlobalTableSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::GlobalTableNotFoundException, Stubs::IndexNotFoundException, Stubs::ReplicaNotFoundException, Stubs::ResourceInUseException],
        stub_data_class: Stubs::UpdateGlobalTableSettings,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :update_global_table_settings,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_global_table_settings] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#update_global_table_settings] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_global_table_settings] #{output.data}")
      output
    end

    # <p>Edits an existing item's attributes, or adds a new item to the table if it does not
    #             already exist. You can put, delete, or add attribute values. You can also perform a
    #             conditional update on an existing item (insert a new attribute name-value pair if it
    #             doesn't exist, or replace an existing name-value pair if it has certain expected
    #             attribute values).</p>
    #          <p>You can also return the item's attribute values in the same <code>UpdateItem</code>
    #             operation using the <code>ReturnValues</code> parameter.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UpdateItemInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UpdateItemOutput]
    # @example Request syntax with placeholder values
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
    #     return_values_on_condition_check_failure: 'ALL_OLD' # accepts ["ALL_OLD", "NONE"]
    #   )
    # @example Response structure
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
    # @example To update an item in a table
    #   # This example updates an item in the Music table. It adds a new attribute (Year) and modifies the AlbumTitle attribute.  All of the attributes in the item, as they appear after the update, are returned in the response.
    #   resp = client.update_item({
    #     table_name: "Music",
    #     key: {
    #       'Artist' => {
    #         s: "Acme Band"
    #       },
    #       'SongTitle' => {
    #         s: "Happy Day"
    #       }
    #     },
    #     update_expression: "SET #Y = :y, #AT = :t",
    #     expression_attribute_names: {
    #       '#Y' => "Year",
    #       '#AT' => "AlbumTitle"
    #     },
    #     expression_attribute_values: {
    #       ':y' => {
    #         n: "2015"
    #       },
    #       ':t' => {
    #         s: "Louder Than Ever"
    #       }
    #     },
    #     return_values: "ALL_NEW"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     attributes: {
    #       'AlbumTitle' => {
    #         s: "Louder Than Ever"
    #       },
    #       'Artist' => {
    #         s: "Acme Band"
    #       },
    #       'Year' => {
    #         n: "2015"
    #       },
    #       'SongTitle' => {
    #         s: "Happy Day"
    #       }
    #     }
    #   }
    def update_item(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateItemInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateItemInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateItem
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :update_item),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::UpdateItem,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]
        ),
        data_parser: Parsers::UpdateItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
        stub_data_class: Stubs::UpdateItem,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :update_item,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_item] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#update_item] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_item] #{output.data}")
      output
    end

    # <p>The command to update the Kinesis stream destination.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UpdateKinesisStreamingDestinationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UpdateKinesisStreamingDestinationOutput]
    # @example Request syntax with placeholder values
    #   resp = client.update_kinesis_streaming_destination(
    #     table_name: 'TableName', # required
    #     stream_arn: 'StreamArn', # required
    #     update_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: 'MILLISECOND' # accepts ["MILLISECOND", "MICROSECOND"]
    #     }
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateKinesisStreamingDestinationOutput
    #   resp.data.table_name #=> String
    #   resp.data.stream_arn #=> String
    #   resp.data.destination_status #=> String, one of ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"]
    #   resp.data.update_kinesis_streaming_configuration #=> Types::UpdateKinesisStreamingConfiguration
    #   resp.data.update_kinesis_streaming_configuration.approximate_creation_date_time_precision #=> String, one of ["MILLISECOND", "MICROSECOND"]
    def update_kinesis_streaming_destination(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateKinesisStreamingDestinationInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateKinesisStreamingDestinationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateKinesisStreamingDestination
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :update_kinesis_streaming_destination),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::UpdateKinesisStreamingDestination,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]
        ),
        data_parser: Parsers::UpdateKinesisStreamingDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
        stub_data_class: Stubs::UpdateKinesisStreamingDestination,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :update_kinesis_streaming_destination,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_kinesis_streaming_destination] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#update_kinesis_streaming_destination] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_kinesis_streaming_destination] #{output.data}")
      output
    end

    # <p>Modifies the provisioned throughput settings, global secondary indexes, or DynamoDB
    #             Streams settings for a given table.</p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                 of global tables.
    #             </p>
    #          </important>
    #          <p>You can only perform one of the following operations at once:</p>
    #          <ul>
    #             <li>
    #                <p>Modify the provisioned throughput settings of the table.</p>
    #             </li>
    #             <li>
    #                <p>Remove a global secondary index from the table.</p>
    #             </li>
    #             <li>
    #                <p>Create a new global secondary index on the table. After the index begins
    #                     backfilling, you can use <code>UpdateTable</code> to perform other
    #                     operations.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <code>UpdateTable</code> is an asynchronous operation; while
    #             it's
    #             executing, the table status changes from <code>ACTIVE</code> to <code>UPDATING</code>.
    #             While it's <code>UPDATING</code>, you can't issue another <code>UpdateTable</code>
    #             request on the
    #             base table nor any replicas. When the table returns to the
    #                 <code>ACTIVE</code> state, the <code>UpdateTable</code> operation is
    #             complete.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UpdateTableInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UpdateTableOutput]
    # @example Request syntax with placeholder values
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
    #     table_class: 'STANDARD', # accepts ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #     deletion_protection_enabled: false
    #   )
    # @example Response structure
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
    #   resp.data.table_description.deletion_protection_enabled #=> Boolean
    def update_table(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTableInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTableInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTable
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :update_table),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::UpdateTable,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]
        ),
        data_parser: Parsers::UpdateTable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
        stub_data_class: Stubs::UpdateTable,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :update_table,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_table] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#update_table] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_table] #{output.data}")
      output
    end

    # <p>Updates auto scaling settings on your global tables at once.</p>
    #          <important>
    #             <p>This operation only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                 of global tables.
    #             </p>
    #          </important>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UpdateTableReplicaAutoScalingInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UpdateTableReplicaAutoScalingOutput]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    def update_table_replica_auto_scaling(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTableReplicaAutoScalingInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTableReplicaAutoScalingInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTableReplicaAutoScaling
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :update_table_replica_auto_scaling),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::UpdateTableReplicaAutoScaling,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]
        ),
        data_parser: Parsers::UpdateTableReplicaAutoScaling
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
        stub_data_class: Stubs::UpdateTableReplicaAutoScaling,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :update_table_replica_auto_scaling,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_table_replica_auto_scaling] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#update_table_replica_auto_scaling] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_table_replica_auto_scaling] #{output.data}")
      output
    end

    # <p>The <code>UpdateTimeToLive</code> method enables or disables Time to Live (TTL) for
    #             the specified table. A successful <code>UpdateTimeToLive</code> call returns the current
    #                 <code>TimeToLiveSpecification</code>. It can take up to one hour for the change to
    #             fully process. Any additional <code>UpdateTimeToLive</code> calls for the same table
    #             during this one hour duration result in a <code>ValidationException</code>. </p>
    #          <p>TTL compares the current time in epoch time format to the time stored in the TTL
    #             attribute of an item. If the epoch time value stored in the attribute is less than the
    #             current time, the item is marked as expired and subsequently deleted.</p>
    #          <note>
    #             <p> The epoch time format is the number of seconds elapsed since 12:00:00 AM January
    #                 1, 1970 UTC. </p>
    #          </note>
    #          <p>DynamoDB deletes expired items on a best-effort basis to ensure availability of
    #             throughput for other data operations. </p>
    #          <important>
    #             <p>DynamoDB typically deletes expired items within two days of expiration. The exact
    #                 duration within which an item gets deleted after expiration is specific to the
    #                 nature of the workload. Items that have expired and not been deleted will still show
    #                 up in reads, queries, and scans.</p>
    #          </important>
    #          <p>As items are deleted, they are removed from any local secondary index and global
    #             secondary index immediately in the same eventually consistent way as a standard delete
    #             operation.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html">Time To Live</a> in the
    #             Amazon DynamoDB Developer Guide. </p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UpdateTimeToLiveInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UpdateTimeToLiveOutput]
    # @example Request syntax with placeholder values
    #   resp = client.update_time_to_live(
    #     table_name: 'TableName', # required
    #     time_to_live_specification: {
    #       enabled: false, # required
    #       attribute_name: 'AttributeName' # required
    #     } # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateTimeToLiveOutput
    #   resp.data.time_to_live_specification #=> Types::TimeToLiveSpecification
    #   resp.data.time_to_live_specification.enabled #=> Boolean
    #   resp.data.time_to_live_specification.attribute_name #=> String
    def update_time_to_live(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTimeToLiveInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTimeToLiveInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTimeToLive
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :update_time_to_live),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Endpoint,
        endpoint: config.endpoint,
        endpoint_provider: config.endpoint_provider,
        region: config.region,
        param_builder: Endpoint::Parameters::UpdateTimeToLive,
        use_dualstack_endpoint: config.use_dualstack_endpoint,
        use_fips_endpoint: config.use_fips_endpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]
        ),
        data_parser: Parsers::UpdateTimeToLive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
        stub_data_class: Stubs::UpdateTimeToLive,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :update_time_to_live,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_time_to_live] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#update_time_to_live] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#update_time_to_live] #{output.data}")
      output
    end

    private

    def initialize_config(options)
      client_interceptors = options.delete(:interceptors)
      config = Config.new(**options)
      Client.plugins.each { |p| p.call(config) }
      config.plugins.each { |p| p.call(config) }
      config.interceptors.concat(Hearth::InterceptorList.new(client_interceptors)) if client_interceptors
      config.validate!
      config.freeze
    end

    def operation_config(options)
      return @config if options.empty?

      operation_plugins = options.delete(:plugins)
      operation_interceptors = options.delete(:interceptors)
      config = @config.merge(options)
      Hearth::PluginList.new(operation_plugins).each { |p| p.call(config) } if operation_plugins
      config.interceptors.concat(Hearth::InterceptorList.new(operation_interceptors)) if operation_interceptors
      config.validate!
      config.freeze
    end
  end
end
