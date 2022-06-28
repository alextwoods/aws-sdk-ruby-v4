# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::STS
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

    class AssumeRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssumeRoleOutput, context: context)
        Validators::Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        Validators::AssumedRoleUser.validate!(input[:assumed_role_user], context: "#{context}[:assumed_role_user]") unless input[:assumed_role_user].nil?
        Hearth::Validator.validate!(input[:packed_policy_size], ::Integer, context: "#{context}[:packed_policy_size]")
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

    class AssumeRoleWithSAMLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssumeRoleWithSAMLOutput, context: context)
        Validators::Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        Validators::AssumedRoleUser.validate!(input[:assumed_role_user], context: "#{context}[:assumed_role_user]") unless input[:assumed_role_user].nil?
        Hearth::Validator.validate!(input[:packed_policy_size], ::Integer, context: "#{context}[:packed_policy_size]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:subject_type], ::String, context: "#{context}[:subject_type]")
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:audience], ::String, context: "#{context}[:audience]")
        Hearth::Validator.validate!(input[:name_qualifier], ::String, context: "#{context}[:name_qualifier]")
        Hearth::Validator.validate!(input[:source_identity], ::String, context: "#{context}[:source_identity]")
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

    class AssumeRoleWithWebIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssumeRoleWithWebIdentityOutput, context: context)
        Validators::Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        Hearth::Validator.validate!(input[:subject_from_web_identity_token], ::String, context: "#{context}[:subject_from_web_identity_token]")
        Validators::AssumedRoleUser.validate!(input[:assumed_role_user], context: "#{context}[:assumed_role_user]") unless input[:assumed_role_user].nil?
        Hearth::Validator.validate!(input[:packed_policy_size], ::Integer, context: "#{context}[:packed_policy_size]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:audience], ::String, context: "#{context}[:audience]")
        Hearth::Validator.validate!(input[:source_identity], ::String, context: "#{context}[:source_identity]")
      end
    end

    class AssumedRoleUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssumedRoleUser, context: context)
        Hearth::Validator.validate!(input[:assumed_role_id], ::String, context: "#{context}[:assumed_role_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class Credentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Credentials, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate!(input[:session_token], ::String, context: "#{context}[:session_token]")
        Hearth::Validator.validate!(input[:expiration], ::Time, context: "#{context}[:expiration]")
      end
    end

    class DecodeAuthorizationMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecodeAuthorizationMessageInput, context: context)
        Hearth::Validator.validate!(input[:encoded_message], ::String, context: "#{context}[:encoded_message]")
      end
    end

    class DecodeAuthorizationMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecodeAuthorizationMessageOutput, context: context)
        Hearth::Validator.validate!(input[:decoded_message], ::String, context: "#{context}[:decoded_message]")
      end
    end

    class ExpiredTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FederatedUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FederatedUser, context: context)
        Hearth::Validator.validate!(input[:federated_user_id], ::String, context: "#{context}[:federated_user_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetAccessKeyInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessKeyInfoInput, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
      end
    end

    class GetAccessKeyInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessKeyInfoOutput, context: context)
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
      end
    end

    class GetCallerIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCallerIdentityInput, context: context)
      end
    end

    class GetCallerIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCallerIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetFederationTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFederationTokenInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Validators::PolicyDescriptorListType.validate!(input[:policy_arns], context: "#{context}[:policy_arns]") unless input[:policy_arns].nil?
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        Validators::TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetFederationTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFederationTokenOutput, context: context)
        Validators::Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        Validators::FederatedUser.validate!(input[:federated_user], context: "#{context}[:federated_user]") unless input[:federated_user].nil?
        Hearth::Validator.validate!(input[:packed_policy_size], ::Integer, context: "#{context}[:packed_policy_size]")
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

    class GetSessionTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSessionTokenOutput, context: context)
        Validators::Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
      end
    end

    class IDPCommunicationErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IDPCommunicationErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IDPRejectedClaimException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IDPRejectedClaimException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAuthorizationMessageException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAuthorizationMessageException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidIdentityTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidIdentityTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MalformedPolicyDocumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MalformedPolicyDocumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PackedPolicyTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackedPolicyTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyDescriptorType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyDescriptorType, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RegionDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegionDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
