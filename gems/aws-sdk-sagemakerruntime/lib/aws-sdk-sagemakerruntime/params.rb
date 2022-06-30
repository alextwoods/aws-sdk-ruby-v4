# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SageMakerRuntime
  module Params

    module InternalDependencyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalDependencyException, context: context)
        type = Types::InternalDependencyException.new
        type.message = params[:message]
        type
      end
    end

    module InternalFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailure, context: context)
        type = Types::InternalFailure.new
        type.message = params[:message]
        type
      end
    end

    module InvokeEndpointAsyncInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeEndpointAsyncInput, context: context)
        type = Types::InvokeEndpointAsyncInput.new
        type.endpoint_name = params[:endpoint_name]
        type.content_type = params[:content_type]
        type.accept = params[:accept]
        type.custom_attributes = params[:custom_attributes]
        type.inference_id = params[:inference_id]
        type.input_location = params[:input_location]
        type.request_ttl_seconds = params[:request_ttl_seconds]
        type
      end
    end

    module InvokeEndpointAsyncOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeEndpointAsyncOutput, context: context)
        type = Types::InvokeEndpointAsyncOutput.new
        type.inference_id = params[:inference_id]
        type.output_location = params[:output_location]
        type
      end
    end

    module InvokeEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeEndpointInput, context: context)
        type = Types::InvokeEndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type.body = params[:body]
        type.content_type = params[:content_type]
        type.accept = params[:accept]
        type.custom_attributes = params[:custom_attributes]
        type.target_model = params[:target_model]
        type.target_variant = params[:target_variant]
        type.target_container_hostname = params[:target_container_hostname]
        type.inference_id = params[:inference_id]
        type
      end
    end

    module InvokeEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeEndpointOutput, context: context)
        type = Types::InvokeEndpointOutput.new
        type.body = params[:body]
        type.content_type = params[:content_type]
        type.invoked_production_variant = params[:invoked_production_variant]
        type.custom_attributes = params[:custom_attributes]
        type
      end
    end

    module ModelError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelError, context: context)
        type = Types::ModelError.new
        type.message = params[:message]
        type.original_status_code = params[:original_status_code]
        type.original_message = params[:original_message]
        type.log_stream_arn = params[:log_stream_arn]
        type
      end
    end

    module ModelNotReadyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelNotReadyException, context: context)
        type = Types::ModelNotReadyException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceUnavailable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailable, context: context)
        type = Types::ServiceUnavailable.new
        type.message = params[:message]
        type
      end
    end

    module ValidationError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationError, context: context)
        type = Types::ValidationError.new
        type.message = params[:message]
        type
      end
    end

  end
end
