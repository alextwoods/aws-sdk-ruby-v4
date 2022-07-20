# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerRuntime
  module Parsers

    # Operation Parser for InvokeEndpoint
    class InvokeEndpoint
      def self.parse(http_resp)
        data = Types::InvokeEndpointOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.invoked_production_variant = http_resp.headers['x-Amzn-Invoked-Production-Variant']
        data.custom_attributes = http_resp.headers['X-Amzn-SageMaker-Custom-Attributes']
        payload = http_resp.body.read
        data.body = payload unless payload.empty?
        data
      end
    end

    # Error Parser for InternalDependencyException
    class InternalDependencyException
      def self.parse(http_resp)
        data = Types::InternalDependencyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalFailure
    class InternalFailure
      def self.parse(http_resp)
        data = Types::InternalFailure.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ModelError
    class ModelError
      def self.parse(http_resp)
        data = Types::ModelError.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.original_status_code = map['OriginalStatusCode']
        data.original_message = map['OriginalMessage']
        data.log_stream_arn = map['LogStreamArn']
        data
      end
    end

    # Error Parser for ModelNotReadyException
    class ModelNotReadyException
      def self.parse(http_resp)
        data = Types::ModelNotReadyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailable
    class ServiceUnavailable
      def self.parse(http_resp)
        data = Types::ServiceUnavailable.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationError
    class ValidationError
      def self.parse(http_resp)
        data = Types::ValidationError.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for InvokeEndpointAsync
    class InvokeEndpointAsync
      def self.parse(http_resp)
        data = Types::InvokeEndpointAsyncOutput.new
        data.output_location = http_resp.headers['X-Amzn-SageMaker-OutputLocation']
        map = Hearth::JSON.load(http_resp.body)
        data.inference_id = map['InferenceId']
        data
      end
    end
  end
end
