# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EFS
  module Errors
    def self.error_code(resp)
      if !(200..299).cover?(resp.status)
        json = Hearth::JSON.load(resp.body)
        resp.body.rewind
        code = json['__type'] || json['code'] if json
      end
      code ||= resp.headers['x-amzn-errortype']
      if code
        code.split('#').last.split(':').first
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

    class AccessPointAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccessPointAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccessPointAlreadyExists]
      #
      attr_reader :data
    end

    class AccessPointLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccessPointLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccessPointLimitExceeded]
      #
      attr_reader :data
    end

    class AccessPointNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccessPointNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccessPointNotFound]
      #
      attr_reader :data
    end

    class AvailabilityZonesMismatch < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AvailabilityZonesMismatch.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AvailabilityZonesMismatch]
      #
      attr_reader :data
    end

    class BadRequest < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BadRequest.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BadRequest]
      #
      attr_reader :data
    end

    class DependencyTimeout < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DependencyTimeout.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DependencyTimeout]
      #
      attr_reader :data
    end

    class FileSystemAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileSystemAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileSystemAlreadyExists]
      #
      attr_reader :data
    end

    class FileSystemInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileSystemInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileSystemInUse]
      #
      attr_reader :data
    end

    class FileSystemLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileSystemLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileSystemLimitExceeded]
      #
      attr_reader :data
    end

    class FileSystemNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileSystemNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileSystemNotFound]
      #
      attr_reader :data
    end

    class IncorrectFileSystemLifeCycleState < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncorrectFileSystemLifeCycleState.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncorrectFileSystemLifeCycleState]
      #
      attr_reader :data
    end

    class IncorrectMountTargetState < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncorrectMountTargetState.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncorrectMountTargetState]
      #
      attr_reader :data
    end

    class InsufficientThroughputCapacity < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientThroughputCapacity.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientThroughputCapacity]
      #
      attr_reader :data
    end

    class InternalServerError < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalServerError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalServerError]
      #
      attr_reader :data
    end

    class InvalidPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPolicyException]
      #
      attr_reader :data
    end

    class IpAddressInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IpAddressInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IpAddressInUse]
      #
      attr_reader :data
    end

    class MountTargetConflict < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MountTargetConflict.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MountTargetConflict]
      #
      attr_reader :data
    end

    class MountTargetNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MountTargetNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MountTargetNotFound]
      #
      attr_reader :data
    end

    class NetworkInterfaceLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NetworkInterfaceLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NetworkInterfaceLimitExceeded]
      #
      attr_reader :data
    end

    class NoFreeAddressesInSubnet < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoFreeAddressesInSubnet.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoFreeAddressesInSubnet]
      #
      attr_reader :data
    end

    class PolicyNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyNotFound]
      #
      attr_reader :data
    end

    class ReplicationNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplicationNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplicationNotFound]
      #
      attr_reader :data
    end

    class SecurityGroupLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SecurityGroupLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SecurityGroupLimitExceeded]
      #
      attr_reader :data
    end

    class SecurityGroupNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SecurityGroupNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SecurityGroupNotFound]
      #
      attr_reader :data
    end

    class SubnetNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetNotFound]
      #
      attr_reader :data
    end

    class ThrottlingException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ThrottlingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ThrottlingException]
      #
      attr_reader :data
    end

    class ThroughputLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ThroughputLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ThroughputLimitExceeded]
      #
      attr_reader :data
    end

    class TooManyRequests < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyRequests.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyRequests]
      #
      attr_reader :data
    end

    class UnsupportedAvailabilityZone < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedAvailabilityZone.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedAvailabilityZone]
      #
      attr_reader :data
    end

    class ValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ValidationException]
      #
      attr_reader :data
    end

  end
end
