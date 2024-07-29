# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  # @api private
  module Telemetry

    class GetRoleCredentials
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'SSO',
          'rpc.method' => 'GetRoleCredentials',
          'code.function' => 'get_role_credentials',
          'code.namespace' => 'AWS::SDK::SSO::Telemetry'
        }
        context.tracer.in_span('SSO.GetRoleCredentials', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListAccountRoles
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'SSO',
          'rpc.method' => 'ListAccountRoles',
          'code.function' => 'list_account_roles',
          'code.namespace' => 'AWS::SDK::SSO::Telemetry'
        }
        context.tracer.in_span('SSO.ListAccountRoles', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class ListAccounts
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'SSO',
          'rpc.method' => 'ListAccounts',
          'code.function' => 'list_accounts',
          'code.namespace' => 'AWS::SDK::SSO::Telemetry'
        }
        context.tracer.in_span('SSO.ListAccounts', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

    class Logout
      def self.span(context, &block)
        attributes = {
          'rpc.service' => 'SSO',
          'rpc.method' => 'Logout',
          'code.function' => 'logout',
          'code.namespace' => 'AWS::SDK::SSO::Telemetry'
        }
        context.tracer.in_span('SSO.Logout', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
          block.call
        end
      end
    end

  end
end
