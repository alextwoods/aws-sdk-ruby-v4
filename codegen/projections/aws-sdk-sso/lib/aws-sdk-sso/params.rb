# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::Sso
  module Params

    module AccountInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountInfo, context: context)
        type = Types::AccountInfo.new
        type.account_id = params[:account_id]
        type.account_name = params[:account_name]
        type.email_address = params[:email_address]
        type
      end
    end

    module AccountListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetRoleCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoleCredentialsInput, context: context)
        type = Types::GetRoleCredentialsInput.new
        type.role_name = params[:role_name]
        type.account_id = params[:account_id]
        type.access_token = params[:access_token]
        type
      end
    end

    module GetRoleCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoleCredentialsOutput, context: context)
        type = Types::GetRoleCredentialsOutput.new
        type.role_credentials = RoleCredentials.build(params[:role_credentials], context: "#{context}[:role_credentials]") unless params[:role_credentials].nil?
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

    module ListAccountRolesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountRolesInput, context: context)
        type = Types::ListAccountRolesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.access_token = params[:access_token]
        type.account_id = params[:account_id]
        type
      end
    end

    module ListAccountRolesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountRolesOutput, context: context)
        type = Types::ListAccountRolesOutput.new
        type.next_token = params[:next_token]
        type.role_list = RoleListType.build(params[:role_list], context: "#{context}[:role_list]") unless params[:role_list].nil?
        type
      end
    end

    module ListAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountsInput, context: context)
        type = Types::ListAccountsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.access_token = params[:access_token]
        type
      end
    end

    module ListAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountsOutput, context: context)
        type = Types::ListAccountsOutput.new
        type.next_token = params[:next_token]
        type.account_list = AccountListType.build(params[:account_list], context: "#{context}[:account_list]") unless params[:account_list].nil?
        type
      end
    end

    module LogoutInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogoutInput, context: context)
        type = Types::LogoutInput.new
        type.access_token = params[:access_token]
        type
      end
    end

    module LogoutOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogoutOutput, context: context)
        type = Types::LogoutOutput.new
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

    module RoleCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoleCredentials, context: context)
        type = Types::RoleCredentials.new
        type.access_key_id = params[:access_key_id]
        type.secret_access_key = params[:secret_access_key]
        type.session_token = params[:session_token]
        type.expiration = params[:expiration]
        type
      end
    end

    module RoleInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoleInfo, context: context)
        type = Types::RoleInfo.new
        type.role_name = params[:role_name]
        type.account_id = params[:account_id]
        type
      end
    end

    module RoleListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoleInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
      end
    end

  end
end
