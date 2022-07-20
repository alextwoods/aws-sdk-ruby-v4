# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppConfigData
  module Validators

    class BadRequestDetails
      def self.validate!(input, context:)
        case input
        when Types::BadRequestDetails::InvalidParameters
          InvalidParameterMap.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::BadRequestDetails, got #{input.class}."
        end
      end

      class InvalidParameters
        def self.validate!(input, context:)
          Validators::InvalidParameterMap.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        BadRequestDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class GetLatestConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLatestConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_token], ::String, context: "#{context}[:configuration_token]")
      end
    end

    class GetLatestConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLatestConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:next_poll_configuration_token], ::String, context: "#{context}[:next_poll_configuration_token]")
        Hearth::Validator.validate!(input[:next_poll_interval_in_seconds], ::Integer, context: "#{context}[:next_poll_interval_in_seconds]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterDetail, context: context)
        Hearth::Validator.validate!(input[:problem], ::String, context: "#{context}[:problem]")
      end
    end

    class InvalidParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          InvalidParameterDetail.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        StringMap.validate!(input[:referenced_by], context: "#{context}[:referenced_by]") unless input[:referenced_by].nil?
      end
    end

    class StartConfigurationSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartConfigurationSessionInput, context: context)
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:configuration_profile_identifier], ::String, context: "#{context}[:configuration_profile_identifier]")
        Hearth::Validator.validate!(input[:required_minimum_poll_interval_in_seconds], ::Integer, context: "#{context}[:required_minimum_poll_interval_in_seconds]")
      end
    end

    class StartConfigurationSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartConfigurationSessionOutput, context: context)
        Hearth::Validator.validate!(input[:initial_configuration_token], ::String, context: "#{context}[:initial_configuration_token]")
      end
    end

    class StringMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
