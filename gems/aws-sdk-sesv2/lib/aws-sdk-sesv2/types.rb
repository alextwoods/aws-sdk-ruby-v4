# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SESv2
  module Types

    # <p>An object that contains information about your account details.</p>
    #
    # @!attribute mail_type
    #   <p>The type of email your account is sending. The mail type can be one of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>MARKETING</code> – Most of your sending traffic is to keep your
    #                       customers informed of your latest offering.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TRANSACTIONAL</code> – Most of your sending traffic is to
    #                       communicate during a transaction with a customer.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["MARKETING", "TRANSACTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute website_url
    #   <p>The URL of your website. This information helps us better understand the type of
    #               content that you plan to send.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_language
    #   <p>The language you would prefer for the case. The contact language can be one of
    #                   <code>ENGLISH</code> or <code>JAPANESE</code>.</p>
    #
    #   Enum, one of: ["EN", "JA"]
    #
    #   @return [String]
    #
    # @!attribute use_case_description
    #   <p>A description of the types of email that you plan to send.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_contact_email_addresses
    #   <p>Additional email addresses where updates are sent about your account review
    #               process.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute review_details
    #   <p>Information about the review of the latest details you submitted.</p>
    #
    #   @return [ReviewDetails]
    #
    AccountDetails = ::Struct.new(
      :mail_type,
      :website_url,
      :contact_language,
      :use_case_description,
      :additional_contact_email_addresses,
      :review_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SESv2::Types::AccountDetails "\
          "mail_type=#{mail_type || 'nil'}, "\
          "website_url=\"[SENSITIVE]\", "\
          "contact_language=#{contact_language || 'nil'}, "\
          "use_case_description=\"[SENSITIVE]\", "\
          "additional_contact_email_addresses=\"[SENSITIVE]\", "\
          "review_details=#{review_details || 'nil'}>"
      end
    end

    # <p>The message can't be sent because the account's ability to send email has been
    #             permanently restricted.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccountSuspendedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource specified in your request already exists.</p>
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

    # <p>The input you provided is invalid.</p>
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

    # Includes enum constants for BehaviorOnMxFailure
    #
    module BehaviorOnMxFailure
      # No documentation available.
      #
      USE_DEFAULT_VALUE = "USE_DEFAULT_VALUE"

      # No documentation available.
      #
      REJECT_MESSAGE = "REJECT_MESSAGE"
    end

    # <p>An object that contains information about a blacklisting event that impacts one of the
    #             dedicated IP addresses that is associated with your account.</p>
    #
    # @!attribute rbl_name
    #   <p>The name of the blacklist that the IP address appears on.</p>
    #
    #   @return [String]
    #
    # @!attribute listing_time
    #   <p>The time when the blacklisting event occurred, shown in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>Additional information about the blacklisting event, as provided by the blacklist
    #               maintainer.</p>
    #
    #   @return [String]
    #
    BlacklistEntry = ::Struct.new(
      :rbl_name,
      :listing_time,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the body of the email message.</p>
    #
    # @!attribute text
    #   <p>An object that represents the version of the message that is displayed in email
    #               clients that don't support HTML, or clients where the recipient has disabled HTML
    #               rendering.</p>
    #
    #   @return [Content]
    #
    # @!attribute html
    #   <p>An object that represents the version of the message that is displayed in email
    #               clients that support HTML. HTML messages can include formatted text, hyperlinks, images,
    #               and more. </p>
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

    # <p>An object that contains the body of the message. You can specify a template
    #             message.</p>
    #
    # @!attribute template
    #   <p>The template to use for the bulk email message.</p>
    #
    #   @return [Template]
    #
    BulkEmailContent = ::Struct.new(
      :template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination
    #   <p>Represents the destination of the message, consisting of To:, CC:, and BCC:
    #               fields.</p>
    #           <note>
    #               <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the
    #                   local part of a destination email address (the part of the email address that
    #                   precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address Local-part">7-bit ASCII
    #                       characters</a>. If the domain part of an address (the part after the @ sign)
    #                   contains non-ASCII characters, they must be encoded using Punycode, as described in
    #                       <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>.</p>
    #           </note>
    #
    #   @return [Destination]
    #
    # @!attribute replacement_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using the <code>SendBulkTemplatedEmail</code> operation. Tags correspond to
    #               characteristics of the email that you define, so that you can publish email sending
    #               events.</p>
    #
    #   @return [Array<MessageTag>]
    #
    # @!attribute replacement_email_content
    #   <p>The <code>ReplacementEmailContent</code> associated with a
    #               <code>BulkEmailEntry</code>.</p>
    #
    #   @return [ReplacementEmailContent]
    #
    BulkEmailEntry = ::Struct.new(
      :destination,
      :replacement_tags,
      :replacement_email_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of the <code>SendBulkEmail</code> operation of each specified
    #                 <code>BulkEmailEntry</code>.</p>
    #
    # @!attribute status
    #   <p>The status of a message sent using the <code>SendBulkTemplatedEmail</code>
    #               operation.</p>
    #           <p>Possible values for this parameter include:</p>
    #           <ul>
    #               <li>
    #                   <p>SUCCESS: Amazon SES accepted the message, and will attempt to deliver it to
    #                       the recipients.</p>
    #               </li>
    #               <li>
    #                   <p>MESSAGE_REJECTED: The message was rejected because it contained a
    #                       virus.</p>
    #               </li>
    #               <li>
    #                   <p>MAIL_FROM_DOMAIN_NOT_VERIFIED: The sender's email address or domain was not
    #                       verified.</p>
    #               </li>
    #               <li>
    #                   <p>CONFIGURATION_SET_DOES_NOT_EXIST: The configuration set you specified does not
    #                       exist.</p>
    #               </li>
    #               <li>
    #                   <p>TEMPLATE_DOES_NOT_EXIST: The template you specified does not exist.</p>
    #               </li>
    #               <li>
    #                   <p>ACCOUNT_SUSPENDED: Your account has been shut down because of issues related
    #                       to your email sending practices.</p>
    #               </li>
    #               <li>
    #                   <p>ACCOUNT_THROTTLED: The number of emails you can send has been reduced because
    #                       your account has exceeded its allocated sending limit.</p>
    #               </li>
    #               <li>
    #                   <p>ACCOUNT_DAILY_QUOTA_EXCEEDED: You have reached or exceeded the maximum number
    #                       of emails you can send from your account in a 24-hour period.</p>
    #               </li>
    #               <li>
    #                   <p>INVALID_SENDING_POOL_NAME: The configuration set you specified refers to an IP
    #                       pool that does not exist.</p>
    #               </li>
    #               <li>
    #                   <p>ACCOUNT_SENDING_PAUSED: Email sending for the Amazon SES account was disabled
    #                       using the <a href="https://docs.aws.amazon.com/ses/latest/APIReference/API_UpdateAccountSendingEnabled.html">UpdateAccountSendingEnabled</a> operation.</p>
    #               </li>
    #               <li>
    #                   <p>CONFIGURATION_SET_SENDING_PAUSED: Email sending for this configuration set was
    #                       disabled using the <a href="https://docs.aws.amazon.com/ses/latest/APIReference/API_UpdateConfigurationSetSendingEnabled.html">UpdateConfigurationSetSendingEnabled</a> operation.</p>
    #               </li>
    #               <li>
    #                   <p>INVALID_PARAMETER_VALUE: One or more of the parameters you specified when
    #                       calling this operation was invalid. See the error message for additional
    #                       information.</p>
    #               </li>
    #               <li>
    #                   <p>TRANSIENT_FAILURE: Amazon SES was unable to process your request because of a
    #                       temporary issue.</p>
    #               </li>
    #               <li>
    #                   <p>FAILED: Amazon SES was unable to process your request. See the error message
    #                       for additional information.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUCCESS", "MESSAGE_REJECTED", "MAIL_FROM_DOMAIN_NOT_VERIFIED", "CONFIGURATION_SET_NOT_FOUND", "TEMPLATE_NOT_FOUND", "ACCOUNT_SUSPENDED", "ACCOUNT_THROTTLED", "ACCOUNT_DAILY_QUOTA_EXCEEDED", "INVALID_SENDING_POOL_NAME", "ACCOUNT_SENDING_PAUSED", "CONFIGURATION_SET_SENDING_PAUSED", "INVALID_PARAMETER", "TRANSIENT_FAILURE", "FAILED"]
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
    BulkEmailEntryResult = ::Struct.new(
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
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      MESSAGE_REJECTED = "MESSAGE_REJECTED"

      # No documentation available.
      #
      MAIL_FROM_DOMAIN_NOT_VERIFIED = "MAIL_FROM_DOMAIN_NOT_VERIFIED"

      # No documentation available.
      #
      CONFIGURATION_SET_NOT_FOUND = "CONFIGURATION_SET_NOT_FOUND"

      # No documentation available.
      #
      TEMPLATE_NOT_FOUND = "TEMPLATE_NOT_FOUND"

      # No documentation available.
      #
      ACCOUNT_SUSPENDED = "ACCOUNT_SUSPENDED"

      # No documentation available.
      #
      ACCOUNT_THROTTLED = "ACCOUNT_THROTTLED"

      # No documentation available.
      #
      ACCOUNT_DAILY_QUOTA_EXCEEDED = "ACCOUNT_DAILY_QUOTA_EXCEEDED"

      # No documentation available.
      #
      INVALID_SENDING_POOL_NAME = "INVALID_SENDING_POOL_NAME"

      # No documentation available.
      #
      ACCOUNT_SENDING_PAUSED = "ACCOUNT_SENDING_PAUSED"

      # No documentation available.
      #
      CONFIGURATION_SET_SENDING_PAUSED = "CONFIGURATION_SET_SENDING_PAUSED"

      # No documentation available.
      #
      INVALID_PARAMETER = "INVALID_PARAMETER"

      # No documentation available.
      #
      TRANSIENT_FAILURE = "TRANSIENT_FAILURE"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to
    #             monitor and gain insights on your email sending metrics.</p>
    #
    # @!attribute dimension_configurations
    #   <p>An array of objects that define the dimensions to use when you send email events to
    #               Amazon CloudWatch.</p>
    #
    #   @return [Array<CloudWatchDimensionConfiguration>]
    #
    CloudWatchDestination = ::Struct.new(
      :dimension_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that defines the dimension configuration to use when you send email events
    #             to Amazon CloudWatch.</p>
    #
    # @!attribute dimension_name
    #   <p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name has to
    #               meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>It can contain no more than 256 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute dimension_value_source
    #   <p>The location where the Amazon SES API v2 finds the value of a dimension to publish to Amazon CloudWatch. To
    #               use the message tags that you specify using an <code>X-SES-MESSAGE-TAGS</code> header or
    #               a parameter to the <code>SendEmail</code> or <code>SendRawEmail</code> API, choose
    #                   <code>messageTag</code>. To use your own email headers, choose
    #                   <code>emailHeader</code>. To use link tags, choose <code>linkTags</code>.</p>
    #
    #   Enum, one of: ["MESSAGE_TAG", "EMAIL_HEADER", "LINK_TAG"]
    #
    #   @return [String]
    #
    # @!attribute default_dimension_value
    #   <p>The default value of the dimension that is published to Amazon CloudWatch if you don't provide the
    #               value of the dimension when you send an email. This value has to meet the following
    #               criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>It can contain no more than 256 characters.</p>
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

    # <p>The resource is being modified by another operation or thread.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If there is already an ongoing account details update under review.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A contact is the end-user who is receiving the email.</p>
    #
    # @!attribute email_address
    #   <p>The contact's email address.</p>
    #
    #   @return [String]
    #
    # @!attribute topic_preferences
    #   <p>The contact's preference for being opted-in to or opted-out of a topic.</p>
    #
    #   @return [Array<TopicPreference>]
    #
    # @!attribute topic_default_preferences
    #   <p>The default topic preferences applied to the contact.</p>
    #
    #   @return [Array<TopicPreference>]
    #
    # @!attribute unsubscribe_all
    #   <p>A boolean value status noting if the contact is unsubscribed from all contact list
    #               topics.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_updated_timestamp
    #   <p>A timestamp noting the last time the contact's information was updated.</p>
    #
    #   @return [Time]
    #
    Contact = ::Struct.new(
      :email_address,
      :topic_preferences,
      :topic_default_preferences,
      :unsubscribe_all,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.unsubscribe_all ||= false
      end

    end

    # Includes enum constants for ContactLanguage
    #
    module ContactLanguage
      # No documentation available.
      #
      EN = "EN"

      # No documentation available.
      #
      JA = "JA"
    end

    # <p>A list that contains contacts that have subscribed to a particular topic or
    #             topics.</p>
    #
    # @!attribute contact_list_name
    #   <p>The name of the contact list.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   <p>A timestamp noting the last time the contact list was updated.</p>
    #
    #   @return [Time]
    #
    ContactList = ::Struct.new(
      :contact_list_name,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains details about the action of a contact list.</p>
    #
    # @!attribute contact_list_name
    #   <p>The name of the contact list.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_list_import_action
    #   <p>>The type of action to perform on the addresses. The following are the
    #               possible values:</p>
    #           <ul>
    #               <li>
    #                   <p>PUT: add the addresses to the contact list. If the record already exists, it
    #                       will override it with the new value.</p>
    #               </li>
    #               <li>
    #                   <p>DELETE: remove the addresses from the contact list.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DELETE", "PUT"]
    #
    #   @return [String]
    #
    ContactListDestination = ::Struct.new(
      :contact_list_name,
      :contact_list_import_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContactListImportAction
    #
    module ContactListImportAction
      # No documentation available.
      #
      DELETE = "DELETE"

      # No documentation available.
      #
      PUT = "PUT"
    end

    # <p>An object that represents the content of the email, and optionally a character set
    #             specification.</p>
    #
    # @!attribute data
    #   <p>The content of the message itself.</p>
    #
    #   @return [String]
    #
    # @!attribute charset
    #   <p>The character set for the content. Because of the constraints of the SMTP protocol,
    #               Amazon SES uses 7-bit ASCII by default. If the text includes characters outside of the ASCII
    #               range, you have to specify a character set. For example, you could specify
    #                   <code>UTF-8</code>, <code>ISO-8859-1</code>, or <code>Shift_JIS</code>.</p>
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

    # <p>A request to add an event destination to a configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set .</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>A name that identifies the event destination within the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination
    #   <p>An object that defines the event destination.</p>
    #
    #   @return [EventDestinationDefinition]
    #
    CreateConfigurationSetEventDestinationInput = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :event_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    CreateConfigurationSetEventDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to create a configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set. The name can contain up to 64 alphanumeric
    #               characters, including letters, numbers, hyphens (-) and underscores (_) only.</p>
    #
    #   @return [String]
    #
    # @!attribute tracking_options
    #   <p>An object that defines the open and click tracking options for emails that you send
    #               using the configuration set.</p>
    #
    #   @return [TrackingOptions]
    #
    # @!attribute delivery_options
    #   <p>An object that defines the dedicated IP pool that is used to send emails that you send
    #               using the configuration set.</p>
    #
    #   @return [DeliveryOptions]
    #
    # @!attribute reputation_options
    #   <p>An object that defines whether or not Amazon SES collects reputation metrics for the emails
    #               that you send that use the configuration set.</p>
    #
    #   @return [ReputationOptions]
    #
    # @!attribute sending_options
    #   <p>An object that defines whether or not Amazon SES can send email that you send using the
    #               configuration set.</p>
    #
    #   @return [SendingOptions]
    #
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) to associate with the
    #               configuration set.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute suppression_options
    #   <p>An object that contains information about the suppression list preferences for your
    #               account.</p>
    #
    #   @return [SuppressionOptions]
    #
    CreateConfigurationSetInput = ::Struct.new(
      :configuration_set_name,
      :tracking_options,
      :delivery_options,
      :reputation_options,
      :sending_options,
      :tags,
      :suppression_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    CreateConfigurationSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list to which the contact should be added.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The contact's email address.</p>
    #
    #   @return [String]
    #
    # @!attribute topic_preferences
    #   <p>The contact's preferences for being opted-in to or opted-out of topics.</p>
    #
    #   @return [Array<TopicPreference>]
    #
    # @!attribute unsubscribe_all
    #   <p>A boolean value status noting if the contact is unsubscribed from all contact list
    #               topics.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute attributes_data
    #   <p>The attribute data attached to a contact.</p>
    #
    #   @return [String]
    #
    CreateContactInput = ::Struct.new(
      :contact_list_name,
      :email_address,
      :topic_preferences,
      :unsubscribe_all,
      :attributes_data,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.unsubscribe_all ||= false
      end

    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list.</p>
    #
    #   @return [String]
    #
    # @!attribute topics
    #   <p>An interest group, theme, or label within a list. A contact list can have multiple
    #               topics.</p>
    #
    #   @return [Array<Topic>]
    #
    # @!attribute description
    #   <p>A description of what the contact list is about.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with a contact list.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateContactListInput = ::Struct.new(
      :contact_list_name,
      :topics,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateContactListOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateContactOutput = ::Struct.new(
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
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html custom-verification-emails-faq">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
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

    # <p>If the action is successful, the service sends back an HTTP 200 response with an empty
    #             HTTP body.</p>
    #
    CreateCustomVerificationEmailTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to create a new dedicated IP pool.</p>
    #
    # @!attribute pool_name
    #   <p>The name of the dedicated IP pool.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An object that defines the tags (keys and values) that you want to associate with the
    #               pool.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDedicatedIpPoolInput = ::Struct.new(
      :pool_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    CreateDedicatedIpPoolOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to perform a predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will
    #             be handled by various email providers around the world. When you perform a predictive inbox placement test, you
    #             provide a sample message that contains the content that you plan to send to your
    #             customers. We send that message to special email addresses spread across several major
    #             email providers around the world. The test takes about 24 hours to complete. When the
    #             test is complete, you can use the <code>GetDeliverabilityTestReport</code> operation to
    #             view the results of the test.</p>
    #
    # @!attribute report_name
    #   <p>A unique name that helps you to identify the predictive inbox placement test when you retrieve the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute from_email_address
    #   <p>The email address that the predictive inbox placement test email was sent from.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The HTML body of the message that you sent when you performed the predictive inbox placement test.</p>
    #
    #   @return [EmailContent]
    #
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) that you want to associate
    #               with the predictive inbox placement test.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDeliverabilityTestReportInput = ::Struct.new(
      :report_name,
      :from_email_address,
      :content,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the predictive inbox placement test that you created.</p>
    #
    # @!attribute report_id
    #   <p>A unique string that identifies the predictive inbox placement test.</p>
    #
    #   @return [String]
    #
    # @!attribute deliverability_test_status
    #   <p>The status of the predictive inbox placement test. If the status is <code>IN_PROGRESS</code>, then the predictive inbox placement test
    #               is currently running. Predictive inbox placement tests are usually complete within 24 hours of creating the
    #               test. If the status is <code>COMPLETE</code>, then the test is finished, and you can use
    #               the <code>GetDeliverabilityTestReport</code> to view the results of the test.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED"]
    #
    #   @return [String]
    #
    CreateDeliverabilityTestReportOutput = ::Struct.new(
      :report_id,
      :deliverability_test_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to begin the verification process for an email identity (an email address or
    #             domain).</p>
    #
    # @!attribute email_identity
    #   <p>The email address or domain to verify.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) to associate with the email
    #               identity.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute dkim_signing_attributes
    #   <p>If your request includes this object, Amazon SES configures the identity to use Bring Your
    #               Own DKIM (BYODKIM) for DKIM authentication purposes, or, configures the key length to be used for
    #               <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a>.</p>
    #           <p>You can only specify this object if the email identity is a domain, as opposed to an
    #               address.</p>
    #
    #   @return [DkimSigningAttributes]
    #
    # @!attribute configuration_set_name
    #   <p>The configuration set to use by default when sending from this identity. Note that any
    #               configuration set defined in the email sending request takes precedence. </p>
    #
    #   @return [String]
    #
    CreateEmailIdentityInput = ::Struct.new(
      :email_identity,
      :tags,
      :dkim_signing_attributes,
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the email identity is a domain, this object contains information about the DKIM
    #             verification status for the domain.</p>
    #         <p>If the email identity is an email address, this object is empty. </p>
    #
    # @!attribute identity_type
    #   <p>The email identity type. Note: the <code>MANAGED_DOMAIN</code> identity type is not
    #               supported.</p>
    #
    #   Enum, one of: ["EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"]
    #
    #   @return [String]
    #
    # @!attribute verified_for_sending_status
    #   <p>Specifies whether or not the identity is verified. You can only send email from
    #               verified email addresses or domains. For more information about verifying identities,
    #               see the <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html">Amazon Pinpoint User Guide</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute dkim_attributes
    #   <p>An object that contains information about the DKIM attributes for the identity.</p>
    #
    #   @return [DkimAttributes]
    #
    CreateEmailIdentityOutput = ::Struct.new(
      :identity_type,
      :verified_for_sending_status,
      :dkim_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.verified_for_sending_status ||= false
      end

    end

    # <p>Represents a request to create a sending authorization policy for an identity. Sending
    #             authorization is an Amazon SES feature that enables you to authorize other senders to use
    #             your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-identity-owner-tasks-management.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute email_identity
    #   <p>The email identity.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #
    #           <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
    #           <p>For information about the syntax of sending authorization policies, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    CreateEmailIdentityPolicyInput = ::Struct.new(
      :email_identity,
      :policy_name,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    CreateEmailIdentityPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create an email template. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_content
    #   <p>The content of the email template, composed of a subject line, an HTML part, and a
    #               text-only part.</p>
    #
    #   @return [EmailTemplateContent]
    #
    CreateEmailTemplateInput = ::Struct.new(
      :template_name,
      :template_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response with an empty
    #             HTTP body.</p>
    #
    CreateEmailTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to create an import job from a data source for a data
    #             destination.</p>
    #
    # @!attribute import_destination
    #   <p>The destination for the import job.</p>
    #
    #   @return [ImportDestination]
    #
    # @!attribute import_data_source
    #   <p>The data source for the import job.</p>
    #
    #   @return [ImportDataSource]
    #
    CreateImportJobInput = ::Struct.new(
      :import_destination,
      :import_data_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    # @!attribute job_id
    #   <p>A string that represents the import job ID.</p>
    #
    #   @return [String]
    #
    CreateImportJobOutput = ::Struct.new(
      :job_id,
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
    CustomVerificationEmailTemplateMetadata = ::Struct.new(
      :template_name,
      :from_email_address,
      :template_subject,
      :success_redirection_url,
      :failure_redirection_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about the volume of email sent on each day of the
    #             analysis period.</p>
    #
    # @!attribute start_date
    #   <p>The date that the DailyVolume metrics apply to, in Unix time.</p>
    #
    #   @return [Time]
    #
    # @!attribute volume_statistics
    #   <p>An object that contains inbox placement metrics for a specific day in the analysis
    #               period.</p>
    #
    #   @return [VolumeStatistics]
    #
    # @!attribute domain_isp_placements
    #   <p>An object that contains inbox placement metrics for a specified day in the analysis
    #               period, broken out by the recipient's email provider.</p>
    #
    #   @return [Array<DomainIspPlacement>]
    #
    DailyVolume = ::Struct.new(
      :start_date,
      :volume_statistics,
      :domain_isp_placements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataFormat
    #
    module DataFormat
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # <p>Contains information about a dedicated IP address that is associated with your Amazon SES
    #             account.</p>
    #         <p>To learn more about requesting dedicated IP addresses, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/dedicated-ip-case.html">Requesting and Relinquishing
    #                 Dedicated IP Addresses</a> in the <i>Amazon SES Developer
    #             Guide</i>.</p>
    #
    # @!attribute ip
    #   <p>An IPv4 address.</p>
    #
    #   @return [String]
    #
    # @!attribute warmup_status
    #   <p>The warm-up status of a dedicated IP address. The status can have one of the following
    #               values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>IN_PROGRESS</code> – The IP address isn't ready to use because the
    #                       dedicated IP warm-up process is ongoing.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DONE</code> – The dedicated IP warm-up process is complete, and
    #                       the IP address is ready to use.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IN_PROGRESS", "DONE"]
    #
    #   @return [String]
    #
    # @!attribute warmup_percentage
    #   <p>Indicates how complete the dedicated IP warm-up process is. When this value equals 1,
    #               the address has completed the warm-up process and is ready for use.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pool_name
    #   <p>The name of the dedicated IP pool that the IP address is associated with.</p>
    #
    #   @return [String]
    #
    DedicatedIp = ::Struct.new(
      :ip,
      :warmup_status,
      :warmup_percentage,
      :pool_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to delete an event destination from a configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that contains the event destination to
    #               delete.</p>
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

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    DeleteConfigurationSetEventDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to delete a configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    #   @return [String]
    #
    DeleteConfigurationSetInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    DeleteConfigurationSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list from which the contact should be removed.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The contact's email address.</p>
    #
    #   @return [String]
    #
    DeleteContactInput = ::Struct.new(
      :contact_list_name,
      :email_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list.</p>
    #
    #   @return [String]
    #
    DeleteContactListInput = ::Struct.new(
      :contact_list_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteContactListOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteContactOutput = ::Struct.new(
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

    # <p>If the action is successful, the service sends back an HTTP 200 response with an empty
    #             HTTP body.</p>
    #
    DeleteCustomVerificationEmailTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to delete a dedicated IP pool.</p>
    #
    # @!attribute pool_name
    #   <p>The name of the dedicated IP pool that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteDedicatedIpPoolInput = ::Struct.new(
      :pool_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    DeleteDedicatedIpPoolOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to delete an existing email identity. When you delete an identity, you lose
    #             the ability to send email from that identity. You can restore your ability to send email
    #             by completing the verification process for the identity again.</p>
    #
    # @!attribute email_identity
    #   <p>The identity (that is, the email address or domain) to delete.</p>
    #
    #   @return [String]
    #
    DeleteEmailIdentityInput = ::Struct.new(
      :email_identity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    DeleteEmailIdentityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to delete a sending authorization policy for an identity. Sending
    #             authorization is an Amazon SES feature that enables you to authorize other senders to
    #             use your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-identity-owner-tasks-management.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute email_identity
    #   <p>The email identity.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #
    #           <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    #
    #   @return [String]
    #
    DeleteEmailIdentityPolicyInput = ::Struct.new(
      :email_identity,
      :policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    DeleteEmailIdentityPolicyOutput = ::Struct.new(
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
    DeleteEmailTemplateInput = ::Struct.new(
      :template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response with an empty
    #             HTTP body.</p>
    #
    DeleteEmailTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to remove an email address from the suppression list for your
    #             account.</p>
    #
    # @!attribute email_address
    #   <p>The suppressed email destination to remove from the account suppression list.</p>
    #
    #   @return [String]
    #
    DeleteSuppressedDestinationInput = ::Struct.new(
      :email_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    DeleteSuppressedDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeliverabilityDashboardAccountStatus
    #
    module DeliverabilityDashboardAccountStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      PENDING_EXPIRATION = "PENDING_EXPIRATION"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>An object that contains metadata related to a predictive inbox placement test.</p>
    #
    # @!attribute report_id
    #   <p>A unique string that identifies the predictive inbox placement test.</p>
    #
    #   @return [String]
    #
    # @!attribute report_name
    #   <p>A name that helps you identify a predictive inbox placement test report.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The subject line for an email that you submitted in a predictive inbox placement test.</p>
    #
    #   @return [String]
    #
    # @!attribute from_email_address
    #   <p>The sender address that you specified for the predictive inbox placement test.</p>
    #
    #   @return [String]
    #
    # @!attribute create_date
    #   <p>The date and time when the predictive inbox placement test was created, in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute deliverability_test_status
    #   <p>The status of the predictive inbox placement test. If the status is <code>IN_PROGRESS</code>, then the predictive inbox placement test
    #               is currently running. Predictive inbox placement tests are usually complete within 24 hours of creating the
    #               test. If the status is <code>COMPLETE</code>, then the test is finished, and you can use
    #               the <code>GetDeliverabilityTestReport</code> to view the results of the test.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED"]
    #
    #   @return [String]
    #
    DeliverabilityTestReport = ::Struct.new(
      :report_id,
      :report_name,
      :subject,
      :from_email_address,
      :create_date,
      :deliverability_test_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeliverabilityTestStatus
    #
    module DeliverabilityTestStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"
    end

    # <p>Used to associate a configuration set with a dedicated IP pool.</p>
    #
    # @!attribute tls_policy
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only
    #               delivered if a TLS connection can be established. If the value is <code>Optional</code>,
    #               messages can be delivered in plain text if a TLS connection can't be established.</p>
    #
    #   Enum, one of: ["REQUIRE", "OPTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute sending_pool_name
    #   <p>The name of the dedicated IP pool to associate with the configuration set.</p>
    #
    #   @return [String]
    #
    DeliveryOptions = ::Struct.new(
      :tls_policy,
      :sending_pool_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that describes the recipients for an email.</p>
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
    #   <p>An array that contains the email addresses of the "To" recipients for the
    #               email.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cc_addresses
    #   <p>An array that contains the email addresses of the "CC" (carbon copy) recipients for
    #               the email.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute bcc_addresses
    #   <p>An array that contains the email addresses of the "BCC" (blind carbon copy) recipients
    #               for the email.</p>
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
      MESSAGE_TAG = "MESSAGE_TAG"

      # No documentation available.
      #
      EMAIL_HEADER = "EMAIL_HEADER"

      # No documentation available.
      #
      LINK_TAG = "LINK_TAG"
    end

    # <p>An object that contains information about the DKIM authentication status for an email
    #             identity.</p>
    #         <p>Amazon SES determines the authentication status by searching for specific records in the
    #             DNS configuration for the domain. If you used <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a> to set up DKIM
    #             authentication, Amazon SES tries to find three unique CNAME records in the DNS configuration
    #             for your domain. If you provided a public key to perform DKIM authentication, Amazon SES
    #             tries to find a TXT record that uses the selector that you specified. The value of the
    #             TXT record must be a public key that's paired with the private key that you specified in
    #             the process of creating the identity</p>
    #
    # @!attribute signing_enabled
    #   <p>If the value is <code>true</code>, then the messages that you send from the identity
    #               are signed using DKIM. If the value is <code>false</code>, then the messages that you
    #               send from the identity aren't DKIM-signed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>Describes whether or not Amazon SES has successfully located the DKIM records in the DNS
    #               records for the domain. The status can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PENDING</code> – The verification process was initiated, but Amazon SES
    #                       hasn't yet detected the DKIM records in the DNS configuration for the
    #                       domain.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SUCCESS</code> – The verification process completed
    #                       successfully.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FAILED</code> – The verification process failed. This typically
    #                       occurs when Amazon SES fails to find the DKIM records in the DNS configuration of the
    #                       domain.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TEMPORARY_FAILURE</code> – A temporary issue is preventing Amazon SES
    #                       from determining the DKIM authentication status of the domain.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NOT_STARTED</code> – The DKIM verification process hasn't been
    #                       initiated for the domain.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"]
    #
    #   @return [String]
    #
    # @!attribute tokens
    #   <p>If you used <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a> to configure DKIM authentication for the domain, then this object
    #               contains a set of unique strings that you use to create a set of CNAME records that you
    #               add to the DNS configuration for your domain. When Amazon SES detects these records in the
    #               DNS configuration for your domain, the DKIM authentication process is complete.</p>
    #           <p>If you configured DKIM authentication for the domain by providing your own
    #               public-private key pair, then this object contains the selector for the public
    #               key.</p>
    #           <p>Regardless of the DKIM authentication method you use, Amazon SES searches for the
    #               appropriate records in the DNS configuration of the domain for up to 72 hours.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute signing_attributes_origin
    #   <p>A string that indicates how DKIM was configured for the identity. These are the
    #               possible values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>AWS_SES</code> – Indicates that DKIM was configured for the
    #                       identity by using <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EXTERNAL</code> – Indicates that DKIM was configured for the
    #                       identity by using Bring Your Own DKIM (BYODKIM).</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AWS_SES", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute next_signing_key_length
    #   <p>[Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day.</p>
    #
    #   Enum, one of: ["RSA_1024_BIT", "RSA_2048_BIT"]
    #
    #   @return [String]
    #
    # @!attribute current_signing_key_length
    #   <p>[Easy DKIM] The key length of the DKIM key pair in use.</p>
    #
    #   Enum, one of: ["RSA_1024_BIT", "RSA_2048_BIT"]
    #
    #   @return [String]
    #
    # @!attribute last_key_generation_timestamp
    #   <p>[Easy DKIM] The last time a key pair was generated for this identity.</p>
    #
    #   @return [Time]
    #
    DkimAttributes = ::Struct.new(
      :signing_enabled,
      :status,
      :tokens,
      :signing_attributes_origin,
      :next_signing_key_length,
      :current_signing_key_length,
      :last_key_generation_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.signing_enabled ||= false
      end

    end

    # <p>An object that contains configuration for Bring Your Own DKIM (BYODKIM), or, for Easy DKIM</p>
    #
    # @!attribute domain_signing_selector
    #   <p>[Bring Your Own DKIM] A string that's used to identify a public key in the DNS configuration for a
    #               domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_signing_private_key
    #   <p>[Bring Your Own DKIM] A private key that's used to generate a DKIM signature.</p>
    #           <p>The private key must use 1024 or 2048-bit RSA encryption, and must be encoded using
    #               base64 encoding.</p>
    #
    #   @return [String]
    #
    # @!attribute next_signing_key_length
    #   <p>[Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day.</p>
    #
    #   Enum, one of: ["RSA_1024_BIT", "RSA_2048_BIT"]
    #
    #   @return [String]
    #
    DkimSigningAttributes = ::Struct.new(
      :domain_signing_selector,
      :domain_signing_private_key,
      :next_signing_key_length,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SESv2::Types::DkimSigningAttributes "\
          "domain_signing_selector=#{domain_signing_selector || 'nil'}, "\
          "domain_signing_private_key=\"[SENSITIVE]\", "\
          "next_signing_key_length=#{next_signing_key_length || 'nil'}>"
      end
    end

    # Includes enum constants for DkimSigningAttributesOrigin
    #
    module DkimSigningAttributesOrigin
      # No documentation available.
      #
      AWS_SES = "AWS_SES"

      # No documentation available.
      #
      EXTERNAL = "EXTERNAL"
    end

    # Includes enum constants for DkimSigningKeyLength
    #
    module DkimSigningKeyLength
      # No documentation available.
      #
      RSA_1024_BIT = "RSA_1024_BIT"

      # No documentation available.
      #
      RSA_2048_BIT = "RSA_2048_BIT"
    end

    # Includes enum constants for DkimStatus
    #
    module DkimStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      TEMPORARY_FAILURE = "TEMPORARY_FAILURE"

      # No documentation available.
      #
      NOT_STARTED = "NOT_STARTED"
    end

    # <p>An object that contains the deliverability data for a specific campaign. This data is
    #             available for a campaign only if the campaign sent email by using a domain that the
    #             Deliverability dashboard is enabled for (<code>PutDeliverabilityDashboardOption</code>
    #             operation).</p>
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign. The Deliverability dashboard automatically generates
    #               and assigns this identifier to a campaign.</p>
    #
    #   @return [String]
    #
    # @!attribute image_url
    #   <p>The URL of an image that contains a snapshot of the email message that was
    #               sent.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The subject line, or title, of the email message.</p>
    #
    #   @return [String]
    #
    # @!attribute from_address
    #   <p>The verified email address that the email message was sent from.</p>
    #
    #   @return [String]
    #
    # @!attribute sending_ips
    #   <p>The IP addresses that were used to send the email message.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute first_seen_date_time
    #   <p>The first time, in Unix time format, when the email message was delivered to any
    #               recipient's inbox. This value can help you determine how long it took for a campaign to
    #               deliver an email message.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_seen_date_time
    #   <p>The last time, in Unix time format, when the email message was delivered to any
    #               recipient's inbox. This value can help you determine how long it took for a campaign to
    #               deliver an email message.</p>
    #
    #   @return [Time]
    #
    # @!attribute inbox_count
    #   <p>The number of email messages that were delivered to recipients’ inboxes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute spam_count
    #   <p>The number of email messages that were delivered to recipients' spam or junk mail
    #               folders.</p>
    #
    #   @return [Integer]
    #
    # @!attribute read_rate
    #   <p>The percentage of email messages that were opened by recipients. Due to technical
    #               limitations, this value only includes recipients who opened the message by using an
    #               email client that supports images.</p>
    #
    #   @return [Float]
    #
    # @!attribute delete_rate
    #   <p>The percentage of email messages that were deleted by recipients, without being opened
    #               first. Due to technical limitations, this value only includes recipients who opened the
    #               message by using an email client that supports images.</p>
    #
    #   @return [Float]
    #
    # @!attribute read_delete_rate
    #   <p>The percentage of email messages that were opened and then deleted by recipients. Due
    #               to technical limitations, this value only includes recipients who opened the message by
    #               using an email client that supports images.</p>
    #
    #   @return [Float]
    #
    # @!attribute projected_volume
    #   <p>The projected number of recipients that the email message was sent to.</p>
    #
    #   @return [Integer]
    #
    # @!attribute esps
    #   <p>The major email providers who handled the email message.</p>
    #
    #   @return [Array<String>]
    #
    DomainDeliverabilityCampaign = ::Struct.new(
      :campaign_id,
      :image_url,
      :subject,
      :from_address,
      :sending_ips,
      :first_seen_date_time,
      :last_seen_date_time,
      :inbox_count,
      :spam_count,
      :read_rate,
      :delete_rate,
      :read_delete_rate,
      :projected_volume,
      :esps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about the Deliverability dashboard subscription for a
    #             verified domain that you use to send email and currently has an active Deliverability dashboard
    #             subscription. If a Deliverability dashboard subscription is active for a domain, you gain access
    #             to reputation, inbox placement, and other metrics for the domain.</p>
    #
    # @!attribute domain
    #   <p>A verified domain that’s associated with your Amazon Web Services account and currently has an
    #               active Deliverability dashboard subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute subscription_start_date
    #   <p>The date, in Unix time format, when you enabled the Deliverability dashboard for the
    #               domain.</p>
    #
    #   @return [Time]
    #
    # @!attribute inbox_placement_tracking_option
    #   <p>An object that contains information about the inbox placement data settings for the
    #               domain.</p>
    #
    #   @return [InboxPlacementTrackingOption]
    #
    DomainDeliverabilityTrackingOption = ::Struct.new(
      :domain,
      :subscription_start_date,
      :inbox_placement_tracking_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains inbox placement data for email sent from one of your email
    #             domains to a specific email provider.</p>
    #
    # @!attribute isp_name
    #   <p>The name of the email provider that the inbox placement data applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute inbox_raw_count
    #   <p>The total number of messages that were sent from the selected domain to the specified
    #               email provider that arrived in recipients' inboxes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute spam_raw_count
    #   <p>The total number of messages that were sent from the selected domain to the specified
    #               email provider that arrived in recipients' spam or junk mail folders.</p>
    #
    #   @return [Integer]
    #
    # @!attribute inbox_percentage
    #   <p>The percentage of messages that were sent from the selected domain to the specified
    #               email provider that arrived in recipients' inboxes.</p>
    #
    #   @return [Float]
    #
    # @!attribute spam_percentage
    #   <p>The percentage of messages that were sent from the selected domain to the specified
    #               email provider that arrived in recipients' spam or junk mail folders.</p>
    #
    #   @return [Float]
    #
    DomainIspPlacement = ::Struct.new(
      :isp_name,
      :inbox_raw_count,
      :spam_raw_count,
      :inbox_percentage,
      :spam_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that defines the entire content of the email, including the message headers
    #             and the body content. You can create a simple email message, in which you specify the
    #             subject and the text and HTML versions of the message body. You can also create raw
    #             messages, in which you specify a complete MIME-formatted message. Raw messages can
    #             include attachments and custom headers.</p>
    #
    # @!attribute simple
    #   <p>The simple email message. The message consists of a subject and a message body.</p>
    #
    #   @return [Message]
    #
    # @!attribute raw
    #   <p>The raw email message. The message has to meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>The message has to contain a header and a body, separated by one blank
    #                       line.</p>
    #               </li>
    #               <li>
    #                   <p>All of the required header fields must be present in the message.</p>
    #               </li>
    #               <li>
    #                   <p>Each part of a multipart MIME message must be formatted properly.</p>
    #               </li>
    #               <li>
    #                   <p>If you include attachments, they must be in a file format that the Amazon SES API v2
    #                       supports.
    #                       </p>
    #               </li>
    #               <li>
    #                   <p>The entire message must be Base64 encoded.</p>
    #               </li>
    #               <li>
    #                   <p>If any of the MIME parts in your message contain content that is outside of
    #                       the 7-bit ASCII character range, you should encode that content to ensure that
    #                       recipients' email clients render the message properly.</p>
    #               </li>
    #               <li>
    #                   <p>The length of any single line of text in the message can't exceed 1,000
    #                       characters. This restriction is defined in <a href="https://tools.ietf.org/html/rfc5321">RFC 5321</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [RawMessage]
    #
    # @!attribute template
    #   <p>The template to use for the email message.</p>
    #
    #   @return [Template]
    #
    EmailContent = ::Struct.new(
      :simple,
      :raw,
      :template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The content of the email, composed of a subject line, an HTML part, and a text-only
    #             part.</p>
    #
    # @!attribute subject
    #   <p>The subject line of the email.</p>
    #
    #   @return [String]
    #
    # @!attribute text
    #   <p>The email body that will be visible to recipients whose email clients do not display
    #               HTML.</p>
    #
    #   @return [String]
    #
    # @!attribute html
    #   <p>The HTML body of the email.</p>
    #
    #   @return [String]
    #
    EmailTemplateContent = ::Struct.new(
      :subject,
      :text,
      :html,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an email template.</p>
    #
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time and date the template was created.</p>
    #
    #   @return [Time]
    #
    EmailTemplateMetadata = ::Struct.new(
      :template_name,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>In the Amazon SES API v2, <i>events</i> include message sends, deliveries, opens,
    #             clicks, bounces, complaints and delivery delays. <i>Event destinations</i>
    #             are places that you can send information about these events to. For example, you can
    #             send event data to Amazon SNS to receive notifications when you receive bounces or
    #             complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>
    #
    # @!attribute name
    #   <p>A name that identifies the event destination.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>If <code>true</code>, the event destination is enabled. When the event destination is
    #               enabled, the specified event types are sent to the destinations in this
    #                   <code>EventDestinationDefinition</code>.</p>
    #           <p>If <code>false</code>, the event destination is disabled. When the event destination
    #               is disabled, events aren't sent to the specified destinations.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute matching_event_types
    #   <p>The types of events that Amazon SES sends to the specified event destinations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute kinesis_firehose_destination
    #   <p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to
    #               stream data to other services, such as Amazon S3 and Amazon Redshift.</p>
    #
    #   @return [KinesisFirehoseDestination]
    #
    # @!attribute cloud_watch_destination
    #   <p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to
    #               monitor and gain insights on your email sending metrics.</p>
    #
    #   @return [CloudWatchDestination]
    #
    # @!attribute sns_destination
    #   <p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to
    #               send notification when certain email events occur.</p>
    #
    #   @return [SnsDestination]
    #
    # @!attribute pinpoint_destination
    #   <p>An object that defines an Amazon Pinpoint project destination for email events. You can send
    #               email event data to a Amazon Pinpoint project to view metrics using the Transactional Messaging
    #               dashboards that are built in to Amazon Pinpoint. For more information, see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html">Transactional
    #                   Messaging Charts</a> in the <i>Amazon Pinpoint User Guide</i>.</p>
    #
    #   @return [PinpointDestination]
    #
    EventDestination = ::Struct.new(
      :name,
      :enabled,
      :matching_event_types,
      :kinesis_firehose_destination,
      :cloud_watch_destination,
      :sns_destination,
      :pinpoint_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>An object that defines the event destination. Specifically, it defines which services
    #             receive events from emails sent using the configuration set that the event destination
    #             is associated with. Also defines the types of events that are sent to the event
    #             destination.</p>
    #
    # @!attribute enabled
    #   <p>If <code>true</code>, the event destination is enabled. When the event destination is
    #               enabled, the specified event types are sent to the destinations in this
    #                   <code>EventDestinationDefinition</code>.</p>
    #           <p>If <code>false</code>, the event destination is disabled. When the event destination
    #               is disabled, events aren't sent to the specified destinations.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute matching_event_types
    #   <p>An array that specifies which events the Amazon SES API v2 should send to the destinations in
    #               this <code>EventDestinationDefinition</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute kinesis_firehose_destination
    #   <p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to
    #               stream data to other services, such as Amazon S3 and Amazon Redshift.</p>
    #
    #   @return [KinesisFirehoseDestination]
    #
    # @!attribute cloud_watch_destination
    #   <p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to
    #               monitor and gain insights on your email sending metrics.</p>
    #
    #   @return [CloudWatchDestination]
    #
    # @!attribute sns_destination
    #   <p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to
    #               send notification when certain email events occur.</p>
    #
    #   @return [SnsDestination]
    #
    # @!attribute pinpoint_destination
    #   <p>An object that defines an Amazon Pinpoint project destination for email events. You can send
    #               email event data to a Amazon Pinpoint project to view metrics using the Transactional Messaging
    #               dashboards that are built in to Amazon Pinpoint. For more information, see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html">Transactional
    #                   Messaging Charts</a> in the <i>Amazon Pinpoint User Guide</i>.</p>
    #
    #   @return [PinpointDestination]
    #
    EventDestinationDefinition = ::Struct.new(
      :enabled,
      :matching_event_types,
      :kinesis_firehose_destination,
      :cloud_watch_destination,
      :sns_destination,
      :pinpoint_destination,
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
      SEND = "SEND"

      # No documentation available.
      #
      REJECT = "REJECT"

      # No documentation available.
      #
      BOUNCE = "BOUNCE"

      # No documentation available.
      #
      COMPLAINT = "COMPLAINT"

      # No documentation available.
      #
      DELIVERY = "DELIVERY"

      # No documentation available.
      #
      OPEN = "OPEN"

      # No documentation available.
      #
      CLICK = "CLICK"

      # No documentation available.
      #
      RENDERING_FAILURE = "RENDERING_FAILURE"

      # No documentation available.
      #
      DELIVERY_DELAY = "DELIVERY_DELAY"

      # No documentation available.
      #
      SUBSCRIPTION = "SUBSCRIPTION"
    end

    # <p>An object that contains the failure details about an import job.</p>
    #
    # @!attribute failed_records_s3_url
    #   <p>An Amazon S3 presigned URL that contains all the failed records and related
    #               information.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A message about why the import job failed.</p>
    #
    #   @return [String]
    #
    FailureInfo = ::Struct.new(
      :failed_records_s3_url,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to obtain information about the email-sending capabilities of your Amazon SES
    #             account.</p>
    #
    GetAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of details about the email-sending capabilities of your Amazon SES account in the
    #             current Amazon Web Services Region.</p>
    #
    # @!attribute dedicated_ip_auto_warmup_enabled
    #   <p>Indicates whether or not the automatic warm-up feature is enabled for dedicated IP
    #               addresses that are associated with your account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enforcement_status
    #   <p>The reputation status of your Amazon SES account. The status can be one of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>HEALTHY</code> – There are no reputation-related issues that
    #                       currently impact your account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PROBATION</code> – We've identified potential issues with your
    #                       Amazon SES account. We're placing your account under review while you work on
    #                       correcting these issues.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SHUTDOWN</code> – Your account's ability to send email is
    #                       currently paused because of an issue with the email sent from your account. When
    #                       you correct the issue, you can contact us and request that your account's
    #                       ability to send email is resumed.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute production_access_enabled
    #   <p>Indicates whether or not your account has production access in the current Amazon Web Services
    #               Region.</p>
    #           <p>If the value is <code>false</code>, then your account is in the
    #                   <i>sandbox</i>. When your account is in the sandbox, you can only send
    #               email to verified identities. Additionally, the maximum number of emails you can send in
    #               a 24-hour period (your sending quota) is 200, and the maximum number of emails you can
    #               send per second (your maximum sending rate) is 1.</p>
    #           <p>If the value is <code>true</code>, then your account has production access. When your
    #               account has production access, you can send email to any address. The sending quota and
    #               maximum sending rate for your account vary based on your specific use case.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute send_quota
    #   <p>An object that contains information about the per-day and per-second sending limits
    #               for your Amazon SES account in the current Amazon Web Services Region.</p>
    #
    #   @return [SendQuota]
    #
    # @!attribute sending_enabled
    #   <p>Indicates whether or not email sending is enabled for your Amazon SES account in the
    #               current Amazon Web Services Region.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute suppression_attributes
    #   <p>An object that contains information about the email address suppression preferences
    #               for your account in the current Amazon Web Services Region.</p>
    #
    #   @return [SuppressionAttributes]
    #
    # @!attribute details
    #   <p>An object that defines your account details.</p>
    #
    #   @return [AccountDetails]
    #
    GetAccountOutput = ::Struct.new(
      :dedicated_ip_auto_warmup_enabled,
      :enforcement_status,
      :production_access_enabled,
      :send_quota,
      :sending_enabled,
      :suppression_attributes,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.dedicated_ip_auto_warmup_enabled ||= false
        self.production_access_enabled ||= false
        self.sending_enabled ||= false
      end

    end

    # <p>A request to retrieve a list of the blacklists that your dedicated IP addresses appear
    #             on.</p>
    #
    # @!attribute blacklist_item_names
    #   <p>A list of IP addresses that you want to retrieve blacklist information about. You can
    #               only specify the dedicated IP addresses that you use to send email using Amazon SES or
    #               Amazon Pinpoint.</p>
    #
    #   @return [Array<String>]
    #
    GetBlacklistReportsInput = ::Struct.new(
      :blacklist_item_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about blacklist events.</p>
    #
    # @!attribute blacklist_report
    #   <p>An object that contains information about a blacklist that one of your dedicated IP
    #               addresses appears on.</p>
    #
    #   @return [Hash<String, Array<BlacklistEntry>>]
    #
    GetBlacklistReportsOutput = ::Struct.new(
      :blacklist_report,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to obtain information about the event destinations for a configuration
    #             set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that contains the event destination.</p>
    #
    #   @return [String]
    #
    GetConfigurationSetEventDestinationsInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an event destination for a configuration set.</p>
    #
    # @!attribute event_destinations
    #   <p>An array that includes all of the events destinations that have been configured for
    #               the configuration set.</p>
    #
    #   @return [Array<EventDestination>]
    #
    GetConfigurationSetEventDestinationsOutput = ::Struct.new(
      :event_destinations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to obtain information about a configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    #   @return [String]
    #
    GetConfigurationSetInput = ::Struct.new(
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute tracking_options
    #   <p>An object that defines the open and click tracking options for emails that you send
    #               using the configuration set.</p>
    #
    #   @return [TrackingOptions]
    #
    # @!attribute delivery_options
    #   <p>An object that defines the dedicated IP pool that is used to send emails that you send
    #               using the configuration set.</p>
    #
    #   @return [DeliveryOptions]
    #
    # @!attribute reputation_options
    #   <p>An object that defines whether or not Amazon SES collects reputation metrics for the emails
    #               that you send that use the configuration set.</p>
    #
    #   @return [ReputationOptions]
    #
    # @!attribute sending_options
    #   <p>An object that defines whether or not Amazon SES can send email that you send using the
    #               configuration set.</p>
    #
    #   @return [SendingOptions]
    #
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) that are associated with
    #               the configuration set.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute suppression_options
    #   <p>An object that contains information about the suppression list preferences for your
    #               account.</p>
    #
    #   @return [SuppressionOptions]
    #
    GetConfigurationSetOutput = ::Struct.new(
      :configuration_set_name,
      :tracking_options,
      :delivery_options,
      :reputation_options,
      :sending_options,
      :tags,
      :suppression_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list to which the contact belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The contact's email addres.</p>
    #
    #   @return [String]
    #
    GetContactInput = ::Struct.new(
      :contact_list_name,
      :email_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list.</p>
    #
    #   @return [String]
    #
    GetContactListInput = ::Struct.new(
      :contact_list_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list.</p>
    #
    #   @return [String]
    #
    # @!attribute topics
    #   <p>An interest group, theme, or label within a list. A contact list can have multiple
    #               topics.</p>
    #
    #   @return [Array<Topic>]
    #
    # @!attribute description
    #   <p>A description of what the contact list is about.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>A timestamp noting when the contact list was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>A timestamp noting the last time the contact list was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags associated with a contact list.</p>
    #
    #   @return [Array<Tag>]
    #
    GetContactListOutput = ::Struct.new(
      :contact_list_name,
      :topics,
      :description,
      :created_timestamp,
      :last_updated_timestamp,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list to which the contact belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The contact's email addres.</p>
    #
    #   @return [String]
    #
    # @!attribute topic_preferences
    #   <p>The contact's preference for being opted-in to or opted-out of a topic.></p>
    #
    #   @return [Array<TopicPreference>]
    #
    # @!attribute topic_default_preferences
    #   <p>The default topic preferences applied to the contact.</p>
    #
    #   @return [Array<TopicPreference>]
    #
    # @!attribute unsubscribe_all
    #   <p>A boolean value status noting if the contact is unsubscribed from all contact list
    #               topics.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute attributes_data
    #   <p>The attribute data attached to a contact.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>A timestamp noting when the contact was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>A timestamp noting the last time the contact's information was updated.</p>
    #
    #   @return [Time]
    #
    GetContactOutput = ::Struct.new(
      :contact_list_name,
      :email_address,
      :topic_preferences,
      :topic_default_preferences,
      :unsubscribe_all,
      :attributes_data,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.unsubscribe_all ||= false
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

    # <p>The following elements are returned by the service.</p>
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

    # <p>A request to obtain more information about a dedicated IP address.</p>
    #
    # @!attribute ip
    #   <p>The IP address that you want to obtain more information about. The value you specify
    #               has to be a dedicated IP address that's assocaited with your Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    GetDedicatedIpInput = ::Struct.new(
      :ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a dedicated IP address.</p>
    #
    # @!attribute dedicated_ip
    #   <p>An object that contains information about a dedicated IP address.</p>
    #
    #   @return [DedicatedIp]
    #
    GetDedicatedIpOutput = ::Struct.new(
      :dedicated_ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to obtain more information about dedicated IP pools.</p>
    #
    # @!attribute pool_name
    #   <p>The name of the IP pool that the dedicated IP address is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>GetDedicatedIps</code> to indicate the
    #               position of the dedicated IP pool in the list of IP pools.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The number of results to show in a single call to <code>GetDedicatedIpsRequest</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #
    #   @return [Integer]
    #
    GetDedicatedIpsInput = ::Struct.new(
      :pool_name,
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the dedicated IP addresses that are associated with your Amazon Web Services
    #             account.</p>
    #
    # @!attribute dedicated_ips
    #   <p>A list of dedicated IP addresses that are associated with your Amazon Web Services account.</p>
    #
    #   @return [Array<DedicatedIp>]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there are additional dedicated IP addresses to list. To
    #               view additional addresses, issue another request to <code>GetDedicatedIps</code>,
    #               passing this token in the <code>NextToken</code> parameter.</p>
    #
    #   @return [String]
    #
    GetDedicatedIpsOutput = ::Struct.new(
      :dedicated_ips,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Retrieve information about the status of the Deliverability dashboard for your Amazon Web Services account.
    #             When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and
    #             other metrics for your domains. You also gain the ability to perform predictive inbox placement tests.</p>
    #
    #         <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon SES and other Amazon Web Services services. For more
    #             information about the features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/pinpoint/pricing/">Amazon Pinpoint Pricing</a>.</p>
    #
    GetDeliverabilityDashboardOptionsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that shows the status of the Deliverability dashboard.</p>
    #
    # @!attribute dashboard_enabled
    #   <p>Specifies whether the Deliverability dashboard is enabled. If this value is <code>true</code>,
    #               the dashboard is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute subscription_expiry_date
    #   <p>The date, in Unix time format, when your current subscription to the Deliverability dashboard
    #               is scheduled to expire, if your subscription is scheduled to expire at the end of the
    #               current calendar month. This value is null if you have an active subscription that isn’t
    #               due to expire at the end of the month.</p>
    #
    #   @return [Time]
    #
    # @!attribute account_status
    #   <p>The current status of your Deliverability dashboard subscription. If this value is
    #                   <code>PENDING_EXPIRATION</code>, your subscription is scheduled to expire at the end
    #               of the current calendar month.</p>
    #
    #   Enum, one of: ["ACTIVE", "PENDING_EXPIRATION", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute active_subscribed_domains
    #   <p>An array of objects, one for each verified domain that you use to send email and
    #               currently has an active Deliverability dashboard subscription that isn’t scheduled to expire at
    #               the end of the current calendar month.</p>
    #
    #   @return [Array<DomainDeliverabilityTrackingOption>]
    #
    # @!attribute pending_expiration_subscribed_domains
    #   <p>An array of objects, one for each verified domain that you use to send email and
    #               currently has an active Deliverability dashboard subscription that's scheduled to expire at the
    #               end of the current calendar month.</p>
    #
    #   @return [Array<DomainDeliverabilityTrackingOption>]
    #
    GetDeliverabilityDashboardOptionsOutput = ::Struct.new(
      :dashboard_enabled,
      :subscription_expiry_date,
      :account_status,
      :active_subscribed_domains,
      :pending_expiration_subscribed_domains,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.dashboard_enabled ||= false
      end

    end

    # <p>A request to retrieve the results of a predictive inbox placement test.</p>
    #
    # @!attribute report_id
    #   <p>A unique string that identifies the predictive inbox placement test.</p>
    #
    #   @return [String]
    #
    GetDeliverabilityTestReportInput = ::Struct.new(
      :report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The results of the predictive inbox placement test.</p>
    #
    # @!attribute deliverability_test_report
    #   <p>An object that contains the results of the predictive inbox placement test.</p>
    #
    #   @return [DeliverabilityTestReport]
    #
    # @!attribute overall_placement
    #   <p>An object that specifies how many test messages that were sent during the predictive inbox placement test were
    #               delivered to recipients' inboxes, how many were sent to recipients' spam folders, and
    #               how many weren't delivered.</p>
    #
    #   @return [PlacementStatistics]
    #
    # @!attribute isp_placements
    #   <p>An object that describes how the test email was handled by several email providers,
    #               including Gmail, Hotmail, Yahoo, AOL, and others.</p>
    #
    #   @return [Array<IspPlacement>]
    #
    # @!attribute message
    #   <p>An object that contains the message that you sent when you performed this
    #               predictive inbox placement test.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) that are associated with
    #               the predictive inbox placement test.</p>
    #
    #   @return [Array<Tag>]
    #
    GetDeliverabilityTestReportOutput = ::Struct.new(
      :deliverability_test_report,
      :overall_placement,
      :isp_placements,
      :message,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Retrieve all the deliverability data for a specific campaign. This data is available
    #             for a campaign only if the campaign sent email by using a domain that the
    #             Deliverability dashboard is enabled for (<code>PutDeliverabilityDashboardOption</code>
    #             operation).</p>
    #
    # @!attribute campaign_id
    #   <p>The unique identifier for the campaign. The Deliverability dashboard automatically generates
    #               and assigns this identifier to a campaign.</p>
    #
    #   @return [String]
    #
    GetDomainDeliverabilityCampaignInput = ::Struct.new(
      :campaign_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains all the deliverability data for a specific campaign. This data
    #             is available for a campaign only if the campaign sent email by using a domain that the
    #             Deliverability dashboard is enabled for.</p>
    #
    # @!attribute domain_deliverability_campaign
    #   <p>An object that contains the deliverability data for the campaign.</p>
    #
    #   @return [DomainDeliverabilityCampaign]
    #
    GetDomainDeliverabilityCampaignOutput = ::Struct.new(
      :domain_deliverability_campaign,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to obtain deliverability metrics for a domain.</p>
    #
    # @!attribute domain
    #   <p>The domain that you want to obtain deliverability metrics for.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The first day (in Unix time) that you want to obtain domain deliverability metrics
    #               for.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date
    #   <p>The last day (in Unix time) that you want to obtain domain deliverability metrics for.
    #               The <code>EndDate</code> that you specify has to be less than or equal to 30 days after
    #               the <code>StartDate</code>.</p>
    #
    #   @return [Time]
    #
    GetDomainStatisticsReportInput = ::Struct.new(
      :domain,
      :start_date,
      :end_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that includes statistics that are related to the domain that you
    #             specified.</p>
    #
    # @!attribute overall_volume
    #   <p>An object that contains deliverability metrics for the domain that you specified. The
    #               data in this object is a summary of all of the data that was collected from the
    #                   <code>StartDate</code> to the <code>EndDate</code>.</p>
    #
    #   @return [OverallVolume]
    #
    # @!attribute daily_volumes
    #   <p>An object that contains deliverability metrics for the domain that you specified. This
    #               object contains data for each day, starting on the <code>StartDate</code> and ending on
    #               the <code>EndDate</code>.</p>
    #
    #   @return [Array<DailyVolume>]
    #
    GetDomainStatisticsReportOutput = ::Struct.new(
      :overall_volume,
      :daily_volumes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to return details about an email identity.</p>
    #
    # @!attribute email_identity
    #   <p>The email identity.</p>
    #
    #   @return [String]
    #
    GetEmailIdentityInput = ::Struct.new(
      :email_identity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an email identity.</p>
    #
    # @!attribute identity_type
    #   <p>The email identity type. Note: the <code>MANAGED_DOMAIN</code> identity type is not
    #               supported.</p>
    #
    #   Enum, one of: ["EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"]
    #
    #   @return [String]
    #
    # @!attribute feedback_forwarding_status
    #   <p>The feedback forwarding configuration for the identity.</p>
    #           <p>If the value is <code>true</code>, you receive email notifications when bounce or
    #               complaint events occur. These notifications are sent to the address that you specified
    #               in the <code>Return-Path</code> header of the original email.</p>
    #           <p>You're required to have a method of tracking bounces and complaints. If you haven't
    #               set up another mechanism for receiving bounce or complaint notifications (for example,
    #               by setting up an event destination), you receive an email notification when these events
    #               occur (even if this setting is disabled).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute verified_for_sending_status
    #   <p>Specifies whether or not the identity is verified. You can only send email from
    #               verified email addresses or domains. For more information about verifying identities,
    #               see the <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html">Amazon Pinpoint User Guide</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute dkim_attributes
    #   <p>An object that contains information about the DKIM attributes for the identity.</p>
    #
    #   @return [DkimAttributes]
    #
    # @!attribute mail_from_attributes
    #   <p>An object that contains information about the Mail-From attributes for the email
    #               identity.</p>
    #
    #   @return [MailFromAttributes]
    #
    # @!attribute policies
    #   <p>A map of policy names to policies.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>An array of objects that define the tags (keys and values) that are associated with
    #               the email identity.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute configuration_set_name
    #   <p>The configuration set used by default when sending from this identity.</p>
    #
    #   @return [String]
    #
    GetEmailIdentityOutput = ::Struct.new(
      :identity_type,
      :feedback_forwarding_status,
      :verified_for_sending_status,
      :dkim_attributes,
      :mail_from_attributes,
      :policies,
      :tags,
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.feedback_forwarding_status ||= false
        self.verified_for_sending_status ||= false
      end

    end

    # <p>A request to return the policies of an email identity.</p>
    #
    # @!attribute email_identity
    #   <p>The email identity.</p>
    #
    #   @return [String]
    #
    GetEmailIdentityPoliciesInput = ::Struct.new(
      :email_identity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identity policies associated with email identity.</p>
    #
    # @!attribute policies
    #   <p>A map of policy names to policies.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetEmailIdentityPoliciesOutput = ::Struct.new(
      :policies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to display the template object (which includes the subject line,
    #             HTML part and text part) for the template you specify.</p>
    #
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #
    #   @return [String]
    #
    GetEmailTemplateInput = ::Struct.new(
      :template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The following element is returned by the service.</p>
    #
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_content
    #   <p>The content of the email template, composed of a subject line, an HTML part, and a
    #               text-only part.</p>
    #
    #   @return [EmailTemplateContent]
    #
    GetEmailTemplateOutput = ::Struct.new(
      :template_name,
      :template_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request for information about an import job using the import job
    #             ID.</p>
    #
    # @!attribute job_id
    #   <p>The ID of the import job.</p>
    #
    #   @return [String]
    #
    GetImportJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    # @!attribute job_id
    #   <p>A string that represents the import job ID.</p>
    #
    #   @return [String]
    #
    # @!attribute import_destination
    #   <p>The destination of the import job.</p>
    #
    #   @return [ImportDestination]
    #
    # @!attribute import_data_source
    #   <p>The data source of the import job.</p>
    #
    #   @return [ImportDataSource]
    #
    # @!attribute failure_info
    #   <p>The failure details about an import job.</p>
    #
    #   @return [FailureInfo]
    #
    # @!attribute job_status
    #   <p>The status of the import job.</p>
    #
    #   Enum, one of: ["CREATED", "PROCESSING", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time stamp of when the import job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_timestamp
    #   <p>The time stamp of when the import job was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute processed_records_count
    #   <p>The current number of records processed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_records_count
    #   <p>The number of records that failed processing because of invalid input or other
    #               reasons.</p>
    #
    #   @return [Integer]
    #
    GetImportJobOutput = ::Struct.new(
      :job_id,
      :import_destination,
      :import_data_source,
      :failure_info,
      :job_status,
      :created_timestamp,
      :completed_timestamp,
      :processed_records_count,
      :failed_records_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to retrieve information about an email address that's on the suppression
    #             list for your account.</p>
    #
    # @!attribute email_address
    #   <p>The email address that's on the account suppression list.</p>
    #
    #   @return [String]
    #
    GetSuppressedDestinationInput = ::Struct.new(
      :email_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the suppressed email address.</p>
    #
    # @!attribute suppressed_destination
    #   <p>An object containing information about the suppressed email address.</p>
    #
    #   @return [SuppressedDestination]
    #
    GetSuppressedDestinationOutput = ::Struct.new(
      :suppressed_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an email identity.</p>
    #
    # @!attribute identity_type
    #   <p>The email identity type. Note: the <code>MANAGED_DOMAIN</code> type is not supported
    #               for email identity types.</p>
    #
    #   Enum, one of: ["EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"]
    #
    #   @return [String]
    #
    # @!attribute identity_name
    #   <p>The address or domain of the identity.</p>
    #
    #   @return [String]
    #
    # @!attribute sending_enabled
    #   <p>Indicates whether or not you can send email from the identity.</p>
    #           <p>An <i>identity</i> is an email address or domain that you send email
    #               from. Before you can send email from an identity, you have to demostrate that you own
    #               the identity, and that you authorize Amazon SES to send email from that identity.</p>
    #
    #   @return [Boolean]
    #
    IdentityInfo = ::Struct.new(
      :identity_type,
      :identity_name,
      :sending_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.sending_enabled ||= false
      end

    end

    # Includes enum constants for IdentityType
    #
    module IdentityType
      # No documentation available.
      #
      EMAIL_ADDRESS = "EMAIL_ADDRESS"

      # No documentation available.
      #
      DOMAIN = "DOMAIN"

      # No documentation available.
      #
      MANAGED_DOMAIN = "MANAGED_DOMAIN"
    end

    # <p>An object that contains details about the data source of the import job.</p>
    #
    # @!attribute s3_url
    #   <p>An Amazon S3 URL in the format
    #                   s3://<i><bucket_name></i>/<i><object></i>.</p>
    #
    #   @return [String]
    #
    # @!attribute data_format
    #   <p>The data format of the import job's data source.</p>
    #
    #   Enum, one of: ["CSV", "JSON"]
    #
    #   @return [String]
    #
    ImportDataSource = ::Struct.new(
      :s3_url,
      :data_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains details about the resource destination the import job is going
    #             to target.</p>
    #
    # @!attribute suppression_list_destination
    #   <p>An object that contains the action of the import job towards suppression list.</p>
    #
    #   @return [SuppressionListDestination]
    #
    # @!attribute contact_list_destination
    #   <p>An object that contains the action of the import job towards a contact list.</p>
    #
    #   @return [ContactListDestination]
    #
    ImportDestination = ::Struct.new(
      :suppression_list_destination,
      :contact_list_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportDestinationType
    #
    module ImportDestinationType
      # No documentation available.
      #
      SUPPRESSION_LIST = "SUPPRESSION_LIST"

      # No documentation available.
      #
      CONTACT_LIST = "CONTACT_LIST"
    end

    # <p>A summary of the import job.</p>
    #
    # @!attribute job_id
    #   <p>A string that represents the import job ID.</p>
    #
    #   @return [String]
    #
    # @!attribute import_destination
    #   <p>An object that contains details about the resource destination the import job is going
    #               to target.</p>
    #
    #   @return [ImportDestination]
    #
    # @!attribute job_status
    #   <p>The status of the import job.</p>
    #
    #   Enum, one of: ["CREATED", "PROCESSING", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The date and time when the import job was created.</p>
    #
    #   @return [Time]
    #
    ImportJobSummary = ::Struct.new(
      :job_id,
      :import_destination,
      :job_status,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about the inbox placement data settings for a
    #             verified domain that’s associated with your Amazon Web Services account. This data is available only
    #             if you enabled the Deliverability dashboard for the domain.</p>
    #
    # @!attribute global
    #   <p>Specifies whether inbox placement data is being tracked for the domain.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tracked_isps
    #   <p>An array of strings, one for each major email provider that the inbox placement data
    #               applies to.</p>
    #
    #   @return [Array<String>]
    #
    InboxPlacementTrackingOption = ::Struct.new(
      :global,
      :tracked_isps,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.global ||= false
      end

    end

    # <p>The specified request includes an invalid or expired token.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that describes how email sent during the predictive inbox placement test was handled by a certain
    #             email provider.</p>
    #
    # @!attribute isp_name
    #   <p>The name of the email provider that the inbox placement data applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute placement_statistics
    #   <p>An object that contains inbox placement metrics for a specific email provider.</p>
    #
    #   @return [PlacementStatistics]
    #
    IspPlacement = ::Struct.new(
      :isp_name,
      :placement_statistics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      PROCESSING = "PROCESSING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to
    #             stream data to other services, such as Amazon S3 and Amazon Redshift.</p>
    #
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the Amazon SES API v2 uses to send email
    #               events to the Amazon Kinesis Data Firehose stream.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose stream that the Amazon SES API v2 sends email
    #               events to.</p>
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

    # <p>There are too many instances of the specified resource type.</p>
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

    # <p>A request to obtain a list of configuration sets for your Amazon SES account in the current
    #             Amazon Web Services Region.</p>
    #
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListConfigurationSets</code> to
    #               indicate the position in the list of configuration sets.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The number of results to show in a single call to <code>ListConfigurationSets</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #
    #   @return [Integer]
    #
    ListConfigurationSetsInput = ::Struct.new(
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of configuration sets in your Amazon SES account in the current Amazon Web Services Region.</p>
    #
    # @!attribute configuration_sets
    #   <p>An array that contains all of the configuration sets in your Amazon SES account in the
    #               current Amazon Web Services Region.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there are additional configuration sets to list. To view
    #               additional configuration sets, issue another request to
    #                   <code>ListConfigurationSets</code>, and pass this token in the
    #                   <code>NextToken</code> parameter.</p>
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

    # @!attribute page_size
    #   <p>Maximum number of contact lists to return at once. Use this parameter to paginate
    #               results. If additional contact lists exist beyond the specified limit, the
    #                   <code>NextToken</code> element is sent in the response. Use the
    #                   <code>NextToken</code> value in subsequent requests to retrieve additional
    #               lists.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A string token indicating that there might be additional contact lists available to be
    #               listed. Use the token provided in the Response to use in the subsequent call to
    #               ListContactLists with the same parameters to retrieve the next page of contact
    #               lists.</p>
    #
    #   @return [String]
    #
    ListContactListsInput = ::Struct.new(
      :page_size,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_lists
    #   <p>The available contact lists.</p>
    #
    #   @return [Array<ContactList>]
    #
    # @!attribute next_token
    #   <p>A string token indicating that there might be additional contact lists available to be
    #               listed. Copy this token to a subsequent call to <code>ListContactLists</code> with the
    #               same parameters to retrieve the next page of contact lists.</p>
    #
    #   @return [String]
    #
    ListContactListsOutput = ::Struct.new(
      :contact_lists,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter that can be applied to a list of contacts.</p>
    #
    # @!attribute filtered_status
    #   <p>The status by which you are filtering: <code>OPT_IN</code> or
    #               <code>OPT_OUT</code>.</p>
    #
    #   Enum, one of: ["OPT_IN", "OPT_OUT"]
    #
    #   @return [String]
    #
    # @!attribute topic_filter
    #   <p>Used for filtering by a specific topic preference.</p>
    #
    #   @return [TopicFilter]
    #
    ListContactsFilter = ::Struct.new(
      :filtered_status,
      :topic_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>A filter that can be applied to a list of contacts.</p>
    #
    #   @return [ListContactsFilter]
    #
    # @!attribute page_size
    #   <p>The number of contacts that may be returned at once, which is dependent on if there
    #               are more or less contacts than the value of the PageSize. Use this parameter to
    #               paginate results. If additional contacts exist beyond the specified limit, the
    #                   <code>NextToken</code> element is sent in the response. Use the
    #                   <code>NextToken</code> value in subsequent requests to retrieve additional
    #               contacts.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A string token indicating that there might be additional contacts available to be
    #               listed. Use the token provided in the Response to use in the subsequent call to
    #               ListContacts with the same parameters to retrieve the next page of contacts.</p>
    #
    #   @return [String]
    #
    ListContactsInput = ::Struct.new(
      :contact_list_name,
      :filter,
      :page_size,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contacts
    #   <p>The contacts present in a specific contact list.</p>
    #
    #   @return [Array<Contact>]
    #
    # @!attribute next_token
    #   <p>A string token indicating that there might be additional contacts available to be
    #               listed. Copy this token to a subsequent call to <code>ListContacts</code> with the same
    #               parameters to retrieve the next page of contacts.</p>
    #
    #   @return [String]
    #
    ListContactsOutput = ::Struct.new(
      :contacts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to list the existing custom verification email templates for your
    #             account.</p>
    #
    # @!attribute next_token
    #   <p>A token returned from a previous call to
    #                   <code>ListCustomVerificationEmailTemplates</code> to indicate the position in the
    #               list of custom verification email templates.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The number of results to show in a single call to
    #                   <code>ListCustomVerificationEmailTemplates</code>. If the number of results is
    #               larger than the number you specified in this parameter, then the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #           <p>The value you specify has to be at least 1, and can be no more than 50.</p>
    #
    #   @return [Integer]
    #
    ListCustomVerificationEmailTemplatesInput = ::Struct.new(
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The following elements are returned by the service.</p>
    #
    # @!attribute custom_verification_email_templates
    #   <p>A list of the custom verification email templates that exist in your account.</p>
    #
    #   @return [Array<CustomVerificationEmailTemplateMetadata>]
    #
    # @!attribute next_token
    #   <p>A token indicating that there are additional custom verification email templates
    #               available to be listed. Pass this token to a subsequent call to
    #                   <code>ListCustomVerificationEmailTemplates</code> to retrieve the next 50 custom
    #               verification email templates.</p>
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

    # <p>A request to obtain a list of dedicated IP pools.</p>
    #
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListDedicatedIpPools</code> to indicate
    #               the position in the list of dedicated IP pools.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The number of results to show in a single call to <code>ListDedicatedIpPools</code>.
    #               If the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #
    #   @return [Integer]
    #
    ListDedicatedIpPoolsInput = ::Struct.new(
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of dedicated IP pools.</p>
    #
    # @!attribute dedicated_ip_pools
    #   <p>A list of all of the dedicated IP pools that are associated with your Amazon Web Services account in
    #               the current Region.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there are additional IP pools to list. To view additional
    #               IP pools, issue another request to <code>ListDedicatedIpPools</code>, passing this token
    #               in the <code>NextToken</code> parameter.</p>
    #
    #   @return [String]
    #
    ListDedicatedIpPoolsOutput = ::Struct.new(
      :dedicated_ip_pools,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to list all of the predictive inbox placement tests that you've performed.</p>
    #
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListDeliverabilityTestReports</code> to
    #               indicate the position in the list of predictive inbox placement tests.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The number of results to show in a single call to
    #                   <code>ListDeliverabilityTestReports</code>. If the number of results is larger than
    #               the number you specified in this parameter, then the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #           <p>The value you specify has to be at least 0, and can be no more than 1000.</p>
    #
    #   @return [Integer]
    #
    ListDeliverabilityTestReportsInput = ::Struct.new(
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of the predictive inbox placement test reports that are available for your account, regardless of
    #             whether or not those tests are complete.</p>
    #
    # @!attribute deliverability_test_reports
    #   <p>An object that contains a lists of predictive inbox placement tests that you've performed.</p>
    #
    #   @return [Array<DeliverabilityTestReport>]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there are additional predictive inbox placement tests to list. To view additional
    #               predictive inbox placement tests, issue another request to <code>ListDeliverabilityTestReports</code>, and pass
    #               this token in the <code>NextToken</code> parameter.</p>
    #
    #   @return [String]
    #
    ListDeliverabilityTestReportsOutput = ::Struct.new(
      :deliverability_test_reports,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Retrieve deliverability data for all the campaigns that used a specific domain to send
    #             email during a specified time range. This data is available for a domain only if you
    #             enabled the Deliverability dashboard.</p>
    #
    # @!attribute start_date
    #   <p>The first day, in Unix time format, that you want to obtain deliverability data
    #               for.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date
    #   <p>The last day, in Unix time format, that you want to obtain deliverability data for.
    #               This value has to be less than or equal to 30 days after the value of the
    #                   <code>StartDate</code> parameter.</p>
    #
    #   @return [Time]
    #
    # @!attribute subscribed_domain
    #   <p>The domain to obtain deliverability data for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that’s returned from a previous call to the
    #                   <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the
    #               position of a campaign in the list of campaigns.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of results to include in response to a single call to the
    #                   <code>ListDomainDeliverabilityCampaigns</code> operation. If the number of results
    #               is larger than the number that you specify in this parameter, the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #
    #   @return [Integer]
    #
    ListDomainDeliverabilityCampaignsInput = ::Struct.new(
      :start_date,
      :end_date,
      :subscribed_domain,
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An array of objects that provide deliverability data for all the campaigns that used a
    #             specific domain to send email during a specified time range. This data is available for
    #             a domain only if you enabled the Deliverability dashboard for the domain.</p>
    #
    # @!attribute domain_deliverability_campaigns
    #   <p>An array of responses, one for each campaign that used the domain to send email during
    #               the specified time range.</p>
    #
    #   @return [Array<DomainDeliverabilityCampaign>]
    #
    # @!attribute next_token
    #   <p>A token that’s returned from a previous call to the
    #                   <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the
    #               position of the campaign in the list of campaigns.</p>
    #
    #   @return [String]
    #
    ListDomainDeliverabilityCampaignsOutput = ::Struct.new(
      :domain_deliverability_campaigns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to list all of the email identities associated with your Amazon Web Services account. This
    #             list includes identities that you've already verified, identities that are unverified,
    #             and identities that were verified in the past, but are no longer verified.</p>
    #
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListEmailIdentities</code> to indicate
    #               the position in the list of identities.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The number of results to show in a single call to <code>ListEmailIdentities</code>. If
    #               the number of results is larger than the number you specified in this parameter, then
    #               the response includes a <code>NextToken</code> element, which you can use to obtain
    #               additional results.</p>
    #           <p>The value you specify has to be at least 0, and can be no more than 1000.</p>
    #
    #   @return [Integer]
    #
    ListEmailIdentitiesInput = ::Struct.new(
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of all of the identities that you've attempted to verify, regardless of whether
    #             or not those identities were successfully verified.</p>
    #
    # @!attribute email_identities
    #   <p>An array that includes all of the email identities associated with your Amazon Web Services
    #               account.</p>
    #
    #   @return [Array<IdentityInfo>]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there are additional configuration sets to list. To view
    #               additional configuration sets, issue another request to
    #               <code>ListEmailIdentities</code>, and pass this token in the <code>NextToken</code>
    #               parameter.</p>
    #
    #   @return [String]
    #
    ListEmailIdentitiesOutput = ::Struct.new(
      :email_identities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to list the email templates present in your Amazon SES account in the
    #             current Amazon Web Services Region. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListEmailTemplates</code> to indicate
    #               the position in the list of email templates.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The number of results to show in a single call to <code>ListEmailTemplates</code>. If the number of
    #               results is larger than the number you specified in this parameter, then the response
    #               includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #           <p>The value you specify has to be at least 1, and can be no more than 10.</p>
    #
    #   @return [Integer]
    #
    ListEmailTemplatesInput = ::Struct.new(
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The following elements are returned by the service.</p>
    #
    # @!attribute templates_metadata
    #   <p>An array the contains the name and creation time stamp for each template in your Amazon SES
    #               account.</p>
    #
    #   @return [Array<EmailTemplateMetadata>]
    #
    # @!attribute next_token
    #   <p>A token indicating that there are additional email templates available to be listed.
    #               Pass this token to a subsequent <code>ListEmailTemplates</code> call to retrieve the
    #               next 10 email templates.</p>
    #
    #   @return [String]
    #
    ListEmailTemplatesOutput = ::Struct.new(
      :templates_metadata,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to list all of the import jobs for a data destination within the
    #             specified maximum number of import jobs.</p>
    #
    # @!attribute import_destination_type
    #   <p>The destination of the import job, which can be used to list import jobs that have a
    #               certain <code>ImportDestinationType</code>.</p>
    #
    #   Enum, one of: ["SUPPRESSION_LIST", "CONTACT_LIST"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A string token indicating that there might be additional import jobs available to be
    #               listed. Copy this token to a subsequent call to <code>ListImportJobs</code> with the
    #               same parameters to retrieve the next page of import jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>Maximum number of import jobs to return at once. Use this parameter to paginate
    #               results. If additional import jobs exist beyond the specified limit, the
    #                   <code>NextToken</code> element is sent in the response. Use the
    #                   <code>NextToken</code> value in subsequent requests to retrieve additional
    #               addresses.</p>
    #
    #   @return [Integer]
    #
    ListImportJobsInput = ::Struct.new(
      :import_destination_type,
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    # @!attribute import_jobs
    #   <p>A list of the import job summaries.</p>
    #
    #   @return [Array<ImportJobSummary>]
    #
    # @!attribute next_token
    #   <p>A string token indicating that there might be additional import jobs available to be
    #               listed. Copy this token to a subsequent call to <code>ListImportJobs</code> with the
    #               same parameters to retrieve the next page of import jobs.</p>
    #
    #   @return [String]
    #
    ListImportJobsOutput = ::Struct.new(
      :import_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object used to specify a list or topic to which an email belongs, which will be
    #             used when a contact chooses to unsubscribe.</p>
    #
    # @!attribute contact_list_name
    #   <p>The name of the contact list.</p>
    #
    #   @return [String]
    #
    # @!attribute topic_name
    #   <p>The name of the topic.</p>
    #
    #   @return [String]
    #
    ListManagementOptions = ::Struct.new(
      :contact_list_name,
      :topic_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to obtain a list of email destinations that are on the suppression list for
    #             your account.</p>
    #
    # @!attribute reasons
    #   <p>The factors that caused the email address to be added to .</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute start_date
    #   <p>Used to filter the list of suppressed email destinations so that it only includes
    #               addresses that were added to the list after a specific date. The date that you specify
    #               should be in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date
    #   <p>Used to filter the list of suppressed email destinations so that it only includes
    #               addresses that were added to the list before a specific date. The date that you specify
    #               should be in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_token
    #   <p>A token returned from a previous call to <code>ListSuppressedDestinations</code> to
    #               indicate the position in the list of suppressed email addresses.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The number of results to show in a single call to
    #                   <code>ListSuppressedDestinations</code>. If the number of results is larger than the
    #               number you specified in this parameter, then the response includes a
    #                   <code>NextToken</code> element, which you can use to obtain additional
    #               results.</p>
    #
    #   @return [Integer]
    #
    ListSuppressedDestinationsInput = ::Struct.new(
      :reasons,
      :start_date,
      :end_date,
      :next_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of suppressed email addresses.</p>
    #
    # @!attribute suppressed_destination_summaries
    #   <p>A list of summaries, each containing a summary for a suppressed email
    #               destination.</p>
    #
    #   @return [Array<SuppressedDestinationSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates that there are additional email addresses on the suppression
    #               list for your account. To view additional suppressed addresses, issue another request to
    #                   <code>ListSuppressedDestinations</code>, and pass this token in the
    #                   <code>NextToken</code> parameter.</p>
    #
    #   @return [String]
    #
    ListSuppressedDestinationsOutput = ::Struct.new(
      :suppressed_destination_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tag
    #               information for.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>An array that lists all the tags that are associated with the resource. Each tag
    #               consists of a required tag key (<code>Key</code>) and an associated tag value
    #                   (<code>Value</code>)</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of attributes that are associated with a MAIL FROM domain.</p>
    #
    # @!attribute mail_from_domain
    #   <p>The name of a domain that an email identity uses as a custom MAIL FROM domain.</p>
    #
    #   @return [String]
    #
    # @!attribute mail_from_domain_status
    #   <p>The status of the MAIL FROM domain. This status can have the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PENDING</code> – Amazon SES hasn't started searching for the MX record
    #                       yet.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SUCCESS</code> – Amazon SES detected the required MX record for the
    #                       MAIL FROM domain.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FAILED</code> – Amazon SES can't find the required MX record, or the
    #                       record no longer exists.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TEMPORARY_FAILURE</code> – A temporary issue occurred, which
    #                       prevented Amazon SES from determining the status of the MAIL FROM domain.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute behavior_on_mx_failure
    #   <p>The action to take if the required MX record can't be found when you send an email.
    #               When you set this value to <code>UseDefaultValue</code>, the mail is sent using
    #                   <i>amazonses.com</i> as the MAIL FROM domain. When you set this value
    #               to <code>RejectMessage</code>, the Amazon SES API v2 returns a
    #                   <code>MailFromDomainNotVerified</code> error, and doesn't attempt to deliver the
    #               email.</p>
    #           <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the
    #                   <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>
    #               states.</p>
    #
    #   Enum, one of: ["USE_DEFAULT_VALUE", "REJECT_MESSAGE"]
    #
    #   @return [String]
    #
    MailFromAttributes = ::Struct.new(
      :mail_from_domain,
      :mail_from_domain_status,
      :behavior_on_mx_failure,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The message can't be sent because the sending domain isn't verified.</p>
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

    # Includes enum constants for MailFromDomainStatus
    #
    module MailFromDomainStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      TEMPORARY_FAILURE = "TEMPORARY_FAILURE"
    end

    # Includes enum constants for MailType
    #
    module MailType
      # No documentation available.
      #
      MARKETING = "MARKETING"

      # No documentation available.
      #
      TRANSACTIONAL = "TRANSACTIONAL"
    end

    # <p>Represents the email message that you're sending. The <code>Message</code> object
    #             consists of a subject line and a message body.</p>
    #
    # @!attribute subject
    #   <p>The subject line of the email. The subject line can only contain 7-bit ASCII
    #               characters. However, you can specify non-ASCII characters in the subject line by using
    #               encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>.</p>
    #
    #   @return [Content]
    #
    # @!attribute body
    #   <p>The body of the message. You can specify an HTML version of the message, a text-only
    #               version of the message, or both.</p>
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

    # <p>The message can't be sent because it contains invalid content.</p>
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

    # <p>Contains the name and value of a tag that you apply to an email. You can use message
    #             tags when you publish email sending events.
    #             </p>
    #
    # @!attribute name
    #   <p>The name of the message tag. The message tag name has to meet the following
    #               criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>It can contain no more than 256 characters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the message tag. The message tag value has to meet the following
    #               criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    #                       underscores (_), or dashes (-).</p>
    #               </li>
    #               <li>
    #                   <p>It can contain no more than 256 characters.</p>
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

    # <p>The resource you attempted to access doesn't exist.</p>
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

    # <p>An object that contains information about email that was sent from the selected
    #             domain.</p>
    #
    # @!attribute volume_statistics
    #   <p>An object that contains information about the numbers of messages that arrived in
    #               recipients' inboxes and junk mail folders.</p>
    #
    #   @return [VolumeStatistics]
    #
    # @!attribute read_rate_percent
    #   <p>The percentage of emails that were sent from the domain that were read by their
    #               recipients.</p>
    #
    #   @return [Float]
    #
    # @!attribute domain_isp_placements
    #   <p>An object that contains inbox and junk mail placement metrics for individual email
    #               providers.</p>
    #
    #   @return [Array<DomainIspPlacement>]
    #
    OverallVolume = ::Struct.new(
      :volume_statistics,
      :read_rate_percent,
      :domain_isp_placements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that defines an Amazon Pinpoint project destination for email events. You can send
    #             email event data to a Amazon Pinpoint project to view metrics using the Transactional Messaging
    #             dashboards that are built in to Amazon Pinpoint. For more information, see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html">Transactional
    #                 Messaging Charts</a> in the <i>Amazon Pinpoint User Guide</i>.</p>
    #
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Pinpoint project to send email events to.</p>
    #
    #   @return [String]
    #
    PinpointDestination = ::Struct.new(
      :application_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains inbox placement data for an email provider.</p>
    #
    # @!attribute inbox_percentage
    #   <p>The percentage of emails that arrived in recipients' inboxes during the predictive inbox placement test.</p>
    #
    #   @return [Float]
    #
    # @!attribute spam_percentage
    #   <p>The percentage of emails that arrived in recipients' spam or junk mail folders during
    #               the predictive inbox placement test.</p>
    #
    #   @return [Float]
    #
    # @!attribute missing_percentage
    #   <p>The percentage of emails that didn't arrive in recipients' inboxes at all during the
    #               predictive inbox placement test.</p>
    #
    #   @return [Float]
    #
    # @!attribute spf_percentage
    #   <p>The percentage of emails that were authenticated by using Sender Policy Framework
    #               (SPF) during the predictive inbox placement test.</p>
    #
    #   @return [Float]
    #
    # @!attribute dkim_percentage
    #   <p>The percentage of emails that were authenticated by using DomainKeys Identified Mail
    #               (DKIM) during the predictive inbox placement test.</p>
    #
    #   @return [Float]
    #
    PlacementStatistics = ::Struct.new(
      :inbox_percentage,
      :spam_percentage,
      :missing_percentage,
      :spf_percentage,
      :dkim_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to enable or disable the automatic IP address warm-up feature.</p>
    #
    # @!attribute auto_warmup_enabled
    #   <p>Enables or disables the automatic warm-up feature for dedicated IP addresses that are
    #               associated with your Amazon SES account in the current Amazon Web Services Region. Set to <code>true</code>
    #               to enable the automatic warm-up feature, or set to <code>false</code> to disable
    #               it.</p>
    #
    #   @return [Boolean]
    #
    PutAccountDedicatedIpWarmupAttributesInput = ::Struct.new(
      :auto_warmup_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_warmup_enabled ||= false
      end

    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutAccountDedicatedIpWarmupAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to submit new account details.</p>
    #
    # @!attribute mail_type
    #   <p>The type of email your account will send.</p>
    #
    #   Enum, one of: ["MARKETING", "TRANSACTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute website_url
    #   <p>The URL of your website. This information helps us better understand the type of
    #               content that you plan to send.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_language
    #   <p>The language you would prefer to be contacted with.</p>
    #
    #   Enum, one of: ["EN", "JA"]
    #
    #   @return [String]
    #
    # @!attribute use_case_description
    #   <p>A description of the types of email that you plan to send.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_contact_email_addresses
    #   <p>Additional email addresses that you would like to be notified regarding Amazon SES
    #               matters.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute production_access_enabled
    #   <p>Indicates whether or not your account should have production access in the current
    #               Amazon Web Services Region.</p>
    #           <p>If the value is <code>false</code>, then your account is in the
    #                   <i>sandbox</i>. When your account is in the sandbox, you can only send
    #               email to verified identities. Additionally, the maximum number of emails you can send in
    #               a 24-hour period (your sending quota) is 200, and the maximum number of emails you can
    #               send per second (your maximum sending rate) is 1.</p>
    #           <p>If the value is <code>true</code>, then your account has production access. When your
    #               account has production access, you can send email to any address. The sending quota and
    #               maximum sending rate for your account vary based on your specific use case.</p>
    #
    #   @return [Boolean]
    #
    PutAccountDetailsInput = ::Struct.new(
      :mail_type,
      :website_url,
      :contact_language,
      :use_case_description,
      :additional_contact_email_addresses,
      :production_access_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::SESv2::Types::PutAccountDetailsInput "\
          "mail_type=#{mail_type || 'nil'}, "\
          "website_url=\"[SENSITIVE]\", "\
          "contact_language=#{contact_language || 'nil'}, "\
          "use_case_description=\"[SENSITIVE]\", "\
          "additional_contact_email_addresses=\"[SENSITIVE]\", "\
          "production_access_enabled=#{production_access_enabled || 'nil'}>"
      end
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutAccountDetailsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to change the ability of your account to send email.</p>
    #
    # @!attribute sending_enabled
    #   <p>Enables or disables your account's ability to send email. Set to <code>true</code> to
    #               enable email sending, or set to <code>false</code> to disable email sending.</p>
    #           <note>
    #               <p>If Amazon Web Services paused your account's ability to send email, you can't use this operation
    #                   to resume your account's ability to send email.</p>
    #           </note>
    #
    #   @return [Boolean]
    #
    PutAccountSendingAttributesInput = ::Struct.new(
      :sending_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.sending_enabled ||= false
      end

    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutAccountSendingAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to change your account's suppression preferences.</p>
    #
    # @!attribute suppressed_reasons
    #   <p>A list that contains the reasons that email addresses will be automatically added to
    #               the suppression list for your account. This list can contain any or all of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a
    #                       complaint.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BOUNCE</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a hard
    #                       bounce.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    PutAccountSuppressionAttributesInput = ::Struct.new(
      :suppressed_reasons,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutAccountSuppressionAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to associate a configuration set with a dedicated IP pool.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to associate with a dedicated IP pool.</p>
    #
    #   @return [String]
    #
    # @!attribute tls_policy
    #   <p>Specifies whether messages that use the configuration set are required to use
    #               Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only
    #               delivered if a TLS connection can be established. If the value is <code>Optional</code>,
    #               messages can be delivered in plain text if a TLS connection can't be established.</p>
    #
    #   Enum, one of: ["REQUIRE", "OPTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute sending_pool_name
    #   <p>The name of the dedicated IP pool to associate with the configuration set.</p>
    #
    #   @return [String]
    #
    PutConfigurationSetDeliveryOptionsInput = ::Struct.new(
      :configuration_set_name,
      :tls_policy,
      :sending_pool_name,
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

    # <p>A request to enable or disable tracking of reputation metrics for a configuration
    #             set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute reputation_metrics_enabled
    #   <p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration
    #               set. If <code>false</code>, tracking of reputation metrics is disabled for the
    #               configuration set.</p>
    #
    #   @return [Boolean]
    #
    PutConfigurationSetReputationOptionsInput = ::Struct.new(
      :configuration_set_name,
      :reputation_metrics_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.reputation_metrics_enabled ||= false
      end

    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutConfigurationSetReputationOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to enable or disable the ability of Amazon SES to send emails that use a specific
    #             configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to enable or disable email sending for.</p>
    #
    #   @return [String]
    #
    # @!attribute sending_enabled
    #   <p>If <code>true</code>, email sending is enabled for the configuration set. If
    #                   <code>false</code>, email sending is disabled for the configuration set.</p>
    #
    #   @return [Boolean]
    #
    PutConfigurationSetSendingOptionsInput = ::Struct.new(
      :configuration_set_name,
      :sending_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.sending_enabled ||= false
      end

    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutConfigurationSetSendingOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to change the account suppression list preferences for a specific
    #             configuration set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to change the suppression list preferences
    #               for.</p>
    #
    #   @return [String]
    #
    # @!attribute suppressed_reasons
    #   <p>A list that contains the reasons that email addresses are automatically added to the
    #               suppression list for your account. This list can contain any or all of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a
    #                       complaint.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BOUNCE</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a hard
    #                       bounce.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    PutConfigurationSetSuppressionOptionsInput = ::Struct.new(
      :configuration_set_name,
      :suppressed_reasons,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutConfigurationSetSuppressionOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to add a custom domain for tracking open and click events to a configuration
    #             set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_redirect_domain
    #   <p>The domain to use to track open and click events.</p>
    #
    #   @return [String]
    #
    PutConfigurationSetTrackingOptionsInput = ::Struct.new(
      :configuration_set_name,
      :custom_redirect_domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutConfigurationSetTrackingOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to move a dedicated IP address to a dedicated IP pool.</p>
    #
    # @!attribute ip
    #   <p>The IP address that you want to move to the dedicated IP pool. The value you specify
    #               has to be a dedicated IP address that's associated with your Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_pool_name
    #   <p>The name of the IP pool that you want to add the dedicated IP address to. You have to
    #               specify an IP pool that already exists.</p>
    #
    #   @return [String]
    #
    PutDedicatedIpInPoolInput = ::Struct.new(
      :ip,
      :destination_pool_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutDedicatedIpInPoolOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to change the warm-up attributes for a dedicated IP address. This operation
    #             is useful when you want to resume the warm-up process for an existing IP address.</p>
    #
    # @!attribute ip
    #   <p>The dedicated IP address that you want to update the warm-up attributes for.</p>
    #
    #   @return [String]
    #
    # @!attribute warmup_percentage
    #   <p>The warm-up percentage that you want to associate with the dedicated IP
    #               address.</p>
    #
    #   @return [Integer]
    #
    PutDedicatedIpWarmupAttributesInput = ::Struct.new(
      :ip,
      :warmup_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutDedicatedIpWarmupAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Enable or disable the Deliverability dashboard. When you enable the Deliverability dashboard, you gain
    #             access to reputation, deliverability, and other metrics for the domains that you use to
    #             send email using Amazon SES API v2. You also gain the ability to perform predictive inbox placement tests.</p>
    #         <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition
    #             to any other fees that you accrue by using Amazon SES and other Amazon Web Services services. For more
    #             information about the features and cost of a Deliverability dashboard subscription, see <a href="http://aws.amazon.com/pinpoint/pricing/">Amazon Pinpoint Pricing</a>.</p>
    #
    # @!attribute dashboard_enabled
    #   <p>Specifies whether to enable the Deliverability dashboard. To enable the dashboard, set this
    #               value to <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute subscribed_domains
    #   <p>An array of objects, one for each verified domain that you use to send email and
    #               enabled the Deliverability dashboard for.</p>
    #
    #   @return [Array<DomainDeliverabilityTrackingOption>]
    #
    PutDeliverabilityDashboardOptionInput = ::Struct.new(
      :dashboard_enabled,
      :subscribed_domains,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.dashboard_enabled ||= false
      end

    end

    # <p>A response that indicates whether the Deliverability dashboard is enabled.</p>
    #
    PutDeliverabilityDashboardOptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to associate a configuration set with an email identity.</p>
    #
    # @!attribute email_identity
    #   <p>The email address or domain to associate with a configuration set.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_set_name
    #   <p>The configuration set to associate with an email identity.</p>
    #
    #   @return [String]
    #
    PutEmailIdentityConfigurationSetAttributesInput = ::Struct.new(
      :email_identity,
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response with an empty
    #             HTTP body.</p>
    #
    PutEmailIdentityConfigurationSetAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to enable or disable DKIM signing of email that you send from an email
    #             identity.</p>
    #
    # @!attribute email_identity
    #   <p>The email identity.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_enabled
    #   <p>Sets the DKIM signing configuration for the identity.</p>
    #           <p>When you set this value <code>true</code>, then the messages that are sent from the
    #               identity are signed using DKIM. If you set this value to <code>false</code>, your
    #               messages are sent without DKIM signing.</p>
    #
    #   @return [Boolean]
    #
    PutEmailIdentityDkimAttributesInput = ::Struct.new(
      :email_identity,
      :signing_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.signing_enabled ||= false
      end

    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutEmailIdentityDkimAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to change the DKIM attributes for an email identity.</p>
    #
    # @!attribute email_identity
    #   <p>The email identity.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_attributes_origin
    #   <p>The method to use to configure DKIM for the identity. There are the following possible
    #               values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>AWS_SES</code> – Configure DKIM for the identity by using <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy
    #                           DKIM</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EXTERNAL</code> – Configure DKIM for the identity by using Bring
    #                       Your Own DKIM (BYODKIM).</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AWS_SES", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute signing_attributes
    #   <p>An object that contains information about the private key and selector that you want
    #               to use to configure DKIM for the identity for Bring Your Own DKIM (BYODKIM) for the identity, or,
    #               configures the key length to be used for
    #               <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a>.</p>
    #
    #   @return [DkimSigningAttributes]
    #
    PutEmailIdentityDkimSigningAttributesInput = ::Struct.new(
      :email_identity,
      :signing_attributes_origin,
      :signing_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response.</p>
    #         <p>The following data is returned in JSON format by the service.</p>
    #
    # @!attribute dkim_status
    #   <p>The DKIM authentication status of the identity. Amazon SES determines the authentication
    #               status by searching for specific records in the DNS configuration for your domain. If
    #               you used <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy
    #                   DKIM</a> to set up DKIM authentication, Amazon SES tries to find three unique CNAME
    #               records in the DNS configuration for your domain.</p>
    #           <p>If you provided a public key to perform DKIM authentication, Amazon SES tries to find a TXT
    #               record that uses the selector that you specified. The value of the TXT record must be a
    #               public key that's paired with the private key that you specified in the process of
    #               creating the identity.</p>
    #           <p>The status can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PENDING</code> – The verification process was initiated, but Amazon SES
    #                       hasn't yet detected the DKIM records in the DNS configuration for the
    #                       domain.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SUCCESS</code> – The verification process completed
    #                       successfully.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FAILED</code> – The verification process failed. This typically
    #                       occurs when Amazon SES fails to find the DKIM records in the DNS configuration of the
    #                       domain.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TEMPORARY_FAILURE</code> – A temporary issue is preventing Amazon SES
    #                       from determining the DKIM authentication status of the domain.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NOT_STARTED</code> – The DKIM verification process hasn't been
    #                       initiated for the domain.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"]
    #
    #   @return [String]
    #
    # @!attribute dkim_tokens
    #   <p>If you used <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Easy DKIM</a> to configure DKIM authentication for the domain, then this object
    #               contains a set of unique strings that you use to create a set of CNAME records that you
    #               add to the DNS configuration for your domain. When Amazon SES detects these records in the
    #               DNS configuration for your domain, the DKIM authentication process is complete.</p>
    #           <p>If you configured DKIM authentication for the domain by providing your own
    #               public-private key pair, then this object contains the selector that's associated with
    #               your public key.</p>
    #           <p>Regardless of the DKIM authentication method you use, Amazon SES searches for the
    #               appropriate records in the DNS configuration of the domain for up to 72 hours.</p>
    #
    #   @return [Array<String>]
    #
    PutEmailIdentityDkimSigningAttributesOutput = ::Struct.new(
      :dkim_status,
      :dkim_tokens,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to set the attributes that control how bounce and complaint events are
    #             processed.</p>
    #
    # @!attribute email_identity
    #   <p>The email identity.</p>
    #
    #   @return [String]
    #
    # @!attribute email_forwarding_enabled
    #   <p>Sets the feedback forwarding configuration for the identity.</p>
    #           <p>If the value is <code>true</code>, you receive email notifications when bounce or
    #               complaint events occur. These notifications are sent to the address that you specified
    #               in the <code>Return-Path</code> header of the original email.</p>
    #           <p>You're required to have a method of tracking bounces and complaints. If you haven't
    #               set up another mechanism for receiving bounce or complaint notifications (for example,
    #               by setting up an event destination), you receive an email notification when these events
    #               occur (even if this setting is disabled).</p>
    #
    #   @return [Boolean]
    #
    PutEmailIdentityFeedbackAttributesInput = ::Struct.new(
      :email_identity,
      :email_forwarding_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.email_forwarding_enabled ||= false
      end

    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutEmailIdentityFeedbackAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to configure the custom MAIL FROM domain for a verified identity.</p>
    #
    # @!attribute email_identity
    #   <p>The verified email identity.</p>
    #
    #   @return [String]
    #
    # @!attribute mail_from_domain
    #   <p> The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM
    #               domain must meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>It has to be a subdomain of the verified identity.</p>
    #               </li>
    #               <li>
    #                   <p>It can't be used to receive email.</p>
    #               </li>
    #               <li>
    #                   <p>It can't be used in a "From" address if the MAIL FROM domain is a destination
    #                       for feedback forwarding emails.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute behavior_on_mx_failure
    #   <p>The action to take if the required MX record isn't found when you send an email. When
    #               you set this value to <code>UseDefaultValue</code>, the mail is sent using
    #                   <i>amazonses.com</i> as the MAIL FROM domain. When you set this value
    #               to <code>RejectMessage</code>, the Amazon SES API v2 returns a
    #                   <code>MailFromDomainNotVerified</code> error, and doesn't attempt to deliver the
    #               email.</p>
    #           <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the
    #                   <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>
    #               states.</p>
    #
    #   Enum, one of: ["USE_DEFAULT_VALUE", "REJECT_MESSAGE"]
    #
    #   @return [String]
    #
    PutEmailIdentityMailFromAttributesInput = ::Struct.new(
      :email_identity,
      :mail_from_domain,
      :behavior_on_mx_failure,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutEmailIdentityMailFromAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to add an email destination to the suppression list for your account.</p>
    #
    # @!attribute email_address
    #   <p>The email address that should be added to the suppression list for your
    #               account.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The factors that should cause the email address to be added to the suppression list
    #               for your account.</p>
    #
    #   Enum, one of: ["BOUNCE", "COMPLAINT"]
    #
    #   @return [String]
    #
    PutSuppressedDestinationInput = ::Struct.new(
      :email_address,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    PutSuppressedDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the raw content of an email message.</p>
    #
    # @!attribute data
    #   <p>The raw email message. The message has to meet the following criteria:</p>
    #           <ul>
    #               <li>
    #                   <p>The message has to contain a header and a body, separated by one blank
    #                       line.</p>
    #               </li>
    #               <li>
    #                   <p>All of the required header fields must be present in the message.</p>
    #               </li>
    #               <li>
    #                   <p>Each part of a multipart MIME message must be formatted properly.</p>
    #               </li>
    #               <li>
    #                   <p>Attachments must be in a file format that the Amazon SES supports.</p>
    #               </li>
    #               <li>
    #                   <p>The entire message must be Base64 encoded.</p>
    #               </li>
    #               <li>
    #                   <p>If any of the MIME parts in your message contain content that is outside of
    #                       the 7-bit ASCII character range, you should encode that content to ensure that
    #                       recipients' email clients render the message properly.</p>
    #               </li>
    #               <li>
    #                   <p>The length of any single line of text in the message can't exceed 1,000
    #                       characters. This restriction is defined in <a href="https://tools.ietf.org/html/rfc5321">RFC 5321</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    RawMessage = ::Struct.new(
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>ReplaceEmailContent</code> object to be used for a specific
    #                 <code>BulkEmailEntry</code>. The <code>ReplacementTemplate</code> can be specified
    #             within this object.</p>
    #
    # @!attribute replacement_template
    #   <p>The <code>ReplacementTemplate</code> associated with
    #                   <code>ReplacementEmailContent</code>.</p>
    #
    #   @return [ReplacementTemplate]
    #
    ReplacementEmailContent = ::Struct.new(
      :replacement_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object which contains <code>ReplacementTemplateData</code> to be used for a
    #             specific <code>BulkEmailEntry</code>.</p>
    #
    # @!attribute replacement_template_data
    #   <p>A list of replacement values to apply to the template. This parameter is a JSON
    #               object, typically consisting of key-value pairs in which the keys correspond to
    #               replacement tags in the email template.</p>
    #
    #   @return [String]
    #
    ReplacementTemplate = ::Struct.new(
      :replacement_template_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Enable or disable collection of reputation metrics for emails that you send using this
    #             configuration set in the current Amazon Web Services Region. </p>
    #
    # @!attribute reputation_metrics_enabled
    #   <p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration
    #               set. If <code>false</code>, tracking of reputation metrics is disabled for the
    #               configuration set.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_fresh_start
    #   <p>The date and time (in Unix time) when the reputation metrics were last given a fresh
    #               start. When your account is given a fresh start, your reputation metrics are calculated
    #               starting from the date of the fresh start.</p>
    #
    #   @return [Time]
    #
    ReputationOptions = ::Struct.new(
      :reputation_metrics_enabled,
      :last_fresh_start,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.reputation_metrics_enabled ||= false
      end

    end

    # <p>An object that contains information about your account details review.</p>
    #
    # @!attribute status
    #   <p>The status of the latest review of your account. The status can be one of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PENDING</code> – We have received your appeal and are in the
    #                       process of reviewing it.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>GRANTED</code> – Your appeal has been reviewed and your production
    #                       access has been granted.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DENIED</code> – Your appeal has been reviewed and your production
    #                       access has been denied.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FAILED</code> – An internal error occurred and we didn't receive
    #                       your appeal. You can submit your appeal again.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "FAILED", "GRANTED", "DENIED"]
    #
    #   @return [String]
    #
    # @!attribute case_id
    #   <p>The associated support center case ID (if any).</p>
    #
    #   @return [String]
    #
    ReviewDetails = ::Struct.new(
      :status,
      :case_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReviewStatus
    #
    module ReviewStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      GRANTED = "GRANTED"

      # No documentation available.
      #
      DENIED = "DENIED"
    end

    # <p>Represents a request to send email messages to multiple destinations using Amazon SES. For
    #             more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute from_email_address
    #   <p>The email address to use as the "From" address for the email. The
    #               address that you specify has to be verified.</p>
    #
    #   @return [String]
    #
    # @!attribute from_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FromEmailAddress</code> parameter.</p>
    #           <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use sender@example.com, then you would specify the
    #                   <code>FromEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FromEmailAddress</code> to be sender@example.com.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute reply_to_addresses
    #   <p>The "Reply-to" email addresses for the message. When the recipient replies to the
    #               message, each Reply-to address receives the reply.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute feedback_forwarding_email_address
    #   <p>The address that you want bounce and complaint notifications to be sent to.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_forwarding_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FeedbackForwardingEmailAddress</code>
    #               parameter.</p>
    #           <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use feedback@example.com, then you would specify the
    #                   <code>FeedbackForwardingEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FeedbackForwardingEmailAddress</code> to be feedback@example.com.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute default_email_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using the <code>SendEmail</code> operation. Tags correspond to characteristics of the
    #               email that you define, so that you can publish email sending events.</p>
    #
    #   @return [Array<MessageTag>]
    #
    # @!attribute default_content
    #   <p>An object that contains the body of the message. You can specify a template
    #               message.</p>
    #
    #   @return [BulkEmailContent]
    #
    # @!attribute bulk_email_entries
    #   <p>The list of bulk email entry objects.</p>
    #
    #   @return [Array<BulkEmailEntry>]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use when sending the email.</p>
    #
    #   @return [String]
    #
    SendBulkEmailInput = ::Struct.new(
      :from_email_address,
      :from_email_address_identity_arn,
      :reply_to_addresses,
      :feedback_forwarding_email_address,
      :feedback_forwarding_email_address_identity_arn,
      :default_email_tags,
      :default_content,
      :bulk_email_entries,
      :configuration_set_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The following data is returned in JSON format by the service.</p>
    #
    # @!attribute bulk_email_entry_results
    #   <p>One object per intended recipient. Check each response object and retry any messages
    #               with a failure status.</p>
    #
    #   @return [Array<BulkEmailEntryResult>]
    #
    SendBulkEmailOutput = ::Struct.new(
      :bulk_email_entry_results,
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

    # <p>The following element is returned by the service.</p>
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

    # <p>Represents a request to send a single formatted email using Amazon SES. For more
    #             information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html">Amazon SES Developer
    #                 Guide</a>.</p>
    #
    # @!attribute from_email_address
    #   <p>The email address to use as the "From" address for the email. The
    #               address that you specify has to be verified.
    #               </p>
    #
    #   @return [String]
    #
    # @!attribute from_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FromEmailAddress</code> parameter.</p>
    #           <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use sender@example.com, then you would specify the
    #                   <code>FromEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FromEmailAddress</code> to be sender@example.com.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #           <p>For Raw emails, the <code>FromEmailAddressIdentityArn</code> value overrides the
    #               X-SES-SOURCE-ARN and X-SES-FROM-ARN headers specified in raw email message
    #               content.</p>
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>An object that contains the recipients of the email message.</p>
    #
    #   @return [Destination]
    #
    # @!attribute reply_to_addresses
    #   <p>The "Reply-to" email addresses for the message. When the recipient replies to the
    #               message, each Reply-to address receives the reply.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute feedback_forwarding_email_address
    #   <p>The address that you want bounce and complaint notifications to be sent to.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_forwarding_email_address_identity_arn
    #   <p>This parameter is used only for sending authorization. It is the ARN of the identity
    #               that is associated with the sending authorization policy that permits you to use the
    #               email address specified in the <code>FeedbackForwardingEmailAddress</code>
    #               parameter.</p>
    #           <p>For example, if the owner of example.com (which has ARN
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that
    #               authorizes you to use feedback@example.com, then you would specify the
    #                   <code>FeedbackForwardingEmailAddressIdentityArn</code> to be
    #               arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #                   <code>FeedbackForwardingEmailAddress</code> to be feedback@example.com.</p>
    #           <p>For more information about sending authorization, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>An object that contains the body of the message. You can send either a Simple message
    #               Raw message or a template Message.</p>
    #
    #   @return [EmailContent]
    #
    # @!attribute email_tags
    #   <p>A list of tags, in the form of name/value pairs, to apply to an email that you send
    #               using the <code>SendEmail</code> operation. Tags correspond to characteristics of the
    #               email that you define, so that you can publish email sending events. </p>
    #
    #   @return [Array<MessageTag>]
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use when sending the email.</p>
    #
    #   @return [String]
    #
    # @!attribute list_management_options
    #   <p>An object used to specify a list or topic to which an email belongs, which will be
    #               used when a contact chooses to unsubscribe.</p>
    #
    #   @return [ListManagementOptions]
    #
    SendEmailInput = ::Struct.new(
      :from_email_address,
      :from_email_address_identity_arn,
      :destination,
      :reply_to_addresses,
      :feedback_forwarding_email_address,
      :feedback_forwarding_email_address_identity_arn,
      :content,
      :email_tags,
      :configuration_set_name,
      :list_management_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A unique message ID that you receive when an email is accepted for sending.</p>
    #
    # @!attribute message_id
    #   <p>A unique identifier for the message that is generated when the message is
    #               accepted.</p>
    #           <note>
    #               <p>It's possible for Amazon SES to accept a message without sending it. This can happen
    #                   when the message that you're trying to send has an attachment contains a virus, or
    #                   when you send a templated email that contains invalid personalization content, for
    #                   example.</p>
    #           </note>
    #
    #   @return [String]
    #
    SendEmailOutput = ::Struct.new(
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about the per-day and per-second sending limits
    #             for your Amazon SES account in the current Amazon Web Services Region.</p>
    #
    # @!attribute max24_hour_send
    #   <p>The maximum number of emails that you can send in the current Amazon Web Services Region over a
    #               24-hour period. This value is also called your <i>sending
    #               quota</i>.</p>
    #
    #   @return [Float]
    #
    # @!attribute max_send_rate
    #   <p>The maximum number of emails that you can send per second in the current Amazon Web Services Region.
    #               This value is also called your <i>maximum sending rate</i> or your
    #                   <i>maximum TPS (transactions per second) rate</i>.</p>
    #
    #   @return [Float]
    #
    # @!attribute sent_last24_hours
    #   <p>The number of emails sent from your Amazon SES account in the current Amazon Web Services Region over the
    #               past 24 hours.</p>
    #
    #   @return [Float]
    #
    SendQuota = ::Struct.new(
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

    # <p>Used to enable or disable email sending for messages that use this configuration set
    #             in the current Amazon Web Services Region.</p>
    #
    # @!attribute sending_enabled
    #   <p>If <code>true</code>, email sending is enabled for the configuration set. If
    #                   <code>false</code>, email sending is disabled for the configuration set.</p>
    #
    #   @return [Boolean]
    #
    SendingOptions = ::Struct.new(
      :sending_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.sending_enabled ||= false
      end

    end

    # <p>The message can't be sent because the account's ability to send email is currently
    #             paused.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SendingPausedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to
    #             send notification when certain email events occur.</p>
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to publish email events to. For
    #               more information about Amazon SNS topics, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
    #
    #   @return [String]
    #
    SnsDestination = ::Struct.new(
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SubscriptionStatus
    #
    module SubscriptionStatus
      # No documentation available.
      #
      OPT_IN = "OPT_IN"

      # No documentation available.
      #
      OPT_OUT = "OPT_OUT"
    end

    # <p>An object that contains information about an email address that is on the suppression
    #             list for your account.</p>
    #
    # @!attribute email_address
    #   <p>The email address that is on the suppression list for your account.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason that the address was added to the suppression list for your account.</p>
    #
    #   Enum, one of: ["BOUNCE", "COMPLAINT"]
    #
    #   @return [String]
    #
    # @!attribute last_update_time
    #   <p>The date and time when the suppressed destination was last updated, shown in Unix time
    #               format.</p>
    #
    #   @return [Time]
    #
    # @!attribute attributes
    #   <p>An optional value that can contain additional information about the reasons that the
    #               address was added to the suppression list for your account.</p>
    #
    #   @return [SuppressedDestinationAttributes]
    #
    SuppressedDestination = ::Struct.new(
      :email_address,
      :reason,
      :last_update_time,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains additional attributes that are related an email address that
    #             is on the suppression list for your account.</p>
    #
    # @!attribute message_id
    #   <p>The unique identifier of the email message that caused the email address to be added
    #               to the suppression list for your account.</p>
    #
    #   @return [String]
    #
    # @!attribute feedback_id
    #   <p>A unique identifier that's generated when an email address is added to the suppression
    #               list for your account.</p>
    #
    #   @return [String]
    #
    SuppressedDestinationAttributes = ::Struct.new(
      :message_id,
      :feedback_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary that describes the suppressed email address.</p>
    #
    # @!attribute email_address
    #   <p>The email address that's on the suppression list for your account.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason that the address was added to the suppression list for your account.</p>
    #
    #   Enum, one of: ["BOUNCE", "COMPLAINT"]
    #
    #   @return [String]
    #
    # @!attribute last_update_time
    #   <p>The date and time when the suppressed destination was last updated, shown in Unix time
    #               format.</p>
    #
    #   @return [Time]
    #
    SuppressedDestinationSummary = ::Struct.new(
      :email_address,
      :reason,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about the email address suppression preferences
    #             for your account in the current Amazon Web Services Region.</p>
    #
    # @!attribute suppressed_reasons
    #   <p>A list that contains the reasons that email addresses will be automatically added to
    #               the suppression list for your account. This list can contain any or all of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a
    #                       complaint.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BOUNCE</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a hard
    #                       bounce.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    SuppressionAttributes = ::Struct.new(
      :suppressed_reasons,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains details about the action of suppression list.</p>
    #
    # @!attribute suppression_list_import_action
    #   <p>The type of action to perform on the address. The following are possible values:</p>
    #           <ul>
    #               <li>
    #                   <p>PUT: add the addresses to the suppression list. If the record already exists,
    #                       it will override it with the new value.</p>
    #               </li>
    #               <li>
    #                   <p>DELETE: remove the addresses from the suppression list.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DELETE", "PUT"]
    #
    #   @return [String]
    #
    SuppressionListDestination = ::Struct.new(
      :suppression_list_import_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SuppressionListImportAction
    #
    module SuppressionListImportAction
      # No documentation available.
      #
      DELETE = "DELETE"

      # No documentation available.
      #
      PUT = "PUT"
    end

    # Includes enum constants for SuppressionListReason
    #
    module SuppressionListReason
      # No documentation available.
      #
      BOUNCE = "BOUNCE"

      # No documentation available.
      #
      COMPLAINT = "COMPLAINT"
    end

    # <p>An object that contains information about the suppression list preferences for your
    #             account.</p>
    #
    # @!attribute suppressed_reasons
    #   <p>A list that contains the reasons that email addresses are automatically added to the
    #               suppression list for your account. This list can contain any or all of the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a
    #                       complaint.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BOUNCE</code> – Amazon SES adds an email address to the suppression
    #                       list for your account when a message sent to that address results in a hard
    #                       bounce.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    SuppressionOptions = ::Struct.new(
      :suppressed_reasons,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that defines the tags that are associated with a resource.
    #                 A <i>tag</i> is a label that you optionally define and associate with
    #             a resource. Tags can help you categorize and manage resources in different ways, such as
    #             by purpose, owner, environment, or other criteria. A resource can have as many as 50
    #             tags.</p>
    #         <p>Each tag consists of a required <i>tag key</i> and an
    #                 associated <i>tag value</i>, both of which you define. A tag key is a
    #             general label that acts as a category for a more specific tag value. A tag value acts as
    #             a descriptor within a tag key. A tag key can contain as many as 128 characters. A tag
    #             value can contain as many as 256 characters. The characters can be Unicode letters,
    #             digits, white space, or one of the following symbols: _ . : / = + -. The following
    #             additional restrictions apply to tags:</p>
    #         <ul>
    #             <li>
    #                 <p>Tag keys and values are case sensitive.</p>
    #             </li>
    #             <li>
    #                 <p>For each associated resource, each tag key must be unique and it can have only
    #                     one value.</p>
    #             </li>
    #             <li>
    #                 <p>The <code>aws:</code> prefix is reserved for use by Amazon Web Services; you can’t use it in
    #                     any tag keys or values that you define. In addition, you can't edit or remove
    #                     tag keys or values that use this prefix. Tags that use this prefix don’t count
    #                     against the limit of 50 tags per resource.</p>
    #             </li>
    #             <li>
    #                 <p>You can associate tags with public or shared resources, but the tags are
    #                     available only for your Amazon Web Services account, not any other accounts that share the
    #                     resource. In addition, the tags are available only for resources that are
    #                     located in the specified Amazon Web Services Region for your Amazon Web Services account.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute key
    #   <p>One part of a key-value pair that defines a tag. The maximum length of a tag key is
    #               128 characters. The minimum length is 1 character.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The optional part of a key-value pair that defines a tag. The maximum length of a tag
    #               value is 256 characters. The minimum length is 0 characters. If you don't want a
    #               resource to have a specific tag value, don't specify a value for this parameter. If you
    #               don't specify a value, Amazon SES sets the value to an empty string.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add one or more tags
    #               to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of the tags that you want to add to the resource. A tag consists of a required
    #               tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum
    #               length of a tag key is 128 characters. The maximum length of a tag value is 256
    #               characters.</p>
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

    # <p>An object that defines the email template to use for an email message, and the values
    #             to use for any message variables in that template. An <i>email
    #                 template</i> is a type of message template that contains content that you
    #             want to define, save, and reuse in email messages that you send.</p>
    #
    # @!attribute template_name
    #   <p>The name of the template. You will refer to this name when you send email using the
    #                   <code>SendTemplatedEmail</code> or <code>SendBulkTemplatedEmail</code> operations.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_data
    #   <p>An object that defines the values to use for message variables in the template. This
    #               object is a set of key-value pairs. Each key defines a message variable in the template.
    #               The corresponding value defines the value to use for that variable.</p>
    #
    #   @return [String]
    #
    Template = ::Struct.new(
      :template_name,
      :template_arn,
      :template_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>>Represents a request to create a preview of the MIME content of an email when
    #             provided with a template and a set of replacement data.</p>
    #
    # @!attribute template_name
    #   <p>The name of the template.</p>
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
    TestRenderEmailTemplateInput = ::Struct.new(
      :template_name,
      :template_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The following element is returned by the service.</p>
    #
    # @!attribute rendered_template
    #   <p>The complete MIME message rendered by applying the data in the
    #                   <code>TemplateData</code> parameter to the template specified in the TemplateName
    #               parameter.</p>
    #
    #   @return [String]
    #
    TestRenderEmailTemplateOutput = ::Struct.new(
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
      REQUIRE = "REQUIRE"

      # No documentation available.
      #
      OPTIONAL = "OPTIONAL"
    end

    # <p>Too many requests have been made to the operation.</p>
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

    # <p>An interest group, theme, or label within a list. Lists can have multiple
    #             topics.</p>
    #
    # @!attribute topic_name
    #   <p>The name of the topic.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name of the topic the contact will see.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of what the topic is about, which the contact will see.</p>
    #
    #   @return [String]
    #
    # @!attribute default_subscription_status
    #   <p>The default subscription status to be applied to a contact if the contact has not
    #               noted their preference for subscribing to a topic.</p>
    #
    #   Enum, one of: ["OPT_IN", "OPT_OUT"]
    #
    #   @return [String]
    #
    Topic = ::Struct.new(
      :topic_name,
      :display_name,
      :description,
      :default_subscription_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used for filtering by a specific topic preference.</p>
    #
    # @!attribute topic_name
    #   <p>The name of a topic on which you wish to apply the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute use_default_if_preference_unavailable
    #   <p>Notes that the default subscription status should be applied to a contact because the
    #               contact has not noted their preference for subscribing to a topic.</p>
    #
    #   @return [Boolean]
    #
    TopicFilter = ::Struct.new(
      :topic_name,
      :use_default_if_preference_unavailable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.use_default_if_preference_unavailable ||= false
      end

    end

    # <p>The contact's preference for being opted-in to or opted-out of a topic.</p>
    #
    # @!attribute topic_name
    #   <p>The name of the topic.</p>
    #
    #   @return [String]
    #
    # @!attribute subscription_status
    #   <p>The contact's subscription status to a topic which is either <code>OPT_IN</code> or
    #                   <code>OPT_OUT</code>.</p>
    #
    #   Enum, one of: ["OPT_IN", "OPT_OUT"]
    #
    #   @return [String]
    #
    TopicPreference = ::Struct.new(
      :topic_name,
      :subscription_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that defines the tracking options for a configuration set. When you use the
    #             Amazon SES API v2 to send an email, it contains an invisible image that's used to track when
    #             recipients open your email. If your email contains links, those links are changed
    #             slightly in order to track when recipients click them.</p>
    #         <p>These images and links include references to a domain operated by Amazon Web Services. You can
    #             optionally configure the Amazon SES to use a domain that you operate for these images and
    #             links.</p>
    #
    # @!attribute custom_redirect_domain
    #   <p>The domain to use for tracking open and click events.</p>
    #
    #   @return [String]
    #
    TrackingOptions = ::Struct.new(
      :custom_redirect_domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove one or more
    #               tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tags (tag keys) that you want to remove from the resource. When you specify a tag
    #               key, the action removes both that key and its associated tag value.</p>
    #           <p>To remove more than one tag from the resource, append the <code>TagKeys</code>
    #               parameter and argument for each additional tag to remove, separated by an ampersand. For
    #               example:
    #                   <code>/v2/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2</code>
    #           </p>
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

    # <p>A request to change the settings for an event destination for a configuration
    #             set.</p>
    #
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that contains the event destination to
    #               modify.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination_name
    #   <p>The name of the event destination.</p>
    #
    #   @return [String]
    #
    # @!attribute event_destination
    #   <p>An object that defines the event destination.</p>
    #
    #   @return [EventDestinationDefinition]
    #
    UpdateConfigurationSetEventDestinationInput = ::Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :event_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    UpdateConfigurationSetEventDestinationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The contact's email addres.</p>
    #
    #   @return [String]
    #
    # @!attribute topic_preferences
    #   <p>The contact's preference for being opted-in to or opted-out of a topic.</p>
    #
    #   @return [Array<TopicPreference>]
    #
    # @!attribute unsubscribe_all
    #   <p>A boolean value status noting if the contact is unsubscribed from all contact list
    #               topics.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute attributes_data
    #   <p>The attribute data attached to a contact.</p>
    #
    #   @return [String]
    #
    UpdateContactInput = ::Struct.new(
      :contact_list_name,
      :email_address,
      :topic_preferences,
      :unsubscribe_all,
      :attributes_data,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.unsubscribe_all ||= false
      end

    end

    # @!attribute contact_list_name
    #   <p>The name of the contact list.</p>
    #
    #   @return [String]
    #
    # @!attribute topics
    #   <p>An interest group, theme, or label within a list. A contact list can have multiple
    #               topics.</p>
    #
    #   @return [Array<Topic>]
    #
    # @!attribute description
    #   <p>A description of what the contact list is about.</p>
    #
    #   @return [String]
    #
    UpdateContactListInput = ::Struct.new(
      :contact_list_name,
      :topics,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateContactListOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateContactOutput = ::Struct.new(
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
    #               information, see <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html custom-verification-emails-faq">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
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

    # <p>If the action is successful, the service sends back an HTTP 200 response with an empty
    #             HTTP body.</p>
    #
    UpdateCustomVerificationEmailTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to update a sending authorization policy for an identity. Sending
    #             authorization is an Amazon SES feature that enables you to authorize other senders to use
    #             your identities. For information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-identity-owner-tasks-management.html">Amazon SES Developer Guide</a>.</p>
    #
    # @!attribute email_identity
    #   <p>The email identity.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #
    #           <p>The policy name cannot exceed 64 characters and can only include alphanumeric
    #               characters, dashes, and underscores.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
    #           <p> For information about the syntax of sending authorization policies, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer
    #                   Guide</a>.</p>
    #
    #   @return [String]
    #
    UpdateEmailIdentityPolicyInput = ::Struct.new(
      :email_identity,
      :policy_name,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An HTTP 200 response if the request succeeds, or an error message if the request
    #             fails.</p>
    #
    UpdateEmailIdentityPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a request to update an email template. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES
    #                 Developer Guide</a>.</p>
    #
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_content
    #   <p>The content of the email template, composed of a subject line, an HTML part, and a
    #               text-only part.</p>
    #
    #   @return [EmailTemplateContent]
    #
    UpdateEmailTemplateInput = ::Struct.new(
      :template_name,
      :template_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the action is successful, the service sends back an HTTP 200 response with an empty
    #             HTTP body.</p>
    #
    UpdateEmailTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about the amount of email that was delivered to
    #             recipients.</p>
    #
    # @!attribute inbox_raw_count
    #   <p>The total number of emails that arrived in recipients' inboxes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute spam_raw_count
    #   <p>The total number of emails that arrived in recipients' spam or junk mail
    #               folders.</p>
    #
    #   @return [Integer]
    #
    # @!attribute projected_inbox
    #   <p>An estimate of the percentage of emails sent from the current domain that will arrive
    #               in recipients' inboxes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute projected_spam
    #   <p>An estimate of the percentage of emails sent from the current domain that will arrive
    #               in recipients' spam or junk mail folders.</p>
    #
    #   @return [Integer]
    #
    VolumeStatistics = ::Struct.new(
      :inbox_raw_count,
      :spam_raw_count,
      :projected_inbox,
      :projected_spam,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WarmupStatus
    #
    module WarmupStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      DONE = "DONE"
    end

  end
end
