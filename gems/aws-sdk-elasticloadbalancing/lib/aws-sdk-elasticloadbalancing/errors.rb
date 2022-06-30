# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancing
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "LoadBalancerNotFound" => "AccessPointNotFoundException",
        "CertificateNotFound" => "CertificateNotFoundException",
        "DependencyThrottle" => "DependencyThrottleException",
        "DuplicateLoadBalancerName" => "DuplicateAccessPointNameException",
        "DuplicateListener" => "DuplicateListenerException",
        "DuplicatePolicyName" => "DuplicatePolicyNameException",
        "DuplicateTagKeys" => "DuplicateTagKeysException",
        "InvalidConfigurationRequest" => "InvalidConfigurationRequestException",
        "InvalidInstance" => "InvalidEndPointException",
        "InvalidScheme" => "InvalidSchemeException",
        "InvalidSecurityGroup" => "InvalidSecurityGroupException",
        "InvalidSubnet" => "InvalidSubnetException",
        "ListenerNotFound" => "ListenerNotFoundException",
        "LoadBalancerAttributeNotFound" => "LoadBalancerAttributeNotFoundException",
        "OperationNotPermitted" => "OperationNotPermittedException",
        "PolicyNotFound" => "PolicyNotFoundException",
        "PolicyTypeNotFound" => "PolicyTypeNotFoundException",
        "SubnetNotFound" => "SubnetNotFoundException",
        "TooManyLoadBalancers" => "TooManyAccessPointsException",
        "TooManyPolicies" => "TooManyPoliciesException",
        "TooManyTags" => "TooManyTagsException",
        "UnsupportedProtocol" => "UnsupportedProtocolException"
      }

      if !(200..299).cover?(resp.status)
        body = resp.body.read
        resp.body.rewind
        xml = Hearth::XML.parse(body) unless body.empty?
        return unless xml && xml.name == 'ErrorResponse'
        code = xml.at('Error')&.text_at('Code')
        custom_errors[code] || code
      end
    end

    # Base class for all errors returned by this service
    class ApiError < Hearth::HTTP::ApiError; end

    # Base class for all errors returned where the client is at fault.
    # These are generally errors with 4XX HTTP status codes.
    class ApiClientError < ApiError; end

    # Base class for all errors returned where the server is at fault.
    # These are generally errors with 5XX HTTP status codes.
    class ApiServerError < ApiError; end

    # Base class for all errors returned where the service returned
    # a 3XX redirection.
    class ApiRedirectError < ApiError
      def initialize(location:, **kwargs)
        @location = location
        super(**kwargs)
      end

      # @return [String] location
      attr_reader :location
    end

    class AccessPointNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccessPointNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccessPointNotFoundException]
      #
      attr_reader :data
    end

    class CertificateNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CertificateNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CertificateNotFoundException]
      #
      attr_reader :data
    end

    class DependencyThrottleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DependencyThrottleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DependencyThrottleException]
      #
      attr_reader :data
    end

    class DuplicateAccessPointNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateAccessPointNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateAccessPointNameException]
      #
      attr_reader :data
    end

    class DuplicateListenerException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateListenerException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateListenerException]
      #
      attr_reader :data
    end

    class DuplicatePolicyNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicatePolicyNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicatePolicyNameException]
      #
      attr_reader :data
    end

    class DuplicateTagKeysException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateTagKeysException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateTagKeysException]
      #
      attr_reader :data
    end

    class InvalidConfigurationRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidConfigurationRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidConfigurationRequestException]
      #
      attr_reader :data
    end

    class InvalidEndPointException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEndPointException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEndPointException]
      #
      attr_reader :data
    end

    class InvalidSchemeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSchemeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSchemeException]
      #
      attr_reader :data
    end

    class InvalidSecurityGroupException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSecurityGroupException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSecurityGroupException]
      #
      attr_reader :data
    end

    class InvalidSubnetException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSubnetException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSubnetException]
      #
      attr_reader :data
    end

    class ListenerNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ListenerNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ListenerNotFoundException]
      #
      attr_reader :data
    end

    class LoadBalancerAttributeNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LoadBalancerAttributeNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LoadBalancerAttributeNotFoundException]
      #
      attr_reader :data
    end

    class OperationNotPermittedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationNotPermittedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationNotPermittedException]
      #
      attr_reader :data
    end

    class PolicyNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyNotFoundException]
      #
      attr_reader :data
    end

    class PolicyTypeNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyTypeNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyTypeNotFoundException]
      #
      attr_reader :data
    end

    class SubnetNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetNotFoundException]
      #
      attr_reader :data
    end

    class TooManyAccessPointsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyAccessPointsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyAccessPointsException]
      #
      attr_reader :data
    end

    class TooManyPoliciesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyPoliciesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyPoliciesException]
      #
      attr_reader :data
    end

    class TooManyTagsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTagsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTagsException]
      #
      attr_reader :data
    end

    class UnsupportedProtocolException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedProtocolException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedProtocolException]
      #
      attr_reader :data
    end

  end
end
