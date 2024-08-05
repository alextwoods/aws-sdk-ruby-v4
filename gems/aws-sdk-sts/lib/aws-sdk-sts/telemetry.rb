# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::STS
  # @api private
  module Telemetry

    class AssumeRole
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'STS',
          'rpc.method' => 'AssumeRole',
          'code.function' => 'assume_role',
          'code.namespace' => 'AWS::SDK::STS::Telemetry'
        }
        context.tracer.in_span(
          'STS.AssumeRole',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class AssumeRoleWithSAML
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'STS',
          'rpc.method' => 'AssumeRoleWithSAML',
          'code.function' => 'assume_role_with_saml',
          'code.namespace' => 'AWS::SDK::STS::Telemetry'
        }
        context.tracer.in_span(
          'STS.AssumeRoleWithSAML',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class AssumeRoleWithWebIdentity
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'STS',
          'rpc.method' => 'AssumeRoleWithWebIdentity',
          'code.function' => 'assume_role_with_web_identity',
          'code.namespace' => 'AWS::SDK::STS::Telemetry'
        }
        context.tracer.in_span(
          'STS.AssumeRoleWithWebIdentity',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class DecodeAuthorizationMessage
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'STS',
          'rpc.method' => 'DecodeAuthorizationMessage',
          'code.function' => 'decode_authorization_message',
          'code.namespace' => 'AWS::SDK::STS::Telemetry'
        }
        context.tracer.in_span(
          'STS.DecodeAuthorizationMessage',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetAccessKeyInfo
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'STS',
          'rpc.method' => 'GetAccessKeyInfo',
          'code.function' => 'get_access_key_info',
          'code.namespace' => 'AWS::SDK::STS::Telemetry'
        }
        context.tracer.in_span(
          'STS.GetAccessKeyInfo',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetCallerIdentity
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'STS',
          'rpc.method' => 'GetCallerIdentity',
          'code.function' => 'get_caller_identity',
          'code.namespace' => 'AWS::SDK::STS::Telemetry'
        }
        context.tracer.in_span(
          'STS.GetCallerIdentity',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetFederationToken
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'STS',
          'rpc.method' => 'GetFederationToken',
          'code.function' => 'get_federation_token',
          'code.namespace' => 'AWS::SDK::STS::Telemetry'
        }
        context.tracer.in_span(
          'STS.GetFederationToken',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetSessionToken
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'STS',
          'rpc.method' => 'GetSessionToken',
          'code.function' => 'get_session_token',
          'code.namespace' => 'AWS::SDK::STS::Telemetry'
        }
        context.tracer.in_span(
          'STS.GetSessionToken',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

  end
end
