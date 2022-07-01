# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointSMSVoice
  module Types

    # The resource specified in your request already exists.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The input you provided is invalid.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that defines a message that contains text formatted using Amazon Pinpoint Voice Instructions markup.
    #
    # @!attribute text
    #   The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
    #
    #   @return [String]
    #
    CallInstructionsMessageType = ::Struct.new(
      :text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that contains information about an event destination that sends data to Amazon CloudWatch Logs.
    #
    # @!attribute iam_role_arn
    #   The Amazon Resource Name (ARN) of an Amazon Identity and Access Management (IAM) role that is able to write event data to an Amazon CloudWatch destination.
    #
    #   @return [String]
    #
    # @!attribute log_group_arn
    #   The name of the Amazon CloudWatch Log Group that you want to record events in.
    #
    #   @return [String]
    #
    CloudWatchLogsDestination = ::Struct.new(
      :iam_role_arn,
      :log_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Create a new event destination in a configuration set.
    #
    # @!attribute configuration_set_name
    #   ConfigurationSetName
    #
    #   @return [String]
    #
    # @!attribute event_destination
    #   An object that defines a single event destination.
    #
    #   @return [EventDestinationDefinition]
    #
    # @!attribute event_destination_name
    #   A name that identifies the event destination.
    #
    #   @return [String]
    #
    CreateConfigurationSetEventDestinationInput = ::Struct.new(
      :configuration_set_name,
      :event_destination,
      :event_destination_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An empty object that indicates that the event destination was created successfully.
    #
    CreateConfigurationSetEventDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to create a new configuration set.
    #
    # @!attribute configuration_set_name
    #   The name that you want to give the configuration set.
    #
    #   @return [String]
    #
    CreateConfigurationSetInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An empty object that indicates that the configuration set was successfully created.
    #
    CreateConfigurationSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_name
    #   ConfigurationSetName
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   EventDestinationName
    #
    #   @return [String]
    #
    DeleteConfigurationSetEventDestinationInput = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An empty object that indicates that the event destination was deleted successfully.
    #
    DeleteConfigurationSetEventDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_name
    #   ConfigurationSetName
    #
    #   @return [String]
    #
    DeleteConfigurationSetInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An empty object that indicates that the configuration set was deleted successfully.
    #
    DeleteConfigurationSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that defines an event destination.
    #
    # @!attribute cloud_watch_logs_destination
    #   An object that contains information about an event destination that sends data to Amazon CloudWatch Logs.
    #
    #   @return [CloudWatchLogsDestination]
    #
    # @!attribute enabled
    #   Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination.
    #
    #   @return [Boolean]
    #
    # @!attribute kinesis_firehose_destination
    #   An object that contains information about an event destination that sends data to Amazon Kinesis Data Firehose.
    #
    #   @return [KinesisFirehoseDestination]
    #
    # @!attribute matching_event_types
    #   An array of EventDestination objects. Each EventDestination object includes ARNs and other information that define an event destination.
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   A name that identifies the event destination configuration.
    #
    #   @return [String]
    #
    # @!attribute sns_destination
    #   An object that contains information about an event destination that sends data to Amazon SNS.
    #
    #   @return [SnsDestination]
    #
    EventDestination = ::Struct.new(
      :cloud_watch_logs_destination,
      :enabled,
      :kinesis_firehose_destination,
      :matching_event_types,
      :name,
      :sns_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # An object that defines a single event destination.
    #
    # @!attribute cloud_watch_logs_destination
    #   An object that contains information about an event destination that sends data to Amazon CloudWatch Logs.
    #
    #   @return [CloudWatchLogsDestination]
    #
    # @!attribute enabled
    #   Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination.
    #
    #   @return [Boolean]
    #
    # @!attribute kinesis_firehose_destination
    #   An object that contains information about an event destination that sends data to Amazon Kinesis Data Firehose.
    #
    #   @return [KinesisFirehoseDestination]
    #
    # @!attribute matching_event_types
    #   An array of EventDestination objects. Each EventDestination object includes ARNs and other information that define an event destination.
    #
    #   @return [Array<String>]
    #
    # @!attribute sns_destination
    #   An object that contains information about an event destination that sends data to Amazon SNS.
    #
    #   @return [SnsDestination]
    #
    EventDestinationDefinition = ::Struct.new(
      :cloud_watch_logs_destination,
      :enabled,
      :kinesis_firehose_destination,
      :matching_event_types,
      :sns_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # Includes enum constants for EventType
    #
    module EventType
      # No documentation available.
      #
      INITIATED_CALL = "INITIATED_CALL"

      # No documentation available.
      #
      RINGING = "RINGING"

      # No documentation available.
      #
      ANSWERED = "ANSWERED"

      # No documentation available.
      #
      COMPLETED_CALL = "COMPLETED_CALL"

      # No documentation available.
      #
      BUSY = "BUSY"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      NO_ANSWER = "NO_ANSWER"
    end

    # @!attribute configuration_set_name
    #   ConfigurationSetName
    #
    #   @return [String]
    #
    GetConfigurationSetEventDestinationsInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that contains information about an event destination.
    #
    # @!attribute event_destinations
    #   An array of EventDestination objects. Each EventDestination object includes ARNs and other information that define an event destination.
    #
    #   @return [Array<EventDestination>]
    #
    GetConfigurationSetEventDestinationsOutput = ::Struct.new(
      :event_destinations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that contains information about an event destination that sends data to Amazon Kinesis Data Firehose.
    #
    # @!attribute delivery_stream_arn
    #   The Amazon Resource Name (ARN) of an IAM role that can write data to an Amazon Kinesis Data Firehose stream.
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose destination that you want to use in the event destination.
    #
    #   @return [String]
    #
    KinesisFirehoseDestination = ::Struct.new(
      :delivery_stream_arn,
      :iam_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # There are too many instances of the specified resource type.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   A token returned from a previous call to the API that indicates the position in the list of results.
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   Used to specify the number of items that should be returned in the response.
    #
    #   @return [String]
    #
    ListConfigurationSetsInput = ::Struct.new(
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that contains information about the configuration sets for your account in the current region.
    #
    # @!attribute configuration_sets
    #   An object that contains a list of configuration sets for your account in the current region.
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   A token returned from a previous call to ListConfigurationSets to indicate the position in the list of configuration sets.
    #
    #   @return [String]
    #
    ListConfigurationSetsOutput = ::Struct.new(
      :configuration_sets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The resource you attempted to access doesn't exist.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that defines a message that contains unformatted text.
    #
    # @!attribute language_code
    #   The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
    #
    #   @return [String]
    #
    # @!attribute text
    #   The plain (not SSML-formatted) text to deliver to the recipient.
    #
    #   @return [String]
    #
    # @!attribute voice_id
    #   The name of the voice that you want to use to deliver the message. For a complete list of supported voices, see the Amazon Polly Developer Guide.
    #
    #   @return [String]
    #
    PlainTextMessageType = ::Struct.new(
      :language_code,
      :text,
      :voice_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that defines a message that contains SSML-formatted text.
    #
    # @!attribute language_code
    #   The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
    #
    #   @return [String]
    #
    # @!attribute text
    #   The SSML-formatted text to deliver to the recipient.
    #
    #   @return [String]
    #
    # @!attribute voice_id
    #   The name of the voice that you want to use to deliver the message. For a complete list of supported voices, see the Amazon Polly Developer Guide.
    #
    #   @return [String]
    #
    SSMLMessageType = ::Struct.new(
      :language_code,
      :text,
      :voice_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # SendVoiceMessageRequest
    #
    # @!attribute caller_id
    #   The phone number that appears on recipients' devices when they receive the message.
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   The name of the configuration set that you want to use to send the message.
    #
    #   @return [String]
    #
    # @!attribute content
    #   An object that contains a voice message and information about the recipient that you want to send it to.
    #
    #   @return [VoiceMessageContent]
    #
    # @!attribute destination_phone_number
    #   The phone number that you want to send the voice message to.
    #
    #   @return [String]
    #
    # @!attribute origination_phone_number
    #   The phone number that Amazon Pinpoint should use to send the voice message. This isn't necessarily the phone number that appears on recipients' devices when they receive the message, because you can specify a CallerId parameter in the request.
    #
    #   @return [String]
    #
    SendVoiceMessageInput = ::Struct.new(
      :caller_id,
      :configuration_set_name,
      :content,
      :destination_phone_number,
      :origination_phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that that contains the Message ID of a Voice message that was sent successfully.
    #
    # @!attribute message_id
    #   A unique identifier for the voice message.
    #
    #   @return [String]
    #
    SendVoiceMessageOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that contains information about an event destination that sends data to Amazon SNS.
    #
    # @!attribute topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish events to.
    #
    #   @return [String]
    #
    SnsDestination = ::Struct.new(
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # You've issued too many requests to the resource. Wait a few minutes, and then try again.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # UpdateConfigurationSetEventDestinationRequest
    #
    # @!attribute configuration_set_name
    #   ConfigurationSetName
    #
    #   @return [String]
    #
    # @!attribute event_destination
    #   An object that defines a single event destination.
    #
    #   @return [EventDestinationDefinition]
    #
    # @!attribute event_destination_name
    #   EventDestinationName
    #
    #   @return [String]
    #
    UpdateConfigurationSetEventDestinationInput = ::Struct.new(
      :configuration_set_name,
      :event_destination,
      :event_destination_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An empty object that indicates that the event destination was updated successfully.
    #
    UpdateConfigurationSetEventDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An object that contains a voice message and information about the recipient that you want to send it to.
    #
    # @!attribute call_instructions_message
    #   An object that defines a message that contains text formatted using Amazon Pinpoint Voice Instructions markup.
    #
    #   @return [CallInstructionsMessageType]
    #
    # @!attribute plain_text_message
    #   An object that defines a message that contains unformatted text.
    #
    #   @return [PlainTextMessageType]
    #
    # @!attribute ssml_message
    #   An object that defines a message that contains SSML-formatted text.
    #
    #   @return [SSMLMessageType]
    #
    VoiceMessageContent = ::Struct.new(
      :call_instructions_message,
      :plain_text_message,
      :ssml_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
