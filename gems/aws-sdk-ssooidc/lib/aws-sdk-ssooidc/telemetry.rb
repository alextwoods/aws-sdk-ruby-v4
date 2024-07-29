# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  # @api private
  module Telemetry

    class CreateToken
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'SSO OIDC',
          'rpc.method' => 'CreateToken',
          'code.function' => 'create_token',
          'code.namespace' => 'AWS::SDK::SSOOIDC::Telemetry'
        }
        context.tracer.in_span('SSO OIDC.CreateToken', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class CreateTokenWithIAM
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'SSO OIDC',
          'rpc.method' => 'CreateTokenWithIAM',
          'code.function' => 'create_token_with_iam',
          'code.namespace' => 'AWS::SDK::SSOOIDC::Telemetry'
        }
        context.tracer.in_span('SSO OIDC.CreateTokenWithIAM', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class RegisterClient
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'SSO OIDC',
          'rpc.method' => 'RegisterClient',
          'code.function' => 'register_client',
          'code.namespace' => 'AWS::SDK::SSOOIDC::Telemetry'
        }
        context.tracer.in_span('SSO OIDC.RegisterClient', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class StartDeviceAuthorization
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'SSO OIDC',
          'rpc.method' => 'StartDeviceAuthorization',
          'code.function' => 'start_device_authorization',
          'code.namespace' => 'AWS::SDK::SSOOIDC::Telemetry'
        }
        context.tracer.in_span('SSO OIDC.StartDeviceAuthorization', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

  end
end
