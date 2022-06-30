# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerRuntime
  module Stubs

    # Operation Stubber for InvokeEndpoint
    class InvokeEndpoint
      def self.default(visited=[])
        {
          body: 'body',
          content_type: 'content_type',
          invoked_production_variant: 'invoked_production_variant',
          custom_attributes: 'custom_attributes',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['x-Amzn-Invoked-Production-Variant'] = stub[:invoked_production_variant] unless stub[:invoked_production_variant].nil? || stub[:invoked_production_variant].empty?
        http_resp.headers['X-Amzn-SageMaker-Custom-Attributes'] = stub[:custom_attributes] unless stub[:custom_attributes].nil? || stub[:custom_attributes].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:body] || '')
      end
    end

    # Operation Stubber for InvokeEndpointAsync
    class InvokeEndpointAsync
      def self.default(visited=[])
        {
          inference_id: 'inference_id',
          output_location: 'output_location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['X-Amzn-SageMaker-OutputLocation'] = stub[:output_location] unless stub[:output_location].nil? || stub[:output_location].empty?
        http_resp.headers['Content-Type'] = 'application/json'
        data['InferenceId'] = stub[:inference_id] unless stub[:inference_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
