# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerRuntime
  module Types

    # <p>Your request caused an exception with an internal dependency. Contact customer support. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalDependencyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An internal failure occurred. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalFailure = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the endpoint that you specified when you created the endpoint using
    #               the <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html">
    #                  <code>CreateEndpoint</code>
    #               </a> API.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request body.</p>
    #
    #   @return [String]
    #
    # @!attribute accept
    #   <p>The desired MIME type of the inference in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_attributes
    #   <p>Provides additional information about a request for an inference submitted to
    #               a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
    #               forwarded verbatim. You could use this value, for example, to provide an ID that you
    #               can use to track a request or to provide other metadata that a service endpoint was
    #               programmed to process. The value must consist of no more than 1024
    #               visible US-ASCII characters as specified in
    #               <a href="https://datatracker.ietf.org/doc/html/rfc7230 section-3.2.6">Section 3.3.6.
    #                   Field Value Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). </p>
    #
    #           <p>The code in your model is responsible for setting or updating any custom attributes
    #               in the response. If your code does not set this value in the response, an empty
    #               value is returned. For example, if a custom attribute represents the trace ID,
    #               your model can prepend the custom attribute with <code>Trace ID</code>: in your post-processing function. </p>
    #
    #           <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker Python SDK. </p>
    #
    #   @return [String]
    #
    # @!attribute inference_id
    #   <p>The identifier for the inference request. Amazon SageMaker will generate an identifier for you
    #               if none is specified. </p>
    #
    #   @return [String]
    #
    # @!attribute input_location
    #   <p>The Amazon S3 URI where the inference request payload is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute request_ttl_seconds
    #   <p>Maximum age in seconds a request can be in the queue before it is marked as expired.</p>
    #
    #   @return [Integer]
    #
    InvokeEndpointAsyncInput = ::Struct.new(
      :endpoint_name,
      :content_type,
      :accept,
      :custom_attributes,
      :inference_id,
      :input_location,
      :request_ttl_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SageMakerRuntime::Types::InvokeEndpointAsyncInput "\
          "endpoint_name=#{endpoint_name || 'nil'}, "\
          "content_type=#{content_type || 'nil'}, "\
          "accept=#{accept || 'nil'}, "\
          "custom_attributes=\"[SENSITIVE]\", "\
          "inference_id=#{inference_id || 'nil'}, "\
          "input_location=#{input_location || 'nil'}, "\
          "request_ttl_seconds=#{request_ttl_seconds || 'nil'}>"
      end
    end

    # @!attribute inference_id
    #   <p>Identifier for an inference request. This will be the same as the <code>InferenceId</code> specified
    #               in the input. Amazon SageMaker will generate an identifier for you if you do not specify one.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>The Amazon S3 URI where the inference response payload is stored.</p>
    #
    #   @return [String]
    #
    InvokeEndpointAsyncOutput = ::Struct.new(
      :inference_id,
      :output_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_name
    #   <p>The name of the endpoint that you specified when you created the endpoint using the
    #                   <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API. </p>
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>Provides input data, in the format specified in the <code>ContentType</code>
    #               request header. Amazon SageMaker passes all of the data in the body to the model. </p>
    #           <p>For information about the format of the request body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    #                   Formats-Inference</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request body.</p>
    #
    #   @return [String]
    #
    # @!attribute accept
    #   <p>The desired MIME type of the inference in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_attributes
    #   <p>Provides additional information about a request for an inference submitted to a model
    #               hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
    #               forwarded verbatim. You could use this value, for example, to provide an ID that you can
    #               use to track a request or to provide other metadata that a service endpoint was
    #               programmed to process. The value must consist of no more than 1024 visible US-ASCII
    #               characters as specified in <a href="https://tools.ietf.org/html/rfc7230 section-3.2.6">Section 3.3.6. Field Value
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
    #   @return [String]
    #
    # @!attribute target_model
    #   <p>The model to request for inference when invoking a multi-model endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute target_variant
    #   <p>Specify the production variant to send the inference request to when invoking an
    #               endpoint that is running two or more variants. Note that this parameter overrides the
    #               default behavior for the endpoint, which is to distribute the invocation traffic based
    #               on the variant weights.</p>
    #           <p>For information about how to use variant targeting to perform a/b testing, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html">Test models in
    #                   production</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute target_container_hostname
    #   <p>If the endpoint hosts multiple containers and is configured to use direct invocation,
    #               this parameter specifies the host name of the container to invoke.</p>
    #
    #   @return [String]
    #
    # @!attribute inference_id
    #   <p>If you provide a value, it is added to the captured data when you enable data capture
    #               on the endpoint. For information about data capture, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html">Capture
    #               Data</a>.</p>
    #
    #   @return [String]
    #
    InvokeEndpointInput = ::Struct.new(
      :endpoint_name,
      :body,
      :content_type,
      :accept,
      :custom_attributes,
      :target_model,
      :target_variant,
      :target_container_hostname,
      :inference_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SageMakerRuntime::Types::InvokeEndpointInput "\
          "endpoint_name=#{endpoint_name || 'nil'}, "\
          "body=\"[SENSITIVE]\", "\
          "content_type=#{content_type || 'nil'}, "\
          "accept=#{accept || 'nil'}, "\
          "custom_attributes=\"[SENSITIVE]\", "\
          "target_model=#{target_model || 'nil'}, "\
          "target_variant=#{target_variant || 'nil'}, "\
          "target_container_hostname=#{target_container_hostname || 'nil'}, "\
          "inference_id=#{inference_id || 'nil'}>"
      end
    end

    # @!attribute body
    #   <p>Includes the inference provided by the model.</p>
    #           <p>For information about the format of the response body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    #                   Formats-Inference</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The MIME type of the inference returned in the response body.</p>
    #
    #   @return [String]
    #
    # @!attribute invoked_production_variant
    #   <p>Identifies the production variant that was invoked.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_attributes
    #   <p>Provides additional information in the response about the inference returned by a
    #               model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
    #               forwarded verbatim. You could use this value, for example, to return an ID received in
    #               the <code>CustomAttributes</code> header of a request or other metadata that a service
    #               endpoint was programmed to produce. The value must consist of no more than 1024 visible
    #               US-ASCII characters as specified in <a href="https://tools.ietf.org/html/rfc7230 section-3.2.6">Section 3.3.6. Field Value
    #                   Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). If the customer
    #               wants the custom attribute returned, the model must set the custom attribute to be
    #               included on the way back. </p>
    #           <p>The code in your model is responsible for setting or updating any custom attributes in
    #               the response. If your code does not set this value in the response, an empty value is
    #               returned. For example, if a custom attribute represents the trace ID, your model can
    #               prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    #               function.</p>
    #           <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker Python
    #               SDK.</p>
    #
    #   @return [String]
    #
    InvokeEndpointOutput = ::Struct.new(
      :body,
      :content_type,
      :invoked_production_variant,
      :custom_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SageMakerRuntime::Types::InvokeEndpointOutput "\
          "body=\"[SENSITIVE]\", "\
          "content_type=#{content_type || 'nil'}, "\
          "invoked_production_variant=#{invoked_production_variant || 'nil'}, "\
          "custom_attributes=\"[SENSITIVE]\">"
      end
    end

    # <p> Model (owned by the customer in the container) returned 4xx or 5xx error code.
    #         </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute original_status_code
    #   <p> Original status code. </p>
    #
    #   @return [Integer]
    #
    # @!attribute original_message
    #   <p> Original message. </p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_arn
    #   <p> The Amazon Resource Name (ARN) of the log stream. </p>
    #
    #   @return [String]
    #
    ModelError = ::Struct.new(
      :message,
      :original_status_code,
      :original_message,
      :log_stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Either a serverless endpoint variant's resources are still being provisioned, or a multi-model endpoint is still downloading or loading the target model. Wait and try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ModelNotReadyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The service is unavailable. Try your call again. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailable = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Inspect your request and try again. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationError = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
