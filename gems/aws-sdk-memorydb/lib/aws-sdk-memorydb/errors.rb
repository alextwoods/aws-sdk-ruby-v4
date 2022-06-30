# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MemoryDB
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

    class ACLAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ACLAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ACLAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ACLNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ACLNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ACLNotFoundFault]
      #
      attr_reader :data
    end

    class ACLQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ACLQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ACLQuotaExceededFault]
      #
      attr_reader :data
    end

    class APICallRateForCustomerExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::APICallRateForCustomerExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::APICallRateForCustomerExceededFault]
      #
      attr_reader :data
    end

    class ClusterAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ClusterNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterNotFoundFault]
      #
      attr_reader :data
    end

    class ClusterQuotaForCustomerExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterQuotaForCustomerExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterQuotaForCustomerExceededFault]
      #
      attr_reader :data
    end

    class DefaultUserRequired < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DefaultUserRequired.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DefaultUserRequired]
      #
      attr_reader :data
    end

    class DuplicateUserNameFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateUserNameFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateUserNameFault]
      #
      attr_reader :data
    end

    class InsufficientClusterCapacityFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientClusterCapacityFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientClusterCapacityFault]
      #
      attr_reader :data
    end

    class InvalidACLStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidACLStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidACLStateFault]
      #
      attr_reader :data
    end

    class InvalidARNFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidARNFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidARNFault]
      #
      attr_reader :data
    end

    class InvalidClusterStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClusterStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClusterStateFault]
      #
      attr_reader :data
    end

    class InvalidCredentialsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCredentialsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCredentialsException]
      #
      attr_reader :data
    end

    class InvalidKMSKeyFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidKMSKeyFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidKMSKeyFault]
      #
      attr_reader :data
    end

    class InvalidNodeStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNodeStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNodeStateFault]
      #
      attr_reader :data
    end

    class InvalidParameterCombinationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidParameterCombinationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidParameterCombinationException]
      #
      attr_reader :data
    end

    class InvalidParameterGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidParameterGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidParameterGroupStateFault]
      #
      attr_reader :data
    end

    class InvalidParameterValueException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidParameterValueException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidParameterValueException]
      #
      attr_reader :data
    end

    class InvalidSnapshotStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSnapshotStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSnapshotStateFault]
      #
      attr_reader :data
    end

    class InvalidSubnet < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSubnet.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSubnet]
      #
      attr_reader :data
    end

    class InvalidUserStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidUserStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidUserStateFault]
      #
      attr_reader :data
    end

    class InvalidVPCNetworkStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidVPCNetworkStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidVPCNetworkStateFault]
      #
      attr_reader :data
    end

    class NoOperationFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoOperationFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoOperationFault]
      #
      attr_reader :data
    end

    class NodeQuotaForClusterExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NodeQuotaForClusterExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NodeQuotaForClusterExceededFault]
      #
      attr_reader :data
    end

    class NodeQuotaForCustomerExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NodeQuotaForCustomerExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NodeQuotaForCustomerExceededFault]
      #
      attr_reader :data
    end

    class ParameterGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParameterGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParameterGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ParameterGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParameterGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParameterGroupNotFoundFault]
      #
      attr_reader :data
    end

    class ParameterGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParameterGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParameterGroupQuotaExceededFault]
      #
      attr_reader :data
    end

    class ServiceLinkedRoleNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceLinkedRoleNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceLinkedRoleNotFoundFault]
      #
      attr_reader :data
    end

    class ServiceUpdateNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceUpdateNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceUpdateNotFoundFault]
      #
      attr_reader :data
    end

    class ShardNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ShardNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ShardNotFoundFault]
      #
      attr_reader :data
    end

    class ShardsPerClusterQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ShardsPerClusterQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ShardsPerClusterQuotaExceededFault]
      #
      attr_reader :data
    end

    class SnapshotAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotAlreadyExistsFault]
      #
      attr_reader :data
    end

    class SnapshotNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotNotFoundFault]
      #
      attr_reader :data
    end

    class SnapshotQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotQuotaExceededFault]
      #
      attr_reader :data
    end

    class SubnetGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class SubnetGroupInUseFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetGroupInUseFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetGroupInUseFault]
      #
      attr_reader :data
    end

    class SubnetGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetGroupNotFoundFault]
      #
      attr_reader :data
    end

    class SubnetGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetGroupQuotaExceededFault]
      #
      attr_reader :data
    end

    class SubnetInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetInUse]
      #
      attr_reader :data
    end

    class SubnetNotAllowedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetNotAllowedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetNotAllowedFault]
      #
      attr_reader :data
    end

    class SubnetQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetQuotaExceededFault]
      #
      attr_reader :data
    end

    class TagNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagNotFoundFault]
      #
      attr_reader :data
    end

    class TagQuotaPerResourceExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagQuotaPerResourceExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagQuotaPerResourceExceeded]
      #
      attr_reader :data
    end

    class TestFailoverNotAvailableFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TestFailoverNotAvailableFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TestFailoverNotAvailableFault]
      #
      attr_reader :data
    end

    class UserAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserAlreadyExistsFault]
      #
      attr_reader :data
    end

    class UserNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserNotFoundFault]
      #
      attr_reader :data
    end

    class UserQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserQuotaExceededFault]
      #
      attr_reader :data
    end

  end
end
