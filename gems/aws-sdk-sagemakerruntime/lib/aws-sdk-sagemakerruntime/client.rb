# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SageMakerRuntime
  # An API client for AmazonSageMakerRuntime
  # See {#initialize} for a full list of supported configuration options
  # <p> The Amazon SageMaker runtime API. </p>
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
    def initialize(config = AWS::SDK::SageMakerRuntime::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>After you deploy a model into production using Amazon SageMaker hosting services, your
    #             client applications use this API to get inferences from the model hosted at the
    #             specified endpoint. </p>
    #         <p>For an overview of Amazon SageMaker, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html">How It Works</a>. </p>
    #         <p>Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add
    #             additional headers. You should not rely on the behavior of headers outside those
    #             enumerated in the request syntax. </p>
    #         <p>Calls to <code>InvokeEndpoint</code> are authenticated by using Amazon Web Services Signature Version
    #             4. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating
    #                 Requests (Amazon Web Services Signature Version 4)</a> in the <i>Amazon S3 API
    #                 Reference</i>.</p>
    #         <p>A customer's model containers must respond to requests within 60 seconds. The model
    #             itself can have a maximum processing time of 60 seconds before responding to
    #             invocations. If your model is going to take 50-60 seconds of processing time, the SDK
    #             socket timeout should be set to be 70 seconds.</p>
    #         <note>
    #             <p>Endpoints are scoped to an individual account, and are not public. The URL does
    #                 not contain the account ID, but Amazon SageMaker determines the account ID from the
    #                 authentication token that is supplied by the caller.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::InvokeEndpointInput}.
    #
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint that you specified when you created the endpoint using the
    #                   <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API. </p>
    #
    # @option params [String] :body
    #   <p>Provides input data, in the format specified in the <code>ContentType</code>
    #               request header. Amazon SageMaker passes all of the data in the body to the model. </p>
    #           <p>For information about the format of the request body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    #                   Formats-Inference</a>.</p>
    #
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the request body.</p>
    #
    # @option params [String] :accept
    #   <p>The desired MIME type of the inference in the response.</p>
    #
    # @option params [String] :custom_attributes
    #   <p>Provides additional information about a request for an inference submitted to a model
    #               hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
    #               forwarded verbatim. You could use this value, for example, to provide an ID that you can
    #               use to track a request or to provide other metadata that a service endpoint was
    #               programmed to process. The value must consist of no more than 1024 visible US-ASCII
    #               characters as specified in <a href="https://tools.ietf.org/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value
    #                   Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). </p>
    #           <p>The code in your model is responsible for setting or updating any custom attributes in
    #               the response. If your code does not set this value in the response, an empty value is
    #               returned. For example, if a custom attribute represents the trace ID, your model can
    #               prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    #               function.</p>
    #
    #           <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker Python
    #               SDK.</p>
    #
    # @option params [String] :target_model
    #   <p>The model to request for inference when invoking a multi-model endpoint.</p>
    #
    # @option params [String] :target_variant
    #   <p>Specify the production variant to send the inference request to when invoking an
    #               endpoint that is running two or more variants. Note that this parameter overrides the
    #               default behavior for the endpoint, which is to distribute the invocation traffic based
    #               on the variant weights.</p>
    #           <p>For information about how to use variant targeting to perform a/b testing, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html">Test models in
    #                   production</a>
    #            </p>
    #
    # @option params [String] :target_container_hostname
    #   <p>If the endpoint hosts multiple containers and is configured to use direct invocation,
    #               this parameter specifies the host name of the container to invoke.</p>
    #
    # @option params [String] :inference_id
    #   <p>If you provide a value, it is added to the captured data when you enable data capture
    #               on the endpoint. For information about data capture, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html">Capture
    #               Data</a>.</p>
    #
    # @return [Types::InvokeEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_endpoint(
    #     endpoint_name: 'EndpointName', # required
    #     body: 'Body', # required
    #     content_type: 'ContentType',
    #     accept: 'Accept',
    #     custom_attributes: 'CustomAttributes',
    #     target_model: 'TargetModel',
    #     target_variant: 'TargetVariant',
    #     target_container_hostname: 'TargetContainerHostname',
    #     inference_id: 'InferenceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InvokeEndpointOutput
    #   resp.data.body #=> String
    #   resp.data.content_type #=> String
    #   resp.data.invoked_production_variant #=> String
    #   resp.data.custom_attributes #=> String
    #
    def invoke_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InvokeEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InvokeEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InvokeEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalDependencyException, Errors::InternalFailure, Errors::ModelError, Errors::ModelNotReadyException, Errors::ServiceUnavailable, Errors::ValidationError]),
        data_parser: Parsers::InvokeEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InvokeEndpoint,
        stubs: @stubs,
        params_class: Params::InvokeEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :invoke_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>After you deploy a model into production using Amazon SageMaker hosting services,
    #             your client applications use this API to get inferences from the model hosted at
    #             the specified endpoint in an asynchronous manner.</p>
    #
    #         <p>Inference requests sent to this API are enqueued for asynchronous processing.
    #             The processing of the inference request may or may not complete before the
    #             you receive a response from this API. The response from this API will
    #             not contain the result of the inference request but contain information
    #             about where you can locate it.</p>
    #
    #         <p>Amazon SageMaker strips all <code>POST</code> headers except those supported by the API.
    #             Amazon SageMaker might add additional headers. You should not rely on the behavior
    #             of headers outside those enumerated in the request syntax.</p>
    #
    #         <p>Calls to <code>InvokeEndpointAsync</code> are authenticated by using Amazon Web Services Signature
    #             Version 4. For information, see <a href="https://docs.aws.amazon.com/https:/docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating Requests (Amazon Web Services Signature Version 4)</a> in the <i>Amazon S3 API
    #                 Reference</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::InvokeEndpointAsyncInput}.
    #
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint that you specified when you created the endpoint using
    #               the <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html">
    #                  <code>CreateEndpoint</code>
    #               </a> API.</p>
    #
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the request body.</p>
    #
    # @option params [String] :accept
    #   <p>The desired MIME type of the inference in the response.</p>
    #
    # @option params [String] :custom_attributes
    #   <p>Provides additional information about a request for an inference submitted to
    #               a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
    #               forwarded verbatim. You could use this value, for example, to provide an ID that you
    #               can use to track a request or to provide other metadata that a service endpoint was
    #               programmed to process. The value must consist of no more than 1024
    #               visible US-ASCII characters as specified in
    #               <a href="https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6">Section 3.3.6.
    #                   Field Value Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). </p>
    #
    #           <p>The code in your model is responsible for setting or updating any custom attributes
    #               in the response. If your code does not set this value in the response, an empty
    #               value is returned. For example, if a custom attribute represents the trace ID,
    #               your model can prepend the custom attribute with <code>Trace ID</code>: in your post-processing function. </p>
    #
    #           <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker Python SDK. </p>
    #
    # @option params [String] :inference_id
    #   <p>The identifier for the inference request. Amazon SageMaker will generate an identifier for you
    #               if none is specified. </p>
    #
    # @option params [String] :input_location
    #   <p>The Amazon S3 URI where the inference request payload is stored.</p>
    #
    # @option params [Integer] :request_ttl_seconds
    #   <p>Maximum age in seconds a request can be in the queue before it is marked as expired.</p>
    #
    # @return [Types::InvokeEndpointAsyncOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_endpoint_async(
    #     endpoint_name: 'EndpointName', # required
    #     content_type: 'ContentType',
    #     accept: 'Accept',
    #     custom_attributes: 'CustomAttributes',
    #     inference_id: 'InferenceId',
    #     input_location: 'InputLocation', # required
    #     request_ttl_seconds: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InvokeEndpointAsyncOutput
    #   resp.data.inference_id #=> String
    #   resp.data.output_location #=> String
    #
    def invoke_endpoint_async(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InvokeEndpointAsyncInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InvokeEndpointAsyncInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InvokeEndpointAsync
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InternalFailure, Errors::ServiceUnavailable, Errors::ValidationError]),
        data_parser: Parsers::InvokeEndpointAsync
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InvokeEndpointAsync,
        stubs: @stubs,
        params_class: Params::InvokeEndpointAsyncOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :invoke_endpoint_async
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
