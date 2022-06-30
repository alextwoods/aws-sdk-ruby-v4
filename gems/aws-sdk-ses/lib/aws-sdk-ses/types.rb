# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SES
  module Types

    # <p>Indicates that email sending is disabled for your entire Amazon SES account.</p>
    #         <p>You can enable or disable email sending for your Amazon SES account using <a>UpdateAccountSendingEnabled</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccountSendingPausedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When included in a receipt rule, this action adds a header to the received
    #             email.</p>
    #         <p>For information about adding a header using a receipt rule, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute header_name
    #   <p>The name of the header to add. Must be between 1 and 50 characters, inclusive, and
    #               consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.</p>
    #
    #   @return [String]
    #
    # @!attribute header_value
    #   <p>Must be less than 2048 characters, and must not contain newline characters ("\r" or
    #               "\n").</p>
    #
    #   @return [String]
    #
    AddHeaderAction = ::Struct.new(
      :header_name,
      :header_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a resource could not be created because of a naming conflict.</p>
    #
    # @!attribute name
    #   <p>Indicates that a resource could not be created because the resource name already
    #               exists.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AlreadyExistsException = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BehaviorOnMXFailure
    #
    module BehaviorOnMXFailure
      # No documentation available.
      #
      UseDefaultValue = "UseDefaultValue"

      # No documentation available.
      #
      RejectMessage = "RejectMessage"
    end

    # <p>Represents the body of the message. You can specify text, HTML, or both. If you use
    #             both, then the message should display correctly in the widest variety of email
    #             clients.</p>
    #
    # @!attribute text
    #   <p>The content of the message, in text format. Use this for text-based email clients, or
    #               clients on high-latency networks (such as mobile devices).</p>
    #
    #   @return [Content]
    #
    # @!attribute html
    #   <p>The content of the message, in HTML format. Use this for email clients that can
    #               process HTML. You can include clickable links, formatted text, and much more in an HTML
    #               message.</p>
    #
    #   @return [Content]
    #
    Body = ::Struct.new(
      :text,
      :html,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When included in a receipt rule, this action rejects the received email by returning a
    #             bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service
    #             (Amazon SNS).</p>
    #         <p>For information about sending a bounce message in response to a received email, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the bounce action is
    #               taken. An example of an Amazon SNS topic ARN is
    #                   <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about
    #               Amazon SNS topics, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute smtp_reply_code
    #   <p>The SMTP reply code, as defined by <a href="https://tools.ietf.org/html/rfc5321">RFC 5321</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>The SMTP enhanced status code, as defined by <a href="https://tools.ietf.org/html/rfc3463">RFC 3463</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Human-readable text to include in the bounce message.</p>
    #
    #   @return [String]
    #
    # @!attribute sender
    #   <p>The email address of the sender of the bounced email. This is the address from which
    #               the bounce message will be sent.</p>
    #
    #   @return [String]
    #
    BounceAction = ::Struct.new(
      :topic_arn,
      :smtp_reply_code,
      :status_code,
      :message,
      :sender,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BounceType
    #
    module BounceType
      # No documentation available.
      #
      DoesNotExist = "DoesNotExist"

      # No documentation available.
      #
      MessageTooLarge = "MessageTooLarge"

      # No documentation available.
      #
      ExceededQuota = "ExceededQuota"

      # No documentation available.
      #
      ContentRejected = "ContentRejected"

      # No documentation available.
      #
      Undefined = "Undefined"

      # No documentation available.
      #
      TemporaryFailure = "TemporaryFailure"
    end

    # <p>Recipient-related information to include in the Delivery Status Notification (DSN)
    #             when an email that Amazon SES receives on your behalf bounces.</p>
    #         <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute recipient
    #   <p>The email address of the recipient of the bounced email.</p>
    #
    #   @return [String]
    #
    # @!attribute recipient_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to receive
    #               email for the recipient of the bounced email. For more information about sending
    #               authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute bounce_type
    #   <p>The reason for the bounce. You must provide either this parameter or
    #                   <code>RecipientDsnFields</code>.</p>
    #
    #   Enum, one of: ["DoesNotExist", "MessageTooLarge", "ExceededQuota", "ContentRejected", "Undefined", "TemporaryFailure"]
    #
    #   @return [String]
    #
    # @!attribute recipient_dsn_fields
    #   <p>Recipient-related DSN fields, most of which would normally be filled in automatically
    #               when provided with a <code>BounceType</code>. You must provide either this parameter or
    #                   <code>BounceType</code>.</p>
    #
    #   @return [RecipientDsnFields]
    #
    BouncedRecipientInfo = ::Struct.new(
      :recipient,
      :recipient_arn,
      :bounce_type,
      :recipient_dsn_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An array that contains one or more Destinations, as well as the tags and replacement
    #             data associated with each of those Destinations.</p>
    #
    # @!attribute destination
    #   <p>Represents the destination of the message, consisting of To:, CC:, and BCC:
    #               fields.</p>
    #           <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                       <i>local part</i> of a destination email address (the part of the
    #                   email address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address Local-part">7-bit ASCII
    #                       characters</a>. If the <i>domain part</i> of an address (the
    #                   part after the @ sign) contains non-ASCII characters, they must be encoded using
    #                   Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>.</p>
    #           </note>
    #
    #   @return [Destination]
    #
    # @!attribute replacement_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using <code>SendBulkTemplatedEmail</code>. Tags correspond to characteristics of the
    #               email that you define, so that you can publish email sending events.</p>
    #
    #   @return [Array<MessageTag>]
    #
    # @!attribute replacement_template_data
    #   <p>A list of replacement values to apply to the template. This parameter is a JSON
    #               object, typically consisting of key-value pairs in which the keys correspond to
    #               replacement tags in the email template.</p>
    #
    #   @return [String]
    #
    BulkEmailDestination = ::Struct.new(
      :destination,
      :replacement_tags,
      :replacement_template_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains the response from the <code>SendBulkTemplatedEmail</code>
    #             operation.</p>
    #
    # @!attribute status
    #   <p>The status of a message sent using the <code>SendBulkTemplatedEmail</code>
    #               operation.</p>
    #           <p>Possible values for this parameter include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Success</code>: Amazon SES accepted the message, and will attempt to deliver
    #                       it to the recipients.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MessageRejected</code>: The message was rejected because it contained a
    #                       virus.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>MailFromDomainNotVerified</code>: The sender's email address or domain
    #                       was not verified.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ConfigurationSetDoesNotExist</code>: The configuration set you specified
    #                       does not exist.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TemplateDoesNotExist</code>: The template you specified does not
    #                       exist.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AccountSuspended</code>: Your account has been shut down because of
    #                       issues related to your email sending practices.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AccountThrottled</code>: The number of emails you can send has been
    #                       reduced because your account has exceeded its allocated sending limit.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AccountDailyQuotaExceeded</code>: You have reached or exceeded the
    #                       maximum number of emails you can send from your account in a 24-hour
    #                       period.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InvalidSendingPoolName</code>: The configuration set you specified
    #                       refers to an IP pool that does not exist.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AccountSendingPaused</code>: Email sending for the Amazon SES account was
    #                       disabled using the <a>UpdateAccountSendingEnabled</a>
    #                       operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ConfigurationSetSendingPaused</code>: Email sending for this
    #                       configuration set was disabled using the <a>UpdateConfigurationSetSendingEnabled</a> operation.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InvalidParameterValue</code>: One or more of the parameters you
    #                       specified when calling this operation was invalid. See the error message for
    #                       additional information.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TransientFailure</code>: Amazon SES was unable to process your request
    #                       because of a temporary issue.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Failed</code>: Amazon SES was unable to process your request. See the error
    #                       message for additional information.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Success", "MessageRejected", "MailFromDomainNotVerified", "ConfigurationSetDoesNotExist", "TemplateDoesNotExist", "AccountSuspended", "AccountThrottled", "AccountDailyQuotaExceeded", "InvalidSendingPoolName", "AccountSendingPaused", "ConfigurationSetSendingPaused", "InvalidParameterValue", "TransientFailure", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>A description of an error that prevented a message being sent using the
    #                   <code>SendBulkTemplatedEmail</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The unique message identifier returned from the <code>SendBulkTemplatedEmail</code>
    #               operation.</p>
    #
    #   @return [String]
    #
    BulkEmailDestinationStatus = ::Struct.new(
      :status,
      :error,
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BulkEmailStatus
    #
    module BulkEmailStatus
      # No documentation available.
      #
      Success = "Success"

      # No documentation available.
      #
      MessageRejected = "MessageRejected"

      # No documentation available.
      #
      MailFromDomainNotVerified = "MailFromDomainNotVerified"

      # No documentation available.
      #
      ConfigurationSetDoesNotExist = "ConfigurationSetDoesNotExist"

      # No documentation available.
      #
      TemplateDoesNotExist = "TemplateDoesNotExist"

      # No documentation available.
      #
      AccountSuspended = "AccountSuspended"

      # No documentation available.
      #
      AccountThrottled = "AccountThrottled"

      # No documentation available.
      #
      AccountDailyQuotaExceeded = "AccountDailyQuotaExceeded"

      # No documentation available.
      #
      InvalidSendingPoolName = "InvalidSendingPoolName"

      # No documentation available.
      #
      AccountSendingPaused = "AccountSendingPaused"

      # No documentation available.
      #
      ConfigurationSetSendingPaused = "ConfigurationSetSendingPaused"

      # No documentation available.
      #
      InvalidParameterValue = "InvalidParameterValue"

      # No documentation available.
      #
      TransientFailure = "TransientFailure"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # <p>Indicates that the delete operation could not be completed.</p>
    #
    # @!attribute name
    #   <p>Indicates that a resource could not be deleted because no resource with the specified
    #               name exists.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CannotDeleteException = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create a receipt rule set by cloning an existing one. You use
    #             receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the rule set to create. The name must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Start and end with a letter or number.</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 64 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute original_rule_set_name
    #   <p>The name of the rule set to clone.</p>
    #
    #   @return [String]
    #
    CloneReceiptRuleSetInput = ::Struct.new(
      :rule_set_name,
      :original_rule_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    CloneReceiptRuleSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information associated with an Amazon CloudWatch event destination to which email
    #             sending events are published.</p>
    #         <p>Event destinations, such as Amazon CloudWatch, are associated with configuration sets, which
    #             enable you to publish email sending events. For information about using configuration
    #             sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute dimension_configurations
    #   <p>A list of dimensions upon which to categorize your emails when you publish email
    #               sending events to Amazon CloudWatch.</p>
    #
    #   @return [Array<CloudWatchDimensionConfiguration>]
    #
    CloudWatchDestination = ::Struct.new(
      :dimension_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the dimension configuration to use when you publish email sending events to
    #             Amazon CloudWatch.</p>
    #         <p>For information about publishing email sending events to Amazon CloudWatch, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute dimension_name
    #   <p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name
    #               must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 256 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute dimension_value_source
    #   <p>The place where Amazon SES finds the value of a dimension to publish to Amazon CloudWatch. If you
    #               want Amazon SES to use the message tags that you specify using an
    #                   <code>X-SES-MESSAGE-TAGS</code> header or a parameter to the
    #                   <code>SendEmail</code>/<code>SendRawEmail</code> API, choose
    #               <code>messageTag</code>. If you want Amazon SES to use your own email headers, choose
    #                   <code>emailHeader</code>.</p>
    #
    #   Enum, one of: ["messageTag", "emailHeader", "linkTag"]
    #
    #   @return [String]
    #
    # @!attribute default_dimension_value
    #   <p>The default value of the dimension that is published to Amazon CloudWatch if you do not provide
    #               the value of the dimension when you send an email. The default value must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 256 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    CloudWatchDimensionConfiguration = ::Struct.new(
      :dimension_name,
      :dimension_value_source,
      :default_dimension_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name of the configuration set.</p>
    #         <p>Configuration sets let you create groups of rules that you can apply to the emails you
    #             send using Amazon SES. For more information about using configuration sets, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/using-configuration-sets.html">Using Amazon SES Configuration Sets</a> in the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the configuration set. The name must meet the following
    #               requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>Contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes
    #                       (-).</p>
    #               </li>
    #               <li>
    #                   <p>Contain 64 characters or fewer.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ConfigurationSet = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the configuration set could not be created because of a naming
    #             conflict.</p>
    #
    # @!attribute configuration_set_name
    #   <p>Indicates that the configuration set does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConfigurationSetAlreadyExistsException = ::Struct.new(
      :configuration_set_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfigurationSetAttribute
    #
    module ConfigurationSetAttribute
      # No documentation available.
      #
      EVENT_DESTINATIONS = "eventDestinations"

      # No documentation available.
      #
      TRACKING_OPTIONS = "trackingOptions"

      # No documentation available.
      #
      DELIVERY_OPTIONS = "deliveryOptions"

      # No documentation available.
      #
      REPUTATION_OPTIONS = "reputationOptions"
    end

    # <p>Indicates that the configuration set does not exist.</p>
    #
    # @!attribute configuration_set_name
    #   <p>Indicates that the configuration set does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConfigurationSetDoesNotExistException = ::Struct.new(
      :configuration_set_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that email sending is disabled for the configuration set.</p>
    #         <p>You can enable or disable email sending for a configuration set using <a>UpdateConfigurationSetSendingEnabled</a>.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set for which email sending is disabled.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConfigurationSetSendingPausedException = ::Struct.new(
      :configuration_set_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents textual data, plus an optional character set specification.</p>
    #         <p>By default, the text must be 7-bit ASCII, due to the constraints of the SMTP protocol.
    #             If the text must contain any other characters, then you must also specify a character
    #             set. Examples include UTF-8, ISO-8859-1, and Shift_JIS.</p>
    #
    # @!attribute data
    #   <p>The textual data of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute charset
    #   <p>The character set of the content.</p>
    #
    #   @return [String]
    #
    Content = ::Struct.new(
      :data,
      :charset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create a configuration set event destination. A configuration
    #             set event destination, which can be either Amazon CloudWatch or Amazon Kinesis Firehose, describes an AWS service
    #             in which Amazon SES publishes the email sending events associated with a configuration set.
    #             For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that the event destination should be associated
    #               with.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination
    #   <p>An object that describes the AWS service that email sending event information will
    #               be published to.</p>
    #
    #   @return [EventDestination]
    #
    CreateConfigurationSetEventDestinationInput = ::Struct.new(
      :configuration_set_name,
      :event_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    CreateConfigurationSetEventDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create a configuration set. Configuration sets enable you to
    #             publish email sending events. For information about using configuration sets, see the
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute configuration_set
    #   <p>A data structure that contains the name of the configuration set.</p>
    #
    #   @return [ConfigurationSet]
    #
    CreateConfigurationSetInput = ::Struct.new(
      :configuration_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    CreateConfigurationSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create an open and click tracking option object in a
    #             configuration set. </p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that the tracking options should be associated
    #               with.</p>
    #
    #   @return [String]
    #
    # @!attribute tracking_options
    #   <p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This
    #               domain captures open and click events generated by Amazon SES emails.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring
    #                   Custom Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    #
    #   @return [TrackingOptions]
    #
    CreateConfigurationSetTrackingOptionsInput = ::Struct.new(
      :configuration_set_name,
      :tracking_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    CreateConfigurationSetTrackingOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create a custom verification email template.</p>
    #
    # @!attribute template_name
    #   <p>The name of the custom verification email template.</p>
    #
    #   @return [String]
    #
    # @!attribute from_email_address
    #   <p>The email address that the custom verification email is sent from.</p>
    #
    #   @return [String]
    #
    # @!attribute template_subject
    #   <p>The subject line of the custom verification email.</p>
    #
    #   @return [String]
    #
    # @!attribute template_content
    #   <p>The content of the custom verification email. The total size of the email must be less
    #               than 10 MB. The message body may contain HTML, with some limitations. For more
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html custom-verification-emails-faq">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute success_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is successfully verified.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is not successfully verified.</p>
    #
    #   @return [String]
    #
    CreateCustomVerificationEmailTemplateInput = ::Struct.new(
      :template_name,
      :from_email_address,
      :template_subject,
      :template_content,
      :success_redirection_url,
      :failure_redirection_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateCustomVerificationEmailTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create a new IP address filter. You use IP address filters
    #             when you receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute filter
    #   <p>A data structure that describes the IP address filter to create, which consists of a
    #               name, an IP address range, and whether to allow or block mail from it.</p>
    #
    #   @return [ReceiptFilter]
    #
    CreateReceiptFilterInput = ::Struct.new(
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    CreateReceiptFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create a receipt rule. You use receipt rules to receive email
    #             with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the rule set that the receipt rule will be added to.</p>
    #
    #   @return [String]
    #
    # @!attribute after
    #   <p>The name of an existing rule after which the new rule will be placed. If this
    #               parameter is null, the new rule will be inserted at the beginning of the rule
    #               list.</p>
    #
    #   @return [String]
    #
    # @!attribute rule
    #   <p>A data structure that contains the specified rule's name, actions, recipients,
    #               domains, enabled status, scan status, and TLS policy.</p>
    #
    #   @return [ReceiptRule]
    #
    CreateReceiptRuleInput = ::Struct.new(
      :rule_set_name,
      :after,
      :rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    CreateReceiptRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create an empty receipt rule set. You use receipt rule sets to
    #             receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the rule set to create. The name must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Start and end with a letter or number.</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 64 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    CreateReceiptRuleSetInput = ::Struct.new(
      :rule_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    CreateReceiptRuleSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create an email template. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute template
    #   <p>The content of the email, composed of a subject line, an HTML part, and a text-only
    #               part.</p>
    #
    #   @return [Template]
    #
    CreateTemplateInput = ::Struct.new(
      :template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomMailFromStatus
    #
    module CustomMailFromStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      Success = "Success"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      TemporaryFailure = "TemporaryFailure"
    end

    # <p>Indicates that custom verification email template provided content is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CustomVerificationEmailInvalidContentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a custom verification email template.</p>
    #
    # @!attribute template_name
    #   <p>The name of the custom verification email template.</p>
    #
    #   @return [String]
    #
    # @!attribute from_email_address
    #   <p>The email address that the custom verification email is sent from.</p>
    #
    #   @return [String]
    #
    # @!attribute template_subject
    #   <p>The subject line of the custom verification email.</p>
    #
    #   @return [String]
    #
    # @!attribute success_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is successfully verified.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is not successfully verified.</p>
    #
    #   @return [String]
    #
    CustomVerificationEmailTemplate = ::Struct.new(
      :template_name,
      :from_email_address,
      :template_subject,
      :success_redirection_url,
      :failure_redirection_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a custom verification email template with the name you specified
    #             already exists.</p>
    #
    # @!attribute custom_verification_email_template_name
    #   <p>Indicates that the provided custom verification email template with the specified
    #               template name already exists.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CustomVerificationEmailTemplateAlreadyExistsException = ::Struct.new(
      :custom_verification_email_template_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a custom verification email template with the name you specified does
    #             not exist.</p>
    #
    # @!attribute custom_verification_email_template_name
    #   <p>Indicates that the provided custom verification email template does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CustomVerificationEmailTemplateDoesNotExistException = ::Struct.new(
      :custom_verification_email_template_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete a configuration set event destination. Configuration
    #             set event destinations are associated with configuration sets, which enable you to
    #             publish email sending events. For information about using configuration sets, see the
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set from which to delete the event destination.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>The name of the event destination to delete.</p>
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

    # <p>An empty element returned on a successful request.</p>
    #
    DeleteConfigurationSetEventDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete a configuration set. Configuration sets enable you to
    #             publish email sending events. For information about using configuration sets, see the
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to delete.</p>
    #
    #   @return [String]
    #
    DeleteConfigurationSetInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    DeleteConfigurationSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete open and click tracking options in a configuration set.
    #         </p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set from which you want to delete the tracking
    #               options.</p>
    #
    #   @return [String]
    #
    DeleteConfigurationSetTrackingOptionsInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    DeleteConfigurationSetTrackingOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete an existing custom verification email template.</p>
    #
    # @!attribute template_name
    #   <p>The name of the custom verification email template that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteCustomVerificationEmailTemplateInput = ::Struct.new(
      :template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCustomVerificationEmailTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete one of your Amazon SES identities (an email address or
    #             domain).</p>
    #
    # @!attribute identity
    #   <p>The identity to be removed from the list of identities for the AWS Account.</p>
    #
    #   @return [String]
    #
    DeleteIdentityInput = ::Struct.new(
      :identity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    DeleteIdentityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete a sending authorization policy for an identity. Sending
    #             authorization is an Amazon SES feature that enables you to authorize other senders to use
    #             your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute identity
    #   <p>The identity that is associated with the policy that you want to delete. You can
    #               specify the identity by using its name or by using its Amazon Resource Name (ARN).
    #               Examples: <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #           <p>To successfully call this API, you must own the identity.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the policy to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteIdentityPolicyInput = ::Struct.new(
      :identity,
      :policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    DeleteIdentityPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete an IP address filter. You use IP address filters when
    #             you receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute filter_name
    #   <p>The name of the IP address filter to delete.</p>
    #
    #   @return [String]
    #
    DeleteReceiptFilterInput = ::Struct.new(
      :filter_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    DeleteReceiptFilterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete a receipt rule. You use receipt rules to receive email
    #             with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the receipt rule set that contains the receipt rule to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_name
    #   <p>The name of the receipt rule to delete.</p>
    #
    #   @return [String]
    #
    DeleteReceiptRuleInput = ::Struct.new(
      :rule_set_name,
      :rule_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    DeleteReceiptRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete a receipt rule set and all of the receipt rules it
    #             contains. You use receipt rule sets to receive email with Amazon SES. For more information,
    #             see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the receipt rule set to delete.</p>
    #
    #   @return [String]
    #
    DeleteReceiptRuleSetInput = ::Struct.new(
      :rule_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    DeleteReceiptRuleSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete an email template. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute template_name
    #   <p>The name of the template to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteTemplateInput = ::Struct.new(
      :template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete an email address from the list of email addresses you
    #             have attempted to verify under your AWS account.</p>
    #
    # @!attribute email_address
    #   <p>An email address to be removed from the list of verified addresses.</p>
    #
    #   @return [String]
    #
    DeleteVerifiedEmailAddressInput = ::Struct.new(
      :email_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVerifiedEmailAddressOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies whether messages that use the configuration set are required to use
    #             Transport Layer Security (TLS).</p>
    #
    # @!attribute tls_policy
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only
    #               delivered if a TLS connection can be established. If the value is <code>Optional</code>,
    #               messages can be delivered in plain text if a TLS connection can't be established.</p>
    #
    #   Enum, one of: ["Require", "Optional"]
    #
    #   @return [String]
    #
    DeliveryOptions = ::Struct.new(
      :tls_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return the metadata and receipt rules for the receipt rule set
    #             that is currently active. You use receipt rule sets to receive email with Amazon SES. For
    #             more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    DescribeActiveReceiptRuleSetInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the metadata and receipt rules for the receipt rule set that is currently
    #             active.</p>
    #
    # @!attribute metadata
    #   <p>The metadata for the currently active receipt rule set. The metadata consists of the
    #               rule set name and a timestamp of when the rule set was created.</p>
    #
    #   @return [ReceiptRuleSetMetadata]
    #
    # @!attribute rules
    #   <p>The receipt rules that belong to the active rule set.</p>
    #
    #   @return [Array<ReceiptRule>]
    #
    DescribeActiveReceiptRuleSetOutput = ::Struct.new(
      :metadata,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return the details of a configuration set. Configuration sets
    #             enable you to publish email sending events. For information about using configuration
    #             sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_attribute_names
    #   <p>A list of configuration set attributes to return.</p>
    #
    #   @return [Array<String>]
    #
    DescribeConfigurationSetInput = ::Struct.new(
      :configuration_set_name,
      :configuration_set_attribute_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the details of a configuration set. Configuration sets enable you to
    #             publish email sending events. For information about using configuration sets, see the
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute configuration_set
    #   <p>The configuration set object associated with the specified configuration set.</p>
    #
    #   @return [ConfigurationSet]
    #
    # @!attribute event_destinations
    #   <p>A list of event destinations associated with the configuration set. </p>
    #
    #   @return [Array<EventDestination>]
    #
    # @!attribute tracking_options
    #   <p>The name of the custom open and click tracking domain associated with the
    #               configuration set.</p>
    #
    #   @return [TrackingOptions]
    #
    # @!attribute delivery_options
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS).</p>
    #
    #   @return [DeliveryOptions]
    #
    # @!attribute reputation_options
    #   <p>An object that represents the reputation settings for the configuration set. </p>
    #
    #   @return [ReputationOptions]
    #
    DescribeConfigurationSetOutput = ::Struct.new(
      :configuration_set,
      :event_destinations,
      :tracking_options,
      :delivery_options,
      :reputation_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return the details of a receipt rule. You use receipt rules to
    #             receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the receipt rule set that the receipt rule belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_name
    #   <p>The name of the receipt rule.</p>
    #
    #   @return [String]
    #
    DescribeReceiptRuleInput = ::Struct.new(
      :rule_set_name,
      :rule_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the details of a receipt rule.</p>
    #
    # @!attribute rule
    #   <p>A data structure that contains the specified receipt rule's name, actions, recipients,
    #               domains, enabled status, scan status, and Transport Layer Security (TLS) policy.</p>
    #
    #   @return [ReceiptRule]
    #
    DescribeReceiptRuleOutput = ::Struct.new(
      :rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return the details of a receipt rule set. You use receipt rule
    #             sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the receipt rule set to describe.</p>
    #
    #   @return [String]
    #
    DescribeReceiptRuleSetInput = ::Struct.new(
      :rule_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the details of the specified receipt rule set.</p>
    #
    # @!attribute metadata
    #   <p>The metadata for the receipt rule set, which consists of the rule set name and the
    #               timestamp of when the rule set was created.</p>
    #
    #   @return [ReceiptRuleSetMetadata]
    #
    # @!attribute rules
    #   <p>A list of the receipt rules that belong to the specified receipt rule set.</p>
    #
    #   @return [Array<ReceiptRule>]
    #
    DescribeReceiptRuleSetOutput = ::Struct.new(
      :metadata,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the destination of the message, consisting of To:, CC:, and BCC:
    #             fields.</p>
    #         <note>
    #             <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                     <i>local part</i> of a destination email address (the part of the
    #                 email address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII
    #                     characters</a>. If the <i>domain part</i> of an address (the
    #                 part after the @ sign) contains non-ASCII characters, they must be encoded using
    #                 Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>.</p>
    #         </note>
    #
    # @!attribute to_addresses
    #   <p>The recipients to place on the To: line of the message.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cc_addresses
    #   <p>The recipients to place on the CC: line of the message.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute bcc_addresses
    #   <p>The recipients to place on the BCC: line of the message.</p>
    #
    #   @return [Array<String>]
    #
    Destination = ::Struct.new(
      :to_addresses,
      :cc_addresses,
      :bcc_addresses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DimensionValueSource
    #
    module DimensionValueSource
      # No documentation available.
      #
      MESSAGE_TAG = "messageTag"

      # No documentation available.
      #
      EMAIL_HEADER = "emailHeader"

      # No documentation available.
      #
      LINK_TAG = "linkTag"
    end

    # Includes enum constants for DsnAction
    #
    module DsnAction
      # No documentation available.
      #
      FAILED = "failed"

      # No documentation available.
      #
      DELAYED = "delayed"

      # No documentation available.
      #
      DELIVERED = "delivered"

      # No documentation available.
      #
      RELAYED = "relayed"

      # No documentation available.
      #
      EXPANDED = "expanded"
    end

    # <p>Contains information about the event destination that the specified email sending
    #             events will be published to.</p>
    #         <note>
    #             <p>When you create or update an event destination, you must provide one, and only
    #                 one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose or Amazon Simple Notification Service (Amazon SNS).</p>
    #         </note>
    #         <p>Event destinations are associated with configuration sets, which enable you to publish
    #             email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about
    #             using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the event destination. The name must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 64 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Sets whether Amazon SES publishes events to this destination when you send an email with
    #               the associated configuration set. Set to <code>true</code> to enable publishing to this
    #               destination; set to <code>false</code> to prevent publishing to this destination. The
    #               default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute matching_event_types
    #   <p>The type of email sending events to publish to the event destination.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute kinesis_firehose_destination
    #   <p>An object that contains the delivery stream ARN and the IAM role ARN associated with
    #               an Amazon Kinesis Firehose event destination.</p>
    #
    #   @return [KinesisFirehoseDestination]
    #
    # @!attribute cloud_watch_destination
    #   <p>An object that contains the names, default values, and sources of the dimensions
    #               associated with an Amazon CloudWatch event destination.</p>
    #
    #   @return [CloudWatchDestination]
    #
    # @!attribute sns_destination
    #   <p>An object that contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event
    #               destination.</p>
    #
    #   @return [SNSDestination]
    #
    EventDestination = ::Struct.new(
      :name,
      :enabled,
      :matching_event_types,
      :kinesis_firehose_destination,
      :cloud_watch_destination,
      :sns_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Indicates that the event destination could not be created because of a naming
    #             conflict.</p>
    #
    # @!attribute configuration_set_name
    #   <p>Indicates that the configuration set does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>Indicates that the event destination does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EventDestinationAlreadyExistsException = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the event destination does not exist.</p>
    #
    # @!attribute configuration_set_name
    #   <p>Indicates that the configuration set does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>Indicates that the event destination does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EventDestinationDoesNotExistException = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventType
    #
    module EventType
      # No documentation available.
      #
      SEND = "send"

      # No documentation available.
      #
      REJECT = "reject"

      # No documentation available.
      #
      BOUNCE = "bounce"

      # No documentation available.
      #
      COMPLAINT = "complaint"

      # No documentation available.
      #
      DELIVERY = "delivery"

      # No documentation available.
      #
      OPEN = "open"

      # No documentation available.
      #
      CLICK = "click"

      # No documentation available.
      #
      RENDERING_FAILURE = "renderingFailure"
    end

    # <p>Additional X-headers to include in the Delivery Status Notification (DSN) when an
    #             email that Amazon SES receives on your behalf bounces.</p>
    #         <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the header to add. Must be between 1 and 50 characters, inclusive, and
    #               consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the header to add. Must be less than 2048 characters, and must not
    #               contain newline characters ("\r" or "\n").</p>
    #
    #   @return [String]
    #
    ExtensionField = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the sender address specified for a custom verification email is not
    #             verified, and is therefore not eligible to send the custom verification email. </p>
    #
    # @!attribute from_email_address
    #   <p>Indicates that the from email address associated with the custom verification email
    #               template is not verified.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FromEmailAddressNotVerifiedException = ::Struct.new(
      :from_email_address,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetAccountSendingEnabledInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return the email sending status for your Amazon SES account in the
    #             current AWS Region.</p>
    #
    # @!attribute enabled
    #   <p>Describes whether email sending is enabled or disabled for your Amazon SES account in the
    #               current AWS Region.</p>
    #
    #   @return [Boolean]
    #
    GetAccountSendingEnabledOutput = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Represents a request to retrieve an existing custom verification email
    #             template.</p>
    #
    # @!attribute template_name
    #   <p>The name of the custom verification email template that you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetCustomVerificationEmailTemplateInput = ::Struct.new(
      :template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The content of the custom verification email template.</p>
    #
    # @!attribute template_name
    #   <p>The name of the custom verification email template.</p>
    #
    #   @return [String]
    #
    # @!attribute from_email_address
    #   <p>The email address that the custom verification email is sent from.</p>
    #
    #   @return [String]
    #
    # @!attribute template_subject
    #   <p>The subject line of the custom verification email.</p>
    #
    #   @return [String]
    #
    # @!attribute template_content
    #   <p>The content of the custom verification email.</p>
    #
    #   @return [String]
    #
    # @!attribute success_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is successfully verified.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is not successfully verified.</p>
    #
    #   @return [String]
    #
    GetCustomVerificationEmailTemplateOutput = ::Struct.new(
      :template_name,
      :from_email_address,
      :template_subject,
      :template_content,
      :success_redirection_url,
      :failure_redirection_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request for the status of Amazon SES Easy DKIM signing for an identity. For
    #             domain identities, this request also returns the DKIM tokens that are required for Easy
    #             DKIM signing, and whether Amazon SES successfully verified that these tokens were published.
    #             For more information about Easy DKIM, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute identities
    #   <p>A list of one or more verified identities - email addresses, domains, or both.</p>
    #
    #   @return [Array<String>]
    #
    GetIdentityDkimAttributesInput = ::Struct.new(
      :identities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the status of Amazon SES Easy DKIM signing for an identity. For domain
    #             identities, this response also contains the DKIM tokens that are required for Easy DKIM
    #             signing, and whether Amazon SES successfully verified that these tokens were
    #             published.</p>
    #
    # @!attribute dkim_attributes
    #   <p>The DKIM attributes for an email address or a domain.</p>
    #
    #   @return [Hash<String, IdentityDkimAttributes>]
    #
    GetIdentityDkimAttributesOutput = ::Struct.new(
      :dkim_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return the Amazon SES custom MAIL FROM attributes for a list of
    #             identities. For information about using a custom MAIL FROM domain, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute identities
    #   <p>A list of one or more identities.</p>
    #
    #   @return [Array<String>]
    #
    GetIdentityMailFromDomainAttributesInput = ::Struct.new(
      :identities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the custom MAIL FROM attributes for a list of identities.</p>
    #
    # @!attribute mail_from_domain_attributes
    #   <p>A map of identities to custom MAIL FROM attributes.</p>
    #
    #   @return [Hash<String, IdentityMailFromDomainAttributes>]
    #
    GetIdentityMailFromDomainAttributesOutput = ::Struct.new(
      :mail_from_domain_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return the notification attributes for a list of identities
    #             you verified with Amazon SES. For information about Amazon SES notifications, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute identities
    #   <p>A list of one or more identities. You can specify an identity by using its name or by
    #               using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>,
    #                   <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #
    #   @return [Array<String>]
    #
    GetIdentityNotificationAttributesInput = ::Struct.new(
      :identities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the notification attributes for a list of identities.</p>
    #
    # @!attribute notification_attributes
    #   <p>A map of Identity to IdentityNotificationAttributes.</p>
    #
    #   @return [Hash<String, IdentityNotificationAttributes>]
    #
    GetIdentityNotificationAttributesOutput = ::Struct.new(
      :notification_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return the requested sending authorization policies for an
    #             identity. Sending authorization is an Amazon SES feature that enables you to authorize other
    #             senders to use your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute identity
    #   <p>The identity for which the policies will be retrieved. You can specify an identity by
    #               using its name or by using its Amazon Resource Name (ARN). Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #           <p>To successfully call this API, you must own the identity.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_names
    #   <p>A list of the names of policies to be retrieved. You can retrieve a maximum of 20
    #               policies at a time. If you do not know the names of the policies that are attached to
    #               the identity, you can use <code>ListIdentityPolicies</code>.</p>
    #
    #   @return [Array<String>]
    #
    GetIdentityPoliciesInput = ::Struct.new(
      :identity,
      :policy_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the requested sending authorization policies.</p>
    #
    # @!attribute policies
    #   <p>A map of policy names to policies.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetIdentityPoliciesOutput = ::Struct.new(
      :policies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return the Amazon SES verification status of a list of identities.
    #             For domain identities, this request also returns the verification token. For information
    #             about verifying identities with Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute identities
    #   <p>A list of identities.</p>
    #
    #   @return [Array<String>]
    #
    GetIdentityVerificationAttributesInput = ::Struct.new(
      :identities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon SES verification status of a list of identities. For domain identities, this
    #             response also contains the verification token.</p>
    #
    # @!attribute verification_attributes
    #   <p>A map of Identities to IdentityVerificationAttributes objects.</p>
    #
    #   @return [Hash<String, IdentityVerificationAttributes>]
    #
    GetIdentityVerificationAttributesOutput = ::Struct.new(
      :verification_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetSendQuotaInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents your Amazon SES daily sending quota, maximum send rate, and the number of emails
    #             you have sent in the last 24 hours.</p>
    #
    # @!attribute max24_hour_send
    #   <p>The maximum number of emails the user is allowed to send in a 24-hour interval. A
    #               value of -1 signifies an unlimited quota.</p>
    #
    #   @return [Float]
    #
    # @!attribute max_send_rate
    #   <p>The maximum number of emails that Amazon SES can accept from the user's account per
    #               second.</p>
    #           <note>
    #               <p>The rate at which Amazon SES accepts the user's messages might be less than the maximum
    #                   send rate.</p>
    #           </note>
    #
    #   @return [Float]
    #
    # @!attribute sent_last24_hours
    #   <p>The number of emails sent during the previous 24 hours.</p>
    #
    #   @return [Float]
    #
    GetSendQuotaOutput = ::Struct.new(
      :max24_hour_send,
      :max_send_rate,
      :sent_last24_hours,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max24_hour_send ||= 0
        self.max_send_rate ||= 0
        self.sent_last24_hours ||= 0
      end

    end

    GetSendStatisticsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a list of data points. This list contains aggregated data from the previous
    #             two weeks of your sending activity with Amazon SES.</p>
    #
    # @!attribute send_data_points
    #   <p>A list of data points, each of which represents 15 minutes of activity.</p>
    #
    #   @return [Array<SendDataPoint>]
    #
    GetSendStatisticsOutput = ::Struct.new(
      :send_data_points,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the template you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetTemplateInput = ::Struct.new(
      :template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template
    #   <p>The content of the email, composed of a subject line, an HTML part, and a text-only
    #               part.</p>
    #
    #   @return [Template]
    #
    GetTemplateOutput = ::Struct.new(
      :template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the DKIM attributes of a verified email address or a domain.</p>
    #
    # @!attribute dkim_enabled
    #   <p>Is true if DKIM signing is enabled for email sent from the identity. It's false
    #               otherwise. The default value is true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute dkim_verification_status
    #   <p>Describes whether Amazon SES has successfully verified the DKIM DNS records (tokens)
    #               published in the domain name's DNS. (This only applies to domain identities, not email
    #               address identities.)</p>
    #
    #   Enum, one of: ["Pending", "Success", "Failed", "TemporaryFailure", "NotStarted"]
    #
    #   @return [String]
    #
    # @!attribute dkim_tokens
    #   <p>A set of character strings that represent the domain's identity. Using these tokens,
    #               you need to create DNS CNAME records that point to DKIM public keys that are hosted by
    #               Amazon SES. Amazon Web Services eventually detects that you've updated your DNS records. This detection
    #               process might take up to 72 hours. After successful detection, Amazon SES is able to
    #               DKIM-sign email originating from that domain. (This only applies to domain identities,
    #               not email address identities.)</p>
    #           <p>For more information about creating DNS records using DKIM tokens, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [Array<String>]
    #
    IdentityDkimAttributes = ::Struct.new(
      :dkim_enabled,
      :dkim_verification_status,
      :dkim_tokens,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.dkim_enabled ||= false
      end

    end

    # <p>Represents the custom MAIL FROM domain attributes of a verified identity (email
    #             address or domain).</p>
    #
    # @!attribute mail_from_domain
    #   <p>The custom MAIL FROM domain that the identity is configured to use.</p>
    #
    #   @return [String]
    #
    # @!attribute mail_from_domain_status
    #   <p>The state that indicates whether Amazon SES has successfully read the MX record required
    #               for custom MAIL FROM domain setup. If the state is <code>Success</code>, Amazon SES uses the
    #               specified custom MAIL FROM domain when the verified identity sends an email. All other
    #               states indicate that Amazon SES takes the action described by
    #                   <code>BehaviorOnMXFailure</code>.</p>
    #
    #   Enum, one of: ["Pending", "Success", "Failed", "TemporaryFailure"]
    #
    #   @return [String]
    #
    # @!attribute behavior_on_mx_failure
    #   <p>The action that Amazon SES takes if it cannot successfully read the required MX record when
    #               you send an email. A value of <code>UseDefaultValue</code> indicates that if Amazon SES
    #               cannot read the required MX record, it uses amazonses.com (or a subdomain of that) as
    #               the MAIL FROM domain. A value of <code>RejectMessage</code> indicates that if Amazon SES
    #               cannot read the required MX record, Amazon SES returns a
    #                   <code>MailFromDomainNotVerified</code> error and does not send the email.</p>
    #           <p>The custom MAIL FROM setup states that result in this behavior are
    #                   <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>.</p>
    #
    #   Enum, one of: ["UseDefaultValue", "RejectMessage"]
    #
    #   @return [String]
    #
    IdentityMailFromDomainAttributes = ::Struct.new(
      :mail_from_domain,
      :mail_from_domain_status,
      :behavior_on_mx_failure,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the notification attributes of an identity, including whether an identity
    #             has Amazon Simple Notification Service (Amazon SNS) topics set for bounce, complaint, and/or delivery notifications,
    #             and whether feedback forwarding is enabled for bounce and complaint
    #             notifications.</p>
    #
    # @!attribute bounce_topic
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish bounce
    #               notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute complaint_topic
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish complaint
    #               notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_topic
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish delivery
    #               notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute forwarding_enabled
    #   <p>Describes whether Amazon SES will forward bounce and complaint notifications as email.
    #                   <code>true</code> indicates that Amazon SES will forward bounce and complaint
    #               notifications as email, while <code>false</code> indicates that bounce and complaint
    #               notifications will be published only to the specified bounce and complaint Amazon SNS
    #               topics.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute headers_in_bounce_notifications_enabled
    #   <p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of
    #               type <code>Bounce</code>. A value of <code>true</code> specifies that Amazon SES will include
    #               headers in bounce notifications, and a value of <code>false</code> specifies that Amazon SES
    #               will not include headers in bounce notifications.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute headers_in_complaint_notifications_enabled
    #   <p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of
    #               type <code>Complaint</code>. A value of <code>true</code> specifies that Amazon SES will
    #               include headers in complaint notifications, and a value of <code>false</code> specifies
    #               that Amazon SES will not include headers in complaint notifications.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute headers_in_delivery_notifications_enabled
    #   <p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of
    #               type <code>Delivery</code>. A value of <code>true</code> specifies that Amazon SES will
    #               include headers in delivery notifications, and a value of <code>false</code> specifies
    #               that Amazon SES will not include headers in delivery notifications.</p>
    #
    #   @return [Boolean]
    #
    IdentityNotificationAttributes = ::Struct.new(
      :bounce_topic,
      :complaint_topic,
      :delivery_topic,
      :forwarding_enabled,
      :headers_in_bounce_notifications_enabled,
      :headers_in_complaint_notifications_enabled,
      :headers_in_delivery_notifications_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.forwarding_enabled ||= false
        self.headers_in_bounce_notifications_enabled ||= false
        self.headers_in_complaint_notifications_enabled ||= false
        self.headers_in_delivery_notifications_enabled ||= false
      end

    end

    # Includes enum constants for IdentityType
    #
    module IdentityType
      # No documentation available.
      #
      EmailAddress = "EmailAddress"

      # No documentation available.
      #
      Domain = "Domain"
    end

    # <p>Represents the verification attributes of a single identity.</p>
    #
    # @!attribute verification_status
    #   <p>The verification status of the identity: "Pending", "Success", "Failed", or
    #               "TemporaryFailure".</p>
    #
    #   Enum, one of: ["Pending", "Success", "Failed", "TemporaryFailure", "NotStarted"]
    #
    #   @return [String]
    #
    # @!attribute verification_token
    #   <p>The verification token for a domain identity. Null for email address
    #               identities.</p>
    #
    #   @return [String]
    #
    IdentityVerificationAttributes = ::Struct.new(
      :verification_status,
      :verification_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the Amazon CloudWatch destination is invalid. See the error message for
    #             details.</p>
    #
    # @!attribute configuration_set_name
    #   <p>Indicates that the configuration set does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>Indicates that the event destination does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidCloudWatchDestinationException = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the configuration set is invalid. See the error message for
    #             details.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidConfigurationSetException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that provided delivery option is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDeliveryOptionsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the Amazon Kinesis Firehose destination is invalid. See the error
    #             message for details.</p>
    #
    # @!attribute configuration_set_name
    #   <p>Indicates that the configuration set does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>Indicates that the event destination does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidFirehoseDestinationException = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the provided AWS Lambda function is invalid, or that Amazon SES could
    #             not execute the provided function, possibly due to permissions issues. For information
    #             about giving permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute function_arn
    #   <p>Indicates that the ARN of the function was not found.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidLambdaFunctionException = ::Struct.new(
      :function_arn,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the provided policy is invalid. Check the error stack for more
    #             information about what caused the error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that one or more of the replacement values you provided is invalid. This
    #             error may occur when the TemplateData object contains invalid JSON.</p>
    #
    # @!attribute template_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRenderingParameterException = ::Struct.new(
      :template_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the provided Amazon S3 bucket or AWS KMS encryption key is invalid, or
    #             that Amazon SES could not publish to the bucket, possibly due to permissions issues. For
    #             information about giving permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute bucket
    #   <p>Indicated that the S3 Bucket was not found.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidS3ConfigurationException = ::Struct.new(
      :bucket,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the Amazon Simple Notification Service (Amazon SNS) destination is
    #             invalid. See the error message for details.</p>
    #
    # @!attribute configuration_set_name
    #   <p>Indicates that the configuration set does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>Indicates that the event destination does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSNSDestinationException = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the provided Amazon SNS topic is invalid, or that Amazon SES could not
    #             publish to the topic, possibly due to permissions issues. For information about giving
    #             permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute topic
    #   <p>Indicates that the topic does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSnsTopicException = ::Struct.new(
      :topic,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the template that you specified could not be rendered. This issue may
    #             occur when a template refers to a partial that does not exist.</p>
    #
    # @!attribute template_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTemplateException = ::Struct.new(
      :template_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the custom domain to be used for open and click tracking redirects is
    #             invalid. This error appears most often in the following situations:</p>
    #         <ul>
    #             <li>
    #                 <p>When the tracking domain you specified is not verified in Amazon SES.</p>
    #             </li>
    #             <li>
    #                 <p>When the tracking domain you specified is not a valid domain or
    #                     subdomain.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTrackingOptionsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InvocationType
    #
    module InvocationType
      # No documentation available.
      #
      Event = "Event"

      # No documentation available.
      #
      RequestResponse = "RequestResponse"
    end

    # <p>Contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event
    #             destination.</p>
    #         <p>Event destinations, such as Amazon Kinesis Firehose, are associated with configuration sets, which enable
    #             you to publish email sending events. For information about using configuration sets, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role under which Amazon SES publishes email sending events to the Amazon Kinesis Firehose
    #               stream.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_stream_arn
    #   <p>The ARN of the Amazon Kinesis Firehose stream that email sending events should be published to.</p>
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

    # <p>When included in a receipt rule, this action calls an AWS Lambda function and,
    #             optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>
    #         <p>To enable Amazon SES to call your AWS Lambda function or to publish to an Amazon SNS topic of
    #             another account, Amazon SES must have permission to access those resources. For information
    #             about giving permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <p>For information about using AWS Lambda actions in receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the Lambda action is
    #               taken. An example of an Amazon SNS topic ARN is
    #                   <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about
    #               Amazon SNS topics, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Lambda function. An example of an AWS Lambda
    #               function ARN is <code>arn:aws:lambda:us-west-2:account-id:function:MyFunction</code>.
    #               For more information about AWS Lambda, see the <a href="https://docs.aws.amazon.com/lambda/latest/dg/welcome.html">AWS Lambda Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_type
    #   <p>The invocation type of the AWS Lambda function. An invocation type of
    #                   <code>RequestResponse</code> means that the execution of the function will
    #               immediately result in a response, and a value of <code>Event</code> means that the
    #               function will be invoked asynchronously. The default value is <code>Event</code>. For
    #               information about AWS Lambda invocation types, see the <a href="https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html">AWS Lambda Developer Guide</a>.</p>
    #           <important>
    #               <p>There is a 30-second timeout on <code>RequestResponse</code> invocations. You
    #                   should use <code>Event</code> invocation in most cases. Use
    #                       <code>RequestResponse</code> only when you want to make a mail flow decision,
    #                   such as whether to stop the receipt rule or the receipt rule set.</p>
    #           </important>
    #
    #   Enum, one of: ["Event", "RequestResponse"]
    #
    #   @return [String]
    #
    LambdaAction = ::Struct.new(
      :topic_arn,
      :function_arn,
      :invocation_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a resource could not be created because of service limits. For a list
    #             of Amazon SES limits, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/limits.html">Amazon SES Developer
    #             Guide</a>.</p>
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

    # <p>Represents a request to list the configuration sets associated with your AWS account.
    #             Configuration sets enable you to publish email sending events. For information about
    #             using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListConfigurationSets</code> to
    #               indicate the position of the configuration set in the configuration set list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The number of configuration sets to return.</p>
    #
    #   @return [Integer]
    #
    ListConfigurationSetsInput = ::Struct.new(
      :next_token,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of configuration sets associated with your AWS account. Configuration sets
    #             enable you to publish email sending events. For information about using configuration
    #             sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute configuration_sets
    #   <p>A list of configuration sets.</p>
    #
    #   @return [Array<ConfigurationSet>]
    #
    # @!attribute next_token
    #   <p>A token indicating that there are additional configuration sets available to be
    #               listed. Pass this token to successive calls of <code>ListConfigurationSets</code>.
    #           </p>
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

    # <p>Represents a request to list the existing custom verification email templates for your
    #             account.</p>
    #         <p>For more information about custom verification email templates, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom
    #                 Verification Email Templates</a> in the <i>Amazon SES Developer
    #                 Guide</i>.</p>
    #
    # @!attribute next_token
    #   <p>An array the contains the name and creation time stamp for each template in your Amazon SES
    #               account.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of custom verification email templates to return. This value must
    #               be at least 1 and less than or equal to 50. If you do not specify a value, or if you
    #               specify a value less than 1 or greater than 50, the operation will return up to 50
    #               results.</p>
    #
    #   @return [Integer]
    #
    ListCustomVerificationEmailTemplatesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A paginated list of custom verification email templates.</p>
    #
    # @!attribute custom_verification_email_templates
    #   <p>A list of the custom verification email templates that exist in your account.</p>
    #
    #   @return [Array<CustomVerificationEmailTemplate>]
    #
    # @!attribute next_token
    #   <p>A token indicating that there are additional custom verification email templates
    #               available to be listed. Pass this token to a subsequent call to
    #                   <code>ListTemplates</code> to retrieve the next 50 custom verification email
    #               templates.</p>
    #
    #   @return [String]
    #
    ListCustomVerificationEmailTemplatesOutput = ::Struct.new(
      :custom_verification_email_templates,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return a list of all identities (email addresses and domains)
    #             that you have attempted to verify under your AWS account, regardless of verification
    #             status.</p>
    #
    # @!attribute identity_type
    #   <p>The type of the identities to list. Possible values are "EmailAddress" and "Domain".
    #               If this parameter is omitted, then all identities will be listed.</p>
    #
    #   Enum, one of: ["EmailAddress", "Domain"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use for pagination.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of identities per page. Possible values are 1-1000
    #               inclusive.</p>
    #
    #   @return [Integer]
    #
    ListIdentitiesInput = ::Struct.new(
      :identity_type,
      :next_token,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of all identities that you have attempted to verify under your AWS account,
    #             regardless of verification status.</p>
    #
    # @!attribute identities
    #   <p>A list of identities.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token used for pagination.</p>
    #
    #   @return [String]
    #
    ListIdentitiesOutput = ::Struct.new(
      :identities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to return a list of sending authorization policies that are
    #             attached to an identity. Sending authorization is an Amazon SES feature that enables you to
    #             authorize other senders to use your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute identity
    #   <p>The identity that is associated with the policy for which the policies will be listed.
    #               You can specify an identity by using its name or by using its Amazon Resource Name
    #               (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #           <p>To successfully call this API, you must own the identity.</p>
    #
    #   @return [String]
    #
    ListIdentityPoliciesInput = ::Struct.new(
      :identity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of names of sending authorization policies that apply to an identity.</p>
    #
    # @!attribute policy_names
    #   <p>A list of names of policies that apply to the specified identity.</p>
    #
    #   @return [Array<String>]
    #
    ListIdentityPoliciesOutput = ::Struct.new(
      :policy_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to list the IP address filters that exist under your AWS account.
    #             You use IP address filters when you receive email with Amazon SES. For more information, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    ListReceiptFiltersInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of IP address filters that exist under your AWS account.</p>
    #
    # @!attribute filters
    #   <p>A list of IP address filter data structures, which each consist of a name, an IP
    #               address range, and whether to allow or block mail from it.</p>
    #
    #   @return [Array<ReceiptFilter>]
    #
    ListReceiptFiltersOutput = ::Struct.new(
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to list the receipt rule sets that exist under your AWS account.
    #             You use receipt rule sets to receive email with Amazon SES. For more information, see the
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListReceiptRuleSets</code> to indicate
    #               the position in the receipt rule set list.</p>
    #
    #   @return [String]
    #
    ListReceiptRuleSetsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of receipt rule sets that exist under your AWS account.</p>
    #
    # @!attribute rule_sets
    #   <p>The metadata for the currently active receipt rule set. The metadata consists of the
    #               rule set name and the timestamp of when the rule set was created.</p>
    #
    #   @return [Array<ReceiptRuleSetMetadata>]
    #
    # @!attribute next_token
    #   <p>A token indicating that there are additional receipt rule sets available to be listed.
    #               Pass this token to successive calls of <code>ListReceiptRuleSets</code> to retrieve up
    #               to 100 receipt rule sets at a time.</p>
    #
    #   @return [String]
    #
    ListReceiptRuleSetsOutput = ::Struct.new(
      :rule_sets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListTemplates</code> to indicate the
    #               position in the list of email templates.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The maximum number of templates to return. This value must be at least 1 and less than
    #               or equal to 10. If you do not specify a value, or if you specify a value less than 1 or
    #               greater than 10, the operation will return up to 10 results.</p>
    #
    #   @return [Integer]
    #
    ListTemplatesInput = ::Struct.new(
      :next_token,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute templates_metadata
    #   <p>An array the contains the name and creation time stamp for each template in your Amazon SES
    #               account.</p>
    #
    #   @return [Array<TemplateMetadata>]
    #
    # @!attribute next_token
    #   <p>A token indicating that there are additional email templates available to be listed.
    #               Pass this token to a subsequent call to <code>ListTemplates</code> to retrieve the next
    #               50 email templates.</p>
    #
    #   @return [String]
    #
    ListTemplatesOutput = ::Struct.new(
      :templates_metadata,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ListVerifiedEmailAddressesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of email addresses that you have verified with Amazon SES under your AWS
    #             account.</p>
    #
    # @!attribute verified_email_addresses
    #   <p>A list of email addresses that have been verified.</p>
    #
    #   @return [Array<String>]
    #
    ListVerifiedEmailAddressesOutput = ::Struct.new(
      :verified_email_addresses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Indicates that the message could not be sent because Amazon SES could not read the MX
    #             record required to use the specified MAIL FROM domain. For information about editing the
    #             custom MAIL FROM domain settings for an identity, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-edit.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MailFromDomainNotVerifiedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the message to be sent, composed of a subject and a body.</p>
    #
    # @!attribute subject
    #   <p>The subject of the message: A short summary of the content, which will appear in the
    #               recipient's inbox.</p>
    #
    #   @return [Content]
    #
    # @!attribute body
    #   <p>The message body.</p>
    #
    #   @return [Body]
    #
    Message = ::Struct.new(
      :subject,
      :body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Message-related information to include in the Delivery Status Notification (DSN) when
    #             an email that Amazon SES receives on your behalf bounces.</p>
    #         <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute reporting_mta
    #   <p>The reporting MTA that attempted to deliver the message, formatted as specified in
    #                   <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a>
    #                   (<code>mta-name-type; mta-name</code>). The default value is <code>dns;
    #                   inbound-smtp.[region].amazonaws.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute arrival_date
    #   <p>When the message was received by the reporting mail transfer agent (MTA), in <a href="https://www.ietf.org/rfc/rfc0822.txt">RFC 822</a> date-time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute extension_fields
    #   <p>Additional X-headers to include in the DSN.</p>
    #
    #   @return [Array<ExtensionField>]
    #
    MessageDsn = ::Struct.new(
      :reporting_mta,
      :arrival_date,
      :extension_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the action failed, and the message could not be sent. Check the error
    #             stack for more information about what caused the error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MessageRejected = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the name and value of a tag that you can provide to <code>SendEmail</code> or
    #                 <code>SendRawEmail</code> to apply to an email.</p>
    #         <p>Message tags, which you use with configuration sets, enable you to publish email
    #             sending events. For information about using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the tag. The name must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 256 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag. The value must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 256 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    MessageTag = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that one or more of the replacement values for the specified template was
    #             not specified. Ensure that the TemplateData object contains references to all of the
    #             replacement tags in the specified template.</p>
    #
    # @!attribute template_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MissingRenderingAttributeException = ::Struct.new(
      :template_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NotificationType
    #
    module NotificationType
      # No documentation available.
      #
      Bounce = "Bounce"

      # No documentation available.
      #
      Complaint = "Complaint"

      # No documentation available.
      #
      Delivery = "Delivery"
    end

    # <p>Indicates that the account has not been granted production access.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ProductionAccessNotGrantedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to modify the delivery options for a configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to specify the delivery options
    #               for.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_options
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS).</p>
    #
    #   @return [DeliveryOptions]
    #
    PutConfigurationSetDeliveryOptionsInput = ::Struct.new(
      :configuration_set_name,
      :delivery_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutConfigurationSetDeliveryOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to add or update a sending authorization policy for an identity.
    #             Sending authorization is an Amazon SES feature that enables you to authorize other senders to
    #             use your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute identity
    #   <p>The identity that the policy will apply to. You can specify an identity by using its
    #               name or by using its Amazon Resource Name (ARN). Examples:
    #               <code>user@example.com</code>, <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #           <p>To successfully call this API, you must own the identity.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #           <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
    #           <p>For information about the syntax of sending authorization policies, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer
    #                   Guide</a>. </p>
    #
    #   @return [String]
    #
    PutIdentityPolicyInput = ::Struct.new(
      :identity,
      :policy_name,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    PutIdentityPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the raw data of the message.</p>
    #
    # @!attribute data
    #   <p>The raw data of the message. This data needs to base64-encoded if you are accessing
    #               Amazon SES directly through the HTTPS interface. If you are accessing Amazon SES using an AWS
    #               SDK, the SDK takes care of the base 64-encoding for you. In all cases, the client must
    #               ensure that the message format complies with Internet email standards regarding email
    #               header fields, MIME types, and MIME encoding.</p>
    #           <p>The To:, CC:, and BCC: headers in the raw message can contain a group list.</p>
    #           <p>If you are using <code>SendRawEmail</code> with sending authorization, you can include
    #               X-headers in the raw message to specify the "Source," "From," and "Return-Path"
    #               addresses. For more information, see the documentation for <code>SendRawEmail</code>. </p>
    #           <important>
    #               <p>Do not include these X-headers in the DKIM signature, because they are removed by
    #                   Amazon SES before sending the email.</p>
    #           </important>
    #           <p>For more information, go to the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Amazon SES Developer
    #               Guide</a>.</p>
    #
    #   @return [String]
    #
    RawMessage = ::Struct.new(
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An action that Amazon SES can take when it receives an email on behalf of one or more email
    #             addresses or domains that you own. An instance of this data type can represent only one
    #             action.</p>
    #         <p>For information about setting up receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute s3_action
    #   <p>Saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a
    #               notification to Amazon SNS.</p>
    #
    #   @return [S3Action]
    #
    # @!attribute bounce_action
    #   <p>Rejects the received email by returning a bounce response to the sender and,
    #               optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>
    #
    #   @return [BounceAction]
    #
    # @!attribute workmail_action
    #   <p>Calls Amazon WorkMail and, optionally, publishes a notification to Amazon
    #               Amazon SNS.</p>
    #
    #   @return [WorkmailAction]
    #
    # @!attribute lambda_action
    #   <p>Calls an AWS Lambda function, and optionally, publishes a notification to Amazon SNS.</p>
    #
    #   @return [LambdaAction]
    #
    # @!attribute stop_action
    #   <p>Terminates the evaluation of the receipt rule set and optionally publishes a
    #               notification to Amazon SNS.</p>
    #
    #   @return [StopAction]
    #
    # @!attribute add_header_action
    #   <p>Adds a header to the received email.</p>
    #
    #   @return [AddHeaderAction]
    #
    # @!attribute sns_action
    #   <p>Publishes the email content within a notification to Amazon SNS.</p>
    #
    #   @return [SNSAction]
    #
    ReceiptAction = ::Struct.new(
      :s3_action,
      :bounce_action,
      :workmail_action,
      :lambda_action,
      :stop_action,
      :add_header_action,
      :sns_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A receipt IP address filter enables you to specify whether to accept or reject mail
    #             originating from an IP address or range of IP addresses.</p>
    #         <p>For information about setting up IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the IP address filter. The name must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Start and end with a letter or number.</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 64 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute ip_filter
    #   <p>A structure that provides the IP addresses to block or allow, and whether to block or
    #               allow incoming mail from them.</p>
    #
    #   @return [ReceiptIpFilter]
    #
    ReceiptFilter = ::Struct.new(
      :name,
      :ip_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReceiptFilterPolicy
    #
    module ReceiptFilterPolicy
      # No documentation available.
      #
      Block = "Block"

      # No documentation available.
      #
      Allow = "Allow"
    end

    # <p>A receipt IP address filter enables you to specify whether to accept or reject mail
    #             originating from an IP address or range of IP addresses.</p>
    #         <p>For information about setting up IP address filters, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute policy
    #   <p>Indicates whether to block or allow incoming mail from the specified IP
    #               addresses.</p>
    #
    #   Enum, one of: ["Block", "Allow"]
    #
    #   @return [String]
    #
    # @!attribute cidr
    #   <p>A single IP address or a range of IP addresses that you want to block or allow,
    #               specified in Classless Inter-Domain Routing (CIDR) notation. An example of a single
    #               email address is 10.0.0.1. An example of a range of IP addresses is 10.0.0.1/24. For
    #               more information about CIDR notation, see <a href="https://tools.ietf.org/html/rfc2317">RFC 2317</a>.</p>
    #
    #   @return [String]
    #
    ReceiptIpFilter = ::Struct.new(
      :policy,
      :cidr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Receipt rules enable you to specify which actions Amazon SES should take when it receives
    #             mail on behalf of one or more email addresses or domains that you own.</p>
    #         <p>Each receipt rule defines a set of email addresses or domains that it applies to. If
    #             the email addresses or domains match at least one recipient address of the message,
    #             Amazon SES executes all of the receipt rule's actions on the message.</p>
    #         <p>For information about setting up receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the receipt rule. The name must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Start and end with a letter or number.</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 64 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>If <code>true</code>, the receipt rule is active. The default value is
    #                   <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tls_policy
    #   <p>Specifies whether Amazon SES should require that incoming email is delivered over a
    #               connection encrypted with Transport Layer Security (TLS). If this parameter is set to
    #                   <code>Require</code>, Amazon SES will bounce emails that are not received over TLS. The
    #               default is <code>Optional</code>.</p>
    #
    #   Enum, one of: ["Require", "Optional"]
    #
    #   @return [String]
    #
    # @!attribute recipients
    #   <p>The recipient domains and email addresses that the receipt rule applies to. If this
    #               field is not specified, this rule will match all recipients under all verified
    #               domains.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute actions
    #   <p>An ordered list of actions to perform on messages that match at least one of the
    #               recipient email addresses or domains specified in the receipt rule.</p>
    #
    #   @return [Array<ReceiptAction>]
    #
    # @!attribute scan_enabled
    #   <p>If <code>true</code>, then messages that this receipt rule applies to are scanned for
    #               spam and viruses. The default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    ReceiptRule = ::Struct.new(
      :name,
      :enabled,
      :tls_policy,
      :recipients,
      :actions,
      :scan_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
        self.scan_enabled ||= false
      end

    end

    # <p>Information about a receipt rule set.</p>
    #         <p>A receipt rule set is a collection of rules that specify what Amazon SES should do with
    #             mail it receives on behalf of your account's verified domains.</p>
    #         <p>For information about setting up receipt rule sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the receipt rule set. The name must:</p>
    #           <ul>
    #               <li>
    #                   <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>Start and end with a letter or number.</p>
    #               </li>
    #               <li>
    #                   <p>Contain less than 64 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The date and time the receipt rule set was created.</p>
    #
    #   @return [Time]
    #
    ReceiptRuleSetMetadata = ::Struct.new(
      :name,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Recipient-related information to include in the Delivery Status Notification (DSN)
    #             when an email that Amazon SES receives on your behalf bounces.</p>
    #         <p>For information about receiving email through Amazon SES, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute final_recipient
    #   <p>The email address that the message was ultimately delivered to. This corresponds to
    #               the <code>Final-Recipient</code> in the DSN. If not specified,
    #                   <code>FinalRecipient</code> will be set to the <code>Recipient</code> specified in
    #               the <code>BouncedRecipientInfo</code> structure. Either <code>FinalRecipient</code> or
    #               the recipient in <code>BouncedRecipientInfo</code> must be a recipient of the original
    #               bounced message.</p>
    #           <note>
    #               <p>Do not prepend the <code>FinalRecipient</code> email address with <code>rfc
    #                       822;</code>, as described in <a href="https://tools.ietf.org/html/rfc3798">RFC 3798</a>.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The action performed by the reporting mail transfer agent (MTA) as a result of its
    #               attempt to deliver the message to the recipient address. This is required by <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a>.</p>
    #
    #   Enum, one of: ["failed", "delayed", "delivered", "relayed", "expanded"]
    #
    #   @return [String]
    #
    # @!attribute remote_mta
    #   <p>The MTA to which the remote MTA attempted to deliver the message, formatted as
    #               specified in <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a>
    #                   (<code>mta-name-type; mta-name</code>). This parameter typically applies only to
    #               propagating synchronous bounces.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status code that indicates what went wrong. This is required by <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute diagnostic_code
    #   <p>An extended explanation of what went wrong; this is usually an SMTP response. See
    #                   <a href="https://tools.ietf.org/html/rfc3463">RFC 3463</a> for the correct
    #               formatting of this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute last_attempt_date
    #   <p>The time the final delivery attempt was made, in <a href="https://www.ietf.org/rfc/rfc0822.txt">RFC 822</a> date-time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute extension_fields
    #   <p>Additional X-headers to include in the DSN.</p>
    #
    #   @return [Array<ExtensionField>]
    #
    RecipientDsnFields = ::Struct.new(
      :final_recipient,
      :action,
      :remote_mta,
      :status,
      :diagnostic_code,
      :last_attempt_date,
      :extension_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to reorder the receipt rules within a receipt rule set. You use
    #             receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the receipt rule set to reorder.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_names
    #   <p>A list of the specified receipt rule set's receipt rules in the order that you want to
    #               put them.</p>
    #
    #   @return [Array<String>]
    #
    ReorderReceiptRuleSetInput = ::Struct.new(
      :rule_set_name,
      :rule_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    ReorderReceiptRuleSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the reputation settings for a configuration set.</p>
    #
    # @!attribute sending_enabled
    #   <p>Describes whether email sending is enabled or disabled for the configuration set. If
    #               the value is <code>true</code>, then Amazon SES will send emails that use the configuration
    #               set. If the value is <code>false</code>, Amazon SES will not send emails that use the
    #               configuration set. The default value is <code>true</code>. You can change this setting
    #               using <a>UpdateConfigurationSetSendingEnabled</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute reputation_metrics_enabled
    #   <p>Describes whether or not Amazon SES publishes reputation metrics for the configuration set,
    #               such as bounce and complaint rates, to Amazon CloudWatch.</p>
    #           <p>If the value is <code>true</code>, reputation metrics are published. If the value is
    #                   <code>false</code>, reputation metrics are not published. The default value is
    #                   <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_fresh_start
    #   <p>The date and time at which the reputation metrics for the configuration set were last
    #               reset. Resetting these metrics is known as a <i>fresh start</i>.</p>
    #           <p>When you disable email sending for a configuration set using <a>UpdateConfigurationSetSendingEnabled</a> and later re-enable it, the
    #               reputation metrics for the configuration set (but not for the entire Amazon SES account) are
    #               reset.</p>
    #           <p>If email sending for the configuration set has never been disabled and later
    #               re-enabled, the value of this attribute is <code>null</code>.</p>
    #
    #   @return [Time]
    #
    ReputationOptions = ::Struct.new(
      :sending_enabled,
      :reputation_metrics_enabled,
      :last_fresh_start,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.sending_enabled ||= false
        self.reputation_metrics_enabled ||= false
      end

    end

    # <p>Indicates that the provided receipt rule does not exist.</p>
    #
    # @!attribute name
    #   <p>Indicates that the named receipt rule does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RuleDoesNotExistException = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the provided receipt rule set does not exist.</p>
    #
    # @!attribute name
    #   <p>Indicates that the named receipt rule set does not exist.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RuleSetDoesNotExistException = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service
    #             (Amazon S3) bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>
    #         <p>To enable Amazon SES to write emails to your Amazon S3 bucket, use an AWS KMS key to encrypt
    #             your emails, or publish to an Amazon SNS topic of another account, Amazon SES must have permission
    #             to access those resources. For information about giving permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <note>
    #             <p>When you save your emails to an Amazon S3 bucket, the maximum email size (including
    #                 headers) is 30 MB. Emails larger than that will bounce.</p>
    #         </note>
    #         <p>For information about specifying Amazon S3 actions in receipt rules, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute topic_arn
    #   <p>The ARN of the Amazon SNS topic to notify when the message is saved to the Amazon S3 bucket. An
    #               example of an Amazon SNS topic ARN is
    #               <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about
    #               Amazon SNS topics, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket that incoming email will be saved to.</p>
    #
    #   @return [String]
    #
    # @!attribute object_key_prefix
    #   <p>The key prefix of the Amazon S3 bucket. The key prefix is similar to a directory name that
    #               enables you to store similar data under the same directory in a bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The customer master key that Amazon SES should use to encrypt your emails before saving
    #               them to the Amazon S3 bucket. You can use the default master key or a custom master key you
    #               created in AWS KMS as follows:</p>
    #           <ul>
    #               <li>
    #                   <p>To use the default master key, provide an ARN in the form of
    #                           <code>arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias/aws/ses</code>.
    #                       For example, if your AWS account ID is 123456789012 and you want to use the
    #                       default master key in the US West (Oregon) region, the ARN of the default master
    #                       key would be <code>arn:aws:kms:us-west-2:123456789012:alias/aws/ses</code>. If
    #                       you use the default master key, you don't need to perform any extra steps to
    #                       give Amazon SES permission to use the key.</p>
    #               </li>
    #               <li>
    #                   <p>To use a custom master key you created in AWS KMS, provide the ARN of the
    #                       master key and ensure that you add a statement to your key's policy to give
    #                       Amazon SES permission to use it. For more information about giving permissions, see
    #                       the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES
    #                           Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    #           <p>For more information about key policies, see the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html">AWS KMS Developer Guide</a>. If
    #               you do not specify a master key, Amazon SES will not encrypt your emails.</p>
    #           <important>
    #               <p>Your mail is encrypted by Amazon SES using the Amazon S3 encryption client before the mail
    #                   is submitted to Amazon S3 for storage. It is not encrypted using Amazon S3 server-side
    #                   encryption. This means that you must use the Amazon S3 encryption client to decrypt the
    #                   email after retrieving it from Amazon S3, as the service has no access to use your AWS
    #                   KMS keys for decryption. This encryption client is currently available with the
    #                       <a href="http://aws.amazon.com/sdk-for-java/">AWS SDK for Java</a> and <a href="http://aws.amazon.com/sdk-for-ruby/">AWS SDK for Ruby</a> only. For more
    #                   information about client-side encryption using AWS KMS master keys, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon S3 Developer Guide</a>.</p>
    #           </important>
    #
    #   @return [String]
    #
    S3Action = ::Struct.new(
      :topic_arn,
      :bucket_name,
      :object_key_prefix,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When included in a receipt rule, this action publishes a notification to Amazon Simple Notification Service
    #             (Amazon SNS). This action includes a complete copy of the email content in the Amazon SNS
    #             notifications. Amazon SNS notifications for all other actions simply provide information
    #             about the email. They do not include the email content itself.</p>
    #         <p>If you own the Amazon SNS topic, you don't need to do anything to give Amazon SES permission to
    #             publish emails to it. However, if you don't own the Amazon SNS topic, you need to attach a
    #             policy to the topic to give Amazon SES permissions to access it. For information about giving
    #             permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #         <important>
    #             <p>You can only publish emails that are 150 KB or less (including the header) to
    #                 Amazon SNS. Larger emails will bounce. If you anticipate emails larger than 150 KB, use
    #                 the S3 action instead.</p>
    #         </important>
    #         <p>For information about using a receipt rule to publish an Amazon SNS notification, see the
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-sns.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify. An example of an Amazon SNS
    #               topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more
    #               information about Amazon SNS topics, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute encoding
    #   <p>The encoding to use for the email within the Amazon SNS notification. UTF-8 is easier to
    #               use, but may not preserve all special characters when a message was encoded with a
    #               different encoding format. Base64 preserves all special characters. The default value is
    #               UTF-8.</p>
    #
    #   Enum, one of: ["UTF-8", "Base64"]
    #
    #   @return [String]
    #
    SNSAction = ::Struct.new(
      :topic_arn,
      :encoding,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SNSActionEncoding
    #
    module SNSActionEncoding
      # No documentation available.
      #
      UTF8 = "UTF-8"

      # No documentation available.
      #
      Base64 = "Base64"
    end

    # <p>Contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event destination.</p>
    #         <p>Event destinations, such as Amazon SNS, are associated with configuration sets, which
    #             enable you to publish email sending events. For information about using configuration
    #             sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute topic_arn
    #   <p>The ARN of the Amazon SNS topic that email sending events will be published to. An example
    #               of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For
    #               more information about Amazon SNS topics, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    SNSDestination = ::Struct.new(
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to send a bounce message to the sender of an email you received
    #             through Amazon SES.</p>
    #
    # @!attribute original_message_id
    #   <p>The message ID of the message to be bounced.</p>
    #
    #   @return [String]
    #
    # @!attribute bounce_sender
    #   <p>The address to use in the "From" header of the bounce message. This must be an
    #               identity that you have verified with Amazon SES.</p>
    #
    #   @return [String]
    #
    # @!attribute explanation
    #   <p>Human-readable text for the bounce message to explain the failure. If not specified,
    #               the text will be auto-generated based on the bounced recipient information.</p>
    #
    #   @return [String]
    #
    # @!attribute message_dsn
    #   <p>Message-related DSN fields. If not specified, Amazon SES will choose the values.</p>
    #
    #   @return [MessageDsn]
    #
    # @!attribute bounced_recipient_info_list
    #   <p>A list of recipients of the bounced message, including the information required to
    #               create the Delivery Status Notifications (DSNs) for the recipients. You must specify at
    #               least one <code>BouncedRecipientInfo</code> in the list.</p>
    #
    #   @return [Array<BouncedRecipientInfo>]
    #
    # @!attribute bounce_sender_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               address in the "From" header of the bounce. For more information about sending
    #               authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    SendBounceInput = ::Struct.new(
      :original_message_id,
      :bounce_sender,
      :explanation,
      :message_dsn,
      :bounced_recipient_info_list,
      :bounce_sender_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a unique message ID.</p>
    #
    # @!attribute message_id
    #   <p>The message ID of the bounce message.</p>
    #
    #   @return [String]
    #
    SendBounceOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to send a templated email to multiple destinations using Amazon SES.
    #             For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute source
    #   <p>The email address that is sending the email. This email address must be either
    #               individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
    #               For information about verifying identities, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #           <p>If you are sending on behalf of another user and have been permitted to do so by a
    #               sending authorization policy, then you must also specify the <code>SourceArn</code>
    #               parameter. For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    #           <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                       <i>local part</i> of a source email address (the part of the email
    #                   address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address Local-part">7-bit ASCII
    #                       characters</a>. If the <i>domain part</i> of an address (the
    #                   part after the @ sign) contains non-ASCII characters, they must be encoded using
    #                   Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly
    #                       name</i>) may contain non-ASCII characters. These characters must be
    #                   encoded using MIME encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word
    #                   syntax uses the following form:
    #                   <code>=?charset?encoding?encoded-text?=</code>.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute reply_to_addresses
    #   <p>The reply-to email address(es) for the message. If the recipient replies to the
    #               message, each reply-to address will receive the reply.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute return_path
    #   <p>The email address that bounces and complaints will be forwarded to when feedback
    #               forwarding is enabled. If the message cannot be delivered to the recipient, then an
    #               error message will be returned from the recipient's ISP; this message will then be
    #               forwarded to the email address specified by the <code>ReturnPath</code> parameter. The
    #                   <code>ReturnPath</code> parameter is never overwritten. This email address must be
    #               either individually verified with Amazon SES, or from a domain that has been verified with
    #               Amazon SES. </p>
    #
    #   @return [String]
    #
    # @!attribute return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendBulkTemplatedEmail</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute default_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send to
    #               a destination using <code>SendBulkTemplatedEmail</code>.</p>
    #
    #   @return [Array<MessageTag>]
    #
    # @!attribute template
    #   <p>The template to use when sending this email.</p>
    #
    #   @return [String]
    #
    # @!attribute template_arn
    #   <p>The ARN of the template to use when sending this email.</p>
    #
    #   @return [String]
    #
    # @!attribute default_template_data
    #   <p>A list of replacement values to apply to the template when replacement data is not
    #               specified in a Destination object. These values act as a default or fallback option when
    #               no other data is available.</p>
    #           <p>The template data is a JSON object, typically consisting of key-value pairs in which
    #               the keys correspond to replacement tags in the email template.</p>
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   <p>One or more <code>Destination</code> objects. All of the recipients in a
    #                   <code>Destination</code> will receive the same version of the email. You can specify
    #               up to 50 <code>Destination</code> objects within a <code>Destinations</code>
    #               array.</p>
    #
    #   @return [Array<BulkEmailDestination>]
    #
    SendBulkTemplatedEmailInput = ::Struct.new(
      :source,
      :source_arn,
      :reply_to_addresses,
      :return_path,
      :return_path_arn,
      :configuration_set_name,
      :default_tags,
      :template,
      :template_arn,
      :default_template_data,
      :destinations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The unique message identifier returned from the <code>SendBulkTemplatedEmail</code>
    #               action.</p>
    #
    #   @return [Array<BulkEmailDestinationStatus>]
    #
    SendBulkTemplatedEmailOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to send a custom verification email to a specified
    #             recipient.</p>
    #
    # @!attribute email_address
    #   <p>The email address to verify.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the custom verification email template to use when sending the
    #               verification email.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>Name of a configuration set to use when sending the verification email.</p>
    #
    #   @return [String]
    #
    SendCustomVerificationEmailInput = ::Struct.new(
      :email_address,
      :template_name,
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response received when attempting to send the custom verification email.</p>
    #
    # @!attribute message_id
    #   <p>The unique message identifier returned from the
    #                   <code>SendCustomVerificationEmail</code> operation.</p>
    #
    #   @return [String]
    #
    SendCustomVerificationEmailOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents sending statistics data. Each <code>SendDataPoint</code> contains
    #             statistics for a 15-minute period of sending activity. </p>
    #
    # @!attribute timestamp
    #   <p>Time of the data point.</p>
    #
    #   @return [Time]
    #
    # @!attribute delivery_attempts
    #   <p>Number of emails that have been sent.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bounces
    #   <p>Number of emails that have bounced.</p>
    #
    #   @return [Integer]
    #
    # @!attribute complaints
    #   <p>Number of unwanted emails that were rejected by recipients.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rejects
    #   <p>Number of emails rejected by Amazon SES.</p>
    #
    #   @return [Integer]
    #
    SendDataPoint = ::Struct.new(
      :timestamp,
      :delivery_attempts,
      :bounces,
      :complaints,
      :rejects,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.delivery_attempts ||= 0
        self.bounces ||= 0
        self.complaints ||= 0
        self.rejects ||= 0
      end

    end

    # <p>Represents a request to send a single formatted email using Amazon SES. For more
    #             information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute source
    #   <p>The email address that is sending the email. This email address must be either
    #               individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
    #               For information about verifying identities, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #           <p>If you are sending on behalf of another user and have been permitted to do so by a
    #               sending authorization policy, then you must also specify the <code>SourceArn</code>
    #               parameter. For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    #           <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                       <i>local part</i> of a source email address (the part of the email
    #                   address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address Local-part">7-bit ASCII
    #                       characters</a>. If the <i>domain part</i> of an address (the
    #                   part after the @ sign) contains non-ASCII characters, they must be encoded using
    #                   Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly
    #                       name</i>) may contain non-ASCII characters. These characters must be
    #                   encoded using MIME encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word
    #                   syntax uses the following form:
    #                   <code>=?charset?encoding?encoded-text?=</code>.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The destination for this email, composed of To:, CC:, and BCC: fields.</p>
    #
    #   @return [Destination]
    #
    # @!attribute message
    #   <p>The message to be sent.</p>
    #
    #   @return [Message]
    #
    # @!attribute reply_to_addresses
    #   <p>The reply-to email address(es) for the message. If the recipient replies to the
    #               message, each reply-to address will receive the reply.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute return_path
    #   <p>The email address that bounces and complaints will be forwarded to when feedback
    #               forwarding is enabled. If the message cannot be delivered to the recipient, then an
    #               error message will be returned from the recipient's ISP; this message will then be
    #               forwarded to the email address specified by the <code>ReturnPath</code> parameter. The
    #                   <code>ReturnPath</code> parameter is never overwritten. This email address must be
    #               either individually verified with Amazon SES, or from a domain that has been verified with
    #               Amazon SES. </p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using <code>SendEmail</code>. Tags correspond to characteristics of the email that you
    #               define, so that you can publish email sending events.</p>
    #
    #   @return [Array<MessageTag>]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendEmail</code>.</p>
    #
    #   @return [String]
    #
    SendEmailInput = ::Struct.new(
      :source,
      :destination,
      :message,
      :reply_to_addresses,
      :return_path,
      :source_arn,
      :return_path_arn,
      :tags,
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a unique message ID.</p>
    #
    # @!attribute message_id
    #   <p>The unique message identifier returned from the <code>SendEmail</code> action. </p>
    #
    #   @return [String]
    #
    SendEmailOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to send a single raw email using Amazon SES. For more information, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute source
    #   <p>The identity's email address. If you do not provide a value for this parameter, you
    #               must specify a "From" address in the raw text of the message. (You can also specify
    #               both.)</p>
    #           <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in<a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                       <i>local part</i> of a source email address (the part of the email
    #                   address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address Local-part">7-bit ASCII
    #                       characters</a>. If the <i>domain part</i> of an address (the
    #                   part after the @ sign) contains non-ASCII characters, they must be encoded using
    #                   Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly
    #                       name</i>) may contain non-ASCII characters. These characters must be
    #                   encoded using MIME encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word
    #                   syntax uses the following form:
    #                   <code>=?charset?encoding?encoded-text?=</code>.</p>
    #           </note>
    #
    #           <p>If you specify the <code>Source</code> parameter and have feedback forwarding enabled,
    #               then bounces and complaints will be sent to this email address. This takes precedence
    #               over any Return-Path header that you might include in the raw text of the
    #               message.</p>
    #
    #   @return [String]
    #
    # @!attribute destinations
    #   <p>A list of destinations for the message, consisting of To:, CC:, and BCC:
    #               addresses.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute raw_message
    #   <p>The raw email message itself. The message has to meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>The message has to contain a header and a body, separated by a blank
    #                       line.</p>
    #               </li>
    #               <li>
    #                   <p>All of the required header fields must be present in the message.</p>
    #               </li>
    #               <li>
    #                   <p>Each part of a multipart MIME message must be formatted properly.</p>
    #               </li>
    #               <li>
    #                   <p>Attachments must be of a content type that Amazon SES supports. For a list on
    #                       unsupported content types, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types.html">Unsupported Attachment
    #                           Types</a> in the <i>Amazon SES Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>The entire message must be base64-encoded.</p>
    #               </li>
    #               <li>
    #                   <p>If any of the MIME parts in your message contain content that is outside of
    #                       the 7-bit ASCII character range, we highly recommend that you encode that
    #                       content. For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Sending Raw Email</a> in the <i>Amazon SES Developer
    #                       Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>Per <a href="https://tools.ietf.org/html/rfc5321 section-4.5.3.1.6">RFC
    #                           5321</a>, the maximum length of each line of text, including the
    #                       <CRLF>, must not exceed 1,000 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [RawMessage]
    #
    # @!attribute from_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to specify a
    #               particular "From" address in the header of the raw email.</p>
    #           <p>Instead of using this parameter, you can use the X-header <code>X-SES-FROM-ARN</code>
    #               in the raw message of the email. If you use both the <code>FromArn</code> parameter and
    #               the corresponding X-header, Amazon SES uses the value of the <code>FromArn</code>
    #               parameter.</p>
    #           <note>
    #               <p>For information about when to use this parameter, see the description of
    #                       <code>SendRawEmail</code> in this guide, or see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #           <p>Instead of using this parameter, you can use the X-header
    #                   <code>X-SES-SOURCE-ARN</code> in the raw message of the email. If you use both the
    #                   <code>SourceArn</code> parameter and the corresponding X-header, Amazon SES uses the
    #               value of the <code>SourceArn</code> parameter.</p>
    #           <note>
    #               <p>For information about when to use this parameter, see the description of
    #                       <code>SendRawEmail</code> in this guide, or see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #           <p>Instead of using this parameter, you can use the X-header
    #                   <code>X-SES-RETURN-PATH-ARN</code> in the raw message of the email. If you use both
    #               the <code>ReturnPathArn</code> parameter and the corresponding X-header, Amazon SES uses the
    #               value of the <code>ReturnPathArn</code> parameter.</p>
    #           <note>
    #               <p>For information about when to use this parameter, see the description of
    #                       <code>SendRawEmail</code> in this guide, or see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using <code>SendRawEmail</code>. Tags correspond to characteristics of the email that
    #               you define, so that you can publish email sending events.</p>
    #
    #   @return [Array<MessageTag>]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendRawEmail</code>.</p>
    #
    #   @return [String]
    #
    SendRawEmailInput = ::Struct.new(
      :source,
      :destinations,
      :raw_message,
      :from_arn,
      :source_arn,
      :return_path_arn,
      :tags,
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a unique message ID.</p>
    #
    # @!attribute message_id
    #   <p>The unique message identifier returned from the <code>SendRawEmail</code> action.
    #           </p>
    #
    #   @return [String]
    #
    SendRawEmailOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to send a templated email using Amazon SES. For more information, see
    #             the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute source
    #   <p>The email address that is sending the email. This email address must be either
    #               individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
    #               For information about verifying identities, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #           <p>If you are sending on behalf of another user and have been permitted to do so by a
    #               sending authorization policy, then you must also specify the <code>SourceArn</code>
    #               parameter. For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
    #           <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                       <i>local part</i> of a source email address (the part of the email
    #                   address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address Local-part">7-bit ASCII
    #                       characters</a>. If the <i>domain part</i> of an address (the
    #                   part after the @ sign) contains non-ASCII characters, they must be encoded using
    #                   Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly
    #                       name</i>) may contain non-ASCII characters. These characters must be
    #                   encoded using MIME encoded-word syntax, as described in<a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word
    #                   syntax uses the following form:
    #                   <code>=?charset?encoding?encoded-text?=</code>.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The destination for this email, composed of To:, CC:, and BCC: fields. A Destination
    #               can include up to 50 recipients across these three fields.</p>
    #
    #   @return [Destination]
    #
    # @!attribute reply_to_addresses
    #   <p>The reply-to email address(es) for the message. If the recipient replies to the
    #               message, each reply-to address will receive the reply.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute return_path
    #   <p>The email address that bounces and complaints will be forwarded to when feedback
    #               forwarding is enabled. If the message cannot be delivered to the recipient, then an
    #               error message will be returned from the recipient's ISP; this message will then be
    #               forwarded to the email address specified by the <code>ReturnPath</code> parameter. The
    #                   <code>ReturnPath</code> parameter is never overwritten. This email address must be
    #               either individually verified with Amazon SES, or from a domain that has been verified with
    #               Amazon SES. </p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to send for
    #               the email address specified in the <code>Source</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to send from <code>user@example.com</code>, then you
    #               would specify the <code>SourceArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>Source</code> to be <code>user@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute return_path_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>ReturnPath</code> parameter.</p>
    #           <p>For example, if the owner of <code>example.com</code> (which has ARN
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
    #               policy to it that authorizes you to use <code>feedback@example.com</code>, then you
    #               would specify the <code>ReturnPathArn</code> to be
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
    #                   <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using <code>SendTemplatedEmail</code>. Tags correspond to characteristics of the email
    #               that you define, so that you can publish email sending events.</p>
    #
    #   @return [Array<MessageTag>]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use when you send an email using
    #                   <code>SendTemplatedEmail</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute template
    #   <p>The template to use when sending this email.</p>
    #
    #   @return [String]
    #
    # @!attribute template_arn
    #   <p>The ARN of the template to use when sending this email.</p>
    #
    #   @return [String]
    #
    # @!attribute template_data
    #   <p>A list of replacement values to apply to the template. This parameter is a JSON
    #               object, typically consisting of key-value pairs in which the keys correspond to
    #               replacement tags in the email template.</p>
    #
    #   @return [String]
    #
    SendTemplatedEmailInput = ::Struct.new(
      :source,
      :destination,
      :reply_to_addresses,
      :return_path,
      :source_arn,
      :return_path_arn,
      :tags,
      :configuration_set_name,
      :template,
      :template_arn,
      :template_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message_id
    #   <p>The unique message identifier returned from the <code>SendTemplatedEmail</code>
    #               action. </p>
    #
    #   @return [String]
    #
    SendTemplatedEmailOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to set a receipt rule set as the active receipt rule set. You use
    #             receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the receipt rule set to make active. Setting this value to null disables
    #               all email receiving.</p>
    #
    #   @return [String]
    #
    SetActiveReceiptRuleSetInput = ::Struct.new(
      :rule_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    SetActiveReceiptRuleSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to enable or disable Amazon SES Easy DKIM signing for an identity. For
    #             more information about setting up Easy DKIM, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute identity
    #   <p>The identity for which DKIM signing should be enabled or disabled.</p>
    #
    #   @return [String]
    #
    # @!attribute dkim_enabled
    #   <p>Sets whether DKIM signing is enabled for an identity. Set to <code>true</code> to
    #               enable DKIM signing for this identity; <code>false</code> to disable it. </p>
    #
    #   @return [Boolean]
    #
    SetIdentityDkimEnabledInput = ::Struct.new(
      :identity,
      :dkim_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.dkim_enabled ||= false
      end

    end

    # <p>An empty element returned on a successful request.</p>
    #
    SetIdentityDkimEnabledOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to enable or disable whether Amazon SES forwards you bounce and
    #             complaint notifications through email. For information about email feedback forwarding,
    #             see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-email.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute identity
    #   <p>The identity for which to set bounce and complaint notification forwarding. Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute forwarding_enabled
    #   <p>Sets whether Amazon SES will forward bounce and complaint notifications as email.
    #                   <code>true</code> specifies that Amazon SES will forward bounce and complaint
    #               notifications as email, in addition to any Amazon SNS topic publishing otherwise specified.
    #                   <code>false</code> specifies that Amazon SES will publish bounce and complaint
    #               notifications only through Amazon SNS. This value can only be set to <code>false</code> when
    #               Amazon SNS topics are set for both <code>Bounce</code> and <code>Complaint</code>
    #               notification types.</p>
    #
    #   @return [Boolean]
    #
    SetIdentityFeedbackForwardingEnabledInput = ::Struct.new(
      :identity,
      :forwarding_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.forwarding_enabled ||= false
      end

    end

    # <p>An empty element returned on a successful request.</p>
    #
    SetIdentityFeedbackForwardingEnabledOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to set whether Amazon SES includes the original email headers in the
    #             Amazon SNS notifications of a specified type. For information about notifications, see the
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute identity
    #   <p>The identity for which to enable or disable headers in notifications. Examples:
    #                   <code>user@example.com</code>, <code>example.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_type
    #   <p>The notification type for which to enable or disable headers in notifications. </p>
    #
    #   Enum, one of: ["Bounce", "Complaint", "Delivery"]
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Sets whether Amazon SES includes the original email headers in Amazon SNS notifications of the
    #               specified notification type. A value of <code>true</code> specifies that Amazon SES will
    #               include headers in notifications, and a value of <code>false</code> specifies that Amazon SES
    #               will not include headers in notifications.</p>
    #           <p>This value can only be set when <code>NotificationType</code> is already set to use a
    #               particular Amazon SNS topic.</p>
    #
    #   @return [Boolean]
    #
    SetIdentityHeadersInNotificationsEnabledInput = ::Struct.new(
      :identity,
      :notification_type,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>An empty element returned on a successful request.</p>
    #
    SetIdentityHeadersInNotificationsEnabledOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to enable or disable the Amazon SES custom MAIL FROM domain setup for
    #             a verified identity. For information about using a custom MAIL FROM domain, see the
    #                 <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute identity
    #   <p>The verified identity for which you want to enable or disable the specified custom
    #               MAIL FROM domain.</p>
    #
    #   @return [String]
    #
    # @!attribute mail_from_domain
    #   <p>The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM
    #               domain must 1) be a subdomain of the verified identity, 2) not be used in a "From"
    #               address if the MAIL FROM domain is the destination of email feedback forwarding (for
    #               more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>), and
    #               3) not be used to receive emails. A value of <code>null</code> disables the custom MAIL
    #               FROM setting for the identity.</p>
    #
    #   @return [String]
    #
    # @!attribute behavior_on_mx_failure
    #   <p>The action that you want Amazon SES to take if it cannot successfully read the required MX
    #               record when you send an email. If you choose <code>UseDefaultValue</code>, Amazon SES will
    #               use amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose
    #                   <code>RejectMessage</code>, Amazon SES will return a
    #                   <code>MailFromDomainNotVerified</code> error and not send the email.</p>
    #           <p>The action specified in <code>BehaviorOnMXFailure</code> is taken when the custom MAIL
    #               FROM domain setup is in the <code>Pending</code>, <code>Failed</code>, and
    #                   <code>TemporaryFailure</code> states.</p>
    #
    #   Enum, one of: ["UseDefaultValue", "RejectMessage"]
    #
    #   @return [String]
    #
    SetIdentityMailFromDomainInput = ::Struct.new(
      :identity,
      :mail_from_domain,
      :behavior_on_mx_failure,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    SetIdentityMailFromDomainOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to specify the Amazon SNS topic to which Amazon SES will publish bounce,
    #             complaint, or delivery notifications for emails sent with that identity as the Source.
    #             For information about Amazon SES notifications, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute identity
    #   <p>The identity (email address or domain) that you want to set the Amazon SNS topic
    #               for.</p>
    #           <important>
    #               <p>You can only specify a verified identity for this parameter.</p>
    #           </important>
    #           <p>You can specify an identity by using its name or by using its Amazon Resource Name
    #               (ARN). The following examples are all valid identities: <code>sender@example.com</code>,
    #                   <code>example.com</code>,
    #                   <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_type
    #   <p>The type of notifications that will be published to the specified Amazon SNS topic.</p>
    #
    #   Enum, one of: ["Bounce", "Complaint", "Delivery"]
    #
    #   @return [String]
    #
    # @!attribute sns_topic
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic. If the parameter is omitted from
    #               the request or a null value is passed, <code>SnsTopic</code> is cleared and publishing
    #               is disabled.</p>
    #
    #   @return [String]
    #
    SetIdentityNotificationTopicInput = ::Struct.new(
      :identity,
      :notification_type,
      :sns_topic,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    SetIdentityNotificationTopicOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to set the position of a receipt rule in a receipt rule set. You
    #             use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the receipt rule set that contains the receipt rule to reposition.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_name
    #   <p>The name of the receipt rule to reposition.</p>
    #
    #   @return [String]
    #
    # @!attribute after
    #   <p>The name of the receipt rule after which to place the specified receipt rule.</p>
    #
    #   @return [String]
    #
    SetReceiptRulePositionInput = ::Struct.new(
      :rule_set_name,
      :rule_name,
      :after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    SetReceiptRulePositionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When included in a receipt rule, this action terminates the evaluation of the receipt
    #             rule set and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>
    #         <p>For information about setting a stop action in a receipt rule, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute scope
    #   <p>The scope of the StopAction. The only acceptable value is <code>RuleSet</code>.</p>
    #
    #   Enum, one of: ["RuleSet"]
    #
    #   @return [String]
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the stop action is
    #               taken. An example of an Amazon SNS topic ARN is
    #                   <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about
    #               Amazon SNS topics, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    StopAction = ::Struct.new(
      :scope,
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StopScope
    #
    module StopScope
      # No documentation available.
      #
      RULE_SET = "RuleSet"
    end

    # <p>The content of the email, composed of a subject line, an HTML part, and a text-only
    #             part.</p>
    #
    # @!attribute template_name
    #   <p>The name of the template. You will refer to this name when you send email using the
    #                   <code>SendTemplatedEmail</code> or <code>SendBulkTemplatedEmail</code>
    #               operations.</p>
    #
    #   @return [String]
    #
    # @!attribute subject_part
    #   <p>The subject line of the email.</p>
    #
    #   @return [String]
    #
    # @!attribute text_part
    #   <p>The email body that will be visible to recipients whose email clients do not display
    #               HTML.</p>
    #
    #   @return [String]
    #
    # @!attribute html_part
    #   <p>The HTML body of the email.</p>
    #
    #   @return [String]
    #
    Template = ::Struct.new(
      :template_name,
      :subject_part,
      :text_part,
      :html_part,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the Template object you specified does not exist in your Amazon SES
    #             account.</p>
    #
    # @!attribute template_name
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TemplateDoesNotExistException = ::Struct.new(
      :template_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an email template.</p>
    #
    # @!attribute name
    #   <p>The name of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time and date the template was created.</p>
    #
    #   @return [Time]
    #
    TemplateMetadata = ::Struct.new(
      :name,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the template that you want to render.</p>
    #
    #   @return [String]
    #
    # @!attribute template_data
    #   <p>A list of replacement values to apply to the template. This parameter is a JSON
    #               object, typically consisting of key-value pairs in which the keys correspond to
    #               replacement tags in the email template.</p>
    #
    #   @return [String]
    #
    TestRenderTemplateInput = ::Struct.new(
      :template_name,
      :template_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rendered_template
    #   <p>The complete MIME message rendered by applying the data in the TemplateData parameter
    #               to the template specified in the TemplateName parameter.</p>
    #
    #   @return [String]
    #
    TestRenderTemplateOutput = ::Struct.new(
      :rendered_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TlsPolicy
    #
    module TlsPolicy
      # No documentation available.
      #
      Require = "Require"

      # No documentation available.
      #
      Optional = "Optional"
    end

    # <p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This
    #             domain captures open and click events generated by Amazon SES emails.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring
    #                 Custom Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES
    #                 Developer Guide</i>.</p>
    #
    # @!attribute custom_redirect_domain
    #   <p>The custom subdomain that will be used to redirect email recipients to the Amazon SES
    #               event tracking domain.</p>
    #
    #   @return [String]
    #
    TrackingOptions = ::Struct.new(
      :custom_redirect_domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the configuration set you specified already contains a TrackingOptions
    #             object.</p>
    #
    # @!attribute configuration_set_name
    #   <p>Indicates that a TrackingOptions object already exists in the specified configuration
    #               set.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TrackingOptionsAlreadyExistsException = ::Struct.new(
      :configuration_set_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the TrackingOptions object you specified does not exist.</p>
    #
    # @!attribute configuration_set_name
    #   <p>Indicates that a TrackingOptions object does not exist in the specified configuration
    #               set.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TrackingOptionsDoesNotExistException = ::Struct.new(
      :configuration_set_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to enable or disable the email sending capabilities for your
    #             entire Amazon SES account.</p>
    #
    # @!attribute enabled
    #   <p>Describes whether email sending is enabled or disabled for your Amazon SES account in the
    #               current AWS Region.</p>
    #
    #   @return [Boolean]
    #
    UpdateAccountSendingEnabledInput = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    UpdateAccountSendingEnabledOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to update the event destination of a configuration set.
    #             Configuration sets enable you to publish email sending events. For information about
    #             using configuration sets, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that contains the event destination that you want to
    #               update.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination
    #   <p>The event destination object that you want to apply to the specified configuration
    #               set.</p>
    #
    #   @return [EventDestination]
    #
    UpdateConfigurationSetEventDestinationInput = ::Struct.new(
      :configuration_set_name,
      :event_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    UpdateConfigurationSetEventDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to modify the reputation metric publishing settings for a
    #             configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Describes whether or not Amazon SES will publish reputation metrics for the configuration
    #               set, such as bounce and complaint rates, to Amazon CloudWatch.</p>
    #
    #   @return [Boolean]
    #
    UpdateConfigurationSetReputationMetricsEnabledInput = ::Struct.new(
      :configuration_set_name,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    UpdateConfigurationSetReputationMetricsEnabledOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to enable or disable the email sending capabilities for a
    #             specific configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Describes whether email sending is enabled or disabled for the configuration set.
    #           </p>
    #
    #   @return [Boolean]
    #
    UpdateConfigurationSetSendingEnabledInput = ::Struct.new(
      :configuration_set_name,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    UpdateConfigurationSetSendingEnabledOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to update the tracking options for a configuration set. </p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set for which you want to update the custom tracking
    #               domain.</p>
    #
    #   @return [String]
    #
    # @!attribute tracking_options
    #   <p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This
    #               domain captures open and click events generated by Amazon SES emails.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring
    #                   Custom Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    #
    #   @return [TrackingOptions]
    #
    UpdateConfigurationSetTrackingOptionsInput = ::Struct.new(
      :configuration_set_name,
      :tracking_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    UpdateConfigurationSetTrackingOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to update an existing custom verification email template.</p>
    #
    # @!attribute template_name
    #   <p>The name of the custom verification email template that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute from_email_address
    #   <p>The email address that the custom verification email is sent from.</p>
    #
    #   @return [String]
    #
    # @!attribute template_subject
    #   <p>The subject line of the custom verification email.</p>
    #
    #   @return [String]
    #
    # @!attribute template_content
    #   <p>The content of the custom verification email. The total size of the email must be less
    #               than 10 MB. The message body may contain HTML, with some limitations. For more
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html custom-verification-emails-faq">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
    #                   Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute success_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is successfully verified.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_redirection_url
    #   <p>The URL that the recipient of the verification email is sent to if his or her address
    #               is not successfully verified.</p>
    #
    #   @return [String]
    #
    UpdateCustomVerificationEmailTemplateInput = ::Struct.new(
      :template_name,
      :from_email_address,
      :template_subject,
      :template_content,
      :success_redirection_url,
      :failure_redirection_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateCustomVerificationEmailTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to update a receipt rule. You use receipt rules to receive email
    #             with Amazon SES. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute rule_set_name
    #   <p>The name of the receipt rule set that the receipt rule belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute rule
    #   <p>A data structure that contains the updated receipt rule information.</p>
    #
    #   @return [ReceiptRule]
    #
    UpdateReceiptRuleInput = ::Struct.new(
      :rule_set_name,
      :rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    UpdateReceiptRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template
    #   <p>The content of the email, composed of a subject line, an HTML part, and a text-only
    #               part.</p>
    #
    #   @return [Template]
    #
    UpdateTemplateInput = ::Struct.new(
      :template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VerificationStatus
    #
    module VerificationStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      Success = "Success"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      TemporaryFailure = "TemporaryFailure"

      # No documentation available.
      #
      NotStarted = "NotStarted"
    end

    # <p>Represents a request to generate the CNAME records needed to set up Easy DKIM with
    #             Amazon SES. For more information about setting up Easy DKIM, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute domain
    #   <p>The name of the domain to be verified for Easy DKIM signing.</p>
    #
    #   @return [String]
    #
    VerifyDomainDkimInput = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns CNAME records that you must publish to the DNS server of your domain to set up
    #             Easy DKIM with Amazon SES.</p>
    #
    # @!attribute dkim_tokens
    #   <p>A set of character strings that represent the domain's identity. If the identity is an
    #               email address, the tokens represent the domain of that address.</p>
    #           <p>Using these tokens, you need to create DNS CNAME records that point to DKIM public
    #               keys that are hosted by Amazon SES. Amazon Web Services eventually detects that you've updated your DNS
    #               records. This detection process might take up to 72 hours. After successful detection,
    #               Amazon SES is able to DKIM-sign email originating from that domain. (This only applies to
    #               domain identities, not email address identities.)</p>
    #           <p>For more information about creating DNS records using DKIM tokens, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [Array<String>]
    #
    VerifyDomainDkimOutput = ::Struct.new(
      :dkim_tokens,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to begin Amazon SES domain verification and to generate the TXT
    #             records that you must publish to the DNS server of your domain to complete the
    #             verification. For information about domain verification, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute domain
    #   <p>The domain to be verified.</p>
    #
    #   @return [String]
    #
    VerifyDomainIdentityInput = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns a TXT record that you must publish to the DNS server of your domain to
    #             complete domain verification with Amazon SES.</p>
    #
    # @!attribute verification_token
    #   <p>A TXT record that you must place in the DNS settings of the domain to complete domain
    #               verification with Amazon SES.</p>
    #           <p>As Amazon SES searches for the TXT record, the domain's verification status is "Pending".
    #               When Amazon SES detects the record, the domain's verification status changes to "Success". If
    #               Amazon SES is unable to detect the record within 72 hours, the domain's verification status
    #               changes to "Failed." In that case, if you still want to verify the domain, you must
    #               restart the verification process from the beginning.</p>
    #
    #   @return [String]
    #
    VerifyDomainIdentityOutput = ::Struct.new(
      :verification_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to begin email address verification with Amazon SES. For information
    #             about email address verification, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute email_address
    #   <p>The email address to be verified.</p>
    #
    #   @return [String]
    #
    VerifyEmailAddressInput = ::Struct.new(
      :email_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    VerifyEmailAddressOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to begin email address verification with Amazon SES. For information
    #             about email address verification, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute email_address
    #   <p>The email address to be verified.</p>
    #
    #   @return [String]
    #
    VerifyEmailIdentityInput = ::Struct.new(
      :email_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An empty element returned on a successful request.</p>
    #
    VerifyEmailIdentityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When included in a receipt rule, this action calls Amazon WorkMail and, optionally,
    #             publishes a notification to Amazon Simple Notification Service (Amazon SNS). You will typically not use this action
    #             directly because Amazon WorkMail adds the rule automatically during its setup
    #             procedure.</p>
    #         <p>For information using a receipt rule to call Amazon WorkMail, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the WorkMail action
    #               is called. An example of an Amazon SNS topic ARN is
    #                   <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about
    #               Amazon SNS topics, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_arn
    #   <p>The ARN of the Amazon WorkMail organization. An example of an Amazon WorkMail
    #               organization ARN is
    #                   <code>arn:aws:workmail:us-west-2:123456789012:organization/m-68755160c4cb4e29a2b2f8fb58f359d7</code>.
    #               For information about Amazon WorkMail organizations, see the <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html">Amazon WorkMail
    #                   Administrator Guide</a>.</p>
    #
    #   @return [String]
    #
    WorkmailAction = ::Struct.new(
      :topic_arn,
      :organization_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
