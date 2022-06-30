# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudTrail
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

    class CloudTrailARNInvalidException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudTrailARNInvalidException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudTrailARNInvalidException]
      #
      attr_reader :data
    end

    class CloudTrailAccessNotEnabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudTrailAccessNotEnabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudTrailAccessNotEnabledException]
      #
      attr_reader :data
    end

    class CloudTrailInvalidClientTokenIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudTrailInvalidClientTokenIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudTrailInvalidClientTokenIdException]
      #
      attr_reader :data
    end

    class CloudWatchLogsDeliveryUnavailableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudWatchLogsDeliveryUnavailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudWatchLogsDeliveryUnavailableException]
      #
      attr_reader :data
    end

    class ConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConflictException]
      #
      attr_reader :data
    end

    class EventDataStoreARNInvalidException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EventDataStoreARNInvalidException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EventDataStoreARNInvalidException]
      #
      attr_reader :data
    end

    class EventDataStoreAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EventDataStoreAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EventDataStoreAlreadyExistsException]
      #
      attr_reader :data
    end

    class EventDataStoreMaxLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EventDataStoreMaxLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EventDataStoreMaxLimitExceededException]
      #
      attr_reader :data
    end

    class EventDataStoreNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EventDataStoreNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EventDataStoreNotFoundException]
      #
      attr_reader :data
    end

    class EventDataStoreTerminationProtectedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EventDataStoreTerminationProtectedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EventDataStoreTerminationProtectedException]
      #
      attr_reader :data
    end

    class InactiveEventDataStoreException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InactiveEventDataStoreException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InactiveEventDataStoreException]
      #
      attr_reader :data
    end

    class InactiveQueryException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InactiveQueryException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InactiveQueryException]
      #
      attr_reader :data
    end

    class InsightNotEnabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsightNotEnabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsightNotEnabledException]
      #
      attr_reader :data
    end

    class InsufficientDependencyServiceAccessPermissionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientDependencyServiceAccessPermissionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientDependencyServiceAccessPermissionException]
      #
      attr_reader :data
    end

    class InsufficientEncryptionPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientEncryptionPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientEncryptionPolicyException]
      #
      attr_reader :data
    end

    class InsufficientS3BucketPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientS3BucketPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientS3BucketPolicyException]
      #
      attr_reader :data
    end

    class InsufficientSnsTopicPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientSnsTopicPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientSnsTopicPolicyException]
      #
      attr_reader :data
    end

    class InvalidCloudWatchLogsLogGroupArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCloudWatchLogsLogGroupArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCloudWatchLogsLogGroupArnException]
      #
      attr_reader :data
    end

    class InvalidCloudWatchLogsRoleArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCloudWatchLogsRoleArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCloudWatchLogsRoleArnException]
      #
      attr_reader :data
    end

    class InvalidDateRangeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDateRangeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDateRangeException]
      #
      attr_reader :data
    end

    class InvalidEventCategoryException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEventCategoryException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEventCategoryException]
      #
      attr_reader :data
    end

    class InvalidEventDataStoreStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEventDataStoreStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEventDataStoreStatusException]
      #
      attr_reader :data
    end

    class InvalidEventSelectorsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEventSelectorsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEventSelectorsException]
      #
      attr_reader :data
    end

    class InvalidHomeRegionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidHomeRegionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidHomeRegionException]
      #
      attr_reader :data
    end

    class InvalidInsightSelectorsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInsightSelectorsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInsightSelectorsException]
      #
      attr_reader :data
    end

    class InvalidKmsKeyIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidKmsKeyIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidKmsKeyIdException]
      #
      attr_reader :data
    end

    class InvalidLookupAttributesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLookupAttributesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLookupAttributesException]
      #
      attr_reader :data
    end

    class InvalidMaxResultsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidMaxResultsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidMaxResultsException]
      #
      attr_reader :data
    end

    class InvalidNextTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNextTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNextTokenException]
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

    class InvalidParameterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidParameterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidParameterException]
      #
      attr_reader :data
    end

    class InvalidQueryStatementException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidQueryStatementException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidQueryStatementException]
      #
      attr_reader :data
    end

    class InvalidQueryStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidQueryStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidQueryStatusException]
      #
      attr_reader :data
    end

    class InvalidS3BucketNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidS3BucketNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidS3BucketNameException]
      #
      attr_reader :data
    end

    class InvalidS3PrefixException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidS3PrefixException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidS3PrefixException]
      #
      attr_reader :data
    end

    class InvalidSnsTopicNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSnsTopicNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSnsTopicNameException]
      #
      attr_reader :data
    end

    class InvalidTagParameterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagParameterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagParameterException]
      #
      attr_reader :data
    end

    class InvalidTimeRangeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTimeRangeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTimeRangeException]
      #
      attr_reader :data
    end

    class InvalidTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTokenException]
      #
      attr_reader :data
    end

    class InvalidTrailNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTrailNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTrailNameException]
      #
      attr_reader :data
    end

    class KmsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KmsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KmsException]
      #
      attr_reader :data
    end

    class KmsKeyDisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KmsKeyDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KmsKeyDisabledException]
      #
      attr_reader :data
    end

    class KmsKeyNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KmsKeyNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KmsKeyNotFoundException]
      #
      attr_reader :data
    end

    class MaxConcurrentQueriesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxConcurrentQueriesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxConcurrentQueriesException]
      #
      attr_reader :data
    end

    class MaximumNumberOfTrailsExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumNumberOfTrailsExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumNumberOfTrailsExceededException]
      #
      attr_reader :data
    end

    class NotOrganizationMasterAccountException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotOrganizationMasterAccountException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotOrganizationMasterAccountException]
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

    class OrganizationNotInAllFeaturesModeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationNotInAllFeaturesModeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationNotInAllFeaturesModeException]
      #
      attr_reader :data
    end

    class OrganizationsNotInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationsNotInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationsNotInUseException]
      #
      attr_reader :data
    end

    class QueryIdNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::QueryIdNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::QueryIdNotFoundException]
      #
      attr_reader :data
    end

    class ResourceNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotFoundException]
      #
      attr_reader :data
    end

    class ResourceTypeNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceTypeNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceTypeNotSupportedException]
      #
      attr_reader :data
    end

    class S3BucketDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::S3BucketDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::S3BucketDoesNotExistException]
      #
      attr_reader :data
    end

    class TagsLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagsLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagsLimitExceededException]
      #
      attr_reader :data
    end

    class TrailAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TrailAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TrailAlreadyExistsException]
      #
      attr_reader :data
    end

    class TrailNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TrailNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TrailNotFoundException]
      #
      attr_reader :data
    end

    class TrailNotProvidedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TrailNotProvidedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TrailNotProvidedException]
      #
      attr_reader :data
    end

    class UnsupportedOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedOperationException]
      #
      attr_reader :data
    end

  end
end
