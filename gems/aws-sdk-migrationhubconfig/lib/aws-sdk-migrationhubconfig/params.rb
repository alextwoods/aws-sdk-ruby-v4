# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MigrationHubConfig
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module CreateHomeRegionControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHomeRegionControlInput, context: context)
        type = Types::CreateHomeRegionControlInput.new
        type.home_region = params[:home_region]
        type.target = Target.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateHomeRegionControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHomeRegionControlOutput, context: context)
        type = Types::CreateHomeRegionControlOutput.new
        type.home_region_control = HomeRegionControl.build(params[:home_region_control], context: "#{context}[:home_region_control]") unless params[:home_region_control].nil?
        type
      end
    end

    module DescribeHomeRegionControlsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHomeRegionControlsInput, context: context)
        type = Types::DescribeHomeRegionControlsInput.new
        type.control_id = params[:control_id]
        type.home_region = params[:home_region]
        type.target = Target.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeHomeRegionControlsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHomeRegionControlsOutput, context: context)
        type = Types::DescribeHomeRegionControlsOutput.new
        type.home_region_controls = HomeRegionControls.build(params[:home_region_controls], context: "#{context}[:home_region_controls]") unless params[:home_region_controls].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DryRunOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DryRunOperation, context: context)
        type = Types::DryRunOperation.new
        type.message = params[:message]
        type
      end
    end

    module GetHomeRegionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHomeRegionInput, context: context)
        type = Types::GetHomeRegionInput.new
        type
      end
    end

    module GetHomeRegionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHomeRegionOutput, context: context)
        type = Types::GetHomeRegionOutput.new
        type.home_region = params[:home_region]
        type
      end
    end

    module HomeRegionControl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HomeRegionControl, context: context)
        type = Types::HomeRegionControl.new
        type.control_id = params[:control_id]
        type.home_region = params[:home_region]
        type.target = Target.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.requested_time = params[:requested_time]
        type
      end
    end

    module HomeRegionControls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HomeRegionControl.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module Target
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Target, context: context)
        type = Types::Target.new
        type.type = params[:type]
        type.id = params[:id]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

  end
end
