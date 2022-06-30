# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoTFleetHub
  module Params

    module ApplicationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSummary, context: context)
        type = Types::ApplicationSummary.new
        type.application_id = params[:application_id]
        type.application_name = params[:application_name]
        type.application_description = params[:application_description]
        type.application_url = params[:application_url]
        type.application_creation_date = params[:application_creation_date]
        type.application_last_update_date = params[:application_last_update_date]
        type.application_state = params[:application_state]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.application_name = params[:application_name]
        type.application_description = params[:application_description]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application_id = params[:application_id]
        type.application_arn = params[:application_arn]
        type
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.application_id = params[:application_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module DeleteApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutput, context: context)
        type = Types::DeleteApplicationOutput.new
        type
      end
    end

    module DescribeApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationInput, context: context)
        type = Types::DescribeApplicationInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DescribeApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationOutput, context: context)
        type = Types::DescribeApplicationOutput.new
        type.application_id = params[:application_id]
        type.application_arn = params[:application_arn]
        type.application_name = params[:application_name]
        type.application_description = params[:application_description]
        type.application_url = params[:application_url]
        type.application_state = params[:application_state]
        type.application_creation_date = params[:application_creation_date]
        type.application_last_update_date = params[:application_last_update_date]
        type.role_arn = params[:role_arn]
        type.sso_client_id = params[:sso_client_id]
        type.error_message = params[:error_message]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.application_summaries = ApplicationSummaries.build(params[:application_summaries], context: "#{context}[:application_summaries]") unless params[:application_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
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

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.application_id = params[:application_id]
        type.application_name = params[:application_name]
        type.application_description = params[:application_description]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type
      end
    end

  end
end
