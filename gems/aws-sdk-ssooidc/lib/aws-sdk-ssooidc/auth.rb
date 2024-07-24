# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  module Auth
    class Params
      def initialize(operation_name: nil, region: nil)
        @operation_name = operation_name
        @region = region
      end

      attr_accessor :operation_name, :region
    end

    SCHEMES = [
      AWS::SDK::Core::AuthSchemes::SigV4.new,
      Hearth::AuthSchemes::Anonymous.new
    ].freeze

    class Resolver

      def resolve(params)
        options = []
        case params.operation_name
        when :create_token
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#noAuth')
        when :create_token_with_iam
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'sso-oauth' })
        when :register_client
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#noAuth')
        when :start_device_authorization
          options << Hearth::AuthOption.new(scheme_id: 'smithy.api#noAuth')
        else nil
        end
        options
      end

    end
  end
end
