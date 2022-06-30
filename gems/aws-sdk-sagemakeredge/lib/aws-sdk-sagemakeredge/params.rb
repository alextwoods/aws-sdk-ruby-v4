# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SagemakerEdge
  module Params

    module EdgeMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EdgeMetric, context: context)
        type = Types::EdgeMetric.new
        type.dimension = params[:dimension]
        type.metric_name = params[:metric_name]
        type.value = params[:value]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module EdgeMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EdgeMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetDeviceRegistrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceRegistrationInput, context: context)
        type = Types::GetDeviceRegistrationInput.new
        type.device_name = params[:device_name]
        type.device_fleet_name = params[:device_fleet_name]
        type
      end
    end

    module GetDeviceRegistrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceRegistrationOutput, context: context)
        type = Types::GetDeviceRegistrationOutput.new
        type.device_registration = params[:device_registration]
        type.cache_ttl = params[:cache_ttl]
        type
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module Model
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Model, context: context)
        type = Types::Model.new
        type.model_name = params[:model_name]
        type.model_version = params[:model_version]
        type.latest_sample_time = params[:latest_sample_time]
        type.latest_inference = params[:latest_inference]
        type.model_metrics = EdgeMetrics.build(params[:model_metrics], context: "#{context}[:model_metrics]") unless params[:model_metrics].nil?
        type
      end
    end

    module Models
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Model.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SendHeartbeatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendHeartbeatInput, context: context)
        type = Types::SendHeartbeatInput.new
        type.agent_metrics = EdgeMetrics.build(params[:agent_metrics], context: "#{context}[:agent_metrics]") unless params[:agent_metrics].nil?
        type.models = Models.build(params[:models], context: "#{context}[:models]") unless params[:models].nil?
        type.agent_version = params[:agent_version]
        type.device_name = params[:device_name]
        type.device_fleet_name = params[:device_fleet_name]
        type
      end
    end

    module SendHeartbeatOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendHeartbeatOutput, context: context)
        type = Types::SendHeartbeatOutput.new
        type
      end
    end

  end
end
