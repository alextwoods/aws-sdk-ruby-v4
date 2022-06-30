# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Neptune
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "AuthorizationNotFound" => "AuthorizationNotFoundFault",
        "CertificateNotFound" => "CertificateNotFoundFault",
        "DBClusterAlreadyExistsFault" => "DBClusterAlreadyExistsFault",
        "DBClusterEndpointAlreadyExistsFault" => "DBClusterEndpointAlreadyExistsFault",
        "DBClusterEndpointNotFoundFault" => "DBClusterEndpointNotFoundFault",
        "DBClusterEndpointQuotaExceededFault" => "DBClusterEndpointQuotaExceededFault",
        "DBClusterNotFoundFault" => "DBClusterNotFoundFault",
        "DBClusterParameterGroupNotFound" => "DBClusterParameterGroupNotFoundFault",
        "DBClusterQuotaExceededFault" => "DBClusterQuotaExceededFault",
        "DBClusterRoleAlreadyExists" => "DBClusterRoleAlreadyExistsFault",
        "DBClusterRoleNotFound" => "DBClusterRoleNotFoundFault",
        "DBClusterRoleQuotaExceeded" => "DBClusterRoleQuotaExceededFault",
        "DBClusterSnapshotAlreadyExistsFault" => "DBClusterSnapshotAlreadyExistsFault",
        "DBClusterSnapshotNotFoundFault" => "DBClusterSnapshotNotFoundFault",
        "DBInstanceAlreadyExists" => "DBInstanceAlreadyExistsFault",
        "DBInstanceNotFound" => "DBInstanceNotFoundFault",
        "DBParameterGroupAlreadyExists" => "DBParameterGroupAlreadyExistsFault",
        "DBParameterGroupNotFound" => "DBParameterGroupNotFoundFault",
        "DBParameterGroupQuotaExceeded" => "DBParameterGroupQuotaExceededFault",
        "DBSecurityGroupNotFound" => "DBSecurityGroupNotFoundFault",
        "DBSnapshotAlreadyExists" => "DBSnapshotAlreadyExistsFault",
        "DBSnapshotNotFound" => "DBSnapshotNotFoundFault",
        "DBSubnetGroupAlreadyExists" => "DBSubnetGroupAlreadyExistsFault",
        "DBSubnetGroupDoesNotCoverEnoughAZs" => "DBSubnetGroupDoesNotCoverEnoughAZs",
        "DBSubnetGroupNotFoundFault" => "DBSubnetGroupNotFoundFault",
        "DBSubnetGroupQuotaExceeded" => "DBSubnetGroupQuotaExceededFault",
        "DBSubnetQuotaExceededFault" => "DBSubnetQuotaExceededFault",
        "DBUpgradeDependencyFailure" => "DBUpgradeDependencyFailureFault",
        "DomainNotFoundFault" => "DomainNotFoundFault",
        "EventSubscriptionQuotaExceeded" => "EventSubscriptionQuotaExceededFault",
        "GlobalClusterAlreadyExistsFault" => "GlobalClusterAlreadyExistsFault",
        "GlobalClusterNotFoundFault" => "GlobalClusterNotFoundFault",
        "GlobalClusterQuotaExceededFault" => "GlobalClusterQuotaExceededFault",
        "InstanceQuotaExceeded" => "InstanceQuotaExceededFault",
        "InsufficientDBClusterCapacityFault" => "InsufficientDBClusterCapacityFault",
        "InsufficientDBInstanceCapacity" => "InsufficientDBInstanceCapacityFault",
        "InsufficientStorageClusterCapacity" => "InsufficientStorageClusterCapacityFault",
        "InvalidDBClusterEndpointStateFault" => "InvalidDBClusterEndpointStateFault",
        "InvalidDBClusterSnapshotStateFault" => "InvalidDBClusterSnapshotStateFault",
        "InvalidDBClusterStateFault" => "InvalidDBClusterStateFault",
        "InvalidDBInstanceState" => "InvalidDBInstanceStateFault",
        "InvalidDBParameterGroupState" => "InvalidDBParameterGroupStateFault",
        "InvalidDBSecurityGroupState" => "InvalidDBSecurityGroupStateFault",
        "InvalidDBSnapshotState" => "InvalidDBSnapshotStateFault",
        "InvalidDBSubnetGroupStateFault" => "InvalidDBSubnetGroupStateFault",
        "InvalidDBSubnetStateFault" => "InvalidDBSubnetStateFault",
        "InvalidEventSubscriptionState" => "InvalidEventSubscriptionStateFault",
        "InvalidGlobalClusterStateFault" => "InvalidGlobalClusterStateFault",
        "InvalidRestoreFault" => "InvalidRestoreFault",
        "InvalidSubnet" => "InvalidSubnet",
        "InvalidVPCNetworkStateFault" => "InvalidVPCNetworkStateFault",
        "KMSKeyNotAccessibleFault" => "KMSKeyNotAccessibleFault",
        "OptionGroupNotFoundFault" => "OptionGroupNotFoundFault",
        "ProvisionedIopsNotAvailableInAZFault" => "ProvisionedIopsNotAvailableInAZFault",
        "ResourceNotFoundFault" => "ResourceNotFoundFault",
        "SNSInvalidTopic" => "SNSInvalidTopicFault",
        "SNSNoAuthorization" => "SNSNoAuthorizationFault",
        "SNSTopicArnNotFound" => "SNSTopicArnNotFoundFault",
        "SharedSnapshotQuotaExceeded" => "SharedSnapshotQuotaExceededFault",
        "SnapshotQuotaExceeded" => "SnapshotQuotaExceededFault",
        "SourceNotFound" => "SourceNotFoundFault",
        "StorageQuotaExceeded" => "StorageQuotaExceededFault",
        "StorageTypeNotSupported" => "StorageTypeNotSupportedFault",
        "SubnetAlreadyInUse" => "SubnetAlreadyInUse",
        "SubscriptionAlreadyExist" => "SubscriptionAlreadyExistFault",
        "SubscriptionCategoryNotFound" => "SubscriptionCategoryNotFoundFault",
        "SubscriptionNotFound" => "SubscriptionNotFoundFault"
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

    class CertificateNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CertificateNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CertificateNotFoundFault]
      #
      attr_reader :data
    end

    class DBClusterAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterAlreadyExistsFault]
      #
      attr_reader :data
    end

    class DBClusterEndpointAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterEndpointAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterEndpointAlreadyExistsFault]
      #
      attr_reader :data
    end

    class DBClusterEndpointNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterEndpointNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterEndpointNotFoundFault]
      #
      attr_reader :data
    end

    class DBClusterEndpointQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterEndpointQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterEndpointQuotaExceededFault]
      #
      attr_reader :data
    end

    class DBClusterNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterNotFoundFault]
      #
      attr_reader :data
    end

    class DBClusterParameterGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterParameterGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterParameterGroupNotFoundFault]
      #
      attr_reader :data
    end

    class DBClusterQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterQuotaExceededFault]
      #
      attr_reader :data
    end

    class DBClusterRoleAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterRoleAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterRoleAlreadyExistsFault]
      #
      attr_reader :data
    end

    class DBClusterRoleNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterRoleNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterRoleNotFoundFault]
      #
      attr_reader :data
    end

    class DBClusterRoleQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterRoleQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterRoleQuotaExceededFault]
      #
      attr_reader :data
    end

    class DBClusterSnapshotAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterSnapshotAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterSnapshotAlreadyExistsFault]
      #
      attr_reader :data
    end

    class DBClusterSnapshotNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBClusterSnapshotNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBClusterSnapshotNotFoundFault]
      #
      attr_reader :data
    end

    class DBInstanceAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBInstanceAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBInstanceAlreadyExistsFault]
      #
      attr_reader :data
    end

    class DBInstanceNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBInstanceNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBInstanceNotFoundFault]
      #
      attr_reader :data
    end

    class DBParameterGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBParameterGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBParameterGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class DBParameterGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBParameterGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBParameterGroupNotFoundFault]
      #
      attr_reader :data
    end

    class DBParameterGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBParameterGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBParameterGroupQuotaExceededFault]
      #
      attr_reader :data
    end

    class DBSecurityGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBSecurityGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBSecurityGroupNotFoundFault]
      #
      attr_reader :data
    end

    class DBSnapshotAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBSnapshotAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBSnapshotAlreadyExistsFault]
      #
      attr_reader :data
    end

    class DBSnapshotNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBSnapshotNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBSnapshotNotFoundFault]
      #
      attr_reader :data
    end

    class DBSubnetGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBSubnetGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBSubnetGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class DBSubnetGroupDoesNotCoverEnoughAZs < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBSubnetGroupDoesNotCoverEnoughAZs.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBSubnetGroupDoesNotCoverEnoughAZs]
      #
      attr_reader :data
    end

    class DBSubnetGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBSubnetGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBSubnetGroupNotFoundFault]
      #
      attr_reader :data
    end

    class DBSubnetGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBSubnetGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBSubnetGroupQuotaExceededFault]
      #
      attr_reader :data
    end

    class DBSubnetQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBSubnetQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBSubnetQuotaExceededFault]
      #
      attr_reader :data
    end

    class DBUpgradeDependencyFailureFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DBUpgradeDependencyFailureFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DBUpgradeDependencyFailureFault]
      #
      attr_reader :data
    end

    class DomainNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DomainNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DomainNotFoundFault]
      #
      attr_reader :data
    end

    class EventSubscriptionQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EventSubscriptionQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EventSubscriptionQuotaExceededFault]
      #
      attr_reader :data
    end

    class GlobalClusterAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::GlobalClusterAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::GlobalClusterAlreadyExistsFault]
      #
      attr_reader :data
    end

    class GlobalClusterNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::GlobalClusterNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::GlobalClusterNotFoundFault]
      #
      attr_reader :data
    end

    class GlobalClusterQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::GlobalClusterQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::GlobalClusterQuotaExceededFault]
      #
      attr_reader :data
    end

    class InstanceQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InstanceQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InstanceQuotaExceededFault]
      #
      attr_reader :data
    end

    class InsufficientDBClusterCapacityFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientDBClusterCapacityFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientDBClusterCapacityFault]
      #
      attr_reader :data
    end

    class InsufficientDBInstanceCapacityFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientDBInstanceCapacityFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientDBInstanceCapacityFault]
      #
      attr_reader :data
    end

    class InsufficientStorageClusterCapacityFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientStorageClusterCapacityFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientStorageClusterCapacityFault]
      #
      attr_reader :data
    end

    class InvalidDBClusterEndpointStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDBClusterEndpointStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDBClusterEndpointStateFault]
      #
      attr_reader :data
    end

    class InvalidDBClusterSnapshotStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDBClusterSnapshotStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDBClusterSnapshotStateFault]
      #
      attr_reader :data
    end

    class InvalidDBClusterStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDBClusterStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDBClusterStateFault]
      #
      attr_reader :data
    end

    class InvalidDBInstanceStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDBInstanceStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDBInstanceStateFault]
      #
      attr_reader :data
    end

    class InvalidDBParameterGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDBParameterGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDBParameterGroupStateFault]
      #
      attr_reader :data
    end

    class InvalidDBSecurityGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDBSecurityGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDBSecurityGroupStateFault]
      #
      attr_reader :data
    end

    class InvalidDBSnapshotStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDBSnapshotStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDBSnapshotStateFault]
      #
      attr_reader :data
    end

    class InvalidDBSubnetGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDBSubnetGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDBSubnetGroupStateFault]
      #
      attr_reader :data
    end

    class InvalidDBSubnetStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDBSubnetStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDBSubnetStateFault]
      #
      attr_reader :data
    end

    class InvalidEventSubscriptionStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEventSubscriptionStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEventSubscriptionStateFault]
      #
      attr_reader :data
    end

    class InvalidGlobalClusterStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidGlobalClusterStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidGlobalClusterStateFault]
      #
      attr_reader :data
    end

    class InvalidRestoreFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRestoreFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRestoreFault]
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

    class KMSKeyNotAccessibleFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSKeyNotAccessibleFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSKeyNotAccessibleFault]
      #
      attr_reader :data
    end

    class OptionGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OptionGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OptionGroupNotFoundFault]
      #
      attr_reader :data
    end

    class ProvisionedIopsNotAvailableInAZFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ProvisionedIopsNotAvailableInAZFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ProvisionedIopsNotAvailableInAZFault]
      #
      attr_reader :data
    end

    class ResourceNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotFoundFault]
      #
      attr_reader :data
    end

    class SNSInvalidTopicFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SNSInvalidTopicFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SNSInvalidTopicFault]
      #
      attr_reader :data
    end

    class SNSNoAuthorizationFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SNSNoAuthorizationFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SNSNoAuthorizationFault]
      #
      attr_reader :data
    end

    class SNSTopicArnNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SNSTopicArnNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SNSTopicArnNotFoundFault]
      #
      attr_reader :data
    end

    class SharedSnapshotQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SharedSnapshotQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SharedSnapshotQuotaExceededFault]
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

    class SourceNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SourceNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SourceNotFoundFault]
      #
      attr_reader :data
    end

    class StorageQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StorageQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StorageQuotaExceededFault]
      #
      attr_reader :data
    end

    class StorageTypeNotSupportedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StorageTypeNotSupportedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StorageTypeNotSupportedFault]
      #
      attr_reader :data
    end

    class SubnetAlreadyInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetAlreadyInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetAlreadyInUse]
      #
      attr_reader :data
    end

    class SubscriptionAlreadyExistFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubscriptionAlreadyExistFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubscriptionAlreadyExistFault]
      #
      attr_reader :data
    end

    class SubscriptionCategoryNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubscriptionCategoryNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubscriptionCategoryNotFoundFault]
      #
      attr_reader :data
    end

    class SubscriptionNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubscriptionNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubscriptionNotFoundFault]
      #
      attr_reader :data
    end

  end
end
