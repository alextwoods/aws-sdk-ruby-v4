# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MediaStoreData
  # An API client for MediaStoreObject_20170901
  # See {#initialize} for a full list of supported configuration options
  # <p>An AWS Elemental MediaStore asset is an object, similar to an object in the Amazon S3
  #          service. Objects are the fundamental entities that are stored in AWS Elemental
  #          MediaStore.</p>
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
    def initialize(config = AWS::SDK::MediaStoreData::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes an object at the specified path.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteObjectInput}.
    #
    # @option params [String] :path
    #   <p>The path (including the file name) where the object is stored in the container.
    #            Format: <folder name>/<folder name>/<file name></p>
    #
    # @return [Types::DeleteObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_object(
    #     path: 'Path' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteObjectOutput
    #
    def delete_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteObjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteObject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ObjectNotFoundException, Errors::ContainerNotFoundException]),
        data_parser: Parsers::DeleteObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteObject,
        stubs: @stubs,
        params_class: Params::DeleteObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the headers for an object at the specified path.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeObjectInput}.
    #
    # @option params [String] :path
    #   <p>The path (including the file name) where the object is stored in the container.
    #            Format: <folder name>/<folder name>/<file name></p>
    #
    # @return [Types::DescribeObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_object(
    #     path: 'Path' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeObjectOutput
    #   resp.data.e_tag #=> String
    #   resp.data.content_type #=> String
    #   resp.data.content_length #=> Integer
    #   resp.data.cache_control #=> String
    #   resp.data.last_modified #=> Time
    #
    def describe_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeObjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeObject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ObjectNotFoundException, Errors::ContainerNotFoundException]),
        data_parser: Parsers::DescribeObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeObject,
        stubs: @stubs,
        params_class: Params::DescribeObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Downloads the object at the specified path. If the object’s upload availability is set to <code>streaming</code>, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetObjectInput}.
    #
    # @option params [String] :path
    #   <p>The path (including the file name) where the object is stored in the container.
    #            Format: <folder name>/<folder name>/<file name></p>
    #            <p>For example, to upload the file <code>mlaw.avi</code> to the folder path
    #               <code>premium\canada</code> in the container <code>movies</code>, enter the path
    #               <code>premium/canada/mlaw.avi</code>.</p>
    #            <p>Do not include the container name in this path.</p>
    #            <p>If the path includes any folders that don't exist yet, the service creates them. For
    #            example, suppose you have an existing <code>premium/usa</code> subfolder. If you specify
    #               <code>premium/canada</code>, the service creates a <code>canada</code> subfolder in the
    #               <code>premium</code> folder. You then have two subfolders, <code>usa</code> and
    #               <code>canada</code>, in the <code>premium</code> folder. </p>
    #            <p>There is no correlation between the path to the source and the path (folders) in the
    #            container in AWS Elemental MediaStore.</p>
    #            <p>For more information about folders and how they exist in a container, see the <a href="http://docs.aws.amazon.com/mediastore/latest/ug/">AWS Elemental MediaStore User
    #               Guide</a>.</p>
    #            <p>The file name is the name that is assigned to the file that you upload. The file can
    #            have the same name inside and outside of AWS Elemental MediaStore, or it can have the same
    #            name. The file name can include or omit an extension. </p>
    #
    # @option params [String] :range
    #   <p>The range bytes of an object to retrieve. For more information about the
    #             <code>Range</code> header, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35</a>. AWS Elemental MediaStore ignores this header for partially uploaded objects that have streaming upload availability.</p>
    #
    # @return [Types::GetObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object(
    #     path: 'Path', # required
    #     range: 'Range'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectOutput
    #   resp.data.body #=> String
    #   resp.data.cache_control #=> String
    #   resp.data.content_range #=> String
    #   resp.data.content_length #=> Integer
    #   resp.data.content_type #=> String
    #   resp.data.e_tag #=> String
    #   resp.data.last_modified #=> Time
    #   resp.data.status_code #=> Integer
    #
    def get_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::RequestedRangeNotSatisfiableException, Errors::ObjectNotFoundException, Errors::ContainerNotFoundException]),
        data_parser: Parsers::GetObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetObject,
        stubs: @stubs,
        params_class: Params::GetObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of metadata entries about folders and objects in the specified
    #          folder.</p>
    #
    # @param [Hash] params
    #   See {Types::ListItemsInput}.
    #
    # @option params [String] :path
    #   <p>The path in the container from which to retrieve items. Format: <folder
    #            name>/<folder name>/<file name></p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per API request. For example, you submit a
    #               <code>ListItems</code> request with <code>MaxResults</code> set at 500. Although 2,000
    #            items match your request, the service returns no more than the first 500 items. (The
    #            service also returns a <code>NextToken</code> value that you can use to fetch the next
    #            batch of results.) The service might return fewer results than the <code>MaxResults</code>
    #            value.</p>
    #            <p>If <code>MaxResults</code> is not included in the request, the service defaults to
    #            pagination with a maximum of 1,000 results per page.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results that you want to see. For example,
    #            you submit a <code>ListItems</code> request with <code>MaxResults</code> set at 500. The
    #            service returns the first batch of results (up to 500) and a <code>NextToken</code> value.
    #            To see the next batch of results, you can submit the <code>ListItems</code> request a
    #            second time and specify the <code>NextToken</code> value.</p>
    #            <p>Tokens expire after 15 minutes.</p>
    #
    # @return [Types::ListItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_items(
    #     path: 'Path',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListItemsOutput
    #   resp.data.items #=> Array<Item>
    #   resp.data.items[0] #=> Types::Item
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].type #=> String, one of ["OBJECT", "FOLDER"]
    #   resp.data.items[0].e_tag #=> String
    #   resp.data.items[0].last_modified #=> Time
    #   resp.data.items[0].content_type #=> String
    #   resp.data.items[0].content_length #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListItemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ContainerNotFoundException]),
        data_parser: Parsers::ListItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListItems,
        stubs: @stubs,
        params_class: Params::ListItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.</p>
    #
    # @param [Hash] params
    #   See {Types::PutObjectInput}.
    #
    # @option params [String] :body
    #   <p>The bytes to be stored. </p>
    #
    # @option params [String] :path
    #   <p>The path (including the file name) where the object is stored in the container.
    #            Format: <folder name>/<folder name>/<file name></p>
    #            <p>For example, to upload the file <code>mlaw.avi</code> to the folder path
    #               <code>premium\canada</code> in the container <code>movies</code>, enter the path
    #               <code>premium/canada/mlaw.avi</code>.</p>
    #            <p>Do not include the container name in this path.</p>
    #            <p>If the path includes any folders that don't exist yet, the service creates them. For
    #            example, suppose you have an existing <code>premium/usa</code> subfolder. If you specify
    #               <code>premium/canada</code>, the service creates a <code>canada</code> subfolder in the
    #               <code>premium</code> folder. You then have two subfolders, <code>usa</code> and
    #               <code>canada</code>, in the <code>premium</code> folder. </p>
    #            <p>There is no correlation between the path to the source and the path (folders) in the
    #            container in AWS Elemental MediaStore.</p>
    #            <p>For more information about folders and how they exist in a container, see the <a href="http://docs.aws.amazon.com/mediastore/latest/ug/">AWS Elemental MediaStore User
    #               Guide</a>.</p>
    #            <p>The file name is the name that is assigned to the file that you upload. The file can
    #            have the same name inside and outside of AWS Elemental MediaStore, or it can have the same
    #            name. The file name can include or omit an extension. </p>
    #
    # @option params [String] :content_type
    #   <p>The content type of the object.</p>
    #
    # @option params [String] :cache_control
    #   <p>An optional <code>CacheControl</code> header that allows the caller to control the
    #            object's cache behavior. Headers can be passed in as specified in the HTTP at <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
    #            <p>Headers with a custom user-defined value are also accepted.</p>
    #
    # @option params [String] :storage_class
    #   <p>Indicates the storage class of a <code>Put</code> request. Defaults to
    #            high-performance temporal storage class, and objects are persisted into durable storage
    #            shortly after being received.</p>
    #
    # @option params [String] :upload_availability
    #   <p>Indicates the availability of an object while it is still uploading. If the value is set to <code>streaming</code>, the object is available for
    #               downloading after some initial buffering but before the object is uploaded completely. If the value is set to <code>standard</code>, the object is
    #               available for downloading only when it is uploaded completely. The default value for this header is <code>standard</code>.</p>
    #           <p>To use this header, you must also set the HTTP <code>Transfer-Encoding</code> header to <code>chunked</code>.</p>
    #
    # @return [Types::PutObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_object(
    #     body: 'Body', # required
    #     path: 'Path', # required
    #     content_type: 'ContentType',
    #     cache_control: 'CacheControl',
    #     storage_class: 'TEMPORAL', # accepts ["TEMPORAL"]
    #     upload_availability: 'STANDARD' # accepts ["STANDARD", "STREAMING"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutObjectOutput
    #   resp.data.content_sha256 #=> String
    #   resp.data.e_tag #=> String
    #   resp.data.storage_class #=> String, one of ["TEMPORAL"]
    #
    def put_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutObjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutObject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ContainerNotFoundException]),
        data_parser: Parsers::PutObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutObject,
        stubs: @stubs,
        params_class: Params::PutObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_object
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
