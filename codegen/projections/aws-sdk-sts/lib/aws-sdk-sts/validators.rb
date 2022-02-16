# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Sts
  module Validators

    class AssumeRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssumeRoleInput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:role_session_name], ::String, context: "#{context}[:role_session_name]")
        Validators::PolicyDescriptorListType.validate!(input[:policy_arns], context: "#{context}[:policy_arns]") unless input[:policy_arns].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::TagKeyListType.validate!(input[:transitive_tag_keys], context: "#{context}[:transitive_tag_keys]") unless input[:transitive_tag_keys].nil?
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:token_code], ::String, context: "#{context}[:token_code]")
        Hearth::Validator.validate!(input[:source_identity], ::String, context: "#{context}[:source_identity]")
      end
    end

    class AssumeRoleWithSAMLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssumeRoleWithSAMLInput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        Hearth::Validator.validate!(input[:saml_assertion], ::String, context: "#{context}[:saml_assertion]")
        Validators::PolicyDescriptorListType.validate!(input[:policy_arns], context: "#{context}[:policy_arns]") unless input[:policy_arns].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
      end
    end

    class AssumeRoleWithWebIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssumeRoleWithWebIdentityInput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:role_session_name], ::String, context: "#{context}[:role_session_name]")
        Hearth::Validator.validate!(input[:web_identity_token], ::String, context: "#{context}[:web_identity_token]")
        Hearth::Validator.validate!(input[:provider_id], ::String, context: "#{context}[:provider_id]")
        Validators::PolicyDescriptorListType.validate!(input[:policy_arns], context: "#{context}[:policy_arns]") unless input[:policy_arns].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
      end
    end

    class DecodeAuthorizationMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecodeAuthorizationMessageInput, context: context)
        Hearth::Validator.validate!(input[:encoded_message], ::String, context: "#{context}[:encoded_message]")
      end
    end

    class GetAccessKeyInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessKeyInfoInput, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
      end
    end

    class GetCallerIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCallerIdentityInput, context: context)
      end
    end

    class GetFederationTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFederationTokenInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Validators::PolicyDescriptorListType.validate!(input[:policy_arns], context: "#{context}[:policy_arns]") unless input[:policy_arns].nil?
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetSessionTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSessionTokenInput, context: context)
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:token_code], ::String, context: "#{context}[:token_code]")
      end
    end

    class PolicyDescriptorType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyDescriptorType, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class PolicyDescriptorListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PolicyDescriptorType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeyListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
