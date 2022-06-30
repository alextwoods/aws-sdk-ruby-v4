# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancingV2
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "ALPNPolicyNotFound" => "ALPNPolicyNotSupportedException",
        "AllocationIdNotFound" => "AllocationIdNotFoundException",
        "AvailabilityZoneNotSupported" => "AvailabilityZoneNotSupportedException",
        "CertificateNotFound" => "CertificateNotFoundException",
        "DuplicateListener" => "DuplicateListenerException",
        "DuplicateLoadBalancerName" => "DuplicateLoadBalancerNameException",
        "DuplicateTagKeys" => "DuplicateTagKeysException",
        "DuplicateTargetGroupName" => "DuplicateTargetGroupNameException",
        "HealthUnavailable" => "HealthUnavailableException",
        "IncompatibleProtocols" => "IncompatibleProtocolsException",
        "InvalidConfigurationRequest" => "InvalidConfigurationRequestException",
        "InvalidLoadBalancerAction" => "InvalidLoadBalancerActionException",
        "InvalidScheme" => "InvalidSchemeException",
        "InvalidSecurityGroup" => "InvalidSecurityGroupException",
        "InvalidSubnet" => "InvalidSubnetException",
        "InvalidTarget" => "InvalidTargetException",
        "ListenerNotFound" => "ListenerNotFoundException",
        "LoadBalancerNotFound" => "LoadBalancerNotFoundException",
        "OperationNotPermitted" => "OperationNotPermittedException",
        "PriorityInUse" => "PriorityInUseException",
        "ResourceInUse" => "ResourceInUseException",
        "RuleNotFound" => "RuleNotFoundException",
        "SSLPolicyNotFound" => "SSLPolicyNotFoundException",
        "SubnetNotFound" => "SubnetNotFoundException",
        "TargetGroupAssociationLimit" => "TargetGroupAssociationLimitException",
        "TargetGroupNotFound" => "TargetGroupNotFoundException",
        "TooManyActions" => "TooManyActionsException",
        "TooManyCertificates" => "TooManyCertificatesException",
        "TooManyListeners" => "TooManyListenersException",
        "TooManyLoadBalancers" => "TooManyLoadBalancersException",
        "TooManyRegistrationsForTargetId" => "TooManyRegistrationsForTargetIdException",
        "TooManyRules" => "TooManyRulesException",
        "TooManyTags" => "TooManyTagsException",
        "TooManyTargetGroups" => "TooManyTargetGroupsException",
        "TooManyTargets" => "TooManyTargetsException",
        "TooManyUniqueTargetGroupsPerLoadBalancer" => "TooManyUniqueTargetGroupsPerLoadBalancerException",
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

    class ALPNPolicyNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ALPNPolicyNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ALPNPolicyNotSupportedException]
      #
      attr_reader :data
    end

    class AllocationIdNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AllocationIdNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AllocationIdNotFoundException]
      #
      attr_reader :data
    end

    class AvailabilityZoneNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AvailabilityZoneNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AvailabilityZoneNotSupportedException]
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

    class DuplicateLoadBalancerNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateLoadBalancerNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateLoadBalancerNameException]
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

    class DuplicateTargetGroupNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateTargetGroupNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateTargetGroupNameException]
      #
      attr_reader :data
    end

    class HealthUnavailableException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HealthUnavailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HealthUnavailableException]
      #
      attr_reader :data
    end

    class IncompatibleProtocolsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncompatibleProtocolsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncompatibleProtocolsException]
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

    class InvalidLoadBalancerActionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLoadBalancerActionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLoadBalancerActionException]
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

    class InvalidTargetException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTargetException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTargetException]
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

    class LoadBalancerNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LoadBalancerNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LoadBalancerNotFoundException]
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

    class PriorityInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PriorityInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PriorityInUseException]
      #
      attr_reader :data
    end

    class ResourceInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceInUseException]
      #
      attr_reader :data
    end

    class RuleNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RuleNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RuleNotFoundException]
      #
      attr_reader :data
    end

    class SSLPolicyNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SSLPolicyNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SSLPolicyNotFoundException]
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

    class TargetGroupAssociationLimitException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TargetGroupAssociationLimitException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TargetGroupAssociationLimitException]
      #
      attr_reader :data
    end

    class TargetGroupNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TargetGroupNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TargetGroupNotFoundException]
      #
      attr_reader :data
    end

    class TooManyActionsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyActionsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyActionsException]
      #
      attr_reader :data
    end

    class TooManyCertificatesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyCertificatesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyCertificatesException]
      #
      attr_reader :data
    end

    class TooManyListenersException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyListenersException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyListenersException]
      #
      attr_reader :data
    end

    class TooManyLoadBalancersException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyLoadBalancersException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyLoadBalancersException]
      #
      attr_reader :data
    end

    class TooManyRegistrationsForTargetIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyRegistrationsForTargetIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyRegistrationsForTargetIdException]
      #
      attr_reader :data
    end

    class TooManyRulesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyRulesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyRulesException]
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

    class TooManyTargetGroupsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTargetGroupsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTargetGroupsException]
      #
      attr_reader :data
    end

    class TooManyTargetsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTargetsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTargetsException]
      #
      attr_reader :data
    end

    class TooManyUniqueTargetGroupsPerLoadBalancerException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyUniqueTargetGroupsPerLoadBalancerException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyUniqueTargetGroupsPerLoadBalancerException]
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
