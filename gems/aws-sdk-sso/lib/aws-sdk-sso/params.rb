# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  # @api private
  module Params

    class AccountInfo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccountInfo, context: context)
        type = Types::AccountInfo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.account_id = params[:account_id]
        type.account_name = params[:account_name]
        type.email_address = params[:email_address]
        type
      end
    end

    class AccountListType
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GetRoleCredentialsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetRoleCredentialsInput, context: context)
        type = Types::GetRoleCredentialsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.role_name = params[:role_name]
        type.account_id = params[:account_id]
        type.access_token = params[:access_token]
        type
      end
    end

    class GetRoleCredentialsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetRoleCredentialsOutput, context: context)
        type = Types::GetRoleCredentialsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.role_credentials = RoleCredentials.build(params[:role_credentials], context: "#{context}[:role_credentials]") unless params[:role_credentials].nil?
        type
      end
    end

    class InvalidRequestException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    class ListAccountRolesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListAccountRolesInput, context: context)
        type = Types::ListAccountRolesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.access_token = params[:access_token]
        type.account_id = params[:account_id]
        type
      end
    end

    class ListAccountRolesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListAccountRolesOutput, context: context)
        type = Types::ListAccountRolesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token]
        type.role_list = RoleListType.build(params[:role_list], context: "#{context}[:role_list]") unless params[:role_list].nil?
        type
      end
    end

    class ListAccountsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListAccountsInput, context: context)
        type = Types::ListAccountsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.access_token = params[:access_token]
        type
      end
    end

    class ListAccountsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListAccountsOutput, context: context)
        type = Types::ListAccountsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token]
        type.account_list = AccountListType.build(params[:account_list], context: "#{context}[:account_list]") unless params[:account_list].nil?
        type
      end
    end

    class LogoutInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LogoutInput, context: context)
        type = Types::LogoutInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.access_token = params[:access_token]
        type
      end
    end

    class LogoutOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::LogoutOutput, context: context)
        type = Types::LogoutOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class ResourceNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    class RoleCredentials
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RoleCredentials, context: context)
        type = Types::RoleCredentials.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.access_key_id = params[:access_key_id]
        type.secret_access_key = params[:secret_access_key]
        type.session_token = params[:session_token]
        type.expiration = params[:expiration]
        type
      end
    end

    class RoleInfo
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RoleInfo, context: context)
        type = Types::RoleInfo.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.role_name = params[:role_name]
        type.account_id = params[:account_id]
        type
      end
    end

    class RoleListType
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoleInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class TooManyRequestsException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

    class UnauthorizedException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message]
        type
      end
    end

  end
end
