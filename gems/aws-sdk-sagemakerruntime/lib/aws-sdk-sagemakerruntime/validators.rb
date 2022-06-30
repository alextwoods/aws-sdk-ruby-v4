# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerRuntime
  module Validators

    class InternalDependencyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalDependencyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailure, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvokeEndpointAsyncInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeEndpointAsyncInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:accept], ::String, context: "#{context}[:accept]")
        Hearth::Validator.validate!(input[:custom_attributes], ::String, context: "#{context}[:custom_attributes]")
        Hearth::Validator.validate!(input[:inference_id], ::String, context: "#{context}[:inference_id]")
        Hearth::Validator.validate!(input[:input_location], ::String, context: "#{context}[:input_location]")
        Hearth::Validator.validate!(input[:request_ttl_seconds], ::Integer, context: "#{context}[:request_ttl_seconds]")
      end
    end

    class InvokeEndpointAsyncOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeEndpointAsyncOutput, context: context)
        Hearth::Validator.validate!(input[:inference_id], ::String, context: "#{context}[:inference_id]")
        Hearth::Validator.validate!(input[:output_location], ::String, context: "#{context}[:output_location]")
      end
    end

    class InvokeEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:accept], ::String, context: "#{context}[:accept]")
        Hearth::Validator.validate!(input[:custom_attributes], ::String, context: "#{context}[:custom_attributes]")
        Hearth::Validator.validate!(input[:target_model], ::String, context: "#{context}[:target_model]")
        Hearth::Validator.validate!(input[:target_variant], ::String, context: "#{context}[:target_variant]")
        Hearth::Validator.validate!(input[:target_container_hostname], ::String, context: "#{context}[:target_container_hostname]")
        Hearth::Validator.validate!(input[:inference_id], ::String, context: "#{context}[:inference_id]")
      end
    end

    class InvokeEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:invoked_production_variant], ::String, context: "#{context}[:invoked_production_variant]")
        Hearth::Validator.validate!(input[:custom_attributes], ::String, context: "#{context}[:custom_attributes]")
      end
    end

    class ModelError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:original_status_code], ::Integer, context: "#{context}[:original_status_code]")
        Hearth::Validator.validate!(input[:original_message], ::String, context: "#{context}[:original_message]")
        Hearth::Validator.validate!(input[:log_stream_arn], ::String, context: "#{context}[:log_stream_arn]")
      end
    end

    class ModelNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelNotReadyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailable, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
