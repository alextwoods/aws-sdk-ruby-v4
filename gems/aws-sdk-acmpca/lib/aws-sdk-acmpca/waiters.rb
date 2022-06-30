# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ACMPCA
  module Waiters

    # Wait until a Audit Report is created
    #
    class AuditReportCreated
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (3)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 3 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_certificate_authority_audit_report,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"audit_report_status\"",
                    comparator: "stringEquals",
                    expected: 'SUCCESS'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"audit_report_status\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_certificate_authority_audit_report)
      #
      # @param [Hash] options
      #   (see Client#describe_certificate_authority_audit_report)
      #
      # @return [Types::DescribeCertificateAuthorityAuditReport]
      #   (see Client#describe_certificate_authority_audit_report)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a certificate is issued
    #
    class CertificateIssued
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (3)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 3 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_certificate,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  success: true
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'RequestInProgressException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_certificate)
      #
      # @param [Hash] options
      #   (see Client#get_certificate)
      #
      # @return [Types::GetCertificate]
      #   (see Client#get_certificate)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a Certificate Authority CSR is created
    #
    class CertificateAuthorityCSRCreated
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (3)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 3 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_certificate_authority_csr,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  success: true
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'RequestInProgressException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_certificate_authority_csr)
      #
      # @param [Hash] options
      #   (see Client#get_certificate_authority_csr)
      #
      # @return [Types::GetCertificateAuthorityCsr]
      #   (see Client#get_certificate_authority_csr)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
