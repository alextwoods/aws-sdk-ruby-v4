# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::STS
  # @api private
  module Validators

    class AssumeRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AssumeRoleInput, context: context)
        Hearth::Validator.validate_required!(input[:role_arn], context: "#{context}[:role_arn]")
        Hearth::Validator.validate_types!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate_required!(input[:role_session_name], context: "#{context}[:role_session_name]")
        Hearth::Validator.validate_types!(input[:role_session_name], ::String, context: "#{context}[:role_session_name]")
        PolicyDescriptorListType.validate!(input[:policy_arns], context: "#{context}[:policy_arns]") unless input[:policy_arns].nil?
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        TagKeyListType.validate!(input[:transitive_tag_keys], context: "#{context}[:transitive_tag_keys]") unless input[:transitive_tag_keys].nil?
        Hearth::Validator.validate_types!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate_types!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate_types!(input[:token_code], ::String, context: "#{context}[:token_code]")
        Hearth::Validator.validate_types!(input[:source_identity], ::String, context: "#{context}[:source_identity]")
      end
    end

    class AssumeRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AssumeRoleOutput, context: context)
        Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        AssumedRoleUser.validate!(input[:assumed_role_user], context: "#{context}[:assumed_role_user]") unless input[:assumed_role_user].nil?
        Hearth::Validator.validate_types!(input[:packed_policy_size], ::Integer, context: "#{context}[:packed_policy_size]")
        Hearth::Validator.validate_types!(input[:source_identity], ::String, context: "#{context}[:source_identity]")
      end
    end

    class AssumeRoleWithSAMLInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AssumeRoleWithSAMLInput, context: context)
        Hearth::Validator.validate_required!(input[:role_arn], context: "#{context}[:role_arn]")
        Hearth::Validator.validate_types!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate_required!(input[:principal_arn], context: "#{context}[:principal_arn]")
        Hearth::Validator.validate_types!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        Hearth::Validator.validate_required!(input[:saml_assertion], context: "#{context}[:saml_assertion]")
        Hearth::Validator.validate_types!(input[:saml_assertion], ::String, context: "#{context}[:saml_assertion]")
        PolicyDescriptorListType.validate!(input[:policy_arns], context: "#{context}[:policy_arns]") unless input[:policy_arns].nil?
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
      end
    end

    class AssumeRoleWithSAMLOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AssumeRoleWithSAMLOutput, context: context)
        Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        AssumedRoleUser.validate!(input[:assumed_role_user], context: "#{context}[:assumed_role_user]") unless input[:assumed_role_user].nil?
        Hearth::Validator.validate_types!(input[:packed_policy_size], ::Integer, context: "#{context}[:packed_policy_size]")
        Hearth::Validator.validate_types!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate_types!(input[:subject_type], ::String, context: "#{context}[:subject_type]")
        Hearth::Validator.validate_types!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate_types!(input[:audience], ::String, context: "#{context}[:audience]")
        Hearth::Validator.validate_types!(input[:name_qualifier], ::String, context: "#{context}[:name_qualifier]")
        Hearth::Validator.validate_types!(input[:source_identity], ::String, context: "#{context}[:source_identity]")
      end
    end

    class AssumeRoleWithWebIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AssumeRoleWithWebIdentityInput, context: context)
        Hearth::Validator.validate_required!(input[:role_arn], context: "#{context}[:role_arn]")
        Hearth::Validator.validate_types!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate_required!(input[:role_session_name], context: "#{context}[:role_session_name]")
        Hearth::Validator.validate_types!(input[:role_session_name], ::String, context: "#{context}[:role_session_name]")
        Hearth::Validator.validate_required!(input[:web_identity_token], context: "#{context}[:web_identity_token]")
        Hearth::Validator.validate_types!(input[:web_identity_token], ::String, context: "#{context}[:web_identity_token]")
        Hearth::Validator.validate_types!(input[:provider_id], ::String, context: "#{context}[:provider_id]")
        PolicyDescriptorListType.validate!(input[:policy_arns], context: "#{context}[:policy_arns]") unless input[:policy_arns].nil?
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
      end
    end

    class AssumeRoleWithWebIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AssumeRoleWithWebIdentityOutput, context: context)
        Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        Hearth::Validator.validate_types!(input[:subject_from_web_identity_token], ::String, context: "#{context}[:subject_from_web_identity_token]")
        AssumedRoleUser.validate!(input[:assumed_role_user], context: "#{context}[:assumed_role_user]") unless input[:assumed_role_user].nil?
        Hearth::Validator.validate_types!(input[:packed_policy_size], ::Integer, context: "#{context}[:packed_policy_size]")
        Hearth::Validator.validate_types!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate_types!(input[:audience], ::String, context: "#{context}[:audience]")
        Hearth::Validator.validate_types!(input[:source_identity], ::String, context: "#{context}[:source_identity]")
      end
    end

    class AssumedRoleUser
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AssumedRoleUser, context: context)
        Hearth::Validator.validate_required!(input[:assumed_role_id], context: "#{context}[:assumed_role_id]")
        Hearth::Validator.validate_types!(input[:assumed_role_id], ::String, context: "#{context}[:assumed_role_id]")
        Hearth::Validator.validate_required!(input[:arn], context: "#{context}[:arn]")
        Hearth::Validator.validate_types!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class Credentials
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Credentials, context: context)
        Hearth::Validator.validate_required!(input[:access_key_id], context: "#{context}[:access_key_id]")
        Hearth::Validator.validate_types!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate_required!(input[:secret_access_key], context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate_types!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate_required!(input[:session_token], context: "#{context}[:session_token]")
        Hearth::Validator.validate_types!(input[:session_token], ::String, context: "#{context}[:session_token]")
        Hearth::Validator.validate_required!(input[:expiration], context: "#{context}[:expiration]")
        Hearth::Validator.validate_types!(input[:expiration], ::Time, context: "#{context}[:expiration]")
      end
    end

    class DecodeAuthorizationMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DecodeAuthorizationMessageInput, context: context)
        Hearth::Validator.validate_required!(input[:encoded_message], context: "#{context}[:encoded_message]")
        Hearth::Validator.validate_types!(input[:encoded_message], ::String, context: "#{context}[:encoded_message]")
      end
    end

    class DecodeAuthorizationMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DecodeAuthorizationMessageOutput, context: context)
        Hearth::Validator.validate_types!(input[:decoded_message], ::String, context: "#{context}[:decoded_message]")
      end
    end

    class ExpiredTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ExpiredTokenException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FederatedUser
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::FederatedUser, context: context)
        Hearth::Validator.validate_required!(input[:federated_user_id], context: "#{context}[:federated_user_id]")
        Hearth::Validator.validate_types!(input[:federated_user_id], ::String, context: "#{context}[:federated_user_id]")
        Hearth::Validator.validate_required!(input[:arn], context: "#{context}[:arn]")
        Hearth::Validator.validate_types!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetAccessKeyInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetAccessKeyInfoInput, context: context)
        Hearth::Validator.validate_required!(input[:access_key_id], context: "#{context}[:access_key_id]")
        Hearth::Validator.validate_types!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
      end
    end

    class GetAccessKeyInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetAccessKeyInfoOutput, context: context)
        Hearth::Validator.validate_types!(input[:account], ::String, context: "#{context}[:account]")
      end
    end

    class GetCallerIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetCallerIdentityInput, context: context)
      end
    end

    class GetCallerIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetCallerIdentityOutput, context: context)
        Hearth::Validator.validate_types!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate_types!(input[:account], ::String, context: "#{context}[:account]")
        Hearth::Validator.validate_types!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetFederationTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFederationTokenInput, context: context)
        Hearth::Validator.validate_required!(input[:name], context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
        PolicyDescriptorListType.validate!(input[:policy_arns], context: "#{context}[:policy_arns]") unless input[:policy_arns].nil?
        Hearth::Validator.validate_types!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        TagListType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetFederationTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFederationTokenOutput, context: context)
        Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        FederatedUser.validate!(input[:federated_user], context: "#{context}[:federated_user]") unless input[:federated_user].nil?
        Hearth::Validator.validate_types!(input[:packed_policy_size], ::Integer, context: "#{context}[:packed_policy_size]")
      end
    end

    class GetSessionTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSessionTokenInput, context: context)
        Hearth::Validator.validate_types!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        Hearth::Validator.validate_types!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate_types!(input[:token_code], ::String, context: "#{context}[:token_code]")
      end
    end

    class GetSessionTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSessionTokenOutput, context: context)
        Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
      end
    end

    class IDPCommunicationErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IDPCommunicationErrorException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IDPRejectedClaimException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IDPRejectedClaimException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAuthorizationMessageException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidAuthorizationMessageException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidIdentityTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidIdentityTokenException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MalformedPolicyDocumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::MalformedPolicyDocumentException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PackedPolicyTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PackedPolicyTooLargeException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyDescriptorType
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PolicyDescriptorType, context: context)
        Hearth::Validator.validate_types!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RegionDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RegionDisabledException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Tag, context: context)
        Hearth::Validator.validate_required!(input[:key], context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_required!(input[:value], context: "#{context}[:value]")
        Hearth::Validator.validate_types!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class PolicyDescriptorListType
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PolicyDescriptorType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeyListType
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagListType
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
