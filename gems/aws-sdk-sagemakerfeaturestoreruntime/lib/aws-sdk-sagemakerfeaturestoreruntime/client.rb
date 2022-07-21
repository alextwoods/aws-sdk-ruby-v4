# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SageMakerFeatureStoreRuntime
  # An API client for AmazonSageMakerFeatureStoreRuntime
  # See {#initialize} for a full list of supported configuration options
  # <p>Contains all data plane API operations and data types for the Amazon SageMaker Feature
  #          Store. Use this API to put, delete, and retrieve (get) features from a feature
  #          store.</p>
  #          <p>Use the following operations to configure your <code>OnlineStore</code> and
  #             <code>OfflineStore</code> features, and to create and manage feature groups:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html">CreateFeatureGroup</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html">DeleteFeatureGroup</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html">DescribeFeatureGroup</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html">ListFeatureGroups</a>
  #                </p>
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
    def initialize(config = AWS::SDK::SageMakerFeatureStoreRuntime::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Retrieves a batch of <code>Records</code> from a <code>FeatureGroup</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetRecordInput}.
    #
    # @option params [Array<BatchGetRecordIdentifier>] :identifiers
    #   <p>A list of <code>FeatureGroup</code> names, with their corresponding <code>RecordIdentifier</code> value, and Feature name
    #         that have been requested to be retrieved in batch.</p>
    #
    # @return [Types::BatchGetRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_record(
    #     identifiers: [
    #       {
    #         feature_group_name: 'FeatureGroupName', # required
    #         record_identifiers_value_as_string: [
    #           'member'
    #         ], # required
    #         feature_names: [
    #           'member'
    #         ]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetRecordOutput
    #   resp.data.records #=> Array<BatchGetRecordResultDetail>
    #   resp.data.records[0] #=> Types::BatchGetRecordResultDetail
    #   resp.data.records[0].feature_group_name #=> String
    #   resp.data.records[0].record_identifier_value_as_string #=> String
    #   resp.data.records[0].record #=> Array<FeatureValue>
    #   resp.data.records[0].record[0] #=> Types::FeatureValue
    #   resp.data.records[0].record[0].feature_name #=> String
    #   resp.data.records[0].record[0].value_as_string #=> String
    #   resp.data.errors #=> Array<BatchGetRecordError>
    #   resp.data.errors[0] #=> Types::BatchGetRecordError
    #   resp.data.errors[0].feature_group_name #=> String
    #   resp.data.errors[0].record_identifier_value_as_string #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #   resp.data.unprocessed_identifiers #=> Array<BatchGetRecordIdentifier>
    #   resp.data.unprocessed_identifiers[0] #=> Types::BatchGetRecordIdentifier
    #   resp.data.unprocessed_identifiers[0].feature_group_name #=> String
    #   resp.data.unprocessed_identifiers[0].record_identifiers_value_as_string #=> Array<String>
    #   resp.data.unprocessed_identifiers[0].record_identifiers_value_as_string[0] #=> String
    #   resp.data.unprocessed_identifiers[0].feature_names #=> Array<String>
    #   resp.data.unprocessed_identifiers[0].feature_names[0] #=> String
    #
    def batch_get_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetRecordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetRecordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetRecord
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessForbidden, Errors::ServiceUnavailable, Errors::ValidationError, Errors::InternalFailure]),
        data_parser: Parsers::BatchGetRecord
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetRecord,
        stubs: @stubs,
        params_class: Params::BatchGetRecordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_record
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a <code>Record</code> from a <code>FeatureGroup</code>. A new record will show
    #          up in the <code>OfflineStore</code> when the <code>DeleteRecord</code> API is called. This
    #          record will have a value of <code>True</code> in the <code>is_deleted</code> column.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRecordInput}.
    #
    # @option params [String] :feature_group_name
    #   <p>The name of the feature group to delete the record from. </p>
    #
    # @option params [String] :record_identifier_value_as_string
    #   <p>The value for the <code>RecordIdentifier</code> that uniquely identifies the record, in
    #            string format. </p>
    #
    # @option params [String] :event_time
    #   <p>Timestamp indicating when the deletion event occurred. <code>EventTime</code> can be
    #            used to query data at a certain point in time.</p>
    #
    # @return [Types::DeleteRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_record(
    #     feature_group_name: 'FeatureGroupName', # required
    #     record_identifier_value_as_string: 'RecordIdentifierValueAsString', # required
    #     event_time: 'EventTime' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRecordOutput
    #
    def delete_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRecordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRecordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRecord
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessForbidden, Errors::ServiceUnavailable, Errors::ValidationError, Errors::InternalFailure]),
        data_parser: Parsers::DeleteRecord
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRecord,
        stubs: @stubs,
        params_class: Params::DeleteRecordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_record
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use for <code>OnlineStore</code> serving from a <code>FeatureStore</code>. Only the
    #          latest records stored in the <code>OnlineStore</code> can be retrieved. If no Record with
    #             <code>RecordIdentifierValue</code> is found, then an empty result is returned. </p>
    #
    # @param [Hash] params
    #   See {Types::GetRecordInput}.
    #
    # @option params [String] :feature_group_name
    #   <p>The name of the feature group in which you want to put the records.</p>
    #
    # @option params [String] :record_identifier_value_as_string
    #   <p>The value that corresponds to <code>RecordIdentifier</code> type and uniquely identifies
    #            the record in the <code>FeatureGroup</code>. </p>
    #
    # @option params [Array<String>] :feature_names
    #   <p>List of names of Features to be retrieved. If not specified, the latest value for all
    #            the Features are returned.</p>
    #
    # @return [Types::GetRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_record(
    #     feature_group_name: 'FeatureGroupName', # required
    #     record_identifier_value_as_string: 'RecordIdentifierValueAsString', # required
    #     feature_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecordOutput
    #   resp.data.record #=> Array<FeatureValue>
    #   resp.data.record[0] #=> Types::FeatureValue
    #   resp.data.record[0].feature_name #=> String
    #   resp.data.record[0].value_as_string #=> String
    #
    def get_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecord
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessForbidden, Errors::ServiceUnavailable, Errors::ValidationError, Errors::InternalFailure, Errors::ResourceNotFound]),
        data_parser: Parsers::GetRecord
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecord,
        stubs: @stubs,
        params_class: Params::GetRecordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_record
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Used for data ingestion into the <code>FeatureStore</code>. The <code>PutRecord</code>
    #          API writes to both the <code>OnlineStore</code> and <code>OfflineStore</code>. If the
    #          record is the latest record for the <code>recordIdentifier</code>, the record is written to
    #          both the <code>OnlineStore</code> and <code>OfflineStore</code>. If the record is a
    #          historic record, it is written only to the <code>OfflineStore</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRecordInput}.
    #
    # @option params [String] :feature_group_name
    #   <p>The name of the feature group that you want to insert the record into.</p>
    #
    # @option params [Array<FeatureValue>] :record
    #   <p>List of FeatureValues to be inserted. This will be a full over-write. If you only want
    #            to update few of the feature values, do the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>GetRecord</code> to retrieve the latest record.</p>
    #               </li>
    #               <li>
    #                  <p>Update the record returned from <code>GetRecord</code>. </p>
    #               </li>
    #               <li>
    #                  <p>Use <code>PutRecord</code> to update feature values.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PutRecordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_record(
    #     feature_group_name: 'FeatureGroupName', # required
    #     record: [
    #       {
    #         feature_name: 'FeatureName', # required
    #         value_as_string: 'ValueAsString' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRecordOutput
    #
    def put_record(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRecordInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessForbidden, Errors::ServiceUnavailable, Errors::ValidationError, Errors::InternalFailure]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
