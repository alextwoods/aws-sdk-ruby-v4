# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Finspace
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type
      end
    end

    module AttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CreateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentInput, context: context)
        type = Types::CreateEnvironmentInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.federation_mode = params[:federation_mode]
        type.federation_parameters = FederationParameters.build(params[:federation_parameters], context: "#{context}[:federation_parameters]") unless params[:federation_parameters].nil?
        type.superuser_parameters = SuperuserParameters.build(params[:superuser_parameters], context: "#{context}[:superuser_parameters]") unless params[:superuser_parameters].nil?
        type.data_bundles = DataBundleArns.build(params[:data_bundles], context: "#{context}[:data_bundles]") unless params[:data_bundles].nil?
        type
      end
    end

    module CreateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentOutput, context: context)
        type = Types::CreateEnvironmentOutput.new
        type.environment_id = params[:environment_id]
        type.environment_arn = params[:environment_arn]
        type.environment_url = params[:environment_url]
        type
      end
    end

    module DataBundleArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentInput, context: context)
        type = Types::DeleteEnvironmentInput.new
        type.environment_id = params[:environment_id]
        type
      end
    end

    module DeleteEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentOutput, context: context)
        type = Types::DeleteEnvironmentOutput.new
        type
      end
    end

    module Environment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Environment, context: context)
        type = Types::Environment.new
        type.name = params[:name]
        type.environment_id = params[:environment_id]
        type.aws_account_id = params[:aws_account_id]
        type.status = params[:status]
        type.environment_url = params[:environment_url]
        type.description = params[:description]
        type.environment_arn = params[:environment_arn]
        type.sage_maker_studio_domain_url = params[:sage_maker_studio_domain_url]
        type.kms_key_id = params[:kms_key_id]
        type.dedicated_service_account_id = params[:dedicated_service_account_id]
        type.federation_mode = params[:federation_mode]
        type.federation_parameters = FederationParameters.build(params[:federation_parameters], context: "#{context}[:federation_parameters]") unless params[:federation_parameters].nil?
        type
      end
    end

    module EnvironmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Environment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FederationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FederationParameters, context: context)
        type = Types::FederationParameters.new
        type.saml_metadata_document = params[:saml_metadata_document]
        type.saml_metadata_url = params[:saml_metadata_url]
        type.application_call_back_url = params[:application_call_back_url]
        type.federation_urn = params[:federation_urn]
        type.federation_provider_name = params[:federation_provider_name]
        type.attribute_map = AttributeMap.build(params[:attribute_map], context: "#{context}[:attribute_map]") unless params[:attribute_map].nil?
        type
      end
    end

    module GetEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentInput, context: context)
        type = Types::GetEnvironmentInput.new
        type.environment_id = params[:environment_id]
        type
      end
    end

    module GetEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentOutput, context: context)
        type = Types::GetEnvironmentOutput.new
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
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

    module ListEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsInput, context: context)
        type = Types::ListEnvironmentsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsOutput, context: context)
        type = Types::ListEnvironmentsOutput.new
        type.environments = EnvironmentList.build(params[:environments], context: "#{context}[:environments]") unless params[:environments].nil?
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

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SuperuserParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuperuserParameters, context: context)
        type = Types::SuperuserParameters.new
        type.email_address = params[:email_address]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
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

    module UpdateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentInput, context: context)
        type = Types::UpdateEnvironmentInput.new
        type.environment_id = params[:environment_id]
        type.name = params[:name]
        type.description = params[:description]
        type.federation_mode = params[:federation_mode]
        type.federation_parameters = FederationParameters.build(params[:federation_parameters], context: "#{context}[:federation_parameters]") unless params[:federation_parameters].nil?
        type
      end
    end

    module UpdateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentOutput, context: context)
        type = Types::UpdateEnvironmentOutput.new
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
