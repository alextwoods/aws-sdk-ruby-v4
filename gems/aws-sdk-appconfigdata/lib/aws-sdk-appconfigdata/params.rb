# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppConfigData
  module Params

    module BadRequestDetails
      def self.build(params, context: '')
        return params if params.is_a?(Types::BadRequestDetails)
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestDetails, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :invalid_parameters
          Types::BadRequestDetails::InvalidParameters.new(
            (InvalidParameterMap.build(params[:invalid_parameters], context: "#{context}[:invalid_parameters]") unless params[:invalid_parameters].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :invalid_parameters set"
        end
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.details = BadRequestDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module GetLatestConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLatestConfigurationInput, context: context)
        type = Types::GetLatestConfigurationInput.new
        type.configuration_token = params[:configuration_token]
        type
      end
    end

    module GetLatestConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLatestConfigurationOutput, context: context)
        type = Types::GetLatestConfigurationOutput.new
        type.next_poll_configuration_token = params[:next_poll_configuration_token]
        type.next_poll_interval_in_seconds = params[:next_poll_interval_in_seconds]
        type.content_type = params[:content_type]
        type.configuration = params[:configuration]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterDetail, context: context)
        type = Types::InvalidParameterDetail.new
        type.problem = params[:problem]
        type
      end
    end

    module InvalidParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = InvalidParameterDetail.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.referenced_by = StringMap.build(params[:referenced_by], context: "#{context}[:referenced_by]") unless params[:referenced_by].nil?
        type
      end
    end

    module StartConfigurationSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartConfigurationSessionInput, context: context)
        type = Types::StartConfigurationSessionInput.new
        type.application_identifier = params[:application_identifier]
        type.environment_identifier = params[:environment_identifier]
        type.configuration_profile_identifier = params[:configuration_profile_identifier]
        type.required_minimum_poll_interval_in_seconds = params[:required_minimum_poll_interval_in_seconds]
        type
      end
    end

    module StartConfigurationSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartConfigurationSessionOutput, context: context)
        type = Types::StartConfigurationSessionOutput.new
        type.initial_configuration_token = params[:initial_configuration_token]
        type
      end
    end

    module StringMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

  end
end
