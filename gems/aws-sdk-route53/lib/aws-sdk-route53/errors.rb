# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53
  module Errors
    def self.error_code(resp)
      if !(200..299).cover?(resp.status)
        body = resp.body.read
        resp.body.rewind
        xml = Hearth::XML.parse(body) unless body.empty?
        return unless xml
        return unless xml.name == 'ErrorResponse'
        xml = xml.at('Error')
        if xml
          xml.text_at('Code')
        end
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

    class CidrBlockInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CidrBlockInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CidrBlockInUseException]
      #
      attr_reader :data
    end

    class CidrCollectionAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CidrCollectionAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CidrCollectionAlreadyExistsException]
      #
      attr_reader :data
    end

    class CidrCollectionInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CidrCollectionInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CidrCollectionInUseException]
      #
      attr_reader :data
    end

    class CidrCollectionVersionMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CidrCollectionVersionMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CidrCollectionVersionMismatchException]
      #
      attr_reader :data
    end

    class ConcurrentModification < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConcurrentModification.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConcurrentModification]
      #
      attr_reader :data
    end

    class ConflictingDomainExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConflictingDomainExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConflictingDomainExists]
      #
      attr_reader :data
    end

    class ConflictingTypes < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConflictingTypes.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConflictingTypes]
      #
      attr_reader :data
    end

    class DNSSECNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DNSSECNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DNSSECNotFound]
      #
      attr_reader :data
    end

    class DelegationSetAlreadyCreated < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DelegationSetAlreadyCreated.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DelegationSetAlreadyCreated]
      #
      attr_reader :data
    end

    class DelegationSetAlreadyReusable < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DelegationSetAlreadyReusable.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DelegationSetAlreadyReusable]
      #
      attr_reader :data
    end

    class DelegationSetInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DelegationSetInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DelegationSetInUse]
      #
      attr_reader :data
    end

    class DelegationSetNotAvailable < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DelegationSetNotAvailable.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DelegationSetNotAvailable]
      #
      attr_reader :data
    end

    class DelegationSetNotReusable < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DelegationSetNotReusable.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DelegationSetNotReusable]
      #
      attr_reader :data
    end

    class HealthCheckAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HealthCheckAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HealthCheckAlreadyExists]
      #
      attr_reader :data
    end

    class HealthCheckInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HealthCheckInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HealthCheckInUse]
      #
      attr_reader :data
    end

    class HealthCheckVersionMismatch < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HealthCheckVersionMismatch.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HealthCheckVersionMismatch]
      #
      attr_reader :data
    end

    class HostedZoneAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HostedZoneAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HostedZoneAlreadyExists]
      #
      attr_reader :data
    end

    class HostedZoneNotEmpty < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HostedZoneNotEmpty.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HostedZoneNotEmpty]
      #
      attr_reader :data
    end

    class HostedZoneNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HostedZoneNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HostedZoneNotFound]
      #
      attr_reader :data
    end

    class HostedZoneNotPrivate < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HostedZoneNotPrivate.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HostedZoneNotPrivate]
      #
      attr_reader :data
    end

    class HostedZonePartiallyDelegated < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HostedZonePartiallyDelegated.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HostedZonePartiallyDelegated]
      #
      attr_reader :data
    end

    class IncompatibleVersion < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncompatibleVersion.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncompatibleVersion]
      #
      attr_reader :data
    end

    class InsufficientCloudWatchLogsResourcePolicy < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientCloudWatchLogsResourcePolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientCloudWatchLogsResourcePolicy]
      #
      attr_reader :data
    end

    class InvalidArgument < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidArgument.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidArgument]
      #
      attr_reader :data
    end

    class InvalidChangeBatch < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidChangeBatch.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidChangeBatch]
      #
      attr_reader :data
    end

    class InvalidDomainName < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDomainName.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDomainName]
      #
      attr_reader :data
    end

    class InvalidInput < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInput.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInput]
      #
      attr_reader :data
    end

    class InvalidKMSArn < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidKMSArn.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidKMSArn]
      #
      attr_reader :data
    end

    class InvalidKeySigningKeyName < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidKeySigningKeyName.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidKeySigningKeyName]
      #
      attr_reader :data
    end

    class InvalidKeySigningKeyStatus < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidKeySigningKeyStatus.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidKeySigningKeyStatus]
      #
      attr_reader :data
    end

    class InvalidPaginationToken < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPaginationToken.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPaginationToken]
      #
      attr_reader :data
    end

    class InvalidSigningStatus < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSigningStatus.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSigningStatus]
      #
      attr_reader :data
    end

    class InvalidTrafficPolicyDocument < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTrafficPolicyDocument.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTrafficPolicyDocument]
      #
      attr_reader :data
    end

    class InvalidVPCId < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidVPCId.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidVPCId]
      #
      attr_reader :data
    end

    class KeySigningKeyAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KeySigningKeyAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KeySigningKeyAlreadyExists]
      #
      attr_reader :data
    end

    class KeySigningKeyInParentDSRecord < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KeySigningKeyInParentDSRecord.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KeySigningKeyInParentDSRecord]
      #
      attr_reader :data
    end

    class KeySigningKeyInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KeySigningKeyInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KeySigningKeyInUse]
      #
      attr_reader :data
    end

    class KeySigningKeyWithActiveStatusNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KeySigningKeyWithActiveStatusNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KeySigningKeyWithActiveStatusNotFound]
      #
      attr_reader :data
    end

    class LastVPCAssociation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LastVPCAssociation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LastVPCAssociation]
      #
      attr_reader :data
    end

    class LimitsExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LimitsExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LimitsExceeded]
      #
      attr_reader :data
    end

    class NoSuchChange < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchChange.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchChange]
      #
      attr_reader :data
    end

    class NoSuchCidrCollectionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchCidrCollectionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchCidrCollectionException]
      #
      attr_reader :data
    end

    class NoSuchCidrLocationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchCidrLocationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchCidrLocationException]
      #
      attr_reader :data
    end

    class NoSuchCloudWatchLogsLogGroup < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchCloudWatchLogsLogGroup.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchCloudWatchLogsLogGroup]
      #
      attr_reader :data
    end

    class NoSuchDelegationSet < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchDelegationSet.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchDelegationSet]
      #
      attr_reader :data
    end

    class NoSuchGeoLocation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchGeoLocation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchGeoLocation]
      #
      attr_reader :data
    end

    class NoSuchHealthCheck < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchHealthCheck.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchHealthCheck]
      #
      attr_reader :data
    end

    class NoSuchHostedZone < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchHostedZone.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchHostedZone]
      #
      attr_reader :data
    end

    class NoSuchKeySigningKey < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchKeySigningKey.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchKeySigningKey]
      #
      attr_reader :data
    end

    class NoSuchQueryLoggingConfig < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchQueryLoggingConfig.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchQueryLoggingConfig]
      #
      attr_reader :data
    end

    class NoSuchTrafficPolicy < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchTrafficPolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchTrafficPolicy]
      #
      attr_reader :data
    end

    class NoSuchTrafficPolicyInstance < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchTrafficPolicyInstance.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchTrafficPolicyInstance]
      #
      attr_reader :data
    end

    class NotAuthorizedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotAuthorizedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotAuthorizedException]
      #
      attr_reader :data
    end

    class PriorRequestNotComplete < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PriorRequestNotComplete.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PriorRequestNotComplete]
      #
      attr_reader :data
    end

    class PublicZoneVPCAssociation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PublicZoneVPCAssociation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PublicZoneVPCAssociation]
      #
      attr_reader :data
    end

    class QueryLoggingConfigAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::QueryLoggingConfigAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::QueryLoggingConfigAlreadyExists]
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

    class TooManyHealthChecks < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyHealthChecks.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyHealthChecks]
      #
      attr_reader :data
    end

    class TooManyHostedZones < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyHostedZones.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyHostedZones]
      #
      attr_reader :data
    end

    class TooManyKeySigningKeys < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyKeySigningKeys.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyKeySigningKeys]
      #
      attr_reader :data
    end

    class TooManyTrafficPolicies < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTrafficPolicies.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTrafficPolicies]
      #
      attr_reader :data
    end

    class TooManyTrafficPolicyInstances < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTrafficPolicyInstances.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTrafficPolicyInstances]
      #
      attr_reader :data
    end

    class TooManyTrafficPolicyVersionsForCurrentPolicy < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTrafficPolicyVersionsForCurrentPolicy.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTrafficPolicyVersionsForCurrentPolicy]
      #
      attr_reader :data
    end

    class TooManyVPCAssociationAuthorizations < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyVPCAssociationAuthorizations.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyVPCAssociationAuthorizations]
      #
      attr_reader :data
    end

    class TrafficPolicyAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TrafficPolicyAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TrafficPolicyAlreadyExists]
      #
      attr_reader :data
    end

    class TrafficPolicyInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TrafficPolicyInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TrafficPolicyInUse]
      #
      attr_reader :data
    end

    class TrafficPolicyInstanceAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TrafficPolicyInstanceAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TrafficPolicyInstanceAlreadyExists]
      #
      attr_reader :data
    end

    class VPCAssociationAuthorizationNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::VPCAssociationAuthorizationNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::VPCAssociationAuthorizationNotFound]
      #
      attr_reader :data
    end

    class VPCAssociationNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::VPCAssociationNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::VPCAssociationNotFound]
      #
      attr_reader :data
    end

  end
end
