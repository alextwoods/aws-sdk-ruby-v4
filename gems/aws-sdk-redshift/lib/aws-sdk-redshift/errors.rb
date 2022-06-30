# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Redshift
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "AccessToClusterDenied" => "AccessToClusterDeniedFault",
        "AccessToSnapshotDenied" => "AccessToSnapshotDeniedFault",
        "AuthenticationProfileAlreadyExistsFault" => "AuthenticationProfileAlreadyExistsFault",
        "AuthenticationProfileNotFoundFault" => "AuthenticationProfileNotFoundFault",
        "AuthenticationProfileQuotaExceededFault" => "AuthenticationProfileQuotaExceededFault",
        "AuthorizationAlreadyExists" => "AuthorizationAlreadyExistsFault",
        "AuthorizationNotFound" => "AuthorizationNotFoundFault",
        "AuthorizationQuotaExceeded" => "AuthorizationQuotaExceededFault",
        "BatchDeleteRequestSizeExceeded" => "BatchDeleteRequestSizeExceededFault",
        "BatchModifyClusterSnapshotsLimitExceededFault" => "BatchModifyClusterSnapshotsLimitExceededFault",
        "BucketNotFoundFault" => "BucketNotFoundFault",
        "ClusterAlreadyExists" => "ClusterAlreadyExistsFault",
        "ClusterNotFound" => "ClusterNotFoundFault",
        "ClusterOnLatestRevision" => "ClusterOnLatestRevisionFault",
        "ClusterParameterGroupAlreadyExists" => "ClusterParameterGroupAlreadyExistsFault",
        "ClusterParameterGroupNotFound" => "ClusterParameterGroupNotFoundFault",
        "ClusterParameterGroupQuotaExceeded" => "ClusterParameterGroupQuotaExceededFault",
        "ClusterQuotaExceeded" => "ClusterQuotaExceededFault",
        "ClusterSecurityGroupAlreadyExists" => "ClusterSecurityGroupAlreadyExistsFault",
        "ClusterSecurityGroupNotFound" => "ClusterSecurityGroupNotFoundFault",
        "QuotaExceeded.ClusterSecurityGroup" => "ClusterSecurityGroupQuotaExceededFault",
        "ClusterSnapshotAlreadyExists" => "ClusterSnapshotAlreadyExistsFault",
        "ClusterSnapshotNotFound" => "ClusterSnapshotNotFoundFault",
        "ClusterSnapshotQuotaExceeded" => "ClusterSnapshotQuotaExceededFault",
        "ClusterSubnetGroupAlreadyExists" => "ClusterSubnetGroupAlreadyExistsFault",
        "ClusterSubnetGroupNotFoundFault" => "ClusterSubnetGroupNotFoundFault",
        "ClusterSubnetGroupQuotaExceeded" => "ClusterSubnetGroupQuotaExceededFault",
        "ClusterSubnetQuotaExceededFault" => "ClusterSubnetQuotaExceededFault",
        "CopyToRegionDisabledFault" => "CopyToRegionDisabledFault",
        "DependentServiceRequestThrottlingFault" => "DependentServiceRequestThrottlingFault",
        "DependentServiceUnavailableFault" => "DependentServiceUnavailableFault",
        "EndpointAlreadyExists" => "EndpointAlreadyExistsFault",
        "EndpointAuthorizationAlreadyExists" => "EndpointAuthorizationAlreadyExistsFault",
        "EndpointAuthorizationNotFound" => "EndpointAuthorizationNotFoundFault",
        "EndpointAuthorizationsPerClusterLimitExceeded" => "EndpointAuthorizationsPerClusterLimitExceededFault",
        "EndpointNotFound" => "EndpointNotFoundFault",
        "EndpointsPerAuthorizationLimitExceeded" => "EndpointsPerAuthorizationLimitExceededFault",
        "EndpointsPerClusterLimitExceeded" => "EndpointsPerClusterLimitExceededFault",
        "EventSubscriptionQuotaExceeded" => "EventSubscriptionQuotaExceededFault",
        "HsmClientCertificateAlreadyExistsFault" => "HsmClientCertificateAlreadyExistsFault",
        "HsmClientCertificateNotFoundFault" => "HsmClientCertificateNotFoundFault",
        "HsmClientCertificateQuotaExceededFault" => "HsmClientCertificateQuotaExceededFault",
        "HsmConfigurationAlreadyExistsFault" => "HsmConfigurationAlreadyExistsFault",
        "HsmConfigurationNotFoundFault" => "HsmConfigurationNotFoundFault",
        "HsmConfigurationQuotaExceededFault" => "HsmConfigurationQuotaExceededFault",
        "InProgressTableRestoreQuotaExceededFault" => "InProgressTableRestoreQuotaExceededFault",
        "IncompatibleOrderableOptions" => "IncompatibleOrderableOptions",
        "InsufficientClusterCapacity" => "InsufficientClusterCapacityFault",
        "InsufficientS3BucketPolicyFault" => "InsufficientS3BucketPolicyFault",
        "InvalidAuthenticationProfileRequestFault" => "InvalidAuthenticationProfileRequestFault",
        "InvalidAuthorizationState" => "InvalidAuthorizationStateFault",
        "InvalidClusterParameterGroupState" => "InvalidClusterParameterGroupStateFault",
        "InvalidClusterSecurityGroupState" => "InvalidClusterSecurityGroupStateFault",
        "InvalidClusterSnapshotScheduleState" => "InvalidClusterSnapshotScheduleStateFault",
        "InvalidClusterSnapshotState" => "InvalidClusterSnapshotStateFault",
        "InvalidClusterState" => "InvalidClusterStateFault",
        "InvalidClusterSubnetGroupStateFault" => "InvalidClusterSubnetGroupStateFault",
        "InvalidClusterSubnetStateFault" => "InvalidClusterSubnetStateFault",
        "InvalidClusterTrack" => "InvalidClusterTrackFault",
        "InvalidDataShareFault" => "InvalidDataShareFault",
        "InvalidElasticIpFault" => "InvalidElasticIpFault",
        "InvalidEndpointState" => "InvalidEndpointStateFault",
        "InvalidHsmClientCertificateStateFault" => "InvalidHsmClientCertificateStateFault",
        "InvalidHsmConfigurationStateFault" => "InvalidHsmConfigurationStateFault",
        "InvalidNamespaceFault" => "InvalidNamespaceFault",
        "InvalidReservedNodeState" => "InvalidReservedNodeStateFault",
        "InvalidRestore" => "InvalidRestoreFault",
        "InvalidRetentionPeriodFault" => "InvalidRetentionPeriodFault",
        "InvalidS3BucketNameFault" => "InvalidS3BucketNameFault",
        "InvalidS3KeyPrefixFault" => "InvalidS3KeyPrefixFault",
        "InvalidSchedule" => "InvalidScheduleFault",
        "InvalidScheduledAction" => "InvalidScheduledActionFault",
        "InvalidSnapshotCopyGrantStateFault" => "InvalidSnapshotCopyGrantStateFault",
        "InvalidSubnet" => "InvalidSubnet",
        "InvalidSubscriptionStateFault" => "InvalidSubscriptionStateFault",
        "InvalidTableRestoreArgument" => "InvalidTableRestoreArgumentFault",
        "InvalidTagFault" => "InvalidTagFault",
        "InvalidUsageLimit" => "InvalidUsageLimitFault",
        "InvalidVPCNetworkStateFault" => "InvalidVPCNetworkStateFault",
        "LimitExceededFault" => "LimitExceededFault",
        "NumberOfNodesPerClusterLimitExceeded" => "NumberOfNodesPerClusterLimitExceededFault",
        "NumberOfNodesQuotaExceeded" => "NumberOfNodesQuotaExceededFault",
        "PartnerNotFound" => "PartnerNotFoundFault",
        "ReservedNodeAlreadyExists" => "ReservedNodeAlreadyExistsFault",
        "ReservedNodeAlreadyMigrated" => "ReservedNodeAlreadyMigratedFault",
        "ReservedNodeExchangeNotFond" => "ReservedNodeExchangeNotFoundFault",
        "ReservedNodeNotFound" => "ReservedNodeNotFoundFault",
        "ReservedNodeOfferingNotFound" => "ReservedNodeOfferingNotFoundFault",
        "ReservedNodeQuotaExceeded" => "ReservedNodeQuotaExceededFault",
        "ResizeNotFound" => "ResizeNotFoundFault",
        "ResourceNotFoundFault" => "ResourceNotFoundFault",
        "SNSInvalidTopic" => "SNSInvalidTopicFault",
        "SNSNoAuthorization" => "SNSNoAuthorizationFault",
        "SNSTopicArnNotFound" => "SNSTopicArnNotFoundFault",
        "ScheduleDefinitionTypeUnsupported" => "ScheduleDefinitionTypeUnsupportedFault",
        "ScheduledActionAlreadyExists" => "ScheduledActionAlreadyExistsFault",
        "ScheduledActionNotFound" => "ScheduledActionNotFoundFault",
        "ScheduledActionQuotaExceeded" => "ScheduledActionQuotaExceededFault",
        "ScheduledActionTypeUnsupported" => "ScheduledActionTypeUnsupportedFault",
        "SnapshotCopyAlreadyDisabledFault" => "SnapshotCopyAlreadyDisabledFault",
        "SnapshotCopyAlreadyEnabledFault" => "SnapshotCopyAlreadyEnabledFault",
        "SnapshotCopyDisabledFault" => "SnapshotCopyDisabledFault",
        "SnapshotCopyGrantAlreadyExistsFault" => "SnapshotCopyGrantAlreadyExistsFault",
        "SnapshotCopyGrantNotFoundFault" => "SnapshotCopyGrantNotFoundFault",
        "SnapshotCopyGrantQuotaExceededFault" => "SnapshotCopyGrantQuotaExceededFault",
        "SnapshotScheduleAlreadyExists" => "SnapshotScheduleAlreadyExistsFault",
        "SnapshotScheduleNotFound" => "SnapshotScheduleNotFoundFault",
        "SnapshotScheduleQuotaExceeded" => "SnapshotScheduleQuotaExceededFault",
        "SnapshotScheduleUpdateInProgress" => "SnapshotScheduleUpdateInProgressFault",
        "SourceNotFound" => "SourceNotFoundFault",
        "SubnetAlreadyInUse" => "SubnetAlreadyInUse",
        "SubscriptionAlreadyExist" => "SubscriptionAlreadyExistFault",
        "SubscriptionCategoryNotFound" => "SubscriptionCategoryNotFoundFault",
        "SubscriptionEventIdNotFound" => "SubscriptionEventIdNotFoundFault",
        "SubscriptionNotFound" => "SubscriptionNotFoundFault",
        "SubscriptionSeverityNotFound" => "SubscriptionSeverityNotFoundFault",
        "TableLimitExceeded" => "TableLimitExceededFault",
        "TableRestoreNotFoundFault" => "TableRestoreNotFoundFault",
        "TagLimitExceededFault" => "TagLimitExceededFault",
        "UnauthorizedOperation" => "UnauthorizedOperation",
        "UnauthorizedPartnerIntegration" => "UnauthorizedPartnerIntegrationFault",
        "UnknownSnapshotCopyRegionFault" => "UnknownSnapshotCopyRegionFault",
        "UnsupportedOperation" => "UnsupportedOperationFault",
        "UnsupportedOptionFault" => "UnsupportedOptionFault",
        "UsageLimitAlreadyExists" => "UsageLimitAlreadyExistsFault",
        "UsageLimitNotFound" => "UsageLimitNotFoundFault"
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

    class AccessToClusterDeniedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccessToClusterDeniedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccessToClusterDeniedFault]
      #
      attr_reader :data
    end

    class AccessToSnapshotDeniedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccessToSnapshotDeniedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccessToSnapshotDeniedFault]
      #
      attr_reader :data
    end

    class AuthenticationProfileAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthenticationProfileAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthenticationProfileAlreadyExistsFault]
      #
      attr_reader :data
    end

    class AuthenticationProfileNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthenticationProfileNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthenticationProfileNotFoundFault]
      #
      attr_reader :data
    end

    class AuthenticationProfileQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthenticationProfileQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthenticationProfileQuotaExceededFault]
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

    class AuthorizationQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthorizationQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthorizationQuotaExceededFault]
      #
      attr_reader :data
    end

    class BatchDeleteRequestSizeExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BatchDeleteRequestSizeExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BatchDeleteRequestSizeExceededFault]
      #
      attr_reader :data
    end

    class BatchModifyClusterSnapshotsLimitExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BatchModifyClusterSnapshotsLimitExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BatchModifyClusterSnapshotsLimitExceededFault]
      #
      attr_reader :data
    end

    class BucketNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BucketNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BucketNotFoundFault]
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

    class ClusterOnLatestRevisionFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterOnLatestRevisionFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterOnLatestRevisionFault]
      #
      attr_reader :data
    end

    class ClusterParameterGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterParameterGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterParameterGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ClusterParameterGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterParameterGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterParameterGroupNotFoundFault]
      #
      attr_reader :data
    end

    class ClusterParameterGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterParameterGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterParameterGroupQuotaExceededFault]
      #
      attr_reader :data
    end

    class ClusterQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterQuotaExceededFault]
      #
      attr_reader :data
    end

    class ClusterSecurityGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterSecurityGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterSecurityGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ClusterSecurityGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterSecurityGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterSecurityGroupNotFoundFault]
      #
      attr_reader :data
    end

    class ClusterSecurityGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterSecurityGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterSecurityGroupQuotaExceededFault]
      #
      attr_reader :data
    end

    class ClusterSnapshotAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterSnapshotAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterSnapshotAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ClusterSnapshotNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterSnapshotNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterSnapshotNotFoundFault]
      #
      attr_reader :data
    end

    class ClusterSnapshotQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterSnapshotQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterSnapshotQuotaExceededFault]
      #
      attr_reader :data
    end

    class ClusterSubnetGroupAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterSubnetGroupAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterSubnetGroupAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ClusterSubnetGroupNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterSubnetGroupNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterSubnetGroupNotFoundFault]
      #
      attr_reader :data
    end

    class ClusterSubnetGroupQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterSubnetGroupQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterSubnetGroupQuotaExceededFault]
      #
      attr_reader :data
    end

    class ClusterSubnetQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterSubnetQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterSubnetQuotaExceededFault]
      #
      attr_reader :data
    end

    class CopyToRegionDisabledFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CopyToRegionDisabledFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CopyToRegionDisabledFault]
      #
      attr_reader :data
    end

    class DependentServiceRequestThrottlingFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DependentServiceRequestThrottlingFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DependentServiceRequestThrottlingFault]
      #
      attr_reader :data
    end

    class DependentServiceUnavailableFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DependentServiceUnavailableFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DependentServiceUnavailableFault]
      #
      attr_reader :data
    end

    class EndpointAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointAlreadyExistsFault]
      #
      attr_reader :data
    end

    class EndpointAuthorizationAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointAuthorizationAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointAuthorizationAlreadyExistsFault]
      #
      attr_reader :data
    end

    class EndpointAuthorizationNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointAuthorizationNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointAuthorizationNotFoundFault]
      #
      attr_reader :data
    end

    class EndpointAuthorizationsPerClusterLimitExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointAuthorizationsPerClusterLimitExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointAuthorizationsPerClusterLimitExceededFault]
      #
      attr_reader :data
    end

    class EndpointNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointNotFoundFault]
      #
      attr_reader :data
    end

    class EndpointsPerAuthorizationLimitExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointsPerAuthorizationLimitExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointsPerAuthorizationLimitExceededFault]
      #
      attr_reader :data
    end

    class EndpointsPerClusterLimitExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointsPerClusterLimitExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointsPerClusterLimitExceededFault]
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

    class HsmClientCertificateAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HsmClientCertificateAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HsmClientCertificateAlreadyExistsFault]
      #
      attr_reader :data
    end

    class HsmClientCertificateNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HsmClientCertificateNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HsmClientCertificateNotFoundFault]
      #
      attr_reader :data
    end

    class HsmClientCertificateQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HsmClientCertificateQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HsmClientCertificateQuotaExceededFault]
      #
      attr_reader :data
    end

    class HsmConfigurationAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HsmConfigurationAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HsmConfigurationAlreadyExistsFault]
      #
      attr_reader :data
    end

    class HsmConfigurationNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HsmConfigurationNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HsmConfigurationNotFoundFault]
      #
      attr_reader :data
    end

    class HsmConfigurationQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HsmConfigurationQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HsmConfigurationQuotaExceededFault]
      #
      attr_reader :data
    end

    class InProgressTableRestoreQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InProgressTableRestoreQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InProgressTableRestoreQuotaExceededFault]
      #
      attr_reader :data
    end

    class IncompatibleOrderableOptions < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncompatibleOrderableOptions.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncompatibleOrderableOptions]
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

    class InsufficientS3BucketPolicyFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientS3BucketPolicyFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientS3BucketPolicyFault]
      #
      attr_reader :data
    end

    class InvalidAuthenticationProfileRequestFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAuthenticationProfileRequestFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAuthenticationProfileRequestFault]
      #
      attr_reader :data
    end

    class InvalidAuthorizationStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAuthorizationStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAuthorizationStateFault]
      #
      attr_reader :data
    end

    class InvalidClusterParameterGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClusterParameterGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClusterParameterGroupStateFault]
      #
      attr_reader :data
    end

    class InvalidClusterSecurityGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClusterSecurityGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClusterSecurityGroupStateFault]
      #
      attr_reader :data
    end

    class InvalidClusterSnapshotScheduleStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClusterSnapshotScheduleStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClusterSnapshotScheduleStateFault]
      #
      attr_reader :data
    end

    class InvalidClusterSnapshotStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClusterSnapshotStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClusterSnapshotStateFault]
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

    class InvalidClusterSubnetGroupStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClusterSubnetGroupStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClusterSubnetGroupStateFault]
      #
      attr_reader :data
    end

    class InvalidClusterSubnetStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClusterSubnetStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClusterSubnetStateFault]
      #
      attr_reader :data
    end

    class InvalidClusterTrackFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClusterTrackFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClusterTrackFault]
      #
      attr_reader :data
    end

    class InvalidDataShareFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDataShareFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDataShareFault]
      #
      attr_reader :data
    end

    class InvalidElasticIpFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidElasticIpFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidElasticIpFault]
      #
      attr_reader :data
    end

    class InvalidEndpointStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEndpointStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEndpointStateFault]
      #
      attr_reader :data
    end

    class InvalidHsmClientCertificateStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidHsmClientCertificateStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidHsmClientCertificateStateFault]
      #
      attr_reader :data
    end

    class InvalidHsmConfigurationStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidHsmConfigurationStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidHsmConfigurationStateFault]
      #
      attr_reader :data
    end

    class InvalidNamespaceFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNamespaceFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNamespaceFault]
      #
      attr_reader :data
    end

    class InvalidReservedNodeStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidReservedNodeStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidReservedNodeStateFault]
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

    class InvalidRetentionPeriodFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRetentionPeriodFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRetentionPeriodFault]
      #
      attr_reader :data
    end

    class InvalidS3BucketNameFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidS3BucketNameFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidS3BucketNameFault]
      #
      attr_reader :data
    end

    class InvalidS3KeyPrefixFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidS3KeyPrefixFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidS3KeyPrefixFault]
      #
      attr_reader :data
    end

    class InvalidScheduleFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidScheduleFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidScheduleFault]
      #
      attr_reader :data
    end

    class InvalidScheduledActionFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidScheduledActionFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidScheduledActionFault]
      #
      attr_reader :data
    end

    class InvalidSnapshotCopyGrantStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSnapshotCopyGrantStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSnapshotCopyGrantStateFault]
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

    class InvalidSubscriptionStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSubscriptionStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSubscriptionStateFault]
      #
      attr_reader :data
    end

    class InvalidTableRestoreArgumentFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTableRestoreArgumentFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTableRestoreArgumentFault]
      #
      attr_reader :data
    end

    class InvalidTagFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagFault]
      #
      attr_reader :data
    end

    class InvalidUsageLimitFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidUsageLimitFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidUsageLimitFault]
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

    class LimitExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LimitExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LimitExceededFault]
      #
      attr_reader :data
    end

    class NumberOfNodesPerClusterLimitExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NumberOfNodesPerClusterLimitExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NumberOfNodesPerClusterLimitExceededFault]
      #
      attr_reader :data
    end

    class NumberOfNodesQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NumberOfNodesQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NumberOfNodesQuotaExceededFault]
      #
      attr_reader :data
    end

    class PartnerNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PartnerNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PartnerNotFoundFault]
      #
      attr_reader :data
    end

    class ReservedNodeAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedNodeAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedNodeAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ReservedNodeAlreadyMigratedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedNodeAlreadyMigratedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedNodeAlreadyMigratedFault]
      #
      attr_reader :data
    end

    class ReservedNodeExchangeNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedNodeExchangeNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedNodeExchangeNotFoundFault]
      #
      attr_reader :data
    end

    class ReservedNodeNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedNodeNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedNodeNotFoundFault]
      #
      attr_reader :data
    end

    class ReservedNodeOfferingNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedNodeOfferingNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedNodeOfferingNotFoundFault]
      #
      attr_reader :data
    end

    class ReservedNodeQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedNodeQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedNodeQuotaExceededFault]
      #
      attr_reader :data
    end

    class ResizeNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResizeNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResizeNotFoundFault]
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

    class ScheduleDefinitionTypeUnsupportedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ScheduleDefinitionTypeUnsupportedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ScheduleDefinitionTypeUnsupportedFault]
      #
      attr_reader :data
    end

    class ScheduledActionAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ScheduledActionAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ScheduledActionAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ScheduledActionNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ScheduledActionNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ScheduledActionNotFoundFault]
      #
      attr_reader :data
    end

    class ScheduledActionQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ScheduledActionQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ScheduledActionQuotaExceededFault]
      #
      attr_reader :data
    end

    class ScheduledActionTypeUnsupportedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ScheduledActionTypeUnsupportedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ScheduledActionTypeUnsupportedFault]
      #
      attr_reader :data
    end

    class SnapshotCopyAlreadyDisabledFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotCopyAlreadyDisabledFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotCopyAlreadyDisabledFault]
      #
      attr_reader :data
    end

    class SnapshotCopyAlreadyEnabledFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotCopyAlreadyEnabledFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotCopyAlreadyEnabledFault]
      #
      attr_reader :data
    end

    class SnapshotCopyDisabledFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotCopyDisabledFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotCopyDisabledFault]
      #
      attr_reader :data
    end

    class SnapshotCopyGrantAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotCopyGrantAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotCopyGrantAlreadyExistsFault]
      #
      attr_reader :data
    end

    class SnapshotCopyGrantNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotCopyGrantNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotCopyGrantNotFoundFault]
      #
      attr_reader :data
    end

    class SnapshotCopyGrantQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotCopyGrantQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotCopyGrantQuotaExceededFault]
      #
      attr_reader :data
    end

    class SnapshotScheduleAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotScheduleAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotScheduleAlreadyExistsFault]
      #
      attr_reader :data
    end

    class SnapshotScheduleNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotScheduleNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotScheduleNotFoundFault]
      #
      attr_reader :data
    end

    class SnapshotScheduleQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotScheduleQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotScheduleQuotaExceededFault]
      #
      attr_reader :data
    end

    class SnapshotScheduleUpdateInProgressFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotScheduleUpdateInProgressFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotScheduleUpdateInProgressFault]
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

    class SubscriptionEventIdNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubscriptionEventIdNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubscriptionEventIdNotFoundFault]
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

    class SubscriptionSeverityNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubscriptionSeverityNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubscriptionSeverityNotFoundFault]
      #
      attr_reader :data
    end

    class TableLimitExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TableLimitExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TableLimitExceededFault]
      #
      attr_reader :data
    end

    class TableRestoreNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TableRestoreNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TableRestoreNotFoundFault]
      #
      attr_reader :data
    end

    class TagLimitExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagLimitExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagLimitExceededFault]
      #
      attr_reader :data
    end

    class UnauthorizedOperation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnauthorizedOperation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnauthorizedOperation]
      #
      attr_reader :data
    end

    class UnauthorizedPartnerIntegrationFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnauthorizedPartnerIntegrationFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnauthorizedPartnerIntegrationFault]
      #
      attr_reader :data
    end

    class UnknownSnapshotCopyRegionFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnknownSnapshotCopyRegionFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnknownSnapshotCopyRegionFault]
      #
      attr_reader :data
    end

    class UnsupportedOperationFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedOperationFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedOperationFault]
      #
      attr_reader :data
    end

    class UnsupportedOptionFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedOptionFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedOptionFault]
      #
      attr_reader :data
    end

    class UsageLimitAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UsageLimitAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UsageLimitAlreadyExistsFault]
      #
      attr_reader :data
    end

    class UsageLimitNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UsageLimitNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UsageLimitNotFoundFault]
      #
      attr_reader :data
    end

  end
end
