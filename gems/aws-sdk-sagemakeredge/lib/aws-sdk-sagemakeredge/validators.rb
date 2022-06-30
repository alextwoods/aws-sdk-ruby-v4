# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SagemakerEdge
  module Validators

    class EdgeMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EdgeMetric, context: context)
        Hearth::Validator.validate!(input[:dimension], ::String, context: "#{context}[:dimension]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class EdgeMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EdgeMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetDeviceRegistrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceRegistrationInput, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
      end
    end

    class GetDeviceRegistrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceRegistrationOutput, context: context)
        Hearth::Validator.validate!(input[:device_registration], ::String, context: "#{context}[:device_registration]")
        Hearth::Validator.validate!(input[:cache_ttl], ::String, context: "#{context}[:cache_ttl]")
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Model
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Model, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:latest_sample_time], ::Time, context: "#{context}[:latest_sample_time]")
        Hearth::Validator.validate!(input[:latest_inference], ::Time, context: "#{context}[:latest_inference]")
        Validators::EdgeMetrics.validate!(input[:model_metrics], context: "#{context}[:model_metrics]") unless input[:model_metrics].nil?
      end
    end

    class Models
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Model.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SendHeartbeatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendHeartbeatInput, context: context)
        Validators::EdgeMetrics.validate!(input[:agent_metrics], context: "#{context}[:agent_metrics]") unless input[:agent_metrics].nil?
        Validators::Models.validate!(input[:models], context: "#{context}[:models]") unless input[:models].nil?
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
      end
    end

    class SendHeartbeatOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendHeartbeatOutput, context: context)
      end
    end

  end
end
