# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SES
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "AccountSendingPausedException" => "AccountSendingPausedException",
        "AlreadyExists" => "AlreadyExistsException",
        "CannotDelete" => "CannotDeleteException",
        "ConfigurationSetAlreadyExists" => "ConfigurationSetAlreadyExistsException",
        "ConfigurationSetDoesNotExist" => "ConfigurationSetDoesNotExistException",
        "ConfigurationSetSendingPausedException" => "ConfigurationSetSendingPausedException",
        "CustomVerificationEmailInvalidContent" => "CustomVerificationEmailInvalidContentException",
        "CustomVerificationEmailTemplateAlreadyExists" => "CustomVerificationEmailTemplateAlreadyExistsException",
        "CustomVerificationEmailTemplateDoesNotExist" => "CustomVerificationEmailTemplateDoesNotExistException",
        "EventDestinationAlreadyExists" => "EventDestinationAlreadyExistsException",
        "EventDestinationDoesNotExist" => "EventDestinationDoesNotExistException",
        "FromEmailAddressNotVerified" => "FromEmailAddressNotVerifiedException",
        "InvalidCloudWatchDestination" => "InvalidCloudWatchDestinationException",
        "InvalidConfigurationSet" => "InvalidConfigurationSetException",
        "InvalidDeliveryOptions" => "InvalidDeliveryOptionsException",
        "InvalidFirehoseDestination" => "InvalidFirehoseDestinationException",
        "InvalidLambdaFunction" => "InvalidLambdaFunctionException",
        "InvalidPolicy" => "InvalidPolicyException",
        "InvalidRenderingParameter" => "InvalidRenderingParameterException",
        "InvalidS3Configuration" => "InvalidS3ConfigurationException",
        "InvalidSNSDestination" => "InvalidSNSDestinationException",
        "InvalidSnsTopic" => "InvalidSnsTopicException",
        "InvalidTemplate" => "InvalidTemplateException",
        "InvalidTrackingOptions" => "InvalidTrackingOptionsException",
        "LimitExceeded" => "LimitExceededException",
        "MailFromDomainNotVerifiedException" => "MailFromDomainNotVerifiedException",
        "MessageRejected" => "MessageRejected",
        "MissingRenderingAttribute" => "MissingRenderingAttributeException",
        "ProductionAccessNotGranted" => "ProductionAccessNotGrantedException",
        "RuleDoesNotExist" => "RuleDoesNotExistException",
        "RuleSetDoesNotExist" => "RuleSetDoesNotExistException",
        "TemplateDoesNotExist" => "TemplateDoesNotExistException",
        "TrackingOptionsAlreadyExistsException" => "TrackingOptionsAlreadyExistsException",
        "TrackingOptionsDoesNotExistException" => "TrackingOptionsDoesNotExistException"
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

    class AccountSendingPausedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccountSendingPausedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccountSendingPausedException]
      #
      attr_reader :data
    end

    class AlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AlreadyExistsException]
      #
      attr_reader :data
    end

    class CannotDeleteException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CannotDeleteException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CannotDeleteException]
      #
      attr_reader :data
    end

    class ConfigurationSetAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConfigurationSetAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConfigurationSetAlreadyExistsException]
      #
      attr_reader :data
    end

    class ConfigurationSetDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConfigurationSetDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConfigurationSetDoesNotExistException]
      #
      attr_reader :data
    end

    class ConfigurationSetSendingPausedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConfigurationSetSendingPausedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConfigurationSetSendingPausedException]
      #
      attr_reader :data
    end

    class CustomVerificationEmailInvalidContentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomVerificationEmailInvalidContentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomVerificationEmailInvalidContentException]
      #
      attr_reader :data
    end

    class CustomVerificationEmailTemplateAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomVerificationEmailTemplateAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomVerificationEmailTemplateAlreadyExistsException]
      #
      attr_reader :data
    end

    class CustomVerificationEmailTemplateDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomVerificationEmailTemplateDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomVerificationEmailTemplateDoesNotExistException]
      #
      attr_reader :data
    end

    class EventDestinationAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EventDestinationAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EventDestinationAlreadyExistsException]
      #
      attr_reader :data
    end

    class EventDestinationDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EventDestinationDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EventDestinationDoesNotExistException]
      #
      attr_reader :data
    end

    class FromEmailAddressNotVerifiedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FromEmailAddressNotVerifiedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FromEmailAddressNotVerifiedException]
      #
      attr_reader :data
    end

    class InvalidCloudWatchDestinationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCloudWatchDestinationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCloudWatchDestinationException]
      #
      attr_reader :data
    end

    class InvalidConfigurationSetException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidConfigurationSetException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidConfigurationSetException]
      #
      attr_reader :data
    end

    class InvalidDeliveryOptionsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeliveryOptionsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeliveryOptionsException]
      #
      attr_reader :data
    end

    class InvalidFirehoseDestinationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFirehoseDestinationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFirehoseDestinationException]
      #
      attr_reader :data
    end

    class InvalidLambdaFunctionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLambdaFunctionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLambdaFunctionException]
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

    class InvalidRenderingParameterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRenderingParameterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRenderingParameterException]
      #
      attr_reader :data
    end

    class InvalidS3ConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidS3ConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidS3ConfigurationException]
      #
      attr_reader :data
    end

    class InvalidSNSDestinationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSNSDestinationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSNSDestinationException]
      #
      attr_reader :data
    end

    class InvalidSnsTopicException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSnsTopicException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSnsTopicException]
      #
      attr_reader :data
    end

    class InvalidTemplateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTemplateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTemplateException]
      #
      attr_reader :data
    end

    class InvalidTrackingOptionsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTrackingOptionsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTrackingOptionsException]
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

    class MailFromDomainNotVerifiedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MailFromDomainNotVerifiedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MailFromDomainNotVerifiedException]
      #
      attr_reader :data
    end

    class MessageRejected < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MessageRejected.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MessageRejected]
      #
      attr_reader :data
    end

    class MissingRenderingAttributeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MissingRenderingAttributeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MissingRenderingAttributeException]
      #
      attr_reader :data
    end

    class ProductionAccessNotGrantedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ProductionAccessNotGrantedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ProductionAccessNotGrantedException]
      #
      attr_reader :data
    end

    class RuleDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RuleDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RuleDoesNotExistException]
      #
      attr_reader :data
    end

    class RuleSetDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RuleSetDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RuleSetDoesNotExistException]
      #
      attr_reader :data
    end

    class TemplateDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TemplateDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TemplateDoesNotExistException]
      #
      attr_reader :data
    end

    class TrackingOptionsAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TrackingOptionsAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TrackingOptionsAlreadyExistsException]
      #
      attr_reader :data
    end

    class TrackingOptionsDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TrackingOptionsDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TrackingOptionsDoesNotExistException]
      #
      attr_reader :data
    end

  end
end
