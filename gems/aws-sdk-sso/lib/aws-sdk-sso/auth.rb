# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  module Auth
    Params = Struct.new(:operation_name, keyword_init: true)

    SCHEMES = [
      Hearth::AuthSchemes::Anonymous.new
    ].freeze

    class Resolver

      def resolve(auth_params)
        options = []
        case auth_params.operation_name
        when :get_role_credentials
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#noAuth')
        when :list_account_roles
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#noAuth')
        when :list_accounts
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#noAuth')
        when :logout
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#noAuth')
        end
      end

    end
  end
end
