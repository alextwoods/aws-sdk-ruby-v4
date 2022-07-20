# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SageMakerRuntime
  module Builders

    # Operation Builder for InvokeEndpoint
    class InvokeEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:endpoint_name].to_s.empty?
          raise ArgumentError, "HTTP label :endpoint_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/endpoints/%<EndpointName>s/invocations',
            EndpointName: Hearth::HTTP.uri_escape(input[:endpoint_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = ::StringIO.new(input[:body] || '')
        http_req.headers['Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
        http_req.headers['Accept'] = input[:accept] unless input[:accept].nil? || input[:accept].empty?
        http_req.headers['X-Amzn-SageMaker-Custom-Attributes'] = input[:custom_attributes] unless input[:custom_attributes].nil? || input[:custom_attributes].empty?
        http_req.headers['X-Amzn-SageMaker-Target-Model'] = input[:target_model] unless input[:target_model].nil? || input[:target_model].empty?
        http_req.headers['X-Amzn-SageMaker-Target-Variant'] = input[:target_variant] unless input[:target_variant].nil? || input[:target_variant].empty?
        http_req.headers['X-Amzn-SageMaker-Target-Container-Hostname'] = input[:target_container_hostname] unless input[:target_container_hostname].nil? || input[:target_container_hostname].empty?
        http_req.headers['X-Amzn-SageMaker-Inference-Id'] = input[:inference_id] unless input[:inference_id].nil? || input[:inference_id].empty?
      end
    end

    # Operation Builder for InvokeEndpointAsync
    class InvokeEndpointAsync
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:endpoint_name].to_s.empty?
          raise ArgumentError, "HTTP label :endpoint_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/endpoints/%<EndpointName>s/async-invocations',
            EndpointName: Hearth::HTTP.uri_escape(input[:endpoint_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amzn-SageMaker-Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
        http_req.headers['X-Amzn-SageMaker-Accept'] = input[:accept] unless input[:accept].nil? || input[:accept].empty?
        http_req.headers['X-Amzn-SageMaker-Custom-Attributes'] = input[:custom_attributes] unless input[:custom_attributes].nil? || input[:custom_attributes].empty?
        http_req.headers['X-Amzn-SageMaker-Inference-Id'] = input[:inference_id] unless input[:inference_id].nil? || input[:inference_id].empty?
        http_req.headers['X-Amzn-SageMaker-InputLocation'] = input[:input_location] unless input[:input_location].nil? || input[:input_location].empty?
        http_req.headers['X-Amzn-SageMaker-RequestTTLSeconds'] = input[:request_ttl_seconds].to_s unless input[:request_ttl_seconds].nil?
      end
    end
  end
end
