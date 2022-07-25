# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CognitoSync
  # An API client for AWSCognitoSyncService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Cognito Sync</fullname>
  #       <p>Amazon Cognito Sync provides an AWS service and client library that enable cross-device syncing of
  #          application-related user data. High-level client libraries are available for both iOS and
  #          Android. You can use these libraries to persist data locally so that it's available even if
  #          the device is offline. Developer credentials don't need to be stored on the mobile device
  #          to access the service. You can use Amazon Cognito to obtain a normalized user ID and
  #          credentials. User data is persisted in a dataset that can store up to 1 MB of key-value
  #          pairs, and you can have up to 20 datasets per user identity.</p>
  #       <p>With Amazon Cognito Sync, the data stored for each identity is accessible only to
  #          credentials assigned to that identity. In order to use the Cognito Sync service, you need
  #          to make API calls using credentials retrieved with <a href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html">Amazon Cognito Identity service</a>.</p>
  #       <p>If you want to use Cognito Sync in an Android or iOS application, you will probably want to
  #          make API calls via the AWS Mobile SDK. To learn more, see the <a href="http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html">Developer Guide for Android</a> and the <a href="http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html">Developer Guide for iOS</a>.</p>
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
    def initialize(config = AWS::SDK::CognitoSync::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    #
    # @param [Hash] params
    #   See {Types::BulkPublishInput}.
    #
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @return [Types::BulkPublishOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.bulk_publish(
    #     identity_pool_id: 'IdentityPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BulkPublishOutput
    #   resp.data.identity_pool_id #=> String
    #
    def bulk_publish(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BulkPublishInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BulkPublishInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BulkPublish
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::DuplicateRequestException, Errors::NotAuthorizedException, Errors::AlreadyStreamedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::BulkPublish
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BulkPublish,
        stubs: @stubs,
        params_class: Params::BulkPublishOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :bulk_publish
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specific dataset. The dataset will be deleted permanently, and the action can't
    #          be undone. Datasets that this dataset was merged with will no longer report the merge. Any
    #          subsequent operation on this dataset will result in a
    #             ResourceNotFoundException.</p>
    #           <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetInput}.
    #
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @option params [String] :dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    #
    # @return [Types::DeleteDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId', # required
    #     dataset_name: 'DatasetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatasetOutput
    #   resp.data.dataset #=> Types::Dataset
    #   resp.data.dataset.identity_id #=> String
    #   resp.data.dataset.dataset_name #=> String
    #   resp.data.dataset.creation_date #=> Time
    #   resp.data.dataset.last_modified_date #=> Time
    #   resp.data.dataset.last_modified_by #=> String
    #   resp.data.dataset.data_storage #=> Integer
    #   resp.data.dataset.num_records #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::ResourceConflictException, Errors::InternalErrorException]),
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

    # <p>Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each
    #          identity has access only to its own data. Thus, the credentials used to make this API call
    #          need to have access to the identity data.</p>
    #       <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetInput}.
    #
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @option params [String] :dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    #
    # @return [Types::DescribeDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId', # required
    #     dataset_name: 'DatasetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetOutput
    #   resp.data.dataset #=> Types::Dataset
    #   resp.data.dataset.identity_id #=> String
    #   resp.data.dataset.dataset_name #=> String
    #   resp.data.dataset.creation_date #=> Time
    #   resp.data.dataset.last_modified_date #=> Time
    #   resp.data.dataset.last_modified_by #=> String
    #   resp.data.dataset.data_storage #=> Integer
    #   resp.data.dataset.num_records #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
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

    # <p>Gets usage details (for example, data storage) about a particular identity pool.</p>
    #       <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    #
    #       <examples>
    #          <example>
    #             <name>DescribeIdentityPoolUsage</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 8dc0e749-c8cd-48bd-8520-da6be00d528b
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.DescribeIdentityPoolUsage
    # HOST: cognito-sync.us-east-1.amazonaws.com:443
    # X-AMZ-DATE: 20141111T205737Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature=<signature>
    #
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#DescribeIdentityPoolUsage",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "IDENTITY_POOL_ID"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 8dc0e749-c8cd-48bd-8520-da6be00d528b
    # content-type: application/json
    # content-length: 271
    # date: Tue, 11 Nov 2014 20:57:37 GMT
    #
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#DescribeIdentityPoolUsageResponse",
    #         "IdentityPoolUsage":
    #         {
    #             "DataStorage": 0,
    #             "IdentityPoolId": "IDENTITY_POOL_ID",
    #             "LastModifiedDate": 1.413231134115E9,
    #             "SyncSessionsCount": null
    #         }
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    #
    # @param [Hash] params
    #   See {Types::DescribeIdentityPoolUsageInput}.
    #
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for
    #         example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
    #         generation is unique within a region.
    #
    # @return [Types::DescribeIdentityPoolUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_pool_usage(
    #     identity_pool_id: 'IdentityPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIdentityPoolUsageOutput
    #   resp.data.identity_pool_usage #=> Types::IdentityPoolUsage
    #   resp.data.identity_pool_usage.identity_pool_id #=> String
    #   resp.data.identity_pool_usage.sync_sessions_count #=> Integer
    #   resp.data.identity_pool_usage.data_storage #=> Integer
    #   resp.data.identity_pool_usage.last_modified_date #=> Time
    #
    def describe_identity_pool_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIdentityPoolUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIdentityPoolUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIdentityPoolUsage
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::DescribeIdentityPoolUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIdentityPoolUsage,
        stubs: @stubs,
        params_class: Params::DescribeIdentityPoolUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_identity_pool_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets usage information for an identity, including number of datasets and data usage.</p>
    #       <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>
    #       <examples>
    #          <example>
    #             <name>DescribeIdentityUsage</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 33f9b4e4-a177-4aad-a3bb-6edb7980b283
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.DescribeIdentityUsage
    # HOST: cognito-sync.us-east-1.amazonaws.com:443
    # X-AMZ-DATE: 20141111T215129Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature=<signature>
    #
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#DescribeIdentityUsage",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "IDENTITY_POOL_ID",
    #         "IdentityId": "IDENTITY_ID"
    #     }
    # }
    #                </request>
    #             <response>
    #                1.1 200 OK
    # x-amzn-requestid: 33f9b4e4-a177-4aad-a3bb-6edb7980b283
    # content-type: application/json
    # content-length: 318
    # date: Tue, 11 Nov 2014 21:51:29 GMT
    #
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#DescribeIdentityUsageResponse",
    #         "IdentityUsage":
    #         {
    #             "DataStorage": 16,
    #             "DatasetCount": 1,
    #             "IdentityId": "IDENTITY_ID",
    #             "IdentityPoolId": "IDENTITY_POOL_ID",
    #             "LastModifiedDate": 1.412974081336E9
    #         }
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    #
    # @param [Hash] params
    #   See {Types::DescribeIdentityUsageInput}.
    #
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for
    #         example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
    #         generation is unique within a region.
    #
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @return [Types::DescribeIdentityUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_usage(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIdentityUsageOutput
    #   resp.data.identity_usage #=> Types::IdentityUsage
    #   resp.data.identity_usage.identity_id #=> String
    #   resp.data.identity_usage.identity_pool_id #=> String
    #   resp.data.identity_usage.last_modified_date #=> Time
    #   resp.data.identity_usage.dataset_count #=> Integer
    #   resp.data.identity_usage.data_storage #=> Integer
    #
    def describe_identity_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIdentityUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIdentityUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIdentityUsage
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::DescribeIdentityUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIdentityUsage,
        stubs: @stubs,
        params_class: Params::DescribeIdentityUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_identity_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the status of the last BulkPublish operation for an identity pool.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBulkPublishDetailsInput}.
    #
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @return [Types::GetBulkPublishDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bulk_publish_details(
    #     identity_pool_id: 'IdentityPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBulkPublishDetailsOutput
    #   resp.data.identity_pool_id #=> String
    #   resp.data.bulk_publish_start_time #=> Time
    #   resp.data.bulk_publish_complete_time #=> Time
    #   resp.data.bulk_publish_status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   resp.data.failure_message #=> String
    #
    def get_bulk_publish_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBulkPublishDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBulkPublishDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBulkPublishDetails
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::GetBulkPublishDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBulkPublishDetails,
        stubs: @stubs,
        params_class: Params::GetBulkPublishDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bulk_publish_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the events and the corresponding Lambda functions associated with an identity pool.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCognitoEventsInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>The Cognito Identity Pool ID for the request</p>
    #
    # @return [Types::GetCognitoEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cognito_events(
    #     identity_pool_id: 'IdentityPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCognitoEventsOutput
    #   resp.data.events #=> Hash<String, String>
    #   resp.data.events['key'] #=> String
    #
    def get_cognito_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCognitoEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCognitoEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCognitoEvents
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::GetCognitoEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCognitoEvents,
        stubs: @stubs,
        params_class: Params::GetCognitoEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cognito_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the configuration settings of an identity pool.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    #       <examples>
    #          <example>
    #             <name>GetIdentityPoolConfiguration</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: b1cfdd4b-f620-4fe4-be0f-02024a1d33da
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.GetIdentityPoolConfiguration
    # HOST: cognito-sync.us-east-1.amazonaws.com
    # X-AMZ-DATE: 20141004T195722Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature=<signature>
    #
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#GetIdentityPoolConfiguration",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "ID_POOL_ID"
    #     }
    # }
    #
    #             </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: b1cfdd4b-f620-4fe4-be0f-02024a1d33da
    # date: Sat, 04 Oct 2014 19:57:22 GMT
    # content-type: application/json
    # content-length: 332
    #
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#GetIdentityPoolConfigurationResponse",
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "PushSync":
    #         {
    #             "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"],
    #             "RoleArn": "ROLEARN"
    #         }
    #     },
    #     "Version": "1.0"
    # }
    #  </response>
    #          </example>
    #       </examples>
    #
    # @param [Hash] params
    #   See {Types::GetIdentityPoolConfigurationInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. This is the ID of the pool for which to return a configuration.</p>
    #
    # @return [Types::GetIdentityPoolConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_pool_configuration(
    #     identity_pool_id: 'IdentityPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdentityPoolConfigurationOutput
    #   resp.data.identity_pool_id #=> String
    #   resp.data.push_sync #=> Types::PushSync
    #   resp.data.push_sync.application_arns #=> Array<String>
    #   resp.data.push_sync.application_arns[0] #=> String
    #   resp.data.push_sync.role_arn #=> String
    #   resp.data.cognito_streams #=> Types::CognitoStreams
    #   resp.data.cognito_streams.stream_name #=> String
    #   resp.data.cognito_streams.role_arn #=> String
    #   resp.data.cognito_streams.streaming_status #=> String, one of ["ENABLED", "DISABLED"]
    #
    def get_identity_pool_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdentityPoolConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdentityPoolConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIdentityPoolConfiguration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::GetIdentityPoolConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIdentityPoolConfiguration,
        stubs: @stubs,
        params_class: Params::GetIdentityPoolConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_identity_pool_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to
    #          its own data. Thus, the credentials used to make this API call need to have access to the
    #          identity data.</p>
    #       <p>ListDatasets can be called with temporary user credentials provided by Cognito
    #          Identity or with developer credentials. You should use the Cognito Identity credentials to
    #          make this API call.</p>
    #       <examples>
    #          <example>
    #             <name>ListDatasets</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 15225768-209f-4078-aaed-7494ace9f2db
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListDatasets
    # HOST: cognito-sync.us-east-1.amazonaws.com:443
    # X-AMZ-DATE: 20141111T215640Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature=<signature>
    #
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#ListDatasets",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "IDENTITY_POOL_ID",
    #         "IdentityId": "IDENTITY_ID",
    #         "MaxResults": "3"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 15225768-209f-4078-aaed-7494ace9f2db, 15225768-209f-4078-aaed-7494ace9f2db
    # content-type: application/json
    # content-length: 355
    # date: Tue, 11 Nov 2014 21:56:40 GMT
    #
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#ListDatasetsResponse",
    #         "Count": 1,
    #         "Datasets": [
    #         {
    #             "CreationDate": 1.412974057151E9,
    #             "DataStorage": 16,
    #             "DatasetName": "my_list",
    #             "IdentityId": "IDENTITY_ID",
    #             "LastModifiedBy": "123456789012",
    #             "LastModifiedDate": 1.412974057244E9,
    #             "NumRecords": 1
    #         }],
    #         "NextToken": null
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetsInput}.
    #
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @option params [String] :next_token
    #   A pagination token for obtaining the next
    #         page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be
    #         returned.
    #
    # @return [Types::ListDatasetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetsOutput
    #   resp.data.datasets #=> Array<Dataset>
    #   resp.data.datasets[0] #=> Types::Dataset
    #   resp.data.datasets[0].identity_id #=> String
    #   resp.data.datasets[0].dataset_name #=> String
    #   resp.data.datasets[0].creation_date #=> Time
    #   resp.data.datasets[0].last_modified_date #=> Time
    #   resp.data.datasets[0].last_modified_by #=> String
    #   resp.data.datasets[0].data_storage #=> Integer
    #   resp.data.datasets[0].num_records #=> Integer
    #   resp.data.count #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
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

    # <p>Gets a list of identity pools registered with Cognito.</p>
    #       <p>ListIdentityPoolUsage can only be called with developer credentials. You
    #          cannot make this API call with the temporary user credentials provided by Cognito
    #          Identity.</p>
    #       <examples>
    #          <example>
    #             <name>ListIdentityPoolUsage</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 9be7c425-ef05-48c0-aef3-9f0ff2fe17d3
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListIdentityPoolUsage
    # HOST: cognito-sync.us-east-1.amazonaws.com:443
    # X-AMZ-DATE: 20141111T211414Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature=<signature>
    #
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#ListIdentityPoolUsage",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "MaxResults": "2"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 9be7c425-ef05-48c0-aef3-9f0ff2fe17d3
    # content-type: application/json
    # content-length: 519
    # date: Tue, 11 Nov 2014 21:14:14 GMT
    #
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#ListIdentityPoolUsageResponse",
    #         "Count": 2,
    #         "IdentityPoolUsages": [
    #         {
    #             "DataStorage": 0,
    #             "IdentityPoolId": "IDENTITY_POOL_ID",
    #             "LastModifiedDate": 1.413836234607E9,
    #             "SyncSessionsCount": null
    #         },
    #         {
    #             "DataStorage": 0,
    #             "IdentityPoolId": "IDENTITY_POOL_ID",
    #             "LastModifiedDate": 1.410892165601E9,
    #             "SyncSessionsCount": null
    #         }],
    #         "MaxResults": 2,
    #         "NextToken": "dXMtZWFzdC0xOjBjMWJhMDUyLWUwOTgtNDFmYS1hNzZlLWVhYTJjMTI1Zjg2MQ=="
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    #
    # @param [Hash] params
    #   See {Types::ListIdentityPoolUsageInput}.
    #
    # @option params [String] :next_token
    #   A pagination token for obtaining
    #         the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to
    #         be returned.
    #
    # @return [Types::ListIdentityPoolUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_pool_usage(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIdentityPoolUsageOutput
    #   resp.data.identity_pool_usages #=> Array<IdentityPoolUsage>
    #   resp.data.identity_pool_usages[0] #=> Types::IdentityPoolUsage
    #   resp.data.identity_pool_usages[0].identity_pool_id #=> String
    #   resp.data.identity_pool_usages[0].sync_sessions_count #=> Integer
    #   resp.data.identity_pool_usages[0].data_storage #=> Integer
    #   resp.data.identity_pool_usages[0].last_modified_date #=> Time
    #   resp.data.max_results #=> Integer
    #   resp.data.count #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_identity_pool_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIdentityPoolUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIdentityPoolUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIdentityPoolUsage
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::ListIdentityPoolUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIdentityPoolUsage,
        stubs: @stubs,
        params_class: Params::ListIdentityPoolUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_identity_pool_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets paginated records, optionally changed after a particular sync count for a dataset and
    #          identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus,
    #          the credentials used to make this API call need to have access to the identity data.</p>
    #       <p>ListRecords can be called with temporary user credentials provided by Cognito
    #          Identity or with developer credentials. You should use Cognito Identity credentials to make
    #          this API call.</p>
    #       <examples>
    #          <example>
    #             <name>ListRecords</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: b3d2e31e-d6b7-4612-8e84-c9ba288dab5d
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListRecords
    # HOST: cognito-sync.us-east-1.amazonaws.com:443
    # X-AMZ-DATE: 20141111T183230Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature=<signature>
    #
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#ListRecords",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "IDENTITY_POOL_ID",
    #         "IdentityId": "IDENTITY_ID",
    #         "DatasetName": "newDataSet"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: b3d2e31e-d6b7-4612-8e84-c9ba288dab5d
    # content-type: application/json
    # content-length: 623
    # date: Tue, 11 Nov 2014 18:32:30 GMT
    #
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#ListRecordsResponse",
    #         "Count": 0,
    #         "DatasetDeletedAfterRequestedSyncCount": false,
    #         "DatasetExists": false,
    #         "DatasetSyncCount": 0,
    #         "LastModifiedBy": null,
    #         "MergedDatasetNames": null,
    #         "NextToken": null,
    #         "Records": [],
    #         "SyncSessionToken": "SYNC_SESSION_TOKEN"
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    #
    # @param [Hash] params
    #   See {Types::ListRecordsInput}.
    #
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @option params [String] :dataset_name
    #   A string of up to 128 characters. Allowed
    #         characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
    #
    # @option params [Integer] :last_sync_count
    #   The last server sync count for this
    #         record.
    #
    # @option params [String] :next_token
    #   A pagination token for obtaining the next
    #         page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be
    #         returned.
    #
    # @option params [String] :sync_session_token
    #   A token containing a session ID,
    #         identity ID, and expiration.
    #
    # @return [Types::ListRecordsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_records(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId', # required
    #     dataset_name: 'DatasetName', # required
    #     last_sync_count: 1,
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     sync_session_token: 'SyncSessionToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecordsOutput
    #   resp.data.records #=> Array<Record>
    #   resp.data.records[0] #=> Types::Record
    #   resp.data.records[0].key #=> String
    #   resp.data.records[0].value #=> String
    #   resp.data.records[0].sync_count #=> Integer
    #   resp.data.records[0].last_modified_date #=> Time
    #   resp.data.records[0].last_modified_by #=> String
    #   resp.data.records[0].device_last_modified_date #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.count #=> Integer
    #   resp.data.dataset_sync_count #=> Integer
    #   resp.data.last_modified_by #=> String
    #   resp.data.merged_dataset_names #=> Array<String>
    #   resp.data.merged_dataset_names[0] #=> String
    #   resp.data.dataset_exists #=> Boolean
    #   resp.data.dataset_deleted_after_requested_sync_count #=> Boolean
    #   resp.data.sync_session_token #=> String
    #
    def list_records(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecordsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecordsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecords
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::ListRecords
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecords,
        stubs: @stubs,
        params_class: Params::ListRecordsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_records
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a device to receive push sync notifications.</p><p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>
    #       <examples>
    #          <example>
    #             <name>RegisterDevice</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 368f9200-3eca-449e-93b3-7b9c08d8e185
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.RegisterDevice
    # HOST: cognito-sync.us-east-1.amazonaws.com
    # X-AMZ-DATE: 20141004T194643Z
    # X-AMZ-SECURITY-TOKEN: <securitytoken>
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature=<signature>
    #
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#RegisterDevice",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "IdentityId": "IDENTITY_ID",
    #         "Platform": "GCM",
    #         "Token": "PUSH_TOKEN"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 368f9200-3eca-449e-93b3-7b9c08d8e185
    # date: Sat, 04 Oct 2014 19:46:44 GMT
    # content-type: application/json
    # content-length: 145
    #
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#RegisterDeviceResponse",
    #         "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014"
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    #
    # @param [Hash] params
    #   See {Types::RegisterDeviceInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. Here, the ID of the pool that the identity belongs to.</p>
    #
    # @option params [String] :identity_id
    #   <p>The unique ID for this identity.</p>
    #
    # @option params [String] :platform
    #   <p>The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).</p>
    #
    # @option params [String] :token
    #   <p>The push token.</p>
    #
    # @return [Types::RegisterDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_device(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId', # required
    #     platform: 'APNS', # required - accepts ["APNS", "APNS_SANDBOX", "GCM", "ADM"]
    #     token: 'Token' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterDeviceOutput
    #   resp.data.device_id #=> String
    #
    def register_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterDevice
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidConfigurationException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::RegisterDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterDevice,
        stubs: @stubs,
        params_class: Params::RegisterDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    #
    # @param [Hash] params
    #   See {Types::SetCognitoEventsInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>The Cognito Identity Pool to use when configuring Cognito Events</p>
    #
    # @option params [Hash<String, String>] :events
    #   <p>The events to configure</p>
    #
    # @return [Types::SetCognitoEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_cognito_events(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     events: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetCognitoEventsOutput
    #
    def set_cognito_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetCognitoEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetCognitoEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetCognitoEvents
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::SetCognitoEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetCognitoEvents,
        stubs: @stubs,
        params_class: Params::SetCognitoEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_cognito_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the necessary configuration for push sync.</p><p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
    #       <examples>
    #          <example>
    #             <name>SetIdentityPoolConfiguration</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: a46db021-f5dd-45d6-af5b-7069fa4a211b
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.SetIdentityPoolConfiguration
    # HOST: cognito-sync.us-east-1.amazonaws.com
    # X-AMZ-DATE: 20141004T200006Z
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature=<signature>
    #
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#SetIdentityPoolConfiguration",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "PushSync":
    #         {
    #             "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"],
    #             "RoleArn": "ROLEARN"
    #         }
    #     }
    # }
    #             </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: a46db021-f5dd-45d6-af5b-7069fa4a211b
    # date: Sat, 04 Oct 2014 20:00:06 GMT
    # content-type: application/json
    # content-length: 332
    #
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#SetIdentityPoolConfigurationResponse",
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "PushSync":
    #         {
    #             "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"],
    #             "RoleArn": "ROLEARN"
    #         }
    #     },
    #     "Version": "1.0"
    # }
    #             </response>
    #          </example>
    #       </examples>
    #
    # @param [Hash] params
    #   See {Types::SetIdentityPoolConfigurationInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. This is the ID of the pool to modify.</p>
    #
    # @option params [PushSync] :push_sync
    #   <p>Options to apply to this identity pool for push synchronization.</p>
    #
    # @option params [CognitoStreams] :cognito_streams
    #   Options to apply to this identity pool for Amazon Cognito streams.
    #
    # @return [Types::SetIdentityPoolConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_pool_configuration(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     push_sync: {
    #       application_arns: [
    #         'member'
    #       ],
    #       role_arn: 'RoleArn'
    #     },
    #     cognito_streams: {
    #       stream_name: 'StreamName',
    #       role_arn: 'RoleArn',
    #       streaming_status: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetIdentityPoolConfigurationOutput
    #   resp.data.identity_pool_id #=> String
    #   resp.data.push_sync #=> Types::PushSync
    #   resp.data.push_sync.application_arns #=> Array<String>
    #   resp.data.push_sync.application_arns[0] #=> String
    #   resp.data.push_sync.role_arn #=> String
    #   resp.data.cognito_streams #=> Types::CognitoStreams
    #   resp.data.cognito_streams.stream_name #=> String
    #   resp.data.cognito_streams.role_arn #=> String
    #   resp.data.cognito_streams.streaming_status #=> String, one of ["ENABLED", "DISABLED"]
    #
    def set_identity_pool_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetIdentityPoolConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetIdentityPoolConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetIdentityPoolConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::ConcurrentModificationException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::SetIdentityPoolConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetIdentityPoolConfiguration,
        stubs: @stubs,
        params_class: Params::SetIdentityPoolConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_identity_pool_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Subscribes to receive notifications when a dataset is modified by another device.</p><p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>
    #       <examples>
    #          <example>
    #             <name>SubscribeToDataset</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZN-REQUESTID: 8b9932b7-201d-4418-a960-0a470e11de9f
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.SubscribeToDataset
    # HOST: cognito-sync.us-east-1.amazonaws.com
    # X-AMZ-DATE: 20141004T195350Z
    # X-AMZ-SECURITY-TOKEN: <securitytoken>
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature=<signature>
    #
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#SubscribeToDataset",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "IdentityId": "IDENTITY_ID",
    #         "DatasetName": "Rufus",
    #         "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 8b9932b7-201d-4418-a960-0a470e11de9f
    # date: Sat, 04 Oct 2014 19:53:50 GMT
    # content-type: application/json
    # content-length: 99
    #
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#SubscribeToDatasetResponse"
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    #
    # @param [Hash] params
    #   See {Types::SubscribeToDatasetInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. The ID of the pool to which the identity belongs.</p>
    #
    # @option params [String] :identity_id
    #   <p>Unique ID for this identity.</p>
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset to subcribe to.</p>
    #
    # @option params [String] :device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #
    # @return [Types::SubscribeToDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.subscribe_to_dataset(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId', # required
    #     dataset_name: 'DatasetName', # required
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SubscribeToDatasetOutput
    #
    def subscribe_to_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SubscribeToDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SubscribeToDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SubscribeToDataset
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidConfigurationException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::SubscribeToDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SubscribeToDataset,
        stubs: @stubs,
        params_class: Params::SubscribeToDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :subscribe_to_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Unsubscribes from receiving notifications when a dataset is modified by another device.</p><p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>
    #       <examples>
    #          <example>
    #             <name>UnsubscribeFromDataset</name>
    #             <description>The following examples have been edited for readability.</description>
    #             <request>
    # POST / HTTP/1.1
    # CONTENT-TYPE: application/json
    # X-AMZ-REQUESTSUPERTRACE: true
    # X-AMZN-REQUESTID: 676896d6-14ca-45b1-8029-6d36b10a077e
    # X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.UnsubscribeFromDataset
    # HOST: cognito-sync.us-east-1.amazonaws.com
    # X-AMZ-DATE: 20141004T195446Z
    # X-AMZ-SECURITY-TOKEN: <securitytoken>
    # AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature=<signature>
    #
    # {
    #     "Operation": "com.amazonaws.cognito.sync.model#UnsubscribeFromDataset",
    #     "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
    #     "Input":
    #     {
    #         "IdentityPoolId": "ID_POOL_ID",
    #         "IdentityId": "IDENTITY_ID",
    #         "DatasetName": "Rufus",
    #         "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014"
    #     }
    # }
    #                </request>
    #             <response>
    # 1.1 200 OK
    # x-amzn-requestid: 676896d6-14ca-45b1-8029-6d36b10a077e
    # date: Sat, 04 Oct 2014 19:54:46 GMT
    # content-type: application/json
    # content-length: 103
    #
    # {
    #     "Output":
    #     {
    #         "__type": "com.amazonaws.cognito.sync.model#UnsubscribeFromDatasetResponse"
    #     },
    #     "Version": "1.0"
    # }
    #                </response>
    #          </example>
    #       </examples>
    #
    # @param [Hash] params
    #   See {Types::UnsubscribeFromDatasetInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. The ID of the pool to which this identity belongs.</p>
    #
    # @option params [String] :identity_id
    #   <p>Unique ID for this identity.</p>
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset from which to unsubcribe.</p>
    #
    # @option params [String] :device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #
    # @return [Types::UnsubscribeFromDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unsubscribe_from_dataset(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId', # required
    #     dataset_name: 'DatasetName', # required
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnsubscribeFromDatasetOutput
    #
    def unsubscribe_from_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnsubscribeFromDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnsubscribeFromDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnsubscribeFromDataset
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::NotAuthorizedException, Errors::InvalidConfigurationException, Errors::InvalidParameterException, Errors::InternalErrorException]),
        data_parser: Parsers::UnsubscribeFromDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnsubscribeFromDataset,
        stubs: @stubs,
        params_class: Params::UnsubscribeFromDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unsubscribe_from_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Posts updates to records and adds and deletes records for a dataset and user.</p>
    #       <p>The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count.</p><p>For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0.</p>
    #       <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRecordsInput}.
    #
    # @option params [String] :identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @option params [String] :identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #
    # @option params [String] :dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    #
    # @option params [String] :device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #
    # @option params [Array<RecordPatch>] :record_patches
    #   A list of patch
    #         operations.
    #
    # @option params [String] :sync_session_token
    #   The SyncSessionToken returned by a
    #         previous call to ListRecords for this dataset and identity.
    #
    # @option params [String] :client_context
    #   Intended to supply a device ID that
    #         will populate the lastModifiedBy field referenced in other methods. The
    #            ClientContext field is not yet implemented.
    #
    # @return [Types::UpdateRecordsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_records(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId', # required
    #     dataset_name: 'DatasetName', # required
    #     device_id: 'DeviceId',
    #     record_patches: [
    #       {
    #         op: 'replace', # required - accepts ["replace", "remove"]
    #         key: 'Key', # required
    #         value: 'Value',
    #         sync_count: 1, # required
    #         device_last_modified_date: Time.now
    #       }
    #     ],
    #     sync_session_token: 'SyncSessionToken', # required
    #     client_context: 'ClientContext'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRecordsOutput
    #   resp.data.records #=> Array<Record>
    #   resp.data.records[0] #=> Types::Record
    #   resp.data.records[0].key #=> String
    #   resp.data.records[0].value #=> String
    #   resp.data.records[0].sync_count #=> Integer
    #   resp.data.records[0].last_modified_date #=> Time
    #   resp.data.records[0].last_modified_by #=> String
    #   resp.data.records[0].device_last_modified_date #=> Time
    #
    def update_records(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRecordsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRecordsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRecords
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LambdaThrottledException, Errors::TooManyRequestsException, Errors::LimitExceededException, Errors::NotAuthorizedException, Errors::InvalidLambdaFunctionOutputException, Errors::InvalidParameterException, Errors::ResourceConflictException, Errors::InternalErrorException]),
        data_parser: Parsers::UpdateRecords
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRecords,
        stubs: @stubs,
        params_class: Params::UpdateRecordsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_records
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
