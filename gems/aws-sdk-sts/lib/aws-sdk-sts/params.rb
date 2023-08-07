# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::STS
  # @api private
  module Params

    module AssumeRoleInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AssumeRoleInput, context: context)
        type = Types::AssumeRoleInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
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

    module AssumeRoleOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AssumeRoleOutput, context: context)
        type = Types::AssumeRoleOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.credentials = Credentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type.assumed_role_user = AssumedRoleUser.build(params[:assumed_role_user], context: "#{context}[:assumed_role_user]") unless params[:assumed_role_user].nil?
        type.packed_policy_size = params[:packed_policy_size]
        type.source_identity = params[:source_identity]
        type
      end
    end

    module AssumeRoleWithSAMLInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AssumeRoleWithSAMLInput, context: context)
        type = Types::AssumeRoleWithSAMLInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.role_arn = params[:role_arn]
        type.principal_arn = params[:principal_arn]
        type.saml_assertion = params[:saml_assertion]
        type.policy_arns = PolicyDescriptorListType.build(params[:policy_arns], context: "#{context}[:policy_arns]") unless params[:policy_arns].nil?
        type.policy = params[:policy]
        type.duration_seconds = params[:duration_seconds]
        type
      end
    end

    module AssumeRoleWithSAMLOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AssumeRoleWithSAMLOutput, context: context)
        type = Types::AssumeRoleWithSAMLOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.credentials = Credentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type.assumed_role_user = AssumedRoleUser.build(params[:assumed_role_user], context: "#{context}[:assumed_role_user]") unless params[:assumed_role_user].nil?
        type.packed_policy_size = params[:packed_policy_size]
        type.subject = params[:subject]
        type.subject_type = params[:subject_type]
        type.issuer = params[:issuer]
        type.audience = params[:audience]
        type.name_qualifier = params[:name_qualifier]
        type.source_identity = params[:source_identity]
        type
      end
    end

    module AssumeRoleWithWebIdentityInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AssumeRoleWithWebIdentityInput, context: context)
        type = Types::AssumeRoleWithWebIdentityInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
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

    module AssumeRoleWithWebIdentityOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AssumeRoleWithWebIdentityOutput, context: context)
        type = Types::AssumeRoleWithWebIdentityOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.credentials = Credentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type.subject_from_web_identity_token = params[:subject_from_web_identity_token]
        type.assumed_role_user = AssumedRoleUser.build(params[:assumed_role_user], context: "#{context}[:assumed_role_user]") unless params[:assumed_role_user].nil?
        type.packed_policy_size = params[:packed_policy_size]
        type.provider = params[:provider]
        type.audience = params[:audience]
        type.source_identity = params[:source_identity]
        type
      end
    end

    module AssumedRoleUser
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AssumedRoleUser, context: context)
        type = Types::AssumedRoleUser.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.assumed_role_id = params[:assumed_role_id]
        type.arn = params[:arn]
        type
      end
    end

    module Credentials
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Credentials, context: context)
        type = Types::Credentials.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.access_key_id = params[:access_key_id]
        type.secret_access_key = params[:secret_access_key]
        type.session_token = params[:session_token]
        type.expiration = params[:expiration]
        type
      end
    end

    module DecodeAuthorizationMessageInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DecodeAuthorizationMessageInput, context: context)
        type = Types::DecodeAuthorizationMessageInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.encoded_message = params[:encoded_message]
        type
      end
    end

    module DecodeAuthorizationMessageOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DecodeAuthorizationMessageOutput, context: context)
        type = Types::DecodeAuthorizationMessageOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.decoded_message = params[:decoded_message]
        type
      end
    end

    module ExpiredTokenException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExpiredTokenException, context: context)
        type = Types::ExpiredTokenException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module FederatedUser
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::FederatedUser, context: context)
        type = Types::FederatedUser.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.federated_user_id = params[:federated_user_id]
        type.arn = params[:arn]
        type
      end
    end

    module GetAccessKeyInfoInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetAccessKeyInfoInput, context: context)
        type = Types::GetAccessKeyInfoInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.access_key_id = params[:access_key_id]
        type
      end
    end

    module GetAccessKeyInfoOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetAccessKeyInfoOutput, context: context)
        type = Types::GetAccessKeyInfoOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.account = params[:account]
        type
      end
    end

    module GetCallerIdentityInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetCallerIdentityInput, context: context)
        type = Types::GetCallerIdentityInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    module GetCallerIdentityOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetCallerIdentityOutput, context: context)
        type = Types::GetCallerIdentityOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.user_id = params[:user_id]
        type.account = params[:account]
        type.arn = params[:arn]
        type
      end
    end

    module GetFederationTokenInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetFederationTokenInput, context: context)
        type = Types::GetFederationTokenInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name]
        type.policy = params[:policy]
        type.policy_arns = PolicyDescriptorListType.build(params[:policy_arns], context: "#{context}[:policy_arns]") unless params[:policy_arns].nil?
        type.duration_seconds = params[:duration_seconds]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetFederationTokenOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetFederationTokenOutput, context: context)
        type = Types::GetFederationTokenOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.credentials = Credentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type.federated_user = FederatedUser.build(params[:federated_user], context: "#{context}[:federated_user]") unless params[:federated_user].nil?
        type.packed_policy_size = params[:packed_policy_size]
        type
      end
    end

    module GetSessionTokenInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSessionTokenInput, context: context)
        type = Types::GetSessionTokenInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.duration_seconds = params[:duration_seconds]
        type.serial_number = params[:serial_number]
        type.token_code = params[:token_code]
        type
      end
    end

    module GetSessionTokenOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSessionTokenOutput, context: context)
        type = Types::GetSessionTokenOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.credentials = Credentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type
      end
    end

    module IDPCommunicationErrorException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IDPCommunicationErrorException, context: context)
        type = Types::IDPCommunicationErrorException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module IDPRejectedClaimException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IDPRejectedClaimException, context: context)
        type = Types::IDPRejectedClaimException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module InvalidAuthorizationMessageException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidAuthorizationMessageException, context: context)
        type = Types::InvalidAuthorizationMessageException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module InvalidIdentityTokenException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidIdentityTokenException, context: context)
        type = Types::InvalidIdentityTokenException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module MalformedPolicyDocumentException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::MalformedPolicyDocumentException, context: context)
        type = Types::MalformedPolicyDocumentException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module PackedPolicyTooLargeException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PackedPolicyTooLargeException, context: context)
        type = Types::PackedPolicyTooLargeException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module PolicyDescriptorType
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PolicyDescriptorType, context: context)
        type = Types::PolicyDescriptorType.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.arn = params[:arn]
        type
      end
    end

    module RegionDisabledException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RegionDisabledException, context: context)
        type = Types::RegionDisabledException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    module Tag
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module PolicyDescriptorListType
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyDescriptorType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeyListType
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagListType
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
