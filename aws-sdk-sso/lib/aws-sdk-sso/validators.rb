# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Sso
  module Validators

    class GetRoleCredentialsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::GetRoleCredentialsInput, context: context)
        Seahorse::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Seahorse::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Seahorse::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class ListAccountRolesInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ListAccountRolesInput, context: context)
        Seahorse::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Seahorse::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Seahorse::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Seahorse::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class ListAccountsInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::ListAccountsInput, context: context)
        Seahorse::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Seahorse::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Seahorse::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class LogoutInput
      def self.validate!(input, context:)
        Seahorse::Validator.validate!(input, Types::LogoutInput, context: context)
        Seahorse::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

  end
end
