# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::STS
  module Auth
    Params = Struct.new(:operation_name, keyword_init: true)

    SCHEMES = [
      HTTPCustomAuthScheme.new
    ].freeze

    class Resolver

      def resolve(auth_params)
        options = []
        case auth_params.operation_name
        when :assume_role
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :assume_role_with_saml
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :assume_role_with_web_identity
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :decode_authorization_message
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_access_key_info
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_caller_identity
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_federation_token
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_session_token
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        end
      end

    end
  end
end
