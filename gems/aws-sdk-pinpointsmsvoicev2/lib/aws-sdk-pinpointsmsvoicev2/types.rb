# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointSMSVoiceV2
  module Types

    # <p>The request was denied because you don't have sufficient permissions to access the
    #             resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["INSUFFICIENT_ACCOUNT_REPUTATION", "ACCOUNT_DISABLED"]
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccessDeniedExceptionReason
    #
    module AccessDeniedExceptionReason
      # No documentation available.
      #
      INSUFFICIENT_ACCOUNT_REPUTATION = "INSUFFICIENT_ACCOUNT_REPUTATION"

      # No documentation available.
      #
      ACCOUNT_DISABLED = "ACCOUNT_DISABLED"
    end

    # <p>Displays the attributes associated with a single Amazon Web Services account.</p>
    #
    # @!attribute name
    #   <p>The name of the account attribute.</p>
    #
    #   Enum, one of: ["ACCOUNT_TIER"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value associated with the account attribute name.</p>
    #
    #   @return [String]
    #
    AccountAttribute = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccountAttributeName
    #
    module AccountAttributeName
      # No documentation available.
      #
      ACCOUNT_TIER = "ACCOUNT_TIER"
    end

    # <p>The current resource quotas associated with an Amazon Web Services account.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute to apply the account limit to.</p>
    #
    #   Enum, one of: ["PHONE_NUMBERS", "POOLS", "CONFIGURATION_SETS", "OPT_OUT_LISTS"]
    #
    #   @return [String]
    #
    # @!attribute used
    #   <p>The current amount that has been spent, in US dollars.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max
    #   <p>The Amazon Web Services set limit for that resource type, in US dollars.</p>
    #
    #   @return [Integer]
    #
    AccountLimit = ::Struct.new(
      :name,
      :used,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.used ||= 0
        self.max ||= 0
      end

    end

    # Includes enum constants for AccountLimitName
    #
    module AccountLimitName
      # No documentation available.
      #
      PHONE_NUMBERS = "PHONE_NUMBERS"

      # No documentation available.
      #
      POOLS = "POOLS"

      # No documentation available.
      #
      CONFIGURATION_SETS = "CONFIGURATION_SETS"

      # No documentation available.
      #
      OPT_OUT_LISTS = "OPT_OUT_LISTS"
    end

    # @!attribute pool_id
    #   <p>The pool to update with the new Identity. This value can be either the PoolId or
    #               PoolArn, and you can find these values using <a>DescribePools</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The origination identity to use, such as PhoneNumberId, PhoneNumberArn, SenderId, or
    #               SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for
    #               PhoneNumberId and PhoneNumberArn, while <a>DescribeSenderIds</a> can be used
    #               to get the values for SenderId and SenderIdArn.</p>
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of
    #               the origination identity.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    AssociateOriginationIdentityInput = ::Struct.new(
      :pool_id,
      :origination_identity,
      :iso_country_code,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the pool that is now associated with the origination
    #               identity.</p>
    #
    #   @return [String]
    #
    # @!attribute pool_id
    #   <p>The PoolId of the pool that is now associated with the origination identity.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or SenderIdArn of the origination identity.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or SenderId of the origination identity.</p>
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    #   @return [String]
    #
    AssociateOriginationIdentityOutput = ::Struct.new(
      :pool_arn,
      :pool_id,
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the destination configuration to use when publishing message sending events.
    #         </p>
    #
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Identity and Access Management (IAM) role
    #               that is able to write event data to an Amazon CloudWatch destination.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_arn
    #   <p>The name of the Amazon CloudWatch log group that you want to record events in. </p>
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

    # <p>The information for configuration sets that meet a specified criteria.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #
    #   Enum, one of: ["event-destination-name", "matching-event-types", "default-message-type", "default-sender-id"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #
    #   @return [Array<String>]
    #
    ConfigurationSetFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfigurationSetFilterName
    #
    module ConfigurationSetFilterName
      # No documentation available.
      #
      EVENT_DESTINATION_NAME = "event-destination-name"

      # No documentation available.
      #
      MATCHING_EVENT_TYPES = "matching-event-types"

      # No documentation available.
      #
      DEFAULT_MESSAGE_TYPE = "default-message-type"

      # No documentation available.
      #
      DEFAULT_SENDER_ID = "default-sender-id"
    end

    # <p>Information related to a given configuration set in your Amazon Web Services
    #             account.</p>
    #
    # @!attribute configuration_set_arn
    #   <p>The Resource Name (ARN) of the ConfigurationSet.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destinations
    #   <p>An array of EventDestination objects that describe any events to log and where to log
    #               them.</p>
    #
    #   @return [Array<EventDestination>]
    #
    # @!attribute default_message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute default_sender_id
    #   <p>The default sender ID used by the ConfigurationSet.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time when the ConfigurationSet was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    ConfigurationSetInformation = ::Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destinations,
      :default_message_type,
      :default_sender_id,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform
    #             more than one operation on the same resource at the same time or it could be that the
    #             requested action isn't valid for the current state or configuration of the
    #             resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["DELETION_PROTECTION_ENABLED", "DESTINATION_PHONE_NUMBER_NOT_VERIFIED", "DESTINATION_PHONE_NUMBER_OPTED_OUT", "EVENT_DESTINATION_MISMATCH", "KEYWORD_MISMATCH", "LAST_PHONE_NUMBER", "SELF_MANAGED_OPT_OUTS_MISMATCH", "MESSAGE_TYPE_MISMATCH", "NO_ORIGINATION_IDENTITIES_FOUND", "OPT_OUT_LIST_MISMATCH", "PHONE_NUMBER_ASSOCIATED_TO_POOL", "PHONE_NUMBER_NOT_ASSOCIATED_TO_POOL", "PHONE_NUMBER_NOT_IN_REGISTRATION_REGION", "RESOURCE_ALREADY_EXISTS", "RESOURCE_DELETION_NOT_ALLOWED", "RESOURCE_MODIFICATION_NOT_ALLOWED", "RESOURCE_NOT_ACTIVE", "RESOURCE_NOT_EMPTY", "TWO_WAY_CONFIG_MISMATCH"]
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource that caused the exception.</p>
    #
    #   Enum, one of: ["account", "phone-number", "sender-id", "pool", "configuration-set", "opt-out-list", "event-destination", "keyword", "opted-out-number", "registration"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The unique identifier of the request.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :reason,
      :resource_type,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConflictExceptionReason
    #
    module ConflictExceptionReason
      # No documentation available.
      #
      DELETION_PROTECTION_ENABLED = "DELETION_PROTECTION_ENABLED"

      # No documentation available.
      #
      DESTINATION_PHONE_NUMBER_NOT_VERIFIED = "DESTINATION_PHONE_NUMBER_NOT_VERIFIED"

      # No documentation available.
      #
      DESTINATION_PHONE_NUMBER_OPTED_OUT = "DESTINATION_PHONE_NUMBER_OPTED_OUT"

      # No documentation available.
      #
      EVENT_DESTINATION_MISMATCH = "EVENT_DESTINATION_MISMATCH"

      # No documentation available.
      #
      KEYWORD_MISMATCH = "KEYWORD_MISMATCH"

      # No documentation available.
      #
      LAST_PHONE_NUMBER = "LAST_PHONE_NUMBER"

      # No documentation available.
      #
      SELF_MANAGED_OPT_OUTS_MISMATCH = "SELF_MANAGED_OPT_OUTS_MISMATCH"

      # No documentation available.
      #
      MESSAGE_TYPE_MISMATCH = "MESSAGE_TYPE_MISMATCH"

      # No documentation available.
      #
      NO_ORIGINATION_IDENTITIES_FOUND = "NO_ORIGINATION_IDENTITIES_FOUND"

      # No documentation available.
      #
      OPT_OUT_LIST_MISMATCH = "OPT_OUT_LIST_MISMATCH"

      # No documentation available.
      #
      PHONE_NUMBER_ASSOCIATED_TO_POOL = "PHONE_NUMBER_ASSOCIATED_TO_POOL"

      # No documentation available.
      #
      PHONE_NUMBER_NOT_ASSOCIATED_TO_POOL = "PHONE_NUMBER_NOT_ASSOCIATED_TO_POOL"

      # No documentation available.
      #
      PHONE_NUMBER_NOT_IN_REGISTRATION_REGION = "PHONE_NUMBER_NOT_IN_REGISTRATION_REGION"

      # No documentation available.
      #
      RESOURCE_ALREADY_EXISTS = "RESOURCE_ALREADY_EXISTS"

      # No documentation available.
      #
      RESOURCE_DELETION_NOT_ALLOWED = "RESOURCE_DELETION_NOT_ALLOWED"

      # No documentation available.
      #
      RESOURCE_MODIFICATION_NOT_ALLOWED = "RESOURCE_MODIFICATION_NOT_ALLOWED"

      # No documentation available.
      #
      RESOURCE_NOT_ACTIVE = "RESOURCE_NOT_ACTIVE"

      # No documentation available.
      #
      RESOURCE_NOT_EMPTY = "RESOURCE_NOT_EMPTY"

      # No documentation available.
      #
      TWO_WAY_CONFIG_MISMATCH = "TWO_WAY_CONFIG_MISMATCH"
    end

    # @!attribute configuration_set_name
    #   <p>The name to use for the new configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of key and value pair tags that's associated with the new configuration set. </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    CreateConfigurationSetInput = ::Struct.new(
      :configuration_set_name,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the new configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of key and value pair tags that's associated with the configuration
    #               set.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute created_timestamp
    #   <p>The time when the configuration set was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    CreateConfigurationSetOutput = ::Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :tags,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_name
    #   <p>Either the name of the configuration set or the configuration set ARN to apply event
    #               logging to. The ConfigurateSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>The name that identifies the event destination.</p>
    #
    #   @return [String]
    #
    # @!attribute matching_event_types
    #   <p>An array of event types that determine which events to log. If "ALL" is used, then
    #                   Amazon Pinpoint logs every event type.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination for logging to Amazon
    #               CloudWatch logs.</p>
    #
    #   @return [CloudWatchLogsDestination]
    #
    # @!attribute kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Amazon
    #               Kinesis Data Firehose.</p>
    #
    #   @return [KinesisFirehoseDestination]
    #
    # @!attribute sns_destination
    #   <p>An object that contains information about an event destination for logging to Amazon SNS.</p>
    #
    #   @return [SnsDestination]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    CreateEventDestinationInput = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The ARN of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination
    #   <p>The details of the destination where events are logged.</p>
    #
    #   @return [EventDestination]
    #
    CreateEventDestinationOutput = ::Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The name of the new OptOutList.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the new OptOutList.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    CreateOptOutListInput = ::Struct.new(
      :opt_out_list_name,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) for the OptOutList.</p>
    #
    #   @return [String]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the new OptOutList.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the new OptOutList.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    CreateOptOutListOutput = ::Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :tags,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or
    #               SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for
    #               PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used
    #               to get the values for SenderId and SenderIdArn.</p>
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of
    #               the new pool.</p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the pool can't be deleted. You can
    #               change this value using the <a>UpdatePool</a> action.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the pool.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    CreatePoolInput = ::Struct.new(
      :origination_identity,
      :iso_country_code,
      :message_type,
      :deletion_protection_enabled,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) for the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute pool_id
    #   <p>The unique identifier for the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the pool.</p>
    #           <ul>
    #               <li>
    #                   <p>CREATING: The pool is currently being created and isn't yet available for
    #                       use.</p>
    #               </li>
    #               <li>
    #                   <p>ACTIVE: The pool is active and available for use.</p>
    #               </li>
    #               <li>
    #                   <p>DELETING: The pool is being deleted.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of message for the pool to use.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #
    #   @return [String]
    #
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins
    #               with HELP or STOP to one of your dedicated numbers, Amazon Pinpoint automatically
    #               replies with a customizable message and adds the end recipient to the OptOutList. When
    #               set to true you're responsible for responding to HELP and STOP requests. You're also
    #               responsible for tracking and honoring opt-out requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false.
    #           </p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the pool.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    CreatePoolOutput = ::Struct.new(
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :tags,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.two_way_enabled ||= false
        self.self_managed_opt_outs_enabled ||= false
        self.shared_routes_enabled ||= false
        self.deletion_protection_enabled ||= false
      end

    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set ARN that you want to
    #               delete. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #
    #   @return [String]
    #
    DeleteConfigurationSetInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the deleted configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destinations
    #   <p>An array of any EventDestination objects that were associated with the deleted
    #               configuration set.</p>
    #
    #   @return [Array<EventDestination>]
    #
    # @!attribute default_message_type
    #   <p>The default message type of the configuration set that was deleted.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute default_sender_id
    #   <p>The default Sender ID of the configuration set that was deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time that the deleted configuration set was created in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    DeleteConfigurationSetOutput = ::Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destinations,
      :default_message_type,
      :default_sender_id,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set Amazon Resource Name (ARN)
    #               to delete the default message type from. The ConfigurationSetName and
    #               ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a>
    #               action.</p>
    #
    #   @return [String]
    #
    DeleteDefaultMessageTypeInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The current message type for the configuration set.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    DeleteDefaultMessageTypeOutput = ::Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :message_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set Amazon Resource Name (ARN)
    #               to delete the default sender ID from. The ConfigurationSetName and ConfigurationSetArn
    #               can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #
    #   @return [String]
    #
    DeleteDefaultSenderIdInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute sender_id
    #   <p>The current sender ID for the configuration set.</p>
    #
    #   @return [String]
    #
    DeleteDefaultSenderIdOutput = ::Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :sender_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set's Amazon Resource Name
    #               (ARN) to remove the event destination from. The ConfigurateSetName and
    #               ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a>
    #               action.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>The name of the event destination to delete.</p>
    #
    #   @return [String]
    #
    DeleteEventDestinationInput = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set the event destination was deleted from.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination
    #   <p>The event destination object that was deleted.</p>
    #
    #   @return [EventDestination]
    #
    DeleteEventDestinationOutput = ::Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, PoolId or
    #               PoolArn. You can use <a>DescribePhoneNumbers</a> to find the values for
    #               PhoneNumberId and PhoneNumberArn and <a>DescribePools</a> to find the values
    #               of PoolId and PoolArn.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword
    #   <p>The keyword to delete.</p>
    #
    #   @return [String]
    #
    DeleteKeywordInput = ::Struct.new(
      :origination_identity,
      :keyword,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or PoolArn that the keyword was associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or PoolId that the keyword was associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword
    #   <p>The keyword that was deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword_message
    #   <p>The message that was associated with the deleted keyword.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword_action
    #   <p>The action that was associated with the deleted keyword.</p>
    #
    #   Enum, one of: ["AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"]
    #
    #   @return [String]
    #
    DeleteKeywordOutput = ::Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn of the OptOutList to delete. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and
    #               OptOutListArn.</p>
    #
    #   @return [String]
    #
    DeleteOptOutListInput = ::Struct.new(
      :opt_out_list_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) of the OptOutList that was removed.</p>
    #
    #   @return [String]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that was removed.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time when the OptOutList was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    DeleteOptOutListOutput = ::Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn to remove the phone number from.</p>
    #
    #   @return [String]
    #
    # @!attribute opted_out_number
    #   <p>The phone number, in E.164 format, to remove from the OptOutList.</p>
    #
    #   @return [String]
    #
    DeleteOptedOutNumberInput = ::Struct.new(
      :opt_out_list_name,
      :opted_out_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The OptOutListArn that the phone number was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute opt_out_list_name
    #   <p>The OptOutListName that the phone number was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute opted_out_number
    #   <p>The phone number that was removed from the OptOutList.</p>
    #
    #   @return [String]
    #
    # @!attribute opted_out_timestamp
    #   <p>The time that the number was removed at, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_user_opted_out
    #   <p>This is true if it was the end user who requested their phone number be removed.
    #           </p>
    #
    #   @return [Boolean]
    #
    DeleteOptedOutNumberOutput = ::Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.end_user_opted_out ||= false
      end

    end

    # @!attribute pool_id
    #   <p>The PoolId or PoolArn of the pool to delete. You can use <a>DescribePools</a> to find the values for PoolId and PoolArn .</p>
    #
    #   @return [String]
    #
    DeletePoolInput = ::Struct.new(
      :pool_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the pool that was deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute pool_id
    #   <p>The PoolId of the pool that was deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the pool.</p>
    #           <ul>
    #               <li>
    #                   <p>CREATING: The pool is currently being created and isn't yet available for
    #                       use.</p>
    #               </li>
    #               <li>
    #                   <p>ACTIVE: The pool is active and available for use.</p>
    #               </li>
    #               <li>
    #                   <p>DELETING: The pool is being deleted.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The message type that was associated with the deleted pool.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the TwoWayChannel.</p>
    #
    #   @return [String]
    #
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins
    #               with HELP or STOP to one of your dedicated numbers, Amazon Pinpoint automatically
    #               replies with a customizable message and adds the end recipient to the OptOutList. When
    #               set to true you're responsible for responding to HELP and STOP requests. You're also
    #               responsible for tracking and honoring opt-out requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that was associated with the deleted pool.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    DeletePoolOutput = ::Struct.new(
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.two_way_enabled ||= false
        self.self_managed_opt_outs_enabled ||= false
        self.shared_routes_enabled ||= false
      end

    end

    DeleteTextMessageSpendLimitOverrideInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit, in US dollars.</p>
    #
    #   @return [Integer]
    #
    DeleteTextMessageSpendLimitOverrideOutput = ::Struct.new(
      :monthly_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVoiceMessageSpendLimitOverrideInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit, in US dollars.</p>
    #
    #   @return [Integer]
    #
    DeleteVoiceMessageSpendLimitOverrideOutput = ::Struct.new(
      :monthly_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    DescribeAccountAttributesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_attributes
    #   <p>An array of AccountAttributes objects.</p>
    #
    #   @return [Array<AccountAttribute>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    DescribeAccountAttributesOutput = ::Struct.new(
      :account_attributes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    DescribeAccountLimitsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_limits
    #   <p>An array of AccountLimit objects that show the current spend limits.</p>
    #
    #   @return [Array<AccountLimit>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    DescribeAccountLimitsOutput = ::Struct.new(
      :account_limits,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_names
    #   <p>An array of strings. Each element can be either a ConfigurationSetName or
    #               ConfigurationSetArn.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of filters to apply to the results that are returned.</p>
    #
    #   @return [Array<ConfigurationSetFilter>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    DescribeConfigurationSetsInput = ::Struct.new(
      :configuration_set_names,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_sets
    #   <p>An array of ConfigurationSets objects.</p>
    #
    #   @return [Array<ConfigurationSetInformation>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    DescribeConfigurationSetsOutput = ::Struct.new(
      :configuration_sets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or
    #               SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for
    #               PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used
    #               to get the values for SenderId and SenderIdArn.</p>
    #
    #   @return [String]
    #
    # @!attribute keywords
    #   <p>An array of keywords to search for.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of keyword filters to filter the results.</p>
    #
    #   @return [Array<KeywordFilter>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    DescribeKeywordsInput = ::Struct.new(
      :origination_identity,
      :keywords,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or PoolArn that is associated with the OriginationIdentity. </p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or PoolId that is associated with the OriginationIdentity.</p>
    #
    #   @return [String]
    #
    # @!attribute keywords
    #   <p>An array of KeywordInformation objects that contain the results.</p>
    #
    #   @return [Array<KeywordInformation>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    DescribeKeywordsOutput = ::Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :keywords,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_names
    #   <p>The OptOutLists to show the details of. This is an array of strings that can be either
    #               the OptOutListName or OptOutListArn.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    DescribeOptOutListsInput = ::Struct.new(
      :opt_out_list_names,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_lists
    #   <p>An array of OptOutListInformation objects that contain the details for the requested
    #               OptOutLists.</p>
    #
    #   @return [Array<OptOutListInformation>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    DescribeOptOutListsOutput = ::Struct.new(
      :opt_out_lists,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn of the OptOutList. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and
    #               OptOutListArn.</p>
    #
    #   @return [String]
    #
    # @!attribute opted_out_numbers
    #   <p>An array of phone numbers to search for in the OptOutList.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of OptedOutFilter objects to filter the results on.</p>
    #
    #   @return [Array<OptedOutFilter>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    DescribeOptedOutNumbersInput = ::Struct.new(
      :opt_out_list_name,
      :opted_out_numbers,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) of the OptOutList.</p>
    #
    #   @return [String]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList.</p>
    #
    #   @return [String]
    #
    # @!attribute opted_out_numbers
    #   <p>An array of OptedOutNumbersInformation objects that provide information about the
    #               requested OptedOutNumbers.</p>
    #
    #   @return [Array<OptedOutNumberInformation>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    DescribeOptedOutNumbersOutput = ::Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_numbers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_ids
    #   <p>The unique identifier of phone numbers to find information about. This is an array of
    #               strings that can be either the PhoneNumberId or PhoneNumberArn.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of PhoneNumberFilter objects to filter the results.</p>
    #
    #   @return [Array<PhoneNumberFilter>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    DescribePhoneNumbersInput = ::Struct.new(
      :phone_number_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_numbers
    #   <p>An array of PhoneNumberInformation objects that contain the details for the requested
    #               phone numbers.</p>
    #
    #   @return [Array<PhoneNumberInformation>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    DescribePhoneNumbersOutput = ::Struct.new(
      :phone_numbers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pool_ids
    #   <p>The unique identifier of pools to find. This is an array of strings that can be either
    #               the PoolId or PoolArn.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>An array of PoolFilter objects to filter the results.</p>
    #
    #   @return [Array<PoolFilter>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    DescribePoolsInput = ::Struct.new(
      :pool_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pools
    #   <p>An array of PoolInformation objects that contain the details for the requested pools. </p>
    #
    #   @return [Array<PoolInformation>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    DescribePoolsOutput = ::Struct.new(
      :pools,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sender_ids
    #   <p>An array of SenderIdAndCountry objects to search for.</p>
    #
    #   @return [Array<SenderIdAndCountry>]
    #
    # @!attribute filters
    #   <p>An array of SenderIdFilter objects to filter the results.</p>
    #
    #   @return [Array<SenderIdFilter>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    DescribeSenderIdsInput = ::Struct.new(
      :sender_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sender_ids
    #   <p>An array of SernderIdInformation objects that contain the details for the requested
    #               SenderIds.</p>
    #
    #   @return [Array<SenderIdInformation>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    DescribeSenderIdsOutput = ::Struct.new(
      :sender_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    DescribeSpendLimitsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute spend_limits
    #   <p>An array of SpendLimit objects that contain the details for the requested spend
    #               limits.</p>
    #
    #   @return [Array<SpendLimit>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    DescribeSpendLimitsOutput = ::Struct.new(
      :spend_limits,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DestinationCountryParameterKey
    #
    module DestinationCountryParameterKey
      # No documentation available.
      #
      IN_TEMPLATE_ID = "IN_TEMPLATE_ID"

      # No documentation available.
      #
      IN_ENTITY_ID = "IN_ENTITY_ID"
    end

    # @!attribute pool_id
    #   <p>The unique identifier for the pool to disassociate with the origination identity. This
    #               value can be either the PoolId or PoolArn.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or
    #               SenderIdArn. You can use <a>DescribePhoneNumbers</a> find the values for
    #               PhoneNumberId and PhoneNumberArn, or use <a>DescribeSenderIds</a> to get the
    #               values for SenderId and SenderIdArn.</p>
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    DisassociateOriginationIdentityInput = ::Struct.new(
      :pool_id,
      :origination_identity,
      :iso_country_code,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute pool_id
    #   <p>The PoolId of the pool no longer associated with the origination identity.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or SenderIdArn of the origination identity.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or SenderId of the origination identity.</p>
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or
    #               region.</p>
    #
    #   @return [String]
    #
    DisassociateOriginationIdentityOutput = ::Struct.new(
      :pool_arn,
      :pool_id,
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an event destination.</p>
    #         <p>Event destinations are associated with configuration sets, which enable you to publish
    #             message sending events to
    #             Amazon
    #                 CloudWatch, Amazon Kinesis Data Firehose, or Amazon SNS.</p>
    #
    # @!attribute event_destination_name
    #   <p>The name of the EventDestination.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>When set to true events will be logged.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute matching_event_types
    #   <p>An array of event types that determine which events to log.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination that sends logging
    #               events to Amazon CloudWatch logs.</p>
    #
    #   @return [CloudWatchLogsDestination]
    #
    # @!attribute kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Amazon
    #               Kinesis Data Firehose.</p>
    #
    #   @return [KinesisFirehoseDestination]
    #
    # @!attribute sns_destination
    #   <p>An object that contains information about an event destination that sends logging
    #               events to Amazon SNS.</p>
    #
    #   @return [SnsDestination]
    #
    EventDestination = ::Struct.new(
      :event_destination_name,
      :enabled,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventType
    #
    module EventType
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      TEXT_ALL = "TEXT_ALL"

      # No documentation available.
      #
      TEXT_SENT = "TEXT_SENT"

      # No documentation available.
      #
      TEXT_PENDING = "TEXT_PENDING"

      # No documentation available.
      #
      TEXT_QUEUED = "TEXT_QUEUED"

      # No documentation available.
      #
      TEXT_SUCCESSFUL = "TEXT_SUCCESSFUL"

      # No documentation available.
      #
      TEXT_DELIVERED = "TEXT_DELIVERED"

      # No documentation available.
      #
      TEXT_INVALID = "TEXT_INVALID"

      # No documentation available.
      #
      TEXT_INVALID_MESSAGE = "TEXT_INVALID_MESSAGE"

      # No documentation available.
      #
      TEXT_UNREACHABLE = "TEXT_UNREACHABLE"

      # No documentation available.
      #
      TEXT_CARRIER_UNREACHABLE = "TEXT_CARRIER_UNREACHABLE"

      # No documentation available.
      #
      TEXT_BLOCKED = "TEXT_BLOCKED"

      # No documentation available.
      #
      TEXT_CARRIER_BLOCKED = "TEXT_CARRIER_BLOCKED"

      # No documentation available.
      #
      TEXT_SPAM = "TEXT_SPAM"

      # No documentation available.
      #
      TEXT_UNKNOWN = "TEXT_UNKNOWN"

      # No documentation available.
      #
      TEXT_TTL_EXPIRED = "TEXT_TTL_EXPIRED"

      # No documentation available.
      #
      VOICE_ALL = "VOICE_ALL"

      # No documentation available.
      #
      VOICE_INITIATED = "VOICE_INITIATED"

      # No documentation available.
      #
      VOICE_RINGING = "VOICE_RINGING"

      # No documentation available.
      #
      VOICE_ANSWERED = "VOICE_ANSWERED"

      # No documentation available.
      #
      VOICE_COMPLETED = "VOICE_COMPLETED"

      # No documentation available.
      #
      VOICE_BUSY = "VOICE_BUSY"

      # No documentation available.
      #
      VOICE_NO_ANSWER = "VOICE_NO_ANSWER"

      # No documentation available.
      #
      VOICE_FAILED = "VOICE_FAILED"

      # No documentation available.
      #
      VOICE_TTL_EXPIRED = "VOICE_TTL_EXPIRED"
    end

    # <p>The API encountered an unexpected error and couldn't complete the request. You might
    #             be able to successfully issue the request again in the future.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The unique identifier of the request.</p>
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeywordAction
    #
    module KeywordAction
      # No documentation available.
      #
      AUTOMATIC_RESPONSE = "AUTOMATIC_RESPONSE"

      # No documentation available.
      #
      OPT_OUT = "OPT_OUT"

      # No documentation available.
      #
      OPT_IN = "OPT_IN"
    end

    # <p>The information for keywords that meet a specified criteria.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #
    #   Enum, one of: ["keyword-action"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #
    #   @return [Array<String>]
    #
    KeywordFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeywordFilterName
    #
    module KeywordFilterName
      # No documentation available.
      #
      KEYWORD_ACTION = "keyword-action"
    end

    # <p>The information for all keywords in a pool.</p>
    #
    # @!attribute keyword
    #   <p>The keyword as a string.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword_message
    #   <p>A custom message that can be used with the keyword.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword_action
    #   <p>The action to perform for the keyword.</p>
    #
    #   Enum, one of: ["AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"]
    #
    #   @return [String]
    #
    KeywordInformation = ::Struct.new(
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the delivery stream Amazon Resource Name (ARN), and the ARN of the Identity and Access Management (IAM) role associated with an Kinesis Data Firehose event
    #             destination.</p>
    #         <p>Event destinations, such as Kinesis Data Firehose, are associated with configuration
    #             sets, which enable you to publish message sending events.</p>
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of an Amazon Identity and Access Management (IAM) role that is able to write
    #               event data to an Amazon Firehose destination.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery stream.</p>
    #
    #   @return [String]
    #
    KinesisFirehoseDestination = ::Struct.new(
      :iam_role_arn,
      :delivery_stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pool_id
    #   <p>The unique identifier for the pool. This value can be either the PoolId or
    #               PoolArn.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>An array of PoolOriginationIdentitiesFilter objects to filter the results..</p>
    #
    #   @return [Array<PoolOriginationIdentitiesFilter>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    #   @return [Integer]
    #
    ListPoolOriginationIdentitiesInput = ::Struct.new(
      :pool_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) for the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute pool_id
    #   <p>The unique PoolId of the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identities
    #   <p>An array of any OriginationIdentityMetadata objects.</p>
    #
    #   @return [Array<OriginationIdentityMetadata>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty
    #               then there are no more results.</p>
    #
    #   @return [String]
    #
    ListPoolOriginationIdentitiesOutput = ::Struct.new(
      :pool_arn,
      :pool_id,
      :origination_identities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to query for.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MessageType
    #
    module MessageType
      # No documentation available.
      #
      TRANSACTIONAL = "TRANSACTIONAL"

      # No documentation available.
      #
      PROMOTIONAL = "PROMOTIONAL"
    end

    # Includes enum constants for NumberCapability
    #
    module NumberCapability
      # No documentation available.
      #
      SMS = "SMS"

      # No documentation available.
      #
      VOICE = "VOICE"
    end

    # Includes enum constants for NumberStatus
    #
    module NumberStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      ASSOCIATING = "ASSOCIATING"

      # No documentation available.
      #
      DISASSOCIATING = "DISASSOCIATING"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # Includes enum constants for NumberType
    #
    module NumberType
      # No documentation available.
      #
      SHORT_CODE = "SHORT_CODE"

      # No documentation available.
      #
      LONG_CODE = "LONG_CODE"

      # No documentation available.
      #
      TOLL_FREE = "TOLL_FREE"

      # No documentation available.
      #
      TEN_DLC = "TEN_DLC"
    end

    # <p>The information for all OptOutList in an Amazon Web Services account.</p>
    #
    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) of the OptOutList.</p>
    #
    #   @return [String]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time when the OutOutList was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    OptOutListInformation = ::Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information for opted out numbers that meet a specified criteria.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #
    #   Enum, one of: ["end-user-opted-out"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array of values to filter for.</p>
    #
    #   @return [Array<String>]
    #
    OptedOutFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OptedOutFilterName
    #
    module OptedOutFilterName
      # No documentation available.
      #
      END_USER_OPTED_OUT = "end-user-opted-out"
    end

    # <p>The information for an opted out number in an Amazon Web Services account.</p>
    #
    # @!attribute opted_out_number
    #   <p>The phone number that is opted out.</p>
    #
    #   @return [String]
    #
    # @!attribute opted_out_timestamp
    #   <p>The time that the op tout occurred, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_user_opted_out
    #   <p>This is set to true if it was the end recipient that opted out.</p>
    #
    #   @return [Boolean]
    #
    OptedOutNumberInformation = ::Struct.new(
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.end_user_opted_out ||= false
      end

    end

    # <p>The metadata for an origination identity associated with a pool.</p>
    #
    # @!attribute origination_identity_arn
    #   <p>The Amazon Resource Name (ARN) associated with the origination identity.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The unique identifier of the origination identity.</p>
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute number_capabilities
    #   <p>Describes if the origination identity can be used for text messages, voice calls or
    #               both.</p>
    #
    #   @return [Array<String>]
    #
    OriginationIdentityMetadata = ::Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      :number_capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information for a phone number that meets a specified criteria.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #
    #   Enum, one of: ["status", "iso-country-code", "message-type", "number-capability", "number-type", "two-way-enabled", "self-managed-opt-outs-enabled", "opt-out-list-name", "deletion-protection-enabled"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #
    #   @return [Array<String>]
    #
    PhoneNumberFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PhoneNumberFilterName
    #
    module PhoneNumberFilterName
      # No documentation available.
      #
      STATUS = "status"

      # No documentation available.
      #
      ISO_COUNTRY_CODE = "iso-country-code"

      # No documentation available.
      #
      MESSAGE_TYPE = "message-type"

      # No documentation available.
      #
      NUMBER_CAPABILITY = "number-capability"

      # No documentation available.
      #
      NUMBER_TYPE = "number-type"

      # No documentation available.
      #
      TWO_WAY_ENABLED = "two-way-enabled"

      # No documentation available.
      #
      SELF_MANAGED_OPT_OUTS_ENABLED = "self-managed-opt-outs-enabled"

      # No documentation available.
      #
      OPT_OUT_LIST_NAME = "opt-out-list-name"

      # No documentation available.
      #
      DELETION_PROTECTION_ENABLED = "deletion-protection-enabled"
    end

    # <p>The information for a phone number in an Amazon Web Services account.</p>
    #
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) associated with the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_id
    #   <p>The unique identifier for the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number in E.164 format.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the phone number.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute number_capabilities
    #   <p>Describes if the origination identity can be used for text messages, voice calls or
    #               both.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute number_type
    #   <p>The type of phone number.</p>
    #
    #   Enum, one of: ["SHORT_CODE", "LONG_CODE", "TOLL_FREE", "TEN_DLC"]
    #
    #   @return [String]
    #
    # @!attribute monthly_leasing_price
    #   <p>The price, in US dollars, to lease the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients using the TwoWayChannelArn.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #
    #   @return [String]
    #
    # @!attribute self_managed_opt_outs_enabled
    #   <p>When set to false an end recipient sends a message that begins with HELP or STOP to
    #               one of your dedicated numbers, Amazon Pinpoint automatically replies with a
    #               customizable message and adds the end recipient to the OptOutList. When set to true
    #               you're responsible for responding to HELP and STOP requests. You're also responsible for
    #               tracking and honoring opt-out request. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html settings-account-sms-self-managed-opt-out">Self-managed opt-outs</a>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the phone number can't be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute pool_id
    #   <p>The unique identifier of the pool associated with the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    PhoneNumberInformation = ::Struct.new(
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      :pool_id,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.two_way_enabled ||= false
        self.self_managed_opt_outs_enabled ||= false
        self.deletion_protection_enabled ||= false
      end

    end

    # <p>The information for a pool that meets a specified criteria.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #
    #   Enum, one of: ["status", "message-type", "two-way-enabled", "self-managed-opt-outs-enabled", "opt-out-list-name", "shared-routes-enabled", "deletion-protection-enabled"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #
    #   @return [Array<String>]
    #
    PoolFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PoolFilterName
    #
    module PoolFilterName
      # No documentation available.
      #
      STATUS = "status"

      # No documentation available.
      #
      MESSAGE_TYPE = "message-type"

      # No documentation available.
      #
      TWO_WAY_ENABLED = "two-way-enabled"

      # No documentation available.
      #
      SELF_MANAGED_OPT_OUTS_ENABLED = "self-managed-opt-outs-enabled"

      # No documentation available.
      #
      OPT_OUT_LIST_NAME = "opt-out-list-name"

      # No documentation available.
      #
      SHARED_ROUTES_ENABLED = "shared-routes-enabled"

      # No documentation available.
      #
      DELETION_PROTECTION_ENABLED = "deletion-protection-enabled"
    end

    # <p>The information for a pool in an Amazon Web Services account.</p>
    #
    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) for the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute pool_id
    #   <p>The unique identifier for the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the pool.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute two_way_enabled
    #   <p>When set to true you can receive incoming text messages from your end recipients using
    #               the TwoWayChannelArn.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #
    #   @return [String]
    #
    # @!attribute self_managed_opt_outs_enabled
    #   <p>When set to false, an end recipient sends a message that begins with HELP or STOP to
    #               one of your dedicated numbers, Amazon Pinpoint automatically replies with a
    #               customizable message and adds the end recipient to the OptOutList. When set to true
    #               you're responsible for responding to HELP and STOP requests. You're also responsible for
    #               tracking and honoring opt-out requests. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html settings-account-sms-self-managed-opt-out">Self-managed opt-outs</a>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_routes_enabled
    #   <p>Allows you to enable shared routes on your pool.</p>
    #           <p>By default, this is set to <code>False</code>. If you set this value to
    #                   <code>True</code>, your messages are sent using phone numbers or sender IDs
    #               (depending on the country) that are shared with other Amazon Pinpoint users. In some
    #               countries, such as the United States, senders aren't allowed to use shared routes and
    #               must use a dedicated phone number or short code.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    PoolInformation = ::Struct.new(
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.two_way_enabled ||= false
        self.self_managed_opt_outs_enabled ||= false
        self.shared_routes_enabled ||= false
        self.deletion_protection_enabled ||= false
      end

    end

    # <p>Information about origination identities associated with a pool that meets a specified
    #             criteria.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #
    #   Enum, one of: ["iso-country-code", "number-capability"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #
    #   @return [Array<String>]
    #
    PoolOriginationIdentitiesFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PoolOriginationIdentitiesFilterName
    #
    module PoolOriginationIdentitiesFilterName
      # No documentation available.
      #
      ISO_COUNTRY_CODE = "iso-country-code"

      # No documentation available.
      #
      NUMBER_CAPABILITY = "number-capability"
    end

    # Includes enum constants for PoolStatus
    #
    module PoolStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or
    #               SenderIdArn. You can use <a>DescribePhoneNumbers</a> get the values for
    #               PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used
    #               to get the values for SenderId and SenderIdArn.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword
    #   <p>The new keyword to add.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword_message
    #   <p>The message associated with the keyword.</p>
    #           <ul>
    #               <li>
    #                   <p>AUTOMATIC_RESPONSE: A message is sent to the recipient.</p>
    #               </li>
    #               <li>
    #                   <p>OPT_OUT: Keeps the recipient from receiving future messages.</p>
    #               </li>
    #               <li>
    #                   <p>OPT_IN: The recipient wants to receive future messages.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute keyword_action
    #   <p>The action to perform for the new keyword when it is received.</p>
    #
    #   Enum, one of: ["AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"]
    #
    #   @return [String]
    #
    PutKeywordInput = ::Struct.new(
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or PoolArn that the keyword was associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or PoolId that the keyword was associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword
    #   <p>The keyword that was added.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword_message
    #   <p>The message associated with the keyword.</p>
    #
    #   @return [String]
    #
    # @!attribute keyword_action
    #   <p>The action to perform when the keyword is used.</p>
    #
    #   Enum, one of: ["AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"]
    #
    #   @return [String]
    #
    PutKeywordOutput = ::Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn to add the phone number to.</p>
    #
    #   @return [String]
    #
    # @!attribute opted_out_number
    #   <p>The phone number to add to the OptOutList in E.164 format.</p>
    #
    #   @return [String]
    #
    PutOptedOutNumberInput = ::Struct.new(
      :opt_out_list_name,
      :opted_out_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The OptOutListArn that the phone number was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute opt_out_list_name
    #   <p>The OptOutListName that the phone number was removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute opted_out_number
    #   <p>The phone number that was added to the OptOutList.</p>
    #
    #   @return [String]
    #
    # @!attribute opted_out_timestamp
    #   <p>The time that the phone number was added to the OptOutList, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_user_opted_out
    #   <p>This is true if it was the end user who requested their phone number be removed.
    #           </p>
    #
    #   @return [Boolean]
    #
    PutOptedOutNumberOutput = ::Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.end_user_opted_out ||= false
      end

    end

    # @!attribute phone_number_id
    #   <p>The PhoneNumberId or PhoneNumberArn of the phone number to release. You can use <a>DescribePhoneNumbers</a> to get the values for PhoneNumberId and
    #               PhoneNumberArn.</p>
    #
    #   @return [String]
    #
    ReleasePhoneNumberInput = ::Struct.new(
      :phone_number_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_arn
    #   <p>The PhoneNumberArn of the phone number that was released.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_id
    #   <p>The PhoneNumberId of the phone number that was released.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number that was released.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or
    #               region.</p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The message type that was associated with the phone number.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute number_capabilities
    #   <p>Specifies if the number could be used for text messages, voice, or both.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute number_type
    #   <p>The type of number that was released.</p>
    #
    #   Enum, one of: ["SHORT_CODE", "LONG_CODE", "TOLL_FREE", "TEN_DLC"]
    #
    #   @return [String]
    #
    # @!attribute monthly_leasing_price
    #   <p>The monthly price of the phone number, in US dollars.</p>
    #
    #   @return [String]
    #
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the TwoWayChannel.</p>
    #
    #   @return [String]
    #
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins
    #               with HELP or STOP to one of your dedicated numbers, Amazon Pinpoint automatically
    #               replies with a customizable message and adds the end recipient to the OptOutList. When
    #               set to true you're responsible for responding to HELP and STOP requests. You're also
    #               responsible for tracking and honoring opt-out requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that was associated with the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    ReleasePhoneNumberOutput = ::Struct.new(
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.two_way_enabled ||= false
        self.self_managed_opt_outs_enabled ||= false
      end

    end

    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute number_capabilities
    #   <p>Indicates if the phone number will be used for text messages, voice messages, or both. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute number_type
    #   <p>The type of phone number to request.</p>
    #
    #   Enum, one of: ["LONG_CODE", "TOLL_FREE", "TEN_DLC"]
    #
    #   @return [String]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList to associate with the phone number. You can use the
    #               OutOutListName or OptPutListArn.</p>
    #
    #   @return [String]
    #
    # @!attribute pool_id
    #   <p>The pool to associated with the phone number. You can use the PoolId or PoolArn. </p>
    #
    #   @return [String]
    #
    # @!attribute registration_id
    #   <p>Use this field to attach your phone number for an external registration
    #               process.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be
    #               deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associate with the requested phone number.
    #           </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    #   @return [String]
    #
    RequestPhoneNumberInput = ::Struct.new(
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :opt_out_list_name,
      :pool_id,
      :registration_id,
      :deletion_protection_enabled,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the requested phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_id
    #   <p>The unique identifier of the new phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The new phone number that was requested.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute number_capabilities
    #   <p>Indicates if the phone number will be used for text messages, voice messages or both.
    #           </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute number_type
    #   <p>The type of number that was released.</p>
    #
    #   Enum, one of: ["LONG_CODE", "TOLL_FREE", "TEN_DLC"]
    #
    #   @return [String]
    #
    # @!attribute monthly_leasing_price
    #   <p>The monthly price, in US dollars, to lease the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute two_way_channel_arn
    #   <p>The ARN used to identify the two way channel.</p>
    #
    #   @return [String]
    #
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins
    #               with HELP or STOP to one of your dedicated numbers, Amazon Pinpoint automatically
    #               replies with a customizable message and adds the end recipient to the OptOutList. When
    #               set to true you're responsible for responding to HELP and STOP requests. You're also
    #               responsible for tracking and honoring opt-out requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that is associated with the requested phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted.
    #           </p>
    #
    #   @return [Boolean]
    #
    # @!attribute pool_id
    #   <p>The unique identifier of the pool associated with the phone number </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the phone number.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    RequestPhoneNumberOutput = ::Struct.new(
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      :pool_id,
      :tags,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.two_way_enabled ||= false
        self.self_managed_opt_outs_enabled ||= false
        self.deletion_protection_enabled ||= false
      end

    end

    # Includes enum constants for RequestableNumberType
    #
    module RequestableNumberType
      # No documentation available.
      #
      LONG_CODE = "LONG_CODE"

      # No documentation available.
      #
      TOLL_FREE = "TOLL_FREE"

      # No documentation available.
      #
      TEN_DLC = "TEN_DLC"
    end

    # <p>A requested resource couldn't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource that caused the exception.</p>
    #
    #   Enum, one of: ["account", "phone-number", "sender-id", "pool", "configuration-set", "opt-out-list", "event-destination", "keyword", "opted-out-number", "registration"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The unique identifier of the resource.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_type,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      ACCOUNT = "account"

      # No documentation available.
      #
      PHONE_NUMBER = "phone-number"

      # No documentation available.
      #
      SENDER_ID = "sender-id"

      # No documentation available.
      #
      POOL = "pool"

      # No documentation available.
      #
      CONFIGURATION_SET = "configuration-set"

      # No documentation available.
      #
      OPT_OUT_LIST = "opt-out-list"

      # No documentation available.
      #
      EVENT_DESTINATION = "event-destination"

      # No documentation available.
      #
      KEYWORD = "keyword"

      # No documentation available.
      #
      OPTED_OUT_NUMBER = "opted-out-number"

      # No documentation available.
      #
      REGISTRATION = "registration"
    end

    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber,
    #               PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p>
    #
    #   @return [String]
    #
    # @!attribute message_body
    #   <p>The body of the text message.</p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of message. Valid values are
    #               TRANSACTIONAL
    #               for messages that are critical or time-sensitive and PROMOTIONAL for messages that
    #               aren't critical or time-sensitive.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute keyword
    #   <p>When you register a short code in the US, you must specify a program name. If you
    #               don’t have a US short code, omit this attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName
    #               or ConfigurationSetArn.</p>
    #
    #   @return [String]
    #
    # @!attribute max_price
    #   <p>The maximum amount that you want to spend, in US dollars, per each text message part.
    #               A text message can contain multiple parts.</p>
    #
    #   @return [String]
    #
    # @!attribute time_to_live
    #   <p>How long the text message is valid for. By default this is 72 hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event
    #               destination.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute destination_country_parameters
    #   <p>This field is used for any country-specific registration requirements. Currently, this
    #               setting is only used when you send messages to recipients in India using a sender ID.
    #               For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html">Special requirements for sending SMS messages to recipients in India</a>.
    #           </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end
    #               recipient.</p>
    #
    #   @return [Boolean]
    #
    SendTextMessageInput = ::Struct.new(
      :destination_phone_number,
      :origination_identity,
      :message_body,
      :message_type,
      :keyword,
      :configuration_set_name,
      :max_price,
      :time_to_live,
      :context,
      :destination_country_parameters,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.dry_run ||= false
      end

    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #
    #   @return [String]
    #
    SendTextMessageOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #
    #   @return [String]
    #
    # @!attribute origination_identity
    #   <p>The origination identity to use for the voice call. This can be the PhoneNumber,
    #               PhoneNumberId, PhoneNumberArn, PoolId, or PoolArn.</p>
    #
    #   @return [String]
    #
    # @!attribute message_body
    #   <p>The text to convert to a voice message.</p>
    #
    #   @return [String]
    #
    # @!attribute message_body_text_type
    #   <p>Specifies if the MessageBody field contains text or <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">speech synthesis
    #                   markup language (SSML)</a>.</p>
    #           <ul>
    #               <li>
    #                   <p>TEXT: This is the default value. When used the maximum character limit is
    #                       3000.</p>
    #               </li>
    #               <li>
    #                   <p>SSML: When used the maximum character limit is 6000 including SSML
    #                       tagging.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["TEXT", "SSML"]
    #
    #   @return [String]
    #
    # @!attribute voice_id
    #   <p>The voice for the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly</a>
    #               service to use. By default this is set to "MATTHEW".</p>
    #
    #   Enum, one of: ["AMY", "ASTRID", "BIANCA", "BRIAN", "CAMILA", "CARLA", "CARMEN", "CELINE", "CHANTAL", "CONCHITA", "CRISTIANO", "DORA", "EMMA", "ENRIQUE", "EWA", "FILIZ", "GERAINT", "GIORGIO", "GWYNETH", "HANS", "INES", "IVY", "JACEK", "JAN", "JOANNA", "JOEY", "JUSTIN", "KARL", "KENDRA", "KIMBERLY", "LEA", "LIV", "LOTTE", "LUCIA", "LUPE", "MADS", "MAJA", "MARLENE", "MATHIEU", "MATTHEW", "MAXIM", "MIA", "MIGUEL", "MIZUKI", "NAJA", "NICOLE", "PENELOPE", "RAVEENA", "RICARDO", "RUBEN", "RUSSELL", "SALLI", "SEOYEON", "TAKUMI", "TATYANA", "VICKI", "VITORIA", "ZEINA", "ZHIYU"]
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName
    #               or ConfigurationSetArn.</p>
    #
    #   @return [String]
    #
    # @!attribute max_price_per_minute
    #   <p>The maximum amount to spend per voice message, in US dollars.</p>
    #
    #   @return [String]
    #
    # @!attribute time_to_live
    #   <p>How long the voice message is valid for. By default this is 72 hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event
    #               destination.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end
    #               recipient.</p>
    #
    #   @return [Boolean]
    #
    SendVoiceMessageInput = ::Struct.new(
      :destination_phone_number,
      :origination_identity,
      :message_body,
      :message_body_text_type,
      :voice_id,
      :configuration_set_name,
      :max_price_per_minute,
      :time_to_live,
      :context,
      :dry_run,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.dry_run ||= false
      end

    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #
    #   @return [String]
    #
    SendVoiceMessageOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The alphanumeric sender ID in a specific country that you want to describe. For more
    #             information on sender IDs see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-awssupport-sender-id.html">Requesting
    #                 sender IDs for SMS messaging with Amazon Pinpoint
    #             </a> in the <i>Amazon Pinpoint User Guide</i>.</p>
    #
    # @!attribute sender_id
    #   <p>The unique identifier of the sender.</p>
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    #   @return [String]
    #
    SenderIdAndCountry = ::Struct.new(
      :sender_id,
      :iso_country_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information for a sender ID that meets a specified criteria.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #
    #   Enum, one of: ["sender-id", "iso-country-code", "message-type"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array of values to filter for.</p>
    #
    #   @return [Array<String>]
    #
    SenderIdFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SenderIdFilterName
    #
    module SenderIdFilterName
      # No documentation available.
      #
      SENDER_ID = "sender-id"

      # No documentation available.
      #
      ISO_COUNTRY_CODE = "iso-country-code"

      # No documentation available.
      #
      MESSAGE_TYPE = "message-type"
    end

    # <p>The information for all SenderIds in an Amazon Web Services account.</p>
    #
    # @!attribute sender_id_arn
    #   <p>The Amazon Resource Name (ARN) associated with the SenderId.</p>
    #
    #   @return [String]
    #
    # @!attribute sender_id
    #   <p>The alphanumeric sender ID in a specific country that you'd like to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute monthly_leasing_price
    #   <p>The monthly leasing price, in US dollars.</p>
    #
    #   @return [String]
    #
    SenderIdInformation = ::Struct.new(
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["CONFIGURATION_SETS_PER_ACCOUNT", "DAILY_DESTINATION_CALL_LIMIT", "EVENT_DESTINATIONS_PER_CONFIGURATION_SET", "KEYWORDS_PER_PHONE_NUMBER", "KEYWORDS_PER_POOL", "MONTHLY_SPEND_LIMIT_REACHED_FOR_TEXT", "MONTHLY_SPEND_LIMIT_REACHED_FOR_VOICE", "OPT_OUT_LISTS_PER_ACCOUNT", "ORIGINATION_IDENTITIES_PER_POOL", "PHONE_NUMBERS_PER_ACCOUNT", "PHONE_NUMBERS_PER_REGISTRATION", "POOLS_PER_ACCOUNT", "TAGS_PER_RESOURCE"]
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceQuotaExceededExceptionReason
    #
    module ServiceQuotaExceededExceptionReason
      # No documentation available.
      #
      CONFIGURATION_SETS_PER_ACCOUNT = "CONFIGURATION_SETS_PER_ACCOUNT"

      # No documentation available.
      #
      DAILY_DESTINATION_CALL_LIMIT = "DAILY_DESTINATION_CALL_LIMIT"

      # No documentation available.
      #
      EVENT_DESTINATIONS_PER_CONFIGURATION_SET = "EVENT_DESTINATIONS_PER_CONFIGURATION_SET"

      # No documentation available.
      #
      KEYWORDS_PER_PHONE_NUMBER = "KEYWORDS_PER_PHONE_NUMBER"

      # No documentation available.
      #
      KEYWORDS_PER_POOL = "KEYWORDS_PER_POOL"

      # No documentation available.
      #
      MONTHLY_SPEND_LIMIT_REACHED_FOR_TEXT = "MONTHLY_SPEND_LIMIT_REACHED_FOR_TEXT"

      # No documentation available.
      #
      MONTHLY_SPEND_LIMIT_REACHED_FOR_VOICE = "MONTHLY_SPEND_LIMIT_REACHED_FOR_VOICE"

      # No documentation available.
      #
      OPT_OUT_LISTS_PER_ACCOUNT = "OPT_OUT_LISTS_PER_ACCOUNT"

      # No documentation available.
      #
      ORIGINATION_IDENTITIES_PER_POOL = "ORIGINATION_IDENTITIES_PER_POOL"

      # No documentation available.
      #
      PHONE_NUMBERS_PER_ACCOUNT = "PHONE_NUMBERS_PER_ACCOUNT"

      # No documentation available.
      #
      PHONE_NUMBERS_PER_REGISTRATION = "PHONE_NUMBERS_PER_REGISTRATION"

      # No documentation available.
      #
      POOLS_PER_ACCOUNT = "POOLS_PER_ACCOUNT"

      # No documentation available.
      #
      TAGS_PER_RESOURCE = "TAGS_PER_RESOURCE"
    end

    # @!attribute configuration_set_name
    #   <p>The configuration set to update with a new default message type. This field can be the
    #               ConsigurationSetName or ConfigurationSetArn.</p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    SetDefaultMessageTypeInput = ::Struct.new(
      :configuration_set_name,
      :message_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the updated configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The new default message type of the configuration set.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    SetDefaultMessageTypeOutput = ::Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :message_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The configuration set to updated with a new default SenderId. This field can be the
    #               ConsigurationSetName or ConfigurationSetArn.</p>
    #
    #   @return [String]
    #
    # @!attribute sender_id
    #   <p>The current sender ID for the configuration set. When sending a text message to a
    #               destination country which supports SenderIds, the default sender ID on the configuration
    #               set specified on <a>SendTextMessage</a> will be used if no dedicated
    #               origination phone numbers or registered SenderIds are available in your account, instead
    #               of a generic sender ID, such as 'NOTICE'.</p>
    #
    #   @return [String]
    #
    SetDefaultSenderIdInput = ::Struct.new(
      :configuration_set_name,
      :sender_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the updated configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute sender_id
    #   <p>The default sender ID to set for the ConfigurationSet.</p>
    #
    #   @return [String]
    #
    SetDefaultSenderIdOutput = ::Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :sender_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monthly_limit
    #   <p>The new monthly limit to enforce on text messages.</p>
    #
    #   @return [Integer]
    #
    SetTextMessageSpendLimitOverrideInput = ::Struct.new(
      :monthly_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit to enforce on sending text messages.</p>
    #
    #   @return [Integer]
    #
    SetTextMessageSpendLimitOverrideOutput = ::Struct.new(
      :monthly_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monthly_limit
    #   <p>The new monthly limit to enforce on voice messages.</p>
    #
    #   @return [Integer]
    #
    SetVoiceMessageSpendLimitOverrideInput = ::Struct.new(
      :monthly_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit to enforce on sending voice messages.</p>
    #
    #   @return [Integer]
    #
    SetVoiceMessageSpendLimitOverrideOutput = ::Struct.new(
      :monthly_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that defines an Amazon SNS destination for events. You can use
    #                 Amazon SNS to send notification when certain events occur.</p>
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to
    #               publish events to.</p>
    #
    #   @return [String]
    #
    SnsDestination = ::Struct.new(
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the current Amazon Pinpoint monthly spend limits for sending voice and
    #             text messages. For more information on increasing your monthly spend limit, see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-awssupport-spend-threshold.html">
    #                 Requesting increases to your monthly SMS spending quota for Amazon Pinpoint
    #             </a> in the <i>Amazon Pinpoint User Guide</i>. </p>
    #
    # @!attribute name
    #   <p>The name for the SpendLimit.</p>
    #
    #   Enum, one of: ["TEXT_MESSAGE_MONTHLY_SPEND_LIMIT", "VOICE_MESSAGE_MONTHLY_SPEND_LIMIT"]
    #
    #   @return [String]
    #
    # @!attribute enforced_limit
    #   <p>The maximum amount of money, in US dollars, that you want to be able to spend sending
    #               messages each month. This value has to be less than or equal to the amount in
    #                   <code>MaxLimit</code>. To use this custom limit, <code>Overridden</code> must be set
    #               to true.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_limit
    #   <p> The maximum amount of money that you are able to spend to send messages each month,
    #               in US dollars.</p>
    #
    #   @return [Integer]
    #
    # @!attribute overridden
    #   <p>When set to <code>True</code>, the value that has been specified in the
    #                   <code>EnforcedLimit</code> is used to determine the maximum amount in US dollars
    #               that can be spent to send messages each month, in US dollars.</p>
    #
    #   @return [Boolean]
    #
    SpendLimit = ::Struct.new(
      :name,
      :enforced_limit,
      :max_limit,
      :overridden,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enforced_limit ||= 0
        self.max_limit ||= 0
        self.overridden ||= false
      end

    end

    # Includes enum constants for SpendLimitName
    #
    module SpendLimitName
      # No documentation available.
      #
      TEXT_MESSAGE_MONTHLY_SPEND_LIMIT = "TEXT_MESSAGE_MONTHLY_SPEND_LIMIT"

      # No documentation available.
      #
      VOICE_MESSAGE_MONTHLY_SPEND_LIMIT = "VOICE_MESSAGE_MONTHLY_SPEND_LIMIT"
    end

    # <p>The list of tags to be added to the specified topic.</p>
    #
    # @!attribute key
    #   <p>The key identifier, or name, of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The string value associated with the key of the tag.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error that occurred because too many requests were sent during a certain amount of
    #             time.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>An array of tag key values to unassociate with the resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The configuration set to update with the new event destination. Valid values for this
    #               can be the ConfigurationSetName or ConfigurationSetArn.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>The name to use for the event destination.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>When set to true logging is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute matching_event_types
    #   <p>An array of event types that determine which events to log.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination that sends data to
    #                   CloudWatch Logs.</p>
    #
    #   @return [CloudWatchLogsDestination]
    #
    # @!attribute kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Kinesis Data Firehose.</p>
    #
    #   @return [KinesisFirehoseDestination]
    #
    # @!attribute sns_destination
    #   <p>An object that contains information about an event destination that sends data to
    #                   Amazon SNS.</p>
    #
    #   @return [SnsDestination]
    #
    UpdateEventDestinationInput = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :enabled,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) for the ConfigurationSet that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination
    #   <p>An EventDestination object containing the details of where events will be logged.
    #           </p>
    #
    #   @return [EventDestination]
    #
    UpdateEventDestinationOutput = ::Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_id
    #   <p>The unique identifier of the phone number. Valid values for this field can be either
    #               the PhoneNumberId or PhoneNumberArn.</p>
    #
    #   @return [String]
    #
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #
    #   @return [String]
    #
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins
    #               with HELP or STOP to one of your dedicated numbers, Amazon Pinpoint automatically
    #               replies with a customizable message and adds the end recipient to the OptOutList. When
    #               set to true you're responsible for responding to HELP and STOP requests. You're also
    #               responsible for tracking and honoring opt-out requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute opt_out_list_name
    #   <p>The OptOutList to add the phone number to. Valid values for this field can be either
    #               the OutOutListName or OutOutListArn.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted.
    #           </p>
    #
    #   @return [Boolean]
    #
    UpdatePhoneNumberInput = ::Struct.new(
      :phone_number_id,
      :two_way_enabled,
      :two_way_channel_arn,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the updated phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_id
    #   <p>The unique identifier of the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number that was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute number_capabilities
    #   <p>Specifies if the number could be used for text messages, voice or both.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute number_type
    #   <p>The type of number that was requested.</p>
    #
    #   Enum, one of: ["SHORT_CODE", "LONG_CODE", "TOLL_FREE", "TEN_DLC"]
    #
    #   @return [String]
    #
    # @!attribute monthly_leasing_price
    #   <p>The monthly leasing price of the phone number, in US dollars.</p>
    #
    #   @return [String]
    #
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #
    #   @return [String]
    #
    # @!attribute self_managed_opt_outs_enabled
    #   <p>This is true if self managed opt-out are enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the phone number can't be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    UpdatePhoneNumberOutput = ::Struct.new(
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.two_way_enabled ||= false
        self.self_managed_opt_outs_enabled ||= false
        self.deletion_protection_enabled ||= false
      end

    end

    # @!attribute pool_id
    #   <p>The unique identifier of the pool to update. Valid values are either the PoolId or
    #               PoolArn.</p>
    #
    #   @return [String]
    #
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #
    #   @return [String]
    #
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins
    #               with HELP or STOP to one of your dedicated numbers, Amazon Pinpoint automatically
    #               replies with a customizable message and adds the end recipient to the OptOutList. When
    #               set to true you're responsible for responding to HELP and STOP requests. You're also
    #               responsible for tracking and honoring opt-out requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute opt_out_list_name
    #   <p>The OptOutList to associate with the pool. Valid values are either OptOutListName or
    #               OptOutListArn.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    #
    #   @return [Boolean]
    #
    UpdatePoolInput = ::Struct.new(
      :pool_id,
      :two_way_enabled,
      :two_way_channel_arn,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pool_arn
    #   <p>The ARN of the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute pool_id
    #   <p>The unique identifier of the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the pool update request.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute message_type
    #   <p>The type of message for the pool to use.</p>
    #
    #   Enum, one of: ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #
    #   @return [String]
    #
    # @!attribute self_managed_opt_outs_enabled
    #   <p>When an end recipient sends a message that begins with HELP or STOP to one of your
    #               dedicated numbers, Amazon Pinpoint automatically replies with a customizable message
    #               and adds the end recipient to the OptOutList. When set to true you're responsible for
    #               responding to HELP and STOP requests. You're also responsible for tracking and honoring
    #               opt-out requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the pool.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #
    #   @return [Time]
    #
    UpdatePoolOutput = ::Struct.new(
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.two_way_enabled ||= false
        self.self_managed_opt_outs_enabled ||= false
        self.shared_routes_enabled ||= false
        self.deletion_protection_enabled ||= false
      end

    end

    # <p>A validation exception for a field.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER", "INVALID_PARAMETER", "INVALID_ARN", "INVALID_IDENTITY_FOR_DESTINATION_COUNTRY", "DESTINATION_COUNTRY_BLOCKED", "CANNOT_ADD_OPTED_OUT_NUMBER", "COUNTRY_CODE_MISMATCH", "INVALID_FILTER_VALUES", "INVALID_NEXT_TOKEN", "MISSING_PARAMETER", "PARAMETERS_CANNOT_BE_USED_TOGETHER", "PHONE_NUMBER_CANNOT_BE_OPTED_IN", "PHONE_NUMBER_CANNOT_BE_RELEASED", "PRICE_OVER_THRESHOLD", "REQUESTED_SPEND_LIMIT_HIGHER_THAN_SERVICE_LIMIT", "SENDER_ID_NOT_REGISTERED", "SENDER_ID_NOT_SUPPORTED", "TWO_WAY_NOT_ENABLED", "TWO_WAY_NOT_SUPPORTED_IN_COUNTRY", "TWO_WAY_NOT_SUPPORTED_IN_REGION", "TWO_WAY_TOPIC_NOT_PRESENT"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>The field that failed validation.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The field associated with the validation exception.</p>
    #
    # @!attribute name
    #   <p>The name of the field.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message associated with the validation exception with information to help
    #               determine its cause.</p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "UNKNOWN_OPERATION"

      # No documentation available.
      #
      CANNOT_PARSE = "CANNOT_PARSE"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED"

      # No documentation available.
      #
      OTHER = "OTHER"

      # No documentation available.
      #
      INVALID_PARAMETER = "INVALID_PARAMETER"

      # No documentation available.
      #
      INVALID_ARN = "INVALID_ARN"

      # No documentation available.
      #
      INVALID_IDENTITY_FOR_DESTINATION_COUNTRY = "INVALID_IDENTITY_FOR_DESTINATION_COUNTRY"

      # No documentation available.
      #
      DESTINATION_COUNTRY_BLOCKED = "DESTINATION_COUNTRY_BLOCKED"

      # No documentation available.
      #
      CANNOT_ADD_OPTED_OUT_NUMBER = "CANNOT_ADD_OPTED_OUT_NUMBER"

      # No documentation available.
      #
      COUNTRY_CODE_MISMATCH = "COUNTRY_CODE_MISMATCH"

      # No documentation available.
      #
      INVALID_FILTER_VALUES = "INVALID_FILTER_VALUES"

      # No documentation available.
      #
      INVALID_NEXT_TOKEN = "INVALID_NEXT_TOKEN"

      # No documentation available.
      #
      MISSING_PARAMETER = "MISSING_PARAMETER"

      # No documentation available.
      #
      PARAMETERS_CANNOT_BE_USED_TOGETHER = "PARAMETERS_CANNOT_BE_USED_TOGETHER"

      # No documentation available.
      #
      PHONE_NUMBER_CANNOT_BE_OPTED_IN = "PHONE_NUMBER_CANNOT_BE_OPTED_IN"

      # No documentation available.
      #
      PHONE_NUMBER_CANNOT_BE_RELEASED = "PHONE_NUMBER_CANNOT_BE_RELEASED"

      # No documentation available.
      #
      PRICE_OVER_THRESHOLD = "PRICE_OVER_THRESHOLD"

      # No documentation available.
      #
      REQUESTED_SPEND_LIMIT_HIGHER_THAN_SERVICE_LIMIT = "REQUESTED_SPEND_LIMIT_HIGHER_THAN_SERVICE_LIMIT"

      # No documentation available.
      #
      SENDER_ID_NOT_REGISTERED = "SENDER_ID_NOT_REGISTERED"

      # No documentation available.
      #
      SENDER_ID_NOT_SUPPORTED = "SENDER_ID_NOT_SUPPORTED"

      # No documentation available.
      #
      TWO_WAY_NOT_ENABLED = "TWO_WAY_NOT_ENABLED"

      # No documentation available.
      #
      TWO_WAY_NOT_SUPPORTED_IN_COUNTRY = "TWO_WAY_NOT_SUPPORTED_IN_COUNTRY"

      # No documentation available.
      #
      TWO_WAY_NOT_SUPPORTED_IN_REGION = "TWO_WAY_NOT_SUPPORTED_IN_REGION"

      # No documentation available.
      #
      TWO_WAY_TOPIC_NOT_PRESENT = "TWO_WAY_TOPIC_NOT_PRESENT"
    end

    # Includes enum constants for VoiceId
    #
    module VoiceId
      # No documentation available.
      #
      AMY = "AMY"

      # No documentation available.
      #
      ASTRID = "ASTRID"

      # No documentation available.
      #
      BIANCA = "BIANCA"

      # No documentation available.
      #
      BRIAN = "BRIAN"

      # No documentation available.
      #
      CAMILA = "CAMILA"

      # No documentation available.
      #
      CARLA = "CARLA"

      # No documentation available.
      #
      CARMEN = "CARMEN"

      # No documentation available.
      #
      CELINE = "CELINE"

      # No documentation available.
      #
      CHANTAL = "CHANTAL"

      # No documentation available.
      #
      CONCHITA = "CONCHITA"

      # No documentation available.
      #
      CRISTIANO = "CRISTIANO"

      # No documentation available.
      #
      DORA = "DORA"

      # No documentation available.
      #
      EMMA = "EMMA"

      # No documentation available.
      #
      ENRIQUE = "ENRIQUE"

      # No documentation available.
      #
      EWA = "EWA"

      # No documentation available.
      #
      FILIZ = "FILIZ"

      # No documentation available.
      #
      GERAINT = "GERAINT"

      # No documentation available.
      #
      GIORGIO = "GIORGIO"

      # No documentation available.
      #
      GWYNETH = "GWYNETH"

      # No documentation available.
      #
      HANS = "HANS"

      # No documentation available.
      #
      INES = "INES"

      # No documentation available.
      #
      IVY = "IVY"

      # No documentation available.
      #
      JACEK = "JACEK"

      # No documentation available.
      #
      JAN = "JAN"

      # No documentation available.
      #
      JOANNA = "JOANNA"

      # No documentation available.
      #
      JOEY = "JOEY"

      # No documentation available.
      #
      JUSTIN = "JUSTIN"

      # No documentation available.
      #
      KARL = "KARL"

      # No documentation available.
      #
      KENDRA = "KENDRA"

      # No documentation available.
      #
      KIMBERLY = "KIMBERLY"

      # No documentation available.
      #
      LEA = "LEA"

      # No documentation available.
      #
      LIV = "LIV"

      # No documentation available.
      #
      LOTTE = "LOTTE"

      # No documentation available.
      #
      LUCIA = "LUCIA"

      # No documentation available.
      #
      LUPE = "LUPE"

      # No documentation available.
      #
      MADS = "MADS"

      # No documentation available.
      #
      MAJA = "MAJA"

      # No documentation available.
      #
      MARLENE = "MARLENE"

      # No documentation available.
      #
      MATHIEU = "MATHIEU"

      # No documentation available.
      #
      MATTHEW = "MATTHEW"

      # No documentation available.
      #
      MAXIM = "MAXIM"

      # No documentation available.
      #
      MIA = "MIA"

      # No documentation available.
      #
      MIGUEL = "MIGUEL"

      # No documentation available.
      #
      MIZUKI = "MIZUKI"

      # No documentation available.
      #
      NAJA = "NAJA"

      # No documentation available.
      #
      NICOLE = "NICOLE"

      # No documentation available.
      #
      PENELOPE = "PENELOPE"

      # No documentation available.
      #
      RAVEENA = "RAVEENA"

      # No documentation available.
      #
      RICARDO = "RICARDO"

      # No documentation available.
      #
      RUBEN = "RUBEN"

      # No documentation available.
      #
      RUSSELL = "RUSSELL"

      # No documentation available.
      #
      SALLI = "SALLI"

      # No documentation available.
      #
      SEOYEON = "SEOYEON"

      # No documentation available.
      #
      TAKUMI = "TAKUMI"

      # No documentation available.
      #
      TATYANA = "TATYANA"

      # No documentation available.
      #
      VICKI = "VICKI"

      # No documentation available.
      #
      VITORIA = "VITORIA"

      # No documentation available.
      #
      ZEINA = "ZEINA"

      # No documentation available.
      #
      ZHIYU = "ZHIYU"
    end

    # Includes enum constants for VoiceMessageBodyTextType
    #
    module VoiceMessageBodyTextType
      # No documentation available.
      #
      TEXT = "TEXT"

      # No documentation available.
      #
      SSML = "SSML"
    end

  end
end
