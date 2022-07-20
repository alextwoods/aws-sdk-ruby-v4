# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MigrationHubConfig
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateHomeRegionControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHomeRegionControlInput, context: context)
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Target.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateHomeRegionControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHomeRegionControlOutput, context: context)
        HomeRegionControl.validate!(input[:home_region_control], context: "#{context}[:home_region_control]") unless input[:home_region_control].nil?
      end
    end

    class DescribeHomeRegionControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHomeRegionControlsInput, context: context)
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Target.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeHomeRegionControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHomeRegionControlsOutput, context: context)
        HomeRegionControls.validate!(input[:home_region_controls], context: "#{context}[:home_region_controls]") unless input[:home_region_controls].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DryRunOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DryRunOperation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetHomeRegionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHomeRegionInput, context: context)
      end
    end

    class GetHomeRegionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHomeRegionOutput, context: context)
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
      end
    end

    class HomeRegionControl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HomeRegionControl, context: context)
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Target.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Hearth::Validator.validate!(input[:requested_time], ::Time, context: "#{context}[:requested_time]")
      end
    end

    class HomeRegionControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HomeRegionControl.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Target
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Target, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

  end
end
