# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoTAnalytics
  # An API client for AWSIoTAnalytics
  # See {#initialize} for a full list of supported configuration options
  # <p>IoT Analytics allows you to collect large amounts of device data, process messages, and store them.
  #         You can then query the data and run sophisticated analytics on it.  IoT Analytics enables advanced
  #     data exploration through integration with Jupyter Notebooks and data visualization through integration
  #     with Amazon QuickSight.</p>
  #
  #          <p>Traditional analytics and business intelligence tools are designed to process structured data. IoT data
  #     often comes from devices that record noisy processes (such as temperature, motion, or sound). As a result
  #     the data from these devices can have significant gaps, corrupted messages, and false readings that must be
  #     cleaned up before analysis can occur. Also, IoT data is often only meaningful in the context of other data
  #     from external sources. </p>
  #
  #          <p>IoT Analytics automates the steps required to analyze data from IoT devices. IoT Analytics
  #     filters, transforms, and enriches IoT data before storing it in a time-series data store for analysis. You
  #     can set up the service to collect only the data you need from your devices, apply mathematical transforms
  #     to process the data, and enrich the data with device-specific metadata such as device type and location
  #     before storing it. Then, you can analyze your data by running queries using the built-in SQL query engine,
  #     or perform more complex analytics and machine learning inference. IoT Analytics includes pre-built models
  #     for common IoT use cases so you can answer questions like which devices are about to fail or which customers
  #     are at risk of abandoning their wearable devices.</p>
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
    def initialize(config = AWS::SDK::IoTAnalytics::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Sends messages to a channel.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchPutMessageInput}.
    #
    # @option params [String] :channel_name
    #   <p>The name of the channel where the messages are sent.</p>
    #
    # @option params [Array<Message>] :messages
    #   <p>The list of messages to be sent. Each message has the format: { "messageId": "string",
    #            "payload": "string"}.</p>
    #            <p>The field names of message payloads (data) that you send to IoT Analytics:</p>
    #           <ul>
    #               <li>
    #                  <p>Must contain only alphanumeric characters and undescores (_). No other special characters are
    #                  allowed.</p>
    #               </li>
    #               <li>
    #                  <p>Must begin with an alphabetic character or single underscore (_).</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain hyphens (-).</p>
    #               </li>
    #               <li>
    #                  <p>In regular expression terms: "^[A-Za-z_]([A-Za-z0-9]*|[A-Za-z0-9][A-Za-z0-9_]*)$".
    #               </p>
    #               </li>
    #               <li>
    #                  <p>Cannot be more than 255 characters.</p>
    #               </li>
    #               <li>
    #                  <p>Are case insensitive. (Fields named foo and FOO in the same payload are considered
    #                  duplicates.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, {"temp_01": 29} or {"_temp_01": 29} are valid, but {"temp-01": 29},
    #    {"01_temp": 29} or {"__temp_01": 29} are invalid in message payloads.  </p>
    #
    # @return [Types::BatchPutMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_message(
    #     channel_name: 'channelName', # required
    #     messages: [
    #       {
    #         message_id: 'messageId', # required
    #         payload: 'payload' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchPutMessageOutput
    #   resp.data.batch_put_message_error_entries #=> Array<BatchPutMessageErrorEntry>
    #   resp.data.batch_put_message_error_entries[0] #=> Types::BatchPutMessageErrorEntry
    #   resp.data.batch_put_message_error_entries[0].message_id #=> String
    #   resp.data.batch_put_message_error_entries[0].error_code #=> String
    #   resp.data.batch_put_message_error_entries[0].error_message #=> String
    #
    def batch_put_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchPutMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchPutMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchPutMessage
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchPutMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchPutMessage,
        stubs: @stubs,
        params_class: Params::BatchPutMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_put_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the reprocessing of data through the pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelPipelineReprocessingInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of pipeline for which data reprocessing is canceled.</p>
    #
    # @option params [String] :reprocessing_id
    #   <p>The ID of the reprocessing task (returned by
    #         <code>StartPipelineReprocessing</code>).</p>
    #
    # @return [Types::CancelPipelineReprocessingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_pipeline_reprocessing(
    #     pipeline_name: 'pipelineName', # required
    #     reprocessing_id: 'reprocessingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelPipelineReprocessingOutput
    #
    def cancel_pipeline_reprocessing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelPipelineReprocessingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelPipelineReprocessingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelPipelineReprocessing
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::CancelPipelineReprocessing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelPipelineReprocessing,
        stubs: @stubs,
        params_class: Params::CancelPipelineReprocessingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_pipeline_reprocessing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to create a channel. A channel collects data from an MQTT topic and archives the raw,
    #       unprocessed messages before publishing the data to a pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    #
    # @option params [ChannelStorage] :channel_storage
    #   <p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or
    #           <code>customerManagedS3</code> storage. If not specified, the default is
    #           <code>serviceManagedS3</code>. You can't change this storage option after the channel is
    #         created.</p>
    #
    # @option params [RetentionPeriod] :retention_period
    #   <p>How long, in days, message data is kept for the channel. When
    #           <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the channel.</p>
    #
    # @return [Types::CreateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel(
    #     channel_name: 'channelName', # required
    #     channel_storage: {
    #       service_managed_s3: { },
    #       customer_managed_s3: {
    #         bucket: 'bucket', # required
    #         key_prefix: 'keyPrefix',
    #         role_arn: 'roleArn' # required
    #       }
    #     },
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     },
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelOutput
    #   resp.data.channel_name #=> String
    #   resp.data.channel_arn #=> String
    #   resp.data.retention_period #=> Types::RetentionPeriod
    #   resp.data.retention_period.unlimited #=> Boolean
    #   resp.data.retention_period.number_of_days #=> Integer
    #
    def create_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChannel
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::LimitExceededException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceAlreadyExistsException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChannel,
        stubs: @stubs,
        params_class: Params::CreateChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to create a dataset. A dataset stores data retrieved from a data store by applying a
    #         <code>queryAction</code> (a SQL query) or a <code>containerAction</code> (executing a
    #       containerized application). This operation creates the skeleton of a dataset. The dataset can
    #       be populated manually by calling <code>CreateDatasetContent</code> or automatically according
    #       to a trigger you specify.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset.</p>
    #
    # @option params [Array<DatasetAction>] :actions
    #   <p>A list of actions that create the dataset contents.</p>
    #
    # @option params [Array<DatasetTrigger>] :triggers
    #   <p>A list of triggers. A trigger causes dataset contents to be populated at a specified time
    #         interval or when another dataset's contents are created. The list of triggers can be empty or
    #         contain up to five <code>DataSetTrigger</code> objects.</p>
    #
    # @option params [Array<DatasetContentDeliveryRule>] :content_delivery_rules
    #   <p>When dataset contents are created, they are delivered to destinations specified
    #         here.</p>
    #
    # @option params [RetentionPeriod] :retention_period
    #   <p>Optional. How long, in days, versions of dataset contents are kept for the dataset. If not
    #         specified or set to <code>null</code>, versions of dataset contents are retained for at most
    #         90 days. The number of versions of dataset contents retained is determined by the
    #           <code>versioningConfiguration</code> parameter. For more information, see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions">
    #           Keeping Multiple Versions of IoT Analytics datasets</a> in the
    #           <i>IoT Analytics User Guide</i>.</p>
    #
    # @option params [VersioningConfiguration] :versioning_configuration
    #   <p>Optional. How many versions of dataset contents are kept. If not specified or set to null,
    #         only the latest version plus the latest succeeded version (if they are different) are kept for
    #         the time period specified by the <code>retentionPeriod</code> parameter. For more information,
    #         see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions">Keeping Multiple Versions of IoT Analytics datasets</a> in the
    #           <i>IoT Analytics User Guide</i>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the dataset.</p>
    #
    # @option params [Array<LateDataRule>] :late_data_rules
    #   <p>A list of data rules that send notifications to CloudWatch, when data arrives late. To specify <code>lateDataRules</code>, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    #
    # @return [Types::CreateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset(
    #     dataset_name: 'datasetName', # required
    #     actions: [
    #       {
    #         action_name: 'actionName',
    #         query_action: {
    #           sql_query: 'sqlQuery', # required
    #           filters: [
    #             {
    #               delta_time: {
    #                 offset_seconds: 1, # required
    #                 time_expression: 'timeExpression' # required
    #               }
    #             }
    #           ]
    #         },
    #         container_action: {
    #           image: 'image', # required
    #           execution_role_arn: 'executionRoleArn', # required
    #           resource_configuration: {
    #             compute_type: 'ACU_1', # required - accepts ["ACU_1", "ACU_2"]
    #             volume_size_in_gb: 1 # required
    #           }, # required
    #           variables: [
    #             {
    #               name: 'name', # required
    #               string_value: 'stringValue',
    #               double_value: 1.0,
    #               dataset_content_version_value: {
    #                 dataset_name: 'datasetName' # required
    #               },
    #               output_file_uri_value: {
    #                 file_name: 'fileName' # required
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     ], # required
    #     triggers: [
    #       {
    #         schedule: {
    #           expression: 'expression'
    #         },
    #         dataset: {
    #           name: 'name' # required
    #         }
    #       }
    #     ],
    #     content_delivery_rules: [
    #       {
    #         entry_name: 'entryName',
    #         destination: {
    #           iot_events_destination_configuration: {
    #             input_name: 'inputName', # required
    #             role_arn: 'roleArn' # required
    #           },
    #           s3_destination_configuration: {
    #             bucket: 'bucket', # required
    #             key: 'key', # required
    #             glue_configuration: {
    #               table_name: 'tableName', # required
    #               database_name: 'databaseName' # required
    #             },
    #             role_arn: 'roleArn' # required
    #           }
    #         } # required
    #       }
    #     ],
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     },
    #     versioning_configuration: {
    #       unlimited: false,
    #       max_versions: 1
    #     },
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     late_data_rules: [
    #       {
    #         rule_name: 'ruleName',
    #         rule_configuration: {
    #           delta_time_session_window_configuration: {
    #             timeout_in_minutes: 1 # required
    #           }
    #         } # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetOutput
    #   resp.data.dataset_name #=> String
    #   resp.data.dataset_arn #=> String
    #   resp.data.retention_period #=> Types::RetentionPeriod
    #   resp.data.retention_period.unlimited #=> Boolean
    #   resp.data.retention_period.number_of_days #=> Integer
    #
    def create_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataset
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::LimitExceededException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceAlreadyExistsException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataset,
        stubs: @stubs,
        params_class: Params::CreateDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the content of a dataset by applying a <code>queryAction</code> (a SQL query) or a
    #         <code>containerAction</code> (executing a containerized application).</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetContentInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset.</p>
    #
    # @option params [String] :version_id
    #   <p>The version ID of the dataset content. To specify <code>versionId</code> for a dataset
    #         content, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    #
    # @return [Types::CreateDatasetContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_content(
    #     dataset_name: 'datasetName', # required
    #     version_id: 'versionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetContentOutput
    #   resp.data.version_id #=> String
    #
    def create_dataset_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatasetContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatasetContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDatasetContent
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateDatasetContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDatasetContent,
        stubs: @stubs,
        params_class: Params::CreateDatasetContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dataset_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a data store, which is a repository for messages.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatastoreInput}.
    #
    # @option params [String] :datastore_name
    #   <p>The name of the data store.</p>
    #
    # @option params [DatastoreStorage] :datastore_storage
    #   <p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>
    #
    # @option params [RetentionPeriod] :retention_period
    #   <p>How long, in days, message data is kept for the data store. When
    #           <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the data store.</p>
    #
    # @option params [FileFormatConfiguration] :file_format_configuration
    #   <p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href="https://parquet.apache.org/">Parquet</a>.</p>
    #            <p>The default file format is JSON. You can specify only one format.</p>
    #            <p>You can't change the file format after you create the data store.</p>
    #
    # @option params [DatastorePartitions] :datastore_partitions
    #   <p> Contains information about the partition dimensions in a data store. </p>
    #
    # @return [Types::CreateDatastoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_datastore(
    #     datastore_name: 'datastoreName', # required
    #     datastore_storage: {
    #       # One of:
    #       service_managed_s3: { },
    #       customer_managed_s3: {
    #         bucket: 'bucket', # required
    #         key_prefix: 'keyPrefix',
    #         role_arn: 'roleArn' # required
    #       },
    #       iot_site_wise_multi_layer_storage: {
    #         customer_managed_s3_storage: {
    #           bucket: 'bucket', # required
    #           key_prefix: 'keyPrefix'
    #         } # required
    #       }
    #     },
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     },
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ],
    #     file_format_configuration: {
    #       json_configuration: { },
    #       parquet_configuration: {
    #         schema_definition: {
    #           columns: [
    #             {
    #               name: 'name', # required
    #               type: 'type' # required
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     datastore_partitions: {
    #       partitions: [
    #         {
    #           attribute_partition: {
    #             attribute_name: 'attributeName' # required
    #           },
    #           timestamp_partition: {
    #             attribute_name: 'attributeName', # required
    #             timestamp_format: 'timestampFormat'
    #           }
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatastoreOutput
    #   resp.data.datastore_name #=> String
    #   resp.data.datastore_arn #=> String
    #   resp.data.retention_period #=> Types::RetentionPeriod
    #   resp.data.retention_period.unlimited #=> Boolean
    #   resp.data.retention_period.number_of_days #=> Integer
    #
    def create_datastore(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatastoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatastoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDatastore
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::LimitExceededException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceAlreadyExistsException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateDatastore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDatastore,
        stubs: @stubs,
        params_class: Params::CreateDatastoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_datastore
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a pipeline. A pipeline consumes messages from a channel and allows you to process
    #       the messages before storing them in a data store. You must specify both a <code>channel</code>
    #       and a <code>datastore</code> activity and, optionally, as many as 23 additional activities in
    #       the <code>pipelineActivities</code> array.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePipelineInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline.</p>
    #
    # @option params [Array<PipelineActivity>] :pipeline_activities
    #   <p>A list of <code>PipelineActivity</code> objects. Activities perform transformations on
    #         your messages, such as removing, renaming or adding message attributes; filtering messages
    #         based on attribute values; invoking your Lambda unctions on messages for advanced processing;
    #         or performing mathematical transformations to normalize device data.</p>
    #            <p>The list can be 2-25 <code>PipelineActivity</code> objects and must contain both a
    #           <code>channel</code> and a <code>datastore</code> activity. Each entry in the list must
    #         contain only one activity. For example:</p>
    #            <p>
    #               <code>pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } }, ...
    #         ]</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Metadata which can be used to manage the pipeline.</p>
    #
    # @return [Types::CreatePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pipeline(
    #     pipeline_name: 'pipelineName', # required
    #     pipeline_activities: [
    #       {
    #         channel: {
    #           name: 'name', # required
    #           channel_name: 'channelName', # required
    #           next: 'next'
    #         },
    #         lambda: {
    #           name: 'name', # required
    #           lambda_name: 'lambdaName', # required
    #           batch_size: 1, # required
    #           next: 'next'
    #         },
    #         datastore: {
    #           name: 'name', # required
    #           datastore_name: 'datastoreName' # required
    #         },
    #         add_attributes: {
    #           name: 'name', # required
    #           attributes: {
    #             'key' => 'value'
    #           }, # required
    #           next: 'next'
    #         },
    #         remove_attributes: {
    #           name: 'name', # required
    #           attributes: [
    #             'member'
    #           ], # required
    #           next: 'next'
    #         },
    #         select_attributes: {
    #           name: 'name', # required
    #           next: 'next'
    #         },
    #         filter: {
    #           name: 'name', # required
    #           filter: 'filter', # required
    #           next: 'next'
    #         },
    #         math: {
    #           name: 'name', # required
    #           attribute: 'attribute', # required
    #           math: 'math', # required
    #           next: 'next'
    #         },
    #         device_registry_enrich: {
    #           name: 'name', # required
    #           attribute: 'attribute', # required
    #           thing_name: 'thingName', # required
    #           role_arn: 'roleArn', # required
    #           next: 'next'
    #         },
    #         device_shadow_enrich: {
    #           name: 'name', # required
    #           attribute: 'attribute', # required
    #           thing_name: 'thingName', # required
    #           role_arn: 'roleArn', # required
    #           next: 'next'
    #         }
    #       }
    #     ], # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePipelineOutput
    #   resp.data.pipeline_name #=> String
    #   resp.data.pipeline_arn #=> String
    #
    def create_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePipeline
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::LimitExceededException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceAlreadyExistsException, Errors::InternalFailureException]),
        data_parser: Parsers::CreatePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePipeline,
        stubs: @stubs,
        params_class: Params::CreatePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The name of the channel to delete.</p>
    #
    # @return [Types::DeleteChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel(
    #     channel_name: 'channelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelOutput
    #
    def delete_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannel
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannel,
        stubs: @stubs,
        params_class: Params::DeleteChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified dataset.</p>
    #          <p>You do not have to delete the content of the dataset before you perform this
    #       operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset to delete.</p>
    #
    # @return [Types::DeleteDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset(
    #     dataset_name: 'datasetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatasetOutput
    #
    def delete_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataset
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataset,
        stubs: @stubs,
        params_class: Params::DeleteDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the content of the specified dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetContentInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset whose content is deleted.</p>
    #
    # @option params [String] :version_id
    #   <p>The version of the dataset whose content is deleted. You can also use the strings
    #         "$LATEST" or "$LATEST_SUCCEEDED" to delete the latest or latest successfully completed data
    #         set. If not specified, "$LATEST_SUCCEEDED" is the default.</p>
    #
    # @return [Types::DeleteDatasetContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset_content(
    #     dataset_name: 'datasetName', # required
    #     version_id: 'versionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatasetContentOutput
    #
    def delete_dataset_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDatasetContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDatasetContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDatasetContent
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteDatasetContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDatasetContent,
        stubs: @stubs,
        params_class: Params::DeleteDatasetContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dataset_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified data store.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatastoreInput}.
    #
    # @option params [String] :datastore_name
    #   <p>The name of the data store to delete.</p>
    #
    # @return [Types::DeleteDatastoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_datastore(
    #     datastore_name: 'datastoreName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatastoreOutput
    #
    def delete_datastore(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDatastoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDatastoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDatastore
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteDatastore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDatastore,
        stubs: @stubs,
        params_class: Params::DeleteDatastoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_datastore
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePipelineInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline to delete.</p>
    #
    # @return [Types::DeletePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pipeline(
    #     pipeline_name: 'pipelineName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePipelineOutput
    #
    def delete_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePipeline
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeletePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePipeline,
        stubs: @stubs,
        params_class: Params::DeletePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The name of the channel whose information is retrieved.</p>
    #
    # @option params [Boolean] :include_statistics
    #   <p>If true, additional statistical information about the channel is included in the response.
    #         This feature can't be used with a channel whose S3 storage is customer-managed.</p>
    #
    # @return [Types::DescribeChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel(
    #     channel_name: 'channelName', # required
    #     include_statistics: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelOutput
    #   resp.data.channel #=> Types::Channel
    #   resp.data.channel.name #=> String
    #   resp.data.channel.storage #=> Types::ChannelStorage
    #   resp.data.channel.storage.service_managed_s3 #=> Types::ServiceManagedChannelS3Storage
    #   resp.data.channel.storage.customer_managed_s3 #=> Types::CustomerManagedChannelS3Storage
    #   resp.data.channel.storage.customer_managed_s3.bucket #=> String
    #   resp.data.channel.storage.customer_managed_s3.key_prefix #=> String
    #   resp.data.channel.storage.customer_managed_s3.role_arn #=> String
    #   resp.data.channel.arn #=> String
    #   resp.data.channel.status #=> String, one of ["CREATING", "ACTIVE", "DELETING"]
    #   resp.data.channel.retention_period #=> Types::RetentionPeriod
    #   resp.data.channel.retention_period.unlimited #=> Boolean
    #   resp.data.channel.retention_period.number_of_days #=> Integer
    #   resp.data.channel.creation_time #=> Time
    #   resp.data.channel.last_update_time #=> Time
    #   resp.data.channel.last_message_arrival_time #=> Time
    #   resp.data.statistics #=> Types::ChannelStatistics
    #   resp.data.statistics.size #=> Types::EstimatedResourceSize
    #   resp.data.statistics.size.estimated_size_in_bytes #=> Float
    #   resp.data.statistics.size.estimated_on #=> Time
    #
    def describe_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannel
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannel,
        stubs: @stubs,
        params_class: Params::DescribeChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset whose information is retrieved.</p>
    #
    # @return [Types::DescribeDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset(
    #     dataset_name: 'datasetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetOutput
    #   resp.data.dataset #=> Types::Dataset
    #   resp.data.dataset.name #=> String
    #   resp.data.dataset.arn #=> String
    #   resp.data.dataset.actions #=> Array<DatasetAction>
    #   resp.data.dataset.actions[0] #=> Types::DatasetAction
    #   resp.data.dataset.actions[0].action_name #=> String
    #   resp.data.dataset.actions[0].query_action #=> Types::SqlQueryDatasetAction
    #   resp.data.dataset.actions[0].query_action.sql_query #=> String
    #   resp.data.dataset.actions[0].query_action.filters #=> Array<QueryFilter>
    #   resp.data.dataset.actions[0].query_action.filters[0] #=> Types::QueryFilter
    #   resp.data.dataset.actions[0].query_action.filters[0].delta_time #=> Types::DeltaTime
    #   resp.data.dataset.actions[0].query_action.filters[0].delta_time.offset_seconds #=> Integer
    #   resp.data.dataset.actions[0].query_action.filters[0].delta_time.time_expression #=> String
    #   resp.data.dataset.actions[0].container_action #=> Types::ContainerDatasetAction
    #   resp.data.dataset.actions[0].container_action.image #=> String
    #   resp.data.dataset.actions[0].container_action.execution_role_arn #=> String
    #   resp.data.dataset.actions[0].container_action.resource_configuration #=> Types::ResourceConfiguration
    #   resp.data.dataset.actions[0].container_action.resource_configuration.compute_type #=> String, one of ["ACU_1", "ACU_2"]
    #   resp.data.dataset.actions[0].container_action.resource_configuration.volume_size_in_gb #=> Integer
    #   resp.data.dataset.actions[0].container_action.variables #=> Array<Variable>
    #   resp.data.dataset.actions[0].container_action.variables[0] #=> Types::Variable
    #   resp.data.dataset.actions[0].container_action.variables[0].name #=> String
    #   resp.data.dataset.actions[0].container_action.variables[0].string_value #=> String
    #   resp.data.dataset.actions[0].container_action.variables[0].double_value #=> Float
    #   resp.data.dataset.actions[0].container_action.variables[0].dataset_content_version_value #=> Types::DatasetContentVersionValue
    #   resp.data.dataset.actions[0].container_action.variables[0].dataset_content_version_value.dataset_name #=> String
    #   resp.data.dataset.actions[0].container_action.variables[0].output_file_uri_value #=> Types::OutputFileUriValue
    #   resp.data.dataset.actions[0].container_action.variables[0].output_file_uri_value.file_name #=> String
    #   resp.data.dataset.triggers #=> Array<DatasetTrigger>
    #   resp.data.dataset.triggers[0] #=> Types::DatasetTrigger
    #   resp.data.dataset.triggers[0].schedule #=> Types::Schedule
    #   resp.data.dataset.triggers[0].schedule.expression #=> String
    #   resp.data.dataset.triggers[0].dataset #=> Types::TriggeringDataset
    #   resp.data.dataset.triggers[0].dataset.name #=> String
    #   resp.data.dataset.content_delivery_rules #=> Array<DatasetContentDeliveryRule>
    #   resp.data.dataset.content_delivery_rules[0] #=> Types::DatasetContentDeliveryRule
    #   resp.data.dataset.content_delivery_rules[0].entry_name #=> String
    #   resp.data.dataset.content_delivery_rules[0].destination #=> Types::DatasetContentDeliveryDestination
    #   resp.data.dataset.content_delivery_rules[0].destination.iot_events_destination_configuration #=> Types::IotEventsDestinationConfiguration
    #   resp.data.dataset.content_delivery_rules[0].destination.iot_events_destination_configuration.input_name #=> String
    #   resp.data.dataset.content_delivery_rules[0].destination.iot_events_destination_configuration.role_arn #=> String
    #   resp.data.dataset.content_delivery_rules[0].destination.s3_destination_configuration #=> Types::S3DestinationConfiguration
    #   resp.data.dataset.content_delivery_rules[0].destination.s3_destination_configuration.bucket #=> String
    #   resp.data.dataset.content_delivery_rules[0].destination.s3_destination_configuration.key #=> String
    #   resp.data.dataset.content_delivery_rules[0].destination.s3_destination_configuration.glue_configuration #=> Types::GlueConfiguration
    #   resp.data.dataset.content_delivery_rules[0].destination.s3_destination_configuration.glue_configuration.table_name #=> String
    #   resp.data.dataset.content_delivery_rules[0].destination.s3_destination_configuration.glue_configuration.database_name #=> String
    #   resp.data.dataset.content_delivery_rules[0].destination.s3_destination_configuration.role_arn #=> String
    #   resp.data.dataset.status #=> String, one of ["CREATING", "ACTIVE", "DELETING"]
    #   resp.data.dataset.creation_time #=> Time
    #   resp.data.dataset.last_update_time #=> Time
    #   resp.data.dataset.retention_period #=> Types::RetentionPeriod
    #   resp.data.dataset.retention_period.unlimited #=> Boolean
    #   resp.data.dataset.retention_period.number_of_days #=> Integer
    #   resp.data.dataset.versioning_configuration #=> Types::VersioningConfiguration
    #   resp.data.dataset.versioning_configuration.unlimited #=> Boolean
    #   resp.data.dataset.versioning_configuration.max_versions #=> Integer
    #   resp.data.dataset.late_data_rules #=> Array<LateDataRule>
    #   resp.data.dataset.late_data_rules[0] #=> Types::LateDataRule
    #   resp.data.dataset.late_data_rules[0].rule_name #=> String
    #   resp.data.dataset.late_data_rules[0].rule_configuration #=> Types::LateDataRuleConfiguration
    #   resp.data.dataset.late_data_rules[0].rule_configuration.delta_time_session_window_configuration #=> Types::DeltaTimeSessionWindowConfiguration
    #   resp.data.dataset.late_data_rules[0].rule_configuration.delta_time_session_window_configuration.timeout_in_minutes #=> Integer
    #
    def describe_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataset
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataset,
        stubs: @stubs,
        params_class: Params::DescribeDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a data store.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatastoreInput}.
    #
    # @option params [String] :datastore_name
    #   <p>The name of the data store</p>
    #
    # @option params [Boolean] :include_statistics
    #   <p>If true, additional statistical information about the data store is included in the
    #         response. This feature can't be used with a data store whose S3 storage is
    #         customer-managed.</p>
    #
    # @return [Types::DescribeDatastoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_datastore(
    #     datastore_name: 'datastoreName', # required
    #     include_statistics: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatastoreOutput
    #   resp.data.datastore #=> Types::Datastore
    #   resp.data.datastore.name #=> String
    #   resp.data.datastore.storage #=> Types::DatastoreStorage, one of [ServiceManagedS3, CustomerManagedS3, IotSiteWiseMultiLayerStorage]
    #   resp.data.datastore.storage.service_managed_s3 #=> Types::ServiceManagedDatastoreS3Storage
    #   resp.data.datastore.storage.customer_managed_s3 #=> Types::CustomerManagedDatastoreS3Storage
    #   resp.data.datastore.storage.customer_managed_s3.bucket #=> String
    #   resp.data.datastore.storage.customer_managed_s3.key_prefix #=> String
    #   resp.data.datastore.storage.customer_managed_s3.role_arn #=> String
    #   resp.data.datastore.storage.iot_site_wise_multi_layer_storage #=> Types::DatastoreIotSiteWiseMultiLayerStorage
    #   resp.data.datastore.storage.iot_site_wise_multi_layer_storage.customer_managed_s3_storage #=> Types::IotSiteWiseCustomerManagedDatastoreS3Storage
    #   resp.data.datastore.storage.iot_site_wise_multi_layer_storage.customer_managed_s3_storage.bucket #=> String
    #   resp.data.datastore.storage.iot_site_wise_multi_layer_storage.customer_managed_s3_storage.key_prefix #=> String
    #   resp.data.datastore.arn #=> String
    #   resp.data.datastore.status #=> String, one of ["CREATING", "ACTIVE", "DELETING"]
    #   resp.data.datastore.retention_period #=> Types::RetentionPeriod
    #   resp.data.datastore.retention_period.unlimited #=> Boolean
    #   resp.data.datastore.retention_period.number_of_days #=> Integer
    #   resp.data.datastore.creation_time #=> Time
    #   resp.data.datastore.last_update_time #=> Time
    #   resp.data.datastore.last_message_arrival_time #=> Time
    #   resp.data.datastore.file_format_configuration #=> Types::FileFormatConfiguration
    #   resp.data.datastore.file_format_configuration.json_configuration #=> Types::JsonConfiguration
    #   resp.data.datastore.file_format_configuration.parquet_configuration #=> Types::ParquetConfiguration
    #   resp.data.datastore.file_format_configuration.parquet_configuration.schema_definition #=> Types::SchemaDefinition
    #   resp.data.datastore.file_format_configuration.parquet_configuration.schema_definition.columns #=> Array<Column>
    #   resp.data.datastore.file_format_configuration.parquet_configuration.schema_definition.columns[0] #=> Types::Column
    #   resp.data.datastore.file_format_configuration.parquet_configuration.schema_definition.columns[0].name #=> String
    #   resp.data.datastore.file_format_configuration.parquet_configuration.schema_definition.columns[0].type #=> String
    #   resp.data.datastore.datastore_partitions #=> Types::DatastorePartitions
    #   resp.data.datastore.datastore_partitions.partitions #=> Array<DatastorePartition>
    #   resp.data.datastore.datastore_partitions.partitions[0] #=> Types::DatastorePartition
    #   resp.data.datastore.datastore_partitions.partitions[0].attribute_partition #=> Types::Partition
    #   resp.data.datastore.datastore_partitions.partitions[0].attribute_partition.attribute_name #=> String
    #   resp.data.datastore.datastore_partitions.partitions[0].timestamp_partition #=> Types::TimestampPartition
    #   resp.data.datastore.datastore_partitions.partitions[0].timestamp_partition.attribute_name #=> String
    #   resp.data.datastore.datastore_partitions.partitions[0].timestamp_partition.timestamp_format #=> String
    #   resp.data.statistics #=> Types::DatastoreStatistics
    #   resp.data.statistics.size #=> Types::EstimatedResourceSize
    #   resp.data.statistics.size.estimated_size_in_bytes #=> Float
    #   resp.data.statistics.size.estimated_on #=> Time
    #
    def describe_datastore(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDatastoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDatastoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDatastore
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDatastore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDatastore,
        stubs: @stubs,
        params_class: Params::DescribeDatastoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_datastore
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the current settings of the IoT Analytics logging options.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoggingOptionsInput}.
    #
    # @return [Types::DescribeLoggingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_logging_options()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoggingOptionsOutput
    #   resp.data.logging_options #=> Types::LoggingOptions
    #   resp.data.logging_options.role_arn #=> String
    #   resp.data.logging_options.level #=> String, one of ["ERROR"]
    #   resp.data.logging_options.enabled #=> Boolean
    #
    def describe_logging_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoggingOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoggingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoggingOptions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeLoggingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoggingOptions,
        stubs: @stubs,
        params_class: Params::DescribeLoggingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_logging_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePipelineInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline whose information is retrieved.</p>
    #
    # @return [Types::DescribePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pipeline(
    #     pipeline_name: 'pipelineName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePipelineOutput
    #   resp.data.pipeline #=> Types::Pipeline
    #   resp.data.pipeline.name #=> String
    #   resp.data.pipeline.arn #=> String
    #   resp.data.pipeline.activities #=> Array<PipelineActivity>
    #   resp.data.pipeline.activities[0] #=> Types::PipelineActivity
    #   resp.data.pipeline.activities[0].channel #=> Types::ChannelActivity
    #   resp.data.pipeline.activities[0].channel.name #=> String
    #   resp.data.pipeline.activities[0].channel.channel_name #=> String
    #   resp.data.pipeline.activities[0].channel.next #=> String
    #   resp.data.pipeline.activities[0].lambda #=> Types::LambdaActivity
    #   resp.data.pipeline.activities[0].lambda.name #=> String
    #   resp.data.pipeline.activities[0].lambda.lambda_name #=> String
    #   resp.data.pipeline.activities[0].lambda.batch_size #=> Integer
    #   resp.data.pipeline.activities[0].lambda.next #=> String
    #   resp.data.pipeline.activities[0].datastore #=> Types::DatastoreActivity
    #   resp.data.pipeline.activities[0].datastore.name #=> String
    #   resp.data.pipeline.activities[0].datastore.datastore_name #=> String
    #   resp.data.pipeline.activities[0].add_attributes #=> Types::AddAttributesActivity
    #   resp.data.pipeline.activities[0].add_attributes.name #=> String
    #   resp.data.pipeline.activities[0].add_attributes.attributes #=> Hash<String, String>
    #   resp.data.pipeline.activities[0].add_attributes.attributes['key'] #=> String
    #   resp.data.pipeline.activities[0].add_attributes.next #=> String
    #   resp.data.pipeline.activities[0].remove_attributes #=> Types::RemoveAttributesActivity
    #   resp.data.pipeline.activities[0].remove_attributes.name #=> String
    #   resp.data.pipeline.activities[0].remove_attributes.attributes #=> Array<String>
    #   resp.data.pipeline.activities[0].remove_attributes.attributes[0] #=> String
    #   resp.data.pipeline.activities[0].remove_attributes.next #=> String
    #   resp.data.pipeline.activities[0].select_attributes #=> Types::SelectAttributesActivity
    #   resp.data.pipeline.activities[0].select_attributes.name #=> String
    #   resp.data.pipeline.activities[0].select_attributes.attributes #=> Array<String>
    #   resp.data.pipeline.activities[0].select_attributes.next #=> String
    #   resp.data.pipeline.activities[0].filter #=> Types::FilterActivity
    #   resp.data.pipeline.activities[0].filter.name #=> String
    #   resp.data.pipeline.activities[0].filter.filter #=> String
    #   resp.data.pipeline.activities[0].filter.next #=> String
    #   resp.data.pipeline.activities[0].math #=> Types::MathActivity
    #   resp.data.pipeline.activities[0].math.name #=> String
    #   resp.data.pipeline.activities[0].math.attribute #=> String
    #   resp.data.pipeline.activities[0].math.math #=> String
    #   resp.data.pipeline.activities[0].math.next #=> String
    #   resp.data.pipeline.activities[0].device_registry_enrich #=> Types::DeviceRegistryEnrichActivity
    #   resp.data.pipeline.activities[0].device_registry_enrich.name #=> String
    #   resp.data.pipeline.activities[0].device_registry_enrich.attribute #=> String
    #   resp.data.pipeline.activities[0].device_registry_enrich.thing_name #=> String
    #   resp.data.pipeline.activities[0].device_registry_enrich.role_arn #=> String
    #   resp.data.pipeline.activities[0].device_registry_enrich.next #=> String
    #   resp.data.pipeline.activities[0].device_shadow_enrich #=> Types::DeviceShadowEnrichActivity
    #   resp.data.pipeline.activities[0].device_shadow_enrich.name #=> String
    #   resp.data.pipeline.activities[0].device_shadow_enrich.attribute #=> String
    #   resp.data.pipeline.activities[0].device_shadow_enrich.thing_name #=> String
    #   resp.data.pipeline.activities[0].device_shadow_enrich.role_arn #=> String
    #   resp.data.pipeline.activities[0].device_shadow_enrich.next #=> String
    #   resp.data.pipeline.reprocessing_summaries #=> Array<ReprocessingSummary>
    #   resp.data.pipeline.reprocessing_summaries[0] #=> Types::ReprocessingSummary
    #   resp.data.pipeline.reprocessing_summaries[0].id #=> String
    #   resp.data.pipeline.reprocessing_summaries[0].status #=> String, one of ["RUNNING", "SUCCEEDED", "CANCELLED", "FAILED"]
    #   resp.data.pipeline.reprocessing_summaries[0].creation_time #=> Time
    #   resp.data.pipeline.creation_time #=> Time
    #   resp.data.pipeline.last_update_time #=> Time
    #
    def describe_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePipeline
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePipeline,
        stubs: @stubs,
        params_class: Params::DescribePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the contents of a dataset as presigned URIs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDatasetContentInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset whose contents are retrieved.</p>
    #
    # @option params [String] :version_id
    #   <p>The version of the dataset whose contents are retrieved. You can also use the strings
    #         "$LATEST" or "$LATEST_SUCCEEDED" to retrieve the contents of the latest or latest successfully
    #         completed dataset. If not specified, "$LATEST_SUCCEEDED" is the default.</p>
    #
    # @return [Types::GetDatasetContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dataset_content(
    #     dataset_name: 'datasetName', # required
    #     version_id: 'versionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDatasetContentOutput
    #   resp.data.entries #=> Array<DatasetEntry>
    #   resp.data.entries[0] #=> Types::DatasetEntry
    #   resp.data.entries[0].entry_name #=> String
    #   resp.data.entries[0].data_uri #=> String
    #   resp.data.timestamp #=> Time
    #   resp.data.status #=> Types::DatasetContentStatus
    #   resp.data.status.state #=> String, one of ["CREATING", "SUCCEEDED", "FAILED"]
    #   resp.data.status.reason #=> String
    #
    def get_dataset_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDatasetContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDatasetContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDatasetContent
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetDatasetContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDatasetContent,
        stubs: @stubs,
        params_class: Params::GetDatasetContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_dataset_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of channels.</p>
    #
    # @param [Hash] params
    #   See {Types::ListChannelsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    #
    # @return [Types::ListChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelsOutput
    #   resp.data.channel_summaries #=> Array<ChannelSummary>
    #   resp.data.channel_summaries[0] #=> Types::ChannelSummary
    #   resp.data.channel_summaries[0].channel_name #=> String
    #   resp.data.channel_summaries[0].channel_storage #=> Types::ChannelStorageSummary
    #   resp.data.channel_summaries[0].channel_storage.service_managed_s3 #=> Types::ServiceManagedChannelS3StorageSummary
    #   resp.data.channel_summaries[0].channel_storage.customer_managed_s3 #=> Types::CustomerManagedChannelS3StorageSummary
    #   resp.data.channel_summaries[0].channel_storage.customer_managed_s3.bucket #=> String
    #   resp.data.channel_summaries[0].channel_storage.customer_managed_s3.key_prefix #=> String
    #   resp.data.channel_summaries[0].channel_storage.customer_managed_s3.role_arn #=> String
    #   resp.data.channel_summaries[0].status #=> String, one of ["CREATING", "ACTIVE", "DELETING"]
    #   resp.data.channel_summaries[0].creation_time #=> Time
    #   resp.data.channel_summaries[0].last_update_time #=> Time
    #   resp.data.channel_summaries[0].last_message_arrival_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannels
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::ListChannels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannels,
        stubs: @stubs,
        params_class: Params::ListChannelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about dataset contents that have been created.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetContentsInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset whose contents information you want to list.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #
    # @option params [Time] :scheduled_on_or_after
    #   <p>A filter to limit results to those dataset contents whose creation is scheduled on or
    #         after the given time. See the field <code>triggers.schedule</code> in the
    #           <code>CreateDataset</code> request. (timestamp)</p>
    #
    # @option params [Time] :scheduled_before
    #   <p>A filter to limit results to those dataset contents whose creation is scheduled before the
    #         given time. See the field <code>triggers.schedule</code> in the <code>CreateDataset</code>
    #         request. (timestamp)</p>
    #
    # @return [Types::ListDatasetContentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_contents(
    #     dataset_name: 'datasetName', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     scheduled_on_or_after: Time.now,
    #     scheduled_before: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetContentsOutput
    #   resp.data.dataset_content_summaries #=> Array<DatasetContentSummary>
    #   resp.data.dataset_content_summaries[0] #=> Types::DatasetContentSummary
    #   resp.data.dataset_content_summaries[0].version #=> String
    #   resp.data.dataset_content_summaries[0].status #=> Types::DatasetContentStatus
    #   resp.data.dataset_content_summaries[0].status.state #=> String, one of ["CREATING", "SUCCEEDED", "FAILED"]
    #   resp.data.dataset_content_summaries[0].status.reason #=> String
    #   resp.data.dataset_content_summaries[0].creation_time #=> Time
    #   resp.data.dataset_content_summaries[0].schedule_time #=> Time
    #   resp.data.dataset_content_summaries[0].completion_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_dataset_contents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetContentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetContentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasetContents
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::ListDatasetContents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasetContents,
        stubs: @stubs,
        params_class: Params::ListDatasetContentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dataset_contents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about datasets.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    #
    # @return [Types::ListDatasetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetsOutput
    #   resp.data.dataset_summaries #=> Array<DatasetSummary>
    #   resp.data.dataset_summaries[0] #=> Types::DatasetSummary
    #   resp.data.dataset_summaries[0].dataset_name #=> String
    #   resp.data.dataset_summaries[0].status #=> String, one of ["CREATING", "ACTIVE", "DELETING"]
    #   resp.data.dataset_summaries[0].creation_time #=> Time
    #   resp.data.dataset_summaries[0].last_update_time #=> Time
    #   resp.data.dataset_summaries[0].triggers #=> Array<DatasetTrigger>
    #   resp.data.dataset_summaries[0].triggers[0] #=> Types::DatasetTrigger
    #   resp.data.dataset_summaries[0].triggers[0].schedule #=> Types::Schedule
    #   resp.data.dataset_summaries[0].triggers[0].schedule.expression #=> String
    #   resp.data.dataset_summaries[0].triggers[0].dataset #=> Types::TriggeringDataset
    #   resp.data.dataset_summaries[0].triggers[0].dataset.name #=> String
    #   resp.data.dataset_summaries[0].actions #=> Array<DatasetActionSummary>
    #   resp.data.dataset_summaries[0].actions[0] #=> Types::DatasetActionSummary
    #   resp.data.dataset_summaries[0].actions[0].action_name #=> String
    #   resp.data.dataset_summaries[0].actions[0].action_type #=> String, one of ["QUERY", "CONTAINER"]
    #   resp.data.next_token #=> String
    #
    def list_datasets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasets
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::ListDatasets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasets,
        stubs: @stubs,
        params_class: Params::ListDatasetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_datasets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of data stores.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatastoresInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    #
    # @return [Types::ListDatastoresOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datastores(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatastoresOutput
    #   resp.data.datastore_summaries #=> Array<DatastoreSummary>
    #   resp.data.datastore_summaries[0] #=> Types::DatastoreSummary
    #   resp.data.datastore_summaries[0].datastore_name #=> String
    #   resp.data.datastore_summaries[0].datastore_storage #=> Types::DatastoreStorageSummary
    #   resp.data.datastore_summaries[0].datastore_storage.service_managed_s3 #=> Types::ServiceManagedDatastoreS3StorageSummary
    #   resp.data.datastore_summaries[0].datastore_storage.customer_managed_s3 #=> Types::CustomerManagedDatastoreS3StorageSummary
    #   resp.data.datastore_summaries[0].datastore_storage.customer_managed_s3.bucket #=> String
    #   resp.data.datastore_summaries[0].datastore_storage.customer_managed_s3.key_prefix #=> String
    #   resp.data.datastore_summaries[0].datastore_storage.customer_managed_s3.role_arn #=> String
    #   resp.data.datastore_summaries[0].datastore_storage.iot_site_wise_multi_layer_storage #=> Types::DatastoreIotSiteWiseMultiLayerStorageSummary
    #   resp.data.datastore_summaries[0].datastore_storage.iot_site_wise_multi_layer_storage.customer_managed_s3_storage #=> Types::IotSiteWiseCustomerManagedDatastoreS3StorageSummary
    #   resp.data.datastore_summaries[0].datastore_storage.iot_site_wise_multi_layer_storage.customer_managed_s3_storage.bucket #=> String
    #   resp.data.datastore_summaries[0].datastore_storage.iot_site_wise_multi_layer_storage.customer_managed_s3_storage.key_prefix #=> String
    #   resp.data.datastore_summaries[0].status #=> String, one of ["CREATING", "ACTIVE", "DELETING"]
    #   resp.data.datastore_summaries[0].creation_time #=> Time
    #   resp.data.datastore_summaries[0].last_update_time #=> Time
    #   resp.data.datastore_summaries[0].last_message_arrival_time #=> Time
    #   resp.data.datastore_summaries[0].file_format_type #=> String, one of ["JSON", "PARQUET"]
    #   resp.data.datastore_summaries[0].datastore_partitions #=> Types::DatastorePartitions
    #   resp.data.datastore_summaries[0].datastore_partitions.partitions #=> Array<DatastorePartition>
    #   resp.data.datastore_summaries[0].datastore_partitions.partitions[0] #=> Types::DatastorePartition
    #   resp.data.datastore_summaries[0].datastore_partitions.partitions[0].attribute_partition #=> Types::Partition
    #   resp.data.datastore_summaries[0].datastore_partitions.partitions[0].attribute_partition.attribute_name #=> String
    #   resp.data.datastore_summaries[0].datastore_partitions.partitions[0].timestamp_partition #=> Types::TimestampPartition
    #   resp.data.datastore_summaries[0].datastore_partitions.partitions[0].timestamp_partition.attribute_name #=> String
    #   resp.data.datastore_summaries[0].datastore_partitions.partitions[0].timestamp_partition.timestamp_format #=> String
    #   resp.data.next_token #=> String
    #
    def list_datastores(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatastoresInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatastoresInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatastores
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::ListDatastores
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatastores,
        stubs: @stubs,
        params_class: Params::ListDatastoresOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_datastores
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of pipelines.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPipelinesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #            <p>The default value is 100.</p>
    #
    # @return [Types::ListPipelinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipelines(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPipelinesOutput
    #   resp.data.pipeline_summaries #=> Array<PipelineSummary>
    #   resp.data.pipeline_summaries[0] #=> Types::PipelineSummary
    #   resp.data.pipeline_summaries[0].pipeline_name #=> String
    #   resp.data.pipeline_summaries[0].reprocessing_summaries #=> Array<ReprocessingSummary>
    #   resp.data.pipeline_summaries[0].reprocessing_summaries[0] #=> Types::ReprocessingSummary
    #   resp.data.pipeline_summaries[0].reprocessing_summaries[0].id #=> String
    #   resp.data.pipeline_summaries[0].reprocessing_summaries[0].status #=> String, one of ["RUNNING", "SUCCEEDED", "CANCELLED", "FAILED"]
    #   resp.data.pipeline_summaries[0].reprocessing_summaries[0].creation_time #=> Time
    #   resp.data.pipeline_summaries[0].creation_time #=> Time
    #   resp.data.pipeline_summaries[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_pipelines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPipelinesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPipelinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPipelines
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::ListPipelines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPipelines,
        stubs: @stubs,
        params_class: Params::ListPipelinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pipelines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags (metadata) that you have assigned to the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags you want to list.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
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

    # <p>Sets or updates the IoT Analytics logging options.</p>
    #          <p>If you update the value of any <code>loggingOptions</code> field, it takes up to one
    #       minute for the change to take effect. Also, if you change the policy attached to the role you
    #       specified in the <code>roleArn</code> field (for example, to correct an invalid policy), it
    #       takes up to five minutes for that change to take effect. </p>
    #
    # @param [Hash] params
    #   See {Types::PutLoggingOptionsInput}.
    #
    # @option params [LoggingOptions] :logging_options
    #   <p>The new values of the IoT Analytics logging options.</p>
    #
    # @return [Types::PutLoggingOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_logging_options(
    #     logging_options: {
    #       role_arn: 'roleArn', # required
    #       level: 'ERROR', # required - accepts ["ERROR"]
    #       enabled: false # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLoggingOptionsOutput
    #
    def put_logging_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLoggingOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLoggingOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLoggingOptions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::PutLoggingOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLoggingOptions,
        stubs: @stubs,
        params_class: Params::PutLoggingOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_logging_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Simulates the results of running a pipeline activity on a message payload.</p>
    #
    # @param [Hash] params
    #   See {Types::RunPipelineActivityInput}.
    #
    # @option params [PipelineActivity] :pipeline_activity
    #   <p>The pipeline activity that is run. This must not be a channel activity or a data store
    #         activity because these activities are used in a pipeline only to load the original message and
    #         to store the (possibly) transformed message. If a Lambda activity is specified, only
    #         short-running Lambda functions (those with a timeout of less than 30 seconds or less) can be
    #         used.</p>
    #
    # @option params [Array<String>] :payloads
    #   <p>The sample message payloads on which the pipeline activity is run.</p>
    #
    # @return [Types::RunPipelineActivityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_pipeline_activity(
    #     pipeline_activity: {
    #       channel: {
    #         name: 'name', # required
    #         channel_name: 'channelName', # required
    #         next: 'next'
    #       },
    #       lambda: {
    #         name: 'name', # required
    #         lambda_name: 'lambdaName', # required
    #         batch_size: 1, # required
    #         next: 'next'
    #       },
    #       datastore: {
    #         name: 'name', # required
    #         datastore_name: 'datastoreName' # required
    #       },
    #       add_attributes: {
    #         name: 'name', # required
    #         attributes: {
    #           'key' => 'value'
    #         }, # required
    #         next: 'next'
    #       },
    #       remove_attributes: {
    #         name: 'name', # required
    #         attributes: [
    #           'member'
    #         ], # required
    #         next: 'next'
    #       },
    #       select_attributes: {
    #         name: 'name', # required
    #         next: 'next'
    #       },
    #       filter: {
    #         name: 'name', # required
    #         filter: 'filter', # required
    #         next: 'next'
    #       },
    #       math: {
    #         name: 'name', # required
    #         attribute: 'attribute', # required
    #         math: 'math', # required
    #         next: 'next'
    #       },
    #       device_registry_enrich: {
    #         name: 'name', # required
    #         attribute: 'attribute', # required
    #         thing_name: 'thingName', # required
    #         role_arn: 'roleArn', # required
    #         next: 'next'
    #       },
    #       device_shadow_enrich: {
    #         name: 'name', # required
    #         attribute: 'attribute', # required
    #         thing_name: 'thingName', # required
    #         role_arn: 'roleArn', # required
    #         next: 'next'
    #       }
    #     }, # required
    #     payloads: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RunPipelineActivityOutput
    #   resp.data.payloads #=> Array<String>
    #   resp.data.payloads[0] #=> String
    #   resp.data.log_result #=> String
    #
    def run_pipeline_activity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RunPipelineActivityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RunPipelineActivityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RunPipelineActivity
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::RunPipelineActivity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RunPipelineActivity,
        stubs: @stubs,
        params_class: Params::RunPipelineActivityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :run_pipeline_activity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a sample of messages from the specified channel ingested during the specified
    #       timeframe. Up to 10 messages can be retrieved.</p>
    #
    # @param [Hash] params
    #   See {Types::SampleChannelDataInput}.
    #
    # @option params [String] :channel_name
    #   <p>The name of the channel whose message samples are retrieved.</p>
    #
    # @option params [Integer] :max_messages
    #   <p>The number of sample messages to be retrieved. The limit is 10. The default is also
    #         10.</p>
    #
    # @option params [Time] :start_time
    #   <p>The start of the time window from which sample messages are retrieved.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time window from which sample messages are retrieved.</p>
    #
    # @return [Types::SampleChannelDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sample_channel_data(
    #     channel_name: 'channelName', # required
    #     max_messages: 1,
    #     start_time: Time.now,
    #     end_time: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SampleChannelDataOutput
    #   resp.data.payloads #=> Array<String>
    #   resp.data.payloads[0] #=> String
    #
    def sample_channel_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SampleChannelDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SampleChannelDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SampleChannelData
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::SampleChannelData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SampleChannelData,
        stubs: @stubs,
        params_class: Params::SampleChannelDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :sample_channel_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the reprocessing of raw message data through the pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::StartPipelineReprocessingInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline on which to start reprocessing.</p>
    #
    # @option params [Time] :start_time
    #   <p>The start time (inclusive) of raw message data that is reprocessed.</p>
    #            <p>If you specify a value for the <code>startTime</code> parameter, you must not use the
    #           <code>channelMessages</code> object.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end time (exclusive) of raw message data that is reprocessed.</p>
    #            <p>If you specify a value for the <code>endTime</code> parameter, you must not use the
    #           <code>channelMessages</code> object.</p>
    #
    # @option params [ChannelMessages] :channel_messages
    #   <p>Specifies one or more sets of channel messages that you want to reprocess.</p>
    #            <p>If you use the <code>channelMessages</code> object, you must not specify a value for
    #           <code>startTime</code> and <code>endTime</code>.</p>
    #
    # @return [Types::StartPipelineReprocessingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_pipeline_reprocessing(
    #     pipeline_name: 'pipelineName', # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     channel_messages: {
    #       s3_paths: [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartPipelineReprocessingOutput
    #   resp.data.reprocessing_id #=> String
    #
    def start_pipeline_reprocessing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartPipelineReprocessingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartPipelineReprocessingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartPipelineReprocessing
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::ResourceAlreadyExistsException, Errors::InternalFailureException]),
        data_parser: Parsers::StartPipelineReprocessing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartPipelineReprocessing,
        stubs: @stubs,
        params_class: Params::StartPipelineReprocessingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_pipeline_reprocessing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used to
    #       manage a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags you want to modify.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The new or modified tags for the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
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

    # <p>Removes the given tags (metadata) from the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags you want to remove.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of those tags which you want to remove.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
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

    # <p>Used to update the settings of a channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The name of the channel to be updated.</p>
    #
    # @option params [ChannelStorage] :channel_storage
    #   <p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or
    #           <code>customerManagedS3</code> storage. If not specified, the default is
    #           <code>serviceManagedS3</code>. You can't change this storage option after the channel is
    #         created.</p>
    #
    # @option params [RetentionPeriod] :retention_period
    #   <p>How long, in days, message data is kept for the channel. The retention period can't be
    #         updated if the channel's Amazon S3 storage is customer-managed.</p>
    #
    # @return [Types::UpdateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel(
    #     channel_name: 'channelName', # required
    #     channel_storage: {
    #       service_managed_s3: { },
    #       customer_managed_s3: {
    #         bucket: 'bucket', # required
    #         key_prefix: 'keyPrefix',
    #         role_arn: 'roleArn' # required
    #       }
    #     },
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelOutput
    #
    def update_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateChannel
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateChannel,
        stubs: @stubs,
        params_class: Params::UpdateChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the settings of a dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDatasetInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset to update.</p>
    #
    # @option params [Array<DatasetAction>] :actions
    #   <p>A list of <code>DatasetAction</code> objects.</p>
    #
    # @option params [Array<DatasetTrigger>] :triggers
    #   <p>A list of <code>DatasetTrigger</code> objects. The list can be empty or can contain up to
    #         five <code>DatasetTrigger</code> objects.</p>
    #
    # @option params [Array<DatasetContentDeliveryRule>] :content_delivery_rules
    #   <p>When dataset contents are created, they are delivered to destinations specified
    #         here.</p>
    #
    # @option params [RetentionPeriod] :retention_period
    #   <p>How long, in days, dataset contents are kept for the dataset.</p>
    #
    # @option params [VersioningConfiguration] :versioning_configuration
    #   <p>Optional. How many versions of dataset contents are kept. If not specified or set to null,
    #         only the latest version plus the latest succeeded version (if they are different) are kept for
    #         the time period specified by the <code>retentionPeriod</code> parameter. For more information,
    #         see <a href="https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions">Keeping Multiple Versions of IoT Analytics datasets</a> in the
    #           <i>IoT Analytics User Guide</i>.</p>
    #
    # @option params [Array<LateDataRule>] :late_data_rules
    #   <p>A list of data rules that send notifications to CloudWatch, when data arrives late. To specify <code>lateDataRules</code>, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    #
    # @return [Types::UpdateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset(
    #     dataset_name: 'datasetName', # required
    #     actions: [
    #       {
    #         action_name: 'actionName',
    #         query_action: {
    #           sql_query: 'sqlQuery', # required
    #           filters: [
    #             {
    #               delta_time: {
    #                 offset_seconds: 1, # required
    #                 time_expression: 'timeExpression' # required
    #               }
    #             }
    #           ]
    #         },
    #         container_action: {
    #           image: 'image', # required
    #           execution_role_arn: 'executionRoleArn', # required
    #           resource_configuration: {
    #             compute_type: 'ACU_1', # required - accepts ["ACU_1", "ACU_2"]
    #             volume_size_in_gb: 1 # required
    #           }, # required
    #           variables: [
    #             {
    #               name: 'name', # required
    #               string_value: 'stringValue',
    #               double_value: 1.0,
    #               dataset_content_version_value: {
    #                 dataset_name: 'datasetName' # required
    #               },
    #               output_file_uri_value: {
    #                 file_name: 'fileName' # required
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     ], # required
    #     triggers: [
    #       {
    #         schedule: {
    #           expression: 'expression'
    #         },
    #         dataset: {
    #           name: 'name' # required
    #         }
    #       }
    #     ],
    #     content_delivery_rules: [
    #       {
    #         entry_name: 'entryName',
    #         destination: {
    #           iot_events_destination_configuration: {
    #             input_name: 'inputName', # required
    #             role_arn: 'roleArn' # required
    #           },
    #           s3_destination_configuration: {
    #             bucket: 'bucket', # required
    #             key: 'key', # required
    #             glue_configuration: {
    #               table_name: 'tableName', # required
    #               database_name: 'databaseName' # required
    #             },
    #             role_arn: 'roleArn' # required
    #           }
    #         } # required
    #       }
    #     ],
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     },
    #     versioning_configuration: {
    #       unlimited: false,
    #       max_versions: 1
    #     },
    #     late_data_rules: [
    #       {
    #         rule_name: 'ruleName',
    #         rule_configuration: {
    #           delta_time_session_window_configuration: {
    #             timeout_in_minutes: 1 # required
    #           }
    #         } # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDatasetOutput
    #
    def update_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataset
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataset,
        stubs: @stubs,
        params_class: Params::UpdateDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used to update the settings of a data store.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDatastoreInput}.
    #
    # @option params [String] :datastore_name
    #   <p>The name of the data store to be updated.</p>
    #
    # @option params [RetentionPeriod] :retention_period
    #   <p>How long, in days, message data is kept for the data store. The retention period can't be
    #         updated if the data store's Amazon S3 storage is customer-managed.</p>
    #
    # @option params [DatastoreStorage] :datastore_storage
    #   <p>Where data in a data store is stored.. You can choose <code>serviceManagedS3</code> storage, <code>customerManagedS3</code> storage, or <code>iotSiteWiseMultiLayerStorage</code> storage. The default is <code>serviceManagedS3</code>. You can't change the choice of Amazon S3 storage after your data store is created. </p>
    #
    # @option params [FileFormatConfiguration] :file_format_configuration
    #   <p>Contains the configuration information of file formats.  IoT Analytics data stores support JSON and <a href="https://parquet.apache.org/">Parquet</a>.</p>
    #            <p>The default file format is JSON. You can specify only one format.</p>
    #            <p>You can't change the file format after you create the data store.</p>
    #
    # @return [Types::UpdateDatastoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_datastore(
    #     datastore_name: 'datastoreName', # required
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1
    #     },
    #     datastore_storage: {
    #       # One of:
    #       service_managed_s3: { },
    #       customer_managed_s3: {
    #         bucket: 'bucket', # required
    #         key_prefix: 'keyPrefix',
    #         role_arn: 'roleArn' # required
    #       },
    #       iot_site_wise_multi_layer_storage: {
    #         customer_managed_s3_storage: {
    #           bucket: 'bucket', # required
    #           key_prefix: 'keyPrefix'
    #         } # required
    #       }
    #     },
    #     file_format_configuration: {
    #       json_configuration: { },
    #       parquet_configuration: {
    #         schema_definition: {
    #           columns: [
    #             {
    #               name: 'name', # required
    #               type: 'type' # required
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDatastoreOutput
    #
    def update_datastore(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDatastoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDatastoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDatastore
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateDatastore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDatastore,
        stubs: @stubs,
        params_class: Params::UpdateDatastoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_datastore
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the settings of a pipeline. You must specify both a <code>channel</code> and a
    #         <code>datastore</code> activity and, optionally, as many as 23 additional activities in the
    #         <code>pipelineActivities</code> array.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePipelineInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline to update.</p>
    #
    # @option params [Array<PipelineActivity>] :pipeline_activities
    #   <p>A list of <code>PipelineActivity</code> objects. Activities perform transformations on
    #         your messages, such as removing, renaming or adding message attributes; filtering messages
    #         based on attribute values; invoking your Lambda functions on messages for advanced processing;
    #         or performing mathematical transformations to normalize device data.</p>
    #            <p>The list can be 2-25 <code>PipelineActivity</code> objects and must contain both a
    #           <code>channel</code> and a <code>datastore</code> activity. Each entry in the list must
    #         contain only one activity. For example:</p>
    #            <p>
    #               <code>pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } }, ...
    #         ]</code>
    #            </p>
    #
    # @return [Types::UpdatePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline(
    #     pipeline_name: 'pipelineName', # required
    #     pipeline_activities: [
    #       {
    #         channel: {
    #           name: 'name', # required
    #           channel_name: 'channelName', # required
    #           next: 'next'
    #         },
    #         lambda: {
    #           name: 'name', # required
    #           lambda_name: 'lambdaName', # required
    #           batch_size: 1, # required
    #           next: 'next'
    #         },
    #         datastore: {
    #           name: 'name', # required
    #           datastore_name: 'datastoreName' # required
    #         },
    #         add_attributes: {
    #           name: 'name', # required
    #           attributes: {
    #             'key' => 'value'
    #           }, # required
    #           next: 'next'
    #         },
    #         remove_attributes: {
    #           name: 'name', # required
    #           attributes: [
    #             'member'
    #           ], # required
    #           next: 'next'
    #         },
    #         select_attributes: {
    #           name: 'name', # required
    #           next: 'next'
    #         },
    #         filter: {
    #           name: 'name', # required
    #           filter: 'filter', # required
    #           next: 'next'
    #         },
    #         math: {
    #           name: 'name', # required
    #           attribute: 'attribute', # required
    #           math: 'math', # required
    #           next: 'next'
    #         },
    #         device_registry_enrich: {
    #           name: 'name', # required
    #           attribute: 'attribute', # required
    #           thing_name: 'thingName', # required
    #           role_arn: 'roleArn', # required
    #           next: 'next'
    #         },
    #         device_shadow_enrich: {
    #           name: 'name', # required
    #           attribute: 'attribute', # required
    #           thing_name: 'thingName', # required
    #           role_arn: 'roleArn', # required
    #           next: 'next'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePipelineOutput
    #
    def update_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePipeline
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdatePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePipeline,
        stubs: @stubs,
        params_class: Params::UpdatePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pipeline
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
