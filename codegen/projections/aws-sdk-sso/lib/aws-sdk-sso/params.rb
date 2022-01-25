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

    module GetRoleCredentialsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::GetRoleCredentialsInput, context: context)
        type = Types::GetRoleCredentialsInput.new
        type.role_name = params[:role_name]
        type.account_id = params[:account_id]
        type.access_token = params[:access_token]
        type
      end
    end

    module ListAccountRolesInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListAccountRolesInput, context: context)
        type = Types::ListAccountRolesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.access_token = params[:access_token]
        type.account_id = params[:account_id]
        type
      end
    end

    module ListAccountsInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::ListAccountsInput, context: context)
        type = Types::ListAccountsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.access_token = params[:access_token]
        type
      end
    end

    module LogoutInput
      def self.build(params, context: '')
        Seahorse::Validator.validate!(params, ::Hash, Types::LogoutInput, context: context)
        type = Types::LogoutInput.new
        type.access_token = params[:access_token]
        type
      end
    end

  end
end
