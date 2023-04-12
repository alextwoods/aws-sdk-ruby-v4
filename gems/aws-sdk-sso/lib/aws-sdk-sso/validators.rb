# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  # @api private
  module Validators

    class AccountInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccountInfo, context: context)
        Hearth::Validator.validate_types!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate_types!(input[:account_name], ::String, context: "#{context}[:account_name]")
        Hearth::Validator.validate_types!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class AccountListType
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccountInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetRoleCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetRoleCredentialsInput, context: context)
        Hearth::Validator.validate_required!(input[:role_name], context: "#{context}[:role_name]")
        Hearth::Validator.validate_types!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate_required!(input[:account_id], context: "#{context}[:account_id]")
        Hearth::Validator.validate_types!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate_required!(input[:access_token], context: "#{context}[:access_token]")
        Hearth::Validator.validate_types!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class GetRoleCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetRoleCredentialsOutput, context: context)
        RoleCredentials.validate!(input[:role_credentials], context: "#{context}[:role_credentials]") unless input[:role_credentials].nil?
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAccountRolesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListAccountRolesInput, context: context)
        Hearth::Validator.validate_types!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate_required!(input[:access_token], context: "#{context}[:access_token]")
        Hearth::Validator.validate_types!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate_required!(input[:account_id], context: "#{context}[:account_id]")
        Hearth::Validator.validate_types!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class ListAccountRolesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListAccountRolesOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_token], ::String, context: "#{context}[:next_token]")
        RoleListType.validate!(input[:role_list], context: "#{context}[:role_list]") unless input[:role_list].nil?
      end
    end

    class ListAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListAccountsInput, context: context)
        Hearth::Validator.validate_types!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate_required!(input[:access_token], context: "#{context}[:access_token]")
        Hearth::Validator.validate_types!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class ListAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListAccountsOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_token], ::String, context: "#{context}[:next_token]")
        AccountListType.validate!(input[:account_list], context: "#{context}[:account_list]") unless input[:account_list].nil?
      end
    end

    class LogoutInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LogoutInput, context: context)
        Hearth::Validator.validate_required!(input[:access_token], context: "#{context}[:access_token]")
        Hearth::Validator.validate_types!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class LogoutOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LogoutOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RoleCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RoleCredentials, context: context)
        Hearth::Validator.validate_types!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate_types!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate_types!(input[:session_token], ::String, context: "#{context}[:session_token]")
        Hearth::Validator.validate_types!(input[:expiration], ::Integer, context: "#{context}[:expiration]")
      end
    end

    class RoleInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RoleInfo, context: context)
        Hearth::Validator.validate_types!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate_types!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class RoleListType
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoleInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
