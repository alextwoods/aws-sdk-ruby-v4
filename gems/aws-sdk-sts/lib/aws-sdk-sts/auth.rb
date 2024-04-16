# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::STS
  module Auth
    Params = Struct.new(:operation_name, :region, keyword_init: true)

    SCHEMES = [
      AWS::SDK::Core::AuthSchemes::SigV4.new,
      Hearth::AuthSchemes::Anonymous.new
    ].freeze

    class Resolver

      def resolve(params)
        options = []
        case params.operation_name
        when :assume_role
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'sts' })
        when :assume_role_with_saml
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'sts' })
        when :assume_role_with_web_identity
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'sts' })
        when :decode_authorization_message
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'sts' })
        when :get_access_key_info
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'sts' })
        when :get_caller_identity
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'sts' })
        when :get_federation_token
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'sts' })
        when :get_session_token
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'sts' })
        else nil
        end
        options
      end

    end
  end
end
