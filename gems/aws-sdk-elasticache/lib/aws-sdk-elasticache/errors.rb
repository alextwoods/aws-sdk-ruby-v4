# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElastiCache
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "APICallRateForCustomerExceeded" => "APICallRateForCustomerExceededFault",
        "AuthorizationAlreadyExists" => "AuthorizationAlreadyExistsFault",
        "AuthorizationNotFound" => "AuthorizationNotFoundFault",
        "CacheClusterAlreadyExists" => "CacheClusterAlreadyExistsFault",
        "CacheClusterNotFound" => "CacheClusterNotFoundFault",
        "CacheParameterGroupAlreadyExists" => "CacheParameterGroupAlreadyExistsFault",
        "CacheParameterGroupNotFound" => "CacheParameterGroupNotFoundFault",
        "CacheParameterGroupQuotaExceeded" => "CacheParameterGroupQuotaExceededFault",
        "CacheSecurityGroupAlreadyExists" => "CacheSecurityGroupAlreadyExistsFault",
        "CacheSecurityGroupNotFound" => "CacheSecurityGroupNotFoundFault",
        "QuotaExceeded.CacheSecurityGroup" => "CacheSecurityGroupQuotaExceededFault",
        "CacheSubnetGroupAlreadyExists" => "CacheSubnetGroupAlreadyExistsFault",
        "CacheSubnetGroupInUse" => "CacheSubnetGroupInUse",
        "CacheSubnetGroupNotFoundFault" => "CacheSubnetGroupNotFoundFault",
        "CacheSubnetGroupQuotaExceeded" => "CacheSubnetGroupQuotaExceededFault",
        "CacheSubnetQuotaExceededFault" => "CacheSubnetQuotaExceededFault",
        "ClusterQuotaForCustomerExceeded" => "ClusterQuotaForCustomerExceededFault",
        "DefaultUserAssociatedToUserGroup" => "DefaultUserAssociatedToUserGroupFault",
        "DefaultUserRequired" => "DefaultUserRequired",
        "DuplicateUserName" => "DuplicateUserNameFault",
        "GlobalReplicationGroupAlreadyExistsFault" => "GlobalReplicationGroupAlreadyExistsFault",
        "GlobalReplicationGroupNotFoundFault" => "GlobalReplicationGroupNotFoundFault",
        "InsufficientCacheClusterCapacity" => "InsufficientCacheClusterCapacityFault",
        "InvalidARN" => "InvalidARNFault",
        "InvalidCacheClusterState" => "InvalidCacheClusterStateFault",
        "InvalidCacheParameterGroupState" => "InvalidCacheParameterGroupStateFault",
        "InvalidCacheSecurityGroupState" => "InvalidCacheSecurityGroupStateFault",
        "InvalidGlobalReplicationGroupState" => "InvalidGlobalReplicationGroupStateFault",
        "InvalidKMSKeyFault" => "InvalidKMSKeyFault",
        "InvalidParameterCombination" => "InvalidParameterCombinationException",
        "InvalidParameterValue" => "InvalidParameterValueException",
        "InvalidReplicationGroupState" => "InvalidReplicationGroupStateFault",
        "InvalidSnapshotState" => "InvalidSnapshotStateFault",
        "InvalidSubnet" => "InvalidSubnet",
        "InvalidUserGroupState" => "InvalidUserGroupStateFault",
        "InvalidUserState" => "InvalidUserStateFault",
        "InvalidVPCNetworkStateFault" => "InvalidVPCNetworkStateFault",
        "NoOperationFault" => "NoOperationFault",
        "NodeGroupNotFoundFault" => "NodeGroupNotFoundFault",
        "NodeGroupsPerReplicationGroupQuotaExceeded" => "NodeGroupsPerReplicationGroupQuotaExceededFault",
        "NodeQuotaForClusterExceeded" => "NodeQuotaForClusterExceededFault",
        "NodeQuotaForCustomerExceeded" => "NodeQuotaForCustomerExceededFault",
        "ReplicationGroupAlreadyExists" => "ReplicationGroupAlreadyExistsFault",
        "ReplicationGroupAlreadyUnderMigrationFault" => "ReplicationGroupAlreadyUnderMigrationFault",
        "ReplicationGroupNotFoundFault" => "ReplicationGroupNotFoundFault",
        "ReplicationGroupNotUnderMigrationFault" => "ReplicationGroupNotUnderMigrationFault",
        "ReservedCacheNodeAlreadyExists" => "ReservedCacheNodeAlreadyExistsFault",
        "ReservedCacheNodeNotFound" => "ReservedCacheNodeNotFoundFault",
        "ReservedCacheNodeQuotaExceeded" => "ReservedCacheNodeQuotaExceededFault",
        "ReservedCacheNodesOfferingNotFound" => "ReservedCacheNodesOfferingNotFoundFault",
        "ServiceLinkedRoleNotFoundFault" => "ServiceLinkedRoleNotFoundFault",
        "ServiceUpdateNotFoundFault" => "ServiceUpdateNotFoundFault",
        "SnapshotAlreadyExistsFault" => "SnapshotAlreadyExistsFault",
        "SnapshotFeatureNotSupportedFault" => "SnapshotFeatureNotSupportedFault",
        "SnapshotNotFoundFault" => "SnapshotNotFoundFault",
        "SnapshotQuotaExceededFault" => "SnapshotQuotaExceededFault",
        "SubnetInUse" => "SubnetInUse",
        "SubnetNotAllowedFault" => "SubnetNotAllowedFault",
        "TagNotFound" => "TagNotFoundFault",
        "TagQuotaPerResourceExceeded" => "TagQuotaPerResourceExceeded",
        "TestFailoverNotAvailableFault" => "TestFailoverNotAvailableFault",
        "UserAlreadyExists" => "UserAlreadyExistsFault",
        "UserGroupAlreadyExists" => "UserGroupAlreadyExistsFault",
        "UserGroupNotFound" => "UserGroupNotFoundFault",
        "UserGroupQuotaExceeded" => "UserGroupQuotaExceededFault",
        "UserNotFound" => "UserNotFoundFault",
        "UserQuotaExceeded" => "UserQuotaExceededFault"
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

    class AuthorizationAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthorizationAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthorizationAlreadyExistsFault]
      #
      attr_reader :data
    end

    class AuthorizationNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthorizationNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthorizationNotFoundFault]
      #
      attr_reader :data
    end

    class CacheClusterAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheClusterAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheClusterAlreadyExistsFault]
      #
      attr_reader :data
    end

    class CacheClusterNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheClusterNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheClusterNotFoundFault]
      #
      attr_reader :data
    end

    class CacheParameterGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheParameterGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheParameterGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class CacheParameterGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheParameterGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheParameterGroupNotFoundFault]
      #
      attr_reader :data
    end

    class CacheParameterGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheParameterGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheParameterGroupQuotaExceededFault]
      #
      attr_reader :data
    end

    class CacheSecurityGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheSecurityGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheSecurityGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class CacheSecurityGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheSecurityGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheSecurityGroupNotFoundFault]
      #
      attr_reader :data
    end

    class CacheSecurityGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheSecurityGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheSecurityGroupQuotaExceededFault]
      #
      attr_reader :data
    end

    class CacheSubnetGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheSubnetGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheSubnetGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class CacheSubnetGroupInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheSubnetGroupInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheSubnetGroupInUse]
      #
      attr_reader :data
    end

    class CacheSubnetGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheSubnetGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheSubnetGroupNotFoundFault]
      #
      attr_reader :data
    end

    class CacheSubnetGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheSubnetGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheSubnetGroupQuotaExceededFault]
      #
      attr_reader :data
    end

    class CacheSubnetQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CacheSubnetQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CacheSubnetQuotaExceededFault]
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

    class DefaultUserAssociatedToUserGroupFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DefaultUserAssociatedToUserGroupFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DefaultUserAssociatedToUserGroupFault]
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

    class GlobalReplicationGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::GlobalReplicationGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::GlobalReplicationGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class GlobalReplicationGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::GlobalReplicationGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::GlobalReplicationGroupNotFoundFault]
      #
      attr_reader :data
    end

    class InsufficientCacheClusterCapacityFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientCacheClusterCapacityFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientCacheClusterCapacityFault]
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

    class InvalidCacheClusterStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCacheClusterStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCacheClusterStateFault]
      #
      attr_reader :data
    end

    class InvalidCacheParameterGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCacheParameterGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCacheParameterGroupStateFault]
      #
      attr_reader :data
    end

    class InvalidCacheSecurityGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCacheSecurityGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCacheSecurityGroupStateFault]
      #
      attr_reader :data
    end

    class InvalidGlobalReplicationGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidGlobalReplicationGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidGlobalReplicationGroupStateFault]
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

    class InvalidReplicationGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidReplicationGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidReplicationGroupStateFault]
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

    class InvalidUserGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidUserGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidUserGroupStateFault]
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

    class NodeGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NodeGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NodeGroupNotFoundFault]
      #
      attr_reader :data
    end

    class NodeGroupsPerReplicationGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NodeGroupsPerReplicationGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NodeGroupsPerReplicationGroupQuotaExceededFault]
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

    class ReplicationGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplicationGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplicationGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ReplicationGroupAlreadyUnderMigrationFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplicationGroupAlreadyUnderMigrationFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplicationGroupAlreadyUnderMigrationFault]
      #
      attr_reader :data
    end

    class ReplicationGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplicationGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplicationGroupNotFoundFault]
      #
      attr_reader :data
    end

    class ReplicationGroupNotUnderMigrationFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplicationGroupNotUnderMigrationFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplicationGroupNotUnderMigrationFault]
      #
      attr_reader :data
    end

    class ReservedCacheNodeAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedCacheNodeAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedCacheNodeAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ReservedCacheNodeNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedCacheNodeNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedCacheNodeNotFoundFault]
      #
      attr_reader :data
    end

    class ReservedCacheNodeQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedCacheNodeQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedCacheNodeQuotaExceededFault]
      #
      attr_reader :data
    end

    class ReservedCacheNodesOfferingNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedCacheNodesOfferingNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedCacheNodesOfferingNotFoundFault]
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

    class SnapshotFeatureNotSupportedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotFeatureNotSupportedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotFeatureNotSupportedFault]
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

    class UserGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class UserGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserGroupNotFoundFault]
      #
      attr_reader :data
    end

    class UserGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserGroupQuotaExceededFault]
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
