# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::Sts
  module Params

    module AssumeRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssumeRoleInput, context: context)
        type = Types::AssumeRoleInput.new
        type.role_arn = params[:role_arn]
        type.role_session_name = params[:role_session_name]
        type.policy_arns = PolicyDescriptorListType.build(params[:policy_arns], context: "#{context}[:policy_arns]") unless params[:policy_arns].nil?
        type.policy = params[:policy]
        type.duration_seconds = params[:duration_seconds]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.transitive_tag_keys = TagKeyListType.build(params[:transitive_tag_keys], context: "#{context}[:transitive_tag_keys]") unless params[:transitive_tag_keys].nil?
        type.external_id = params[:external_id]
        type.serial_number = params[:serial_number]
        type.token_code = params[:token_code]
        type.source_identity = params[:source_identity]
        type
      end
    end

    module AssumeRoleWithSAMLInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssumeRoleWithSAMLInput, context: context)
        type = Types::AssumeRoleWithSAMLInput.new
        type.role_arn = params[:role_arn]
        type.principal_arn = params[:principal_arn]
        type.saml_assertion = params[:saml_assertion]
        type.policy_arns = PolicyDescriptorListType.build(params[:policy_arns], context: "#{context}[:policy_arns]") unless params[:policy_arns].nil?
        type.policy = params[:policy]
        type.duration_seconds = params[:duration_seconds]
        type
      end
    end

    module AssumeRoleWithWebIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssumeRoleWithWebIdentityInput, context: context)
        type = Types::AssumeRoleWithWebIdentityInput.new
        type.role_arn = params[:role_arn]
        type.role_session_name = params[:role_session_name]
        type.web_identity_token = params[:web_identity_token]
        type.provider_id = params[:provider_id]
        type.policy_arns = PolicyDescriptorListType.build(params[:policy_arns], context: "#{context}[:policy_arns]") unless params[:policy_arns].nil?
        type.policy = params[:policy]
        type.duration_seconds = params[:duration_seconds]
        type
      end
    end

    module DecodeAuthorizationMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecodeAuthorizationMessageInput, context: context)
        type = Types::DecodeAuthorizationMessageInput.new
        type.encoded_message = params[:encoded_message]
        type
      end
    end

    module GetAccessKeyInfoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessKeyInfoInput, context: context)
        type = Types::GetAccessKeyInfoInput.new
        type.access_key_id = params[:access_key_id]
        type
      end
    end

    module GetCallerIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCallerIdentityInput, context: context)
        type = Types::GetCallerIdentityInput.new
        type
      end
    end

    module GetFederationTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFederationTokenInput, context: context)
        type = Types::GetFederationTokenInput.new
        type.member_name = params[:member_name]
        type.policy = params[:policy]
        type.policy_arns = PolicyDescriptorListType.build(params[:policy_arns], context: "#{context}[:policy_arns]") unless params[:policy_arns].nil?
        type.duration_seconds = params[:duration_seconds]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetSessionTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionTokenInput, context: context)
        type = Types::GetSessionTokenInput.new
        type.duration_seconds = params[:duration_seconds]
        type.serial_number = params[:serial_number]
        type.token_code = params[:token_code]
        type
      end
    end

    module PolicyDescriptorType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyDescriptorType, context: context)
        type = Types::PolicyDescriptorType.new
        type.arn = params[:arn]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module policyDescriptorListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyDescriptorType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module tagKeyListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module tagListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
