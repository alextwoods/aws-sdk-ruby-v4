# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTFleetHub
  module Validators

    class ApplicationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSummary, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:application_description], ::String, context: "#{context}[:application_description]")
        Hearth::Validator.validate!(input[:application_url], ::String, context: "#{context}[:application_url]")
        Hearth::Validator.validate!(input[:application_creation_date], ::Integer, context: "#{context}[:application_creation_date]")
        Hearth::Validator.validate!(input[:application_last_update_date], ::Integer, context: "#{context}[:application_last_update_date]")
        Hearth::Validator.validate!(input[:application_state], ::String, context: "#{context}[:application_state]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:application_description], ::String, context: "#{context}[:application_description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutput, context: context)
      end
    end

    class DescribeApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DescribeApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:application_description], ::String, context: "#{context}[:application_description]")
        Hearth::Validator.validate!(input[:application_url], ::String, context: "#{context}[:application_url]")
        Hearth::Validator.validate!(input[:application_state], ::String, context: "#{context}[:application_state]")
        Hearth::Validator.validate!(input[:application_creation_date], ::Integer, context: "#{context}[:application_creation_date]")
        Hearth::Validator.validate!(input[:application_last_update_date], ::Integer, context: "#{context}[:application_last_update_date]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:sso_client_id], ::String, context: "#{context}[:sso_client_id]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        ApplicationSummaries.validate!(input[:application_summaries], context: "#{context}[:application_summaries]") unless input[:application_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:application_description], ::String, context: "#{context}[:application_description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
      end
    end

  end
end
