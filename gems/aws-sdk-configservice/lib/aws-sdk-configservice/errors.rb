# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConfigService
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

    class ConformancePackTemplateValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConformancePackTemplateValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConformancePackTemplateValidationException]
      #
      attr_reader :data
    end

    class InsufficientDeliveryPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientDeliveryPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientDeliveryPolicyException]
      #
      attr_reader :data
    end

    class InsufficientPermissionsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientPermissionsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientPermissionsException]
      #
      attr_reader :data
    end

    class InvalidConfigurationRecorderNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidConfigurationRecorderNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidConfigurationRecorderNameException]
      #
      attr_reader :data
    end

    class InvalidDeliveryChannelNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeliveryChannelNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeliveryChannelNameException]
      #
      attr_reader :data
    end

    class InvalidExpressionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidExpressionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidExpressionException]
      #
      attr_reader :data
    end

    class InvalidLimitException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLimitException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLimitException]
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

    class InvalidRecordingGroupException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRecordingGroupException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRecordingGroupException]
      #
      attr_reader :data
    end

    class InvalidResultTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResultTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResultTokenException]
      #
      attr_reader :data
    end

    class InvalidRoleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRoleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRoleException]
      #
      attr_reader :data
    end

    class InvalidS3KeyPrefixException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidS3KeyPrefixException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidS3KeyPrefixException]
      #
      attr_reader :data
    end

    class InvalidS3KmsKeyArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidS3KmsKeyArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidS3KmsKeyArnException]
      #
      attr_reader :data
    end

    class InvalidSNSTopicARNException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSNSTopicARNException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSNSTopicARNException]
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

    class LastDeliveryChannelDeleteFailedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LastDeliveryChannelDeleteFailedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LastDeliveryChannelDeleteFailedException]
      #
      attr_reader :data
    end

    class LimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LimitExceededException]
      #
      attr_reader :data
    end

    class MaxActiveResourcesExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxActiveResourcesExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxActiveResourcesExceededException]
      #
      attr_reader :data
    end

    class MaxNumberOfConfigRulesExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxNumberOfConfigRulesExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxNumberOfConfigRulesExceededException]
      #
      attr_reader :data
    end

    class MaxNumberOfConfigurationRecordersExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxNumberOfConfigurationRecordersExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxNumberOfConfigurationRecordersExceededException]
      #
      attr_reader :data
    end

    class MaxNumberOfConformancePacksExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxNumberOfConformancePacksExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxNumberOfConformancePacksExceededException]
      #
      attr_reader :data
    end

    class MaxNumberOfDeliveryChannelsExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxNumberOfDeliveryChannelsExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxNumberOfDeliveryChannelsExceededException]
      #
      attr_reader :data
    end

    class MaxNumberOfOrganizationConfigRulesExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxNumberOfOrganizationConfigRulesExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxNumberOfOrganizationConfigRulesExceededException]
      #
      attr_reader :data
    end

    class MaxNumberOfOrganizationConformancePacksExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxNumberOfOrganizationConformancePacksExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxNumberOfOrganizationConformancePacksExceededException]
      #
      attr_reader :data
    end

    class MaxNumberOfRetentionConfigurationsExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxNumberOfRetentionConfigurationsExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxNumberOfRetentionConfigurationsExceededException]
      #
      attr_reader :data
    end

    class NoAvailableConfigurationRecorderException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoAvailableConfigurationRecorderException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoAvailableConfigurationRecorderException]
      #
      attr_reader :data
    end

    class NoAvailableDeliveryChannelException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoAvailableDeliveryChannelException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoAvailableDeliveryChannelException]
      #
      attr_reader :data
    end

    class NoAvailableOrganizationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoAvailableOrganizationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoAvailableOrganizationException]
      #
      attr_reader :data
    end

    class NoRunningConfigurationRecorderException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoRunningConfigurationRecorderException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoRunningConfigurationRecorderException]
      #
      attr_reader :data
    end

    class NoSuchBucketException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchBucketException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchBucketException]
      #
      attr_reader :data
    end

    class NoSuchConfigRuleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchConfigRuleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchConfigRuleException]
      #
      attr_reader :data
    end

    class NoSuchConfigRuleInConformancePackException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchConfigRuleInConformancePackException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchConfigRuleInConformancePackException]
      #
      attr_reader :data
    end

    class NoSuchConfigurationAggregatorException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchConfigurationAggregatorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchConfigurationAggregatorException]
      #
      attr_reader :data
    end

    class NoSuchConfigurationRecorderException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchConfigurationRecorderException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchConfigurationRecorderException]
      #
      attr_reader :data
    end

    class NoSuchConformancePackException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchConformancePackException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchConformancePackException]
      #
      attr_reader :data
    end

    class NoSuchDeliveryChannelException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchDeliveryChannelException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchDeliveryChannelException]
      #
      attr_reader :data
    end

    class NoSuchOrganizationConfigRuleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchOrganizationConfigRuleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchOrganizationConfigRuleException]
      #
      attr_reader :data
    end

    class NoSuchOrganizationConformancePackException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchOrganizationConformancePackException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchOrganizationConformancePackException]
      #
      attr_reader :data
    end

    class NoSuchRemediationConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchRemediationConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchRemediationConfigurationException]
      #
      attr_reader :data
    end

    class NoSuchRemediationExceptionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchRemediationExceptionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchRemediationExceptionException]
      #
      attr_reader :data
    end

    class NoSuchRetentionConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchRetentionConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchRetentionConfigurationException]
      #
      attr_reader :data
    end

    class OrganizationAccessDeniedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationAccessDeniedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationAccessDeniedException]
      #
      attr_reader :data
    end

    class OrganizationAllFeaturesNotEnabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationAllFeaturesNotEnabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationAllFeaturesNotEnabledException]
      #
      attr_reader :data
    end

    class OrganizationConformancePackTemplateValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationConformancePackTemplateValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationConformancePackTemplateValidationException]
      #
      attr_reader :data
    end

    class OversizedConfigurationItemException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OversizedConfigurationItemException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OversizedConfigurationItemException]
      #
      attr_reader :data
    end

    class RemediationInProgressException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RemediationInProgressException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RemediationInProgressException]
      #
      attr_reader :data
    end

    class ResourceConcurrentModificationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceConcurrentModificationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceConcurrentModificationException]
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

    class ResourceNotDiscoveredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotDiscoveredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotDiscoveredException]
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
