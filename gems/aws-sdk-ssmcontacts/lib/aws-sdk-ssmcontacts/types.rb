# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSMContacts
  module Types

    # Includes enum constants for AcceptCodeValidation
    #
    module AcceptCodeValidation
      # No documentation available.
      #
      IGNORE = "IGNORE"

      # No documentation available.
      #
      ENFORCE = "ENFORCE"
    end

    # @!attribute page_id
    #   <p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_channel_id
    #   <p>The ARN of the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_type
    #   <p>The type indicates if the page was <code>DELIVERED</code> or <code>READ</code>.</p>
    #
    #   Enum, one of: ["DELIVERED", "READ"]
    #
    #   @return [String]
    #
    # @!attribute note
    #   <p>Information provided by the user when the user acknowledges the page.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_code
    #   <p>The accept code is a 6-digit code used to acknowledge the page.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_code_validation
    #   <p>An optional field that Incident Manager uses to <code>ENFORCE</code>
    #               <code>AcceptCode</code> validation when acknowledging an page. Acknowledgement can occur by
    #            replying to a page, or when entering the AcceptCode in the console. Enforcing AcceptCode
    #            validation causes Incident Manager to verify that the code entered by the user matches the
    #            code sent by Incident Manager with the page.</p>
    #            <p>Incident Manager can also <code>IGNORE</code>
    #               <code>AcceptCode</code> validation. Ignoring <code>AcceptCode</code> validation causes
    #            Incident Manager to accept any value entered for the <code>AcceptCode</code>.</p>
    #
    #   Enum, one of: ["IGNORE", "ENFORCE"]
    #
    #   @return [String]
    #
    AcceptPageInput = ::Struct.new(
      :page_id,
      :contact_channel_id,
      :accept_type,
      :note,
      :accept_code,
      :accept_code_validation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AcceptPageOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AcceptType
    #
    module AcceptType
      # No documentation available.
      #
      DELIVERED = "DELIVERED"

      # No documentation available.
      #
      READ = "READ"
    end

    # <p>You don't have sufficient access to perform this operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute activation_code
    #   <p>The code sent to the contact channel when it was created in the contact. </p>
    #
    #   @return [String]
    #
    ActivateContactChannelInput = ::Struct.new(
      :contact_channel_id,
      :activation_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ActivateContactChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ActivationStatus
    #
    module ActivationStatus
      # No documentation available.
      #
      ACTIVATED = "ACTIVATED"

      # No documentation available.
      #
      NOT_ACTIVATED = "NOT_ACTIVATED"
    end

    # <p>Information about the contact channel that Incident Manager uses to engage the
    #          contact.</p>
    #
    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_interval_in_minutes
    #   <p>The number of minutes to wait to retry sending engagement in the case the engagement
    #            initially fails.</p>
    #
    #   @return [Integer]
    #
    ChannelTargetInfo = ::Struct.new(
      :contact_channel_id,
      :retry_interval_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChannelType
    #
    module ChannelType
      # No documentation available.
      #
      SMS = "SMS"

      # No documentation available.
      #
      VOICE = "VOICE"

      # No documentation available.
      #
      EMAIL = "EMAIL"
    end

    # <p>Updating or deleting a resource causes an inconsistent state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   Identifier of the resource in use
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   ype of the resource in use
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A personal contact or escalation plan that Incident Manager engages during an
    #          incident.</p>
    #
    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The unique and identifiable alias of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The full name of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Refers to the type of contact. A single contact is type <code>PERSONAL</code> and an
    #            escalation plan is type <code>ESCALATION</code>.</p>
    #
    #   Enum, one of: ["PERSONAL", "ESCALATION"]
    #
    #   @return [String]
    #
    Contact = ::Struct.new(
      :contact_arn,
      :alias,
      :display_name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The method that Incident Manager uses to engage a contact.</p>
    #
    # @!attribute contact_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_arn
    #   <p>The ARN of the contact that contains the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the contact channel. Incident Manager supports three contact methods:</p>
    #            <ul>
    #               <li>
    #                  <p>SMS</p>
    #               </li>
    #               <li>
    #                  <p>VOICE</p>
    #               </li>
    #               <li>
    #                  <p>EMAIL</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SMS", "VOICE", "EMAIL"]
    #
    #   @return [String]
    #
    # @!attribute delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel.</p>
    #
    #   @return [ContactChannelAddress]
    #
    # @!attribute activation_status
    #   <p>A Boolean value describing if the contact channel has been activated or not. If the
    #            contact channel isn't activated, Incident Manager can't engage the contact through it. </p>
    #
    #   Enum, one of: ["ACTIVATED", "NOT_ACTIVATED"]
    #
    #   @return [String]
    #
    ContactChannel = ::Struct.new(
      :contact_channel_arn,
      :contact_arn,
      :name,
      :type,
      :delivery_address,
      :activation_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details that Incident Manager uses when trying to engage the contact channel. </p>
    #
    # @!attribute simple_address
    #   <p>The format is dependent on the type of the contact channel. The following are the
    #            expected formats:</p>
    #            <ul>
    #               <li>
    #                  <p>SMS - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>VOICE - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>EMAIL - any standard email format</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ContactChannelAddress = ::Struct.new(
      :simple_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The contact that Incident Manager is engaging during an incident.</p>
    #
    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute is_essential
    #   <p>A Boolean value determining if the contact's acknowledgement stops the progress of
    #            stages in the plan.</p>
    #
    #   @return [Boolean]
    #
    ContactTargetInfo = ::Struct.new(
      :contact_id,
      :is_essential,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContactType
    #
    module ContactType
      # No documentation available.
      #
      PERSONAL = "PERSONAL"

      # No documentation available.
      #
      ESCALATION = "ESCALATION"
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact you are adding the contact channel to.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Incident Manager supports three types of contact channels:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VOICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SMS", "VOICE", "EMAIL"]
    #
    #   @return [String]
    #
    # @!attribute delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel. The format
    #            is dependent on the type of the contact channel. The following are the expected
    #            formats:</p>
    #            <ul>
    #               <li>
    #                  <p>SMS - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>VOICE - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>EMAIL - any standard email format</p>
    #               </li>
    #            </ul>
    #
    #   @return [ContactChannelAddress]
    #
    # @!attribute defer_activation
    #   <p>If you want to activate the channel at a later time, you can choose to defer activation.
    #            Incident Manager can't engage your contact channel until it has been activated.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    #
    #   @return [String]
    #
    CreateContactChannelInput = ::Struct.new(
      :contact_id,
      :name,
      :type,
      :delivery_address,
      :defer_activation,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #
    #   @return [String]
    #
    CreateContactChannelOutput = ::Struct.new(
      :contact_channel_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias
    #   <p>The short name to quickly identify a contact or escalation plan. The contact alias must
    #            be unique and identifiable. </p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The full name of the contact or escalation plan.  </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>To create an escalation plan use <code>ESCALATION</code>. To create a contact use
    #               <code>PERSONAL</code>.</p>
    #
    #   Enum, one of: ["PERSONAL", "ESCALATION"]
    #
    #   @return [String]
    #
    # @!attribute plan
    #   <p>A list of stages. A contact has an engagement plan with stages that contact specified
    #            contact channels. An escalation plan uses stages that contact specified contacts. </p>
    #
    #   @return [Plan]
    #
    # @!attribute tags
    #   <p>Adds a tag to the target. You can only tag resources created in the first Region of your
    #            replication set. </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    #
    #   @return [String]
    #
    CreateContactInput = ::Struct.new(
      :alias,
      :display_name,
      :type,
      :plan,
      :tags,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the created contact or escalation plan.</p>
    #
    #   @return [String]
    #
    CreateContactOutput = ::Struct.new(
      :contact_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed to due an encryption key error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DataEncryptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you're deactivating.</p>
    #
    #   @return [String]
    #
    DeactivateContactChannelInput = ::Struct.new(
      :contact_channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeactivateContactChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #
    #   @return [String]
    #
    DeleteContactChannelInput = ::Struct.new(
      :contact_channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteContactChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact that you're deleting.</p>
    #
    #   @return [String]
    #
    DeleteContactInput = ::Struct.new(
      :contact_id,
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

    # @!attribute engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement you want the details of.</p>
    #
    #   @return [String]
    #
    DescribeEngagementInput = ::Struct.new(
      :engagement_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the escalation plan or contacts involved in the engagement.</p>
    #
    #   @return [String]
    #
    # @!attribute engagement_arn
    #   <p>The ARN of the engagement.</p>
    #
    #   @return [String]
    #
    # @!attribute sender
    #   <p>The user that started the engagement.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The secure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The secure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute public_subject
    #   <p>The insecure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute public_content
    #   <p>The insecure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute incident_id
    #   <p>The ARN of the incident in which the engagement occurred.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time that the engagement started.</p>
    #
    #   @return [Time]
    #
    # @!attribute stop_time
    #   <p>The time that the engagement ended.</p>
    #
    #   @return [Time]
    #
    DescribeEngagementOutput = ::Struct.new(
      :contact_arn,
      :engagement_arn,
      :sender,
      :subject,
      :content,
      :public_subject,
      :public_content,
      :incident_id,
      :start_time,
      :stop_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute page_id
    #   <p>The ID of the engagement to a contact channel.</p>
    #
    #   @return [String]
    #
    DescribePageInput = ::Struct.new(
      :page_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute page_arn
    #   <p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute engagement_arn
    #   <p>The ARN of the engagement that engaged the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_arn
    #   <p>The ARN of the contact that was engaged.</p>
    #
    #   @return [String]
    #
    # @!attribute sender
    #   <p>The user that started the engagement.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The secure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The secure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute public_subject
    #   <p>The insecure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute public_content
    #   <p>The insecure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute incident_id
    #   <p>The ARN of the incident that engaged the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute sent_time
    #   <p>The time the engagement was sent to the contact channel.</p>
    #
    #   @return [Time]
    #
    # @!attribute read_time
    #   <p>The time that the contact channel acknowledged the engagement.</p>
    #
    #   @return [Time]
    #
    # @!attribute delivery_time
    #   <p>The time that the contact channel received the engagement.</p>
    #
    #   @return [Time]
    #
    DescribePageOutput = ::Struct.new(
      :page_arn,
      :engagement_arn,
      :contact_arn,
      :sender,
      :subject,
      :content,
      :public_subject,
      :public_content,
      :incident_id,
      :sent_time,
      :read_time,
      :delivery_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Incident Manager reaching out to a contact or escalation plan to engage contact during an
    #          incident.</p>
    #
    # @!attribute engagement_arn
    #   <p>The Amazon Resource Name (ARN) of the engagement.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_arn
    #   <p>The ARN of the escalation plan or contact that Incident Manager is engaging.</p>
    #
    #   @return [String]
    #
    # @!attribute sender
    #   <p>The user that started the engagement.</p>
    #
    #   @return [String]
    #
    # @!attribute incident_id
    #   <p>The ARN of the incident that's engaging the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time that the engagement began.</p>
    #
    #   @return [Time]
    #
    # @!attribute stop_time
    #   <p>The time that the engagement ended.</p>
    #
    #   @return [Time]
    #
    Engagement = ::Struct.new(
      :engagement_arn,
      :contact_arn,
      :sender,
      :incident_id,
      :start_time,
      :stop_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you want information about.</p>
    #
    #   @return [String]
    #
    GetContactChannelInput = ::Struct.new(
      :contact_channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact that the channel belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_channel_arn
    #   <p>The ARN of the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact channel</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of contact channel. The type is <code>SMS</code>, <code>VOICE</code>, or
    #               <code>EMAIL</code>.</p>
    #
    #   Enum, one of: ["SMS", "VOICE", "EMAIL"]
    #
    #   @return [String]
    #
    # @!attribute delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel. </p>
    #
    #   @return [ContactChannelAddress]
    #
    # @!attribute activation_status
    #   <p>A Boolean value indicating if the contact channel has been activated or not.</p>
    #
    #   Enum, one of: ["ACTIVATED", "NOT_ACTIVATED"]
    #
    #   @return [String]
    #
    GetContactChannelOutput = ::Struct.new(
      :contact_arn,
      :contact_channel_arn,
      :name,
      :type,
      :delivery_address,
      :activation_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    GetContactInput = ::Struct.new(
      :contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias of the contact or escalation plan. The alias is unique and
    #            identifiable.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The full name of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of contact, either <code>PERSONAL</code> or <code>ESCALATION</code>. </p>
    #
    #   Enum, one of: ["PERSONAL", "ESCALATION"]
    #
    #   @return [String]
    #
    # @!attribute plan
    #   <p>Details about the specific timing or stages and targets of the escalation plan or
    #            engagement plan.</p>
    #
    #   @return [Plan]
    #
    GetContactOutput = ::Struct.new(
      :contact_arn,
      :alias,
      :display_name,
      :type,
      :plan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    GetContactPolicyInput = ::Struct.new(
      :contact_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>Details about the resource policy attached to the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    GetContactPolicyOutput = ::Struct.new(
      :contact_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Unexpected error occurred while
    #          processing the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   Advice to clients on when the call can be safely retried
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end

    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of contact channels per page.</p>
    #
    #   @return [Integer]
    #
    ListContactChannelsInput = ::Struct.new(
      :contact_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_channels
    #   <p>A list of contact channels related to the specified contact.</p>
    #
    #   @return [Array<ContactChannel>]
    #
    ListContactChannelsOutput = ::Struct.new(
      :next_token,
      :contact_channels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of contacts and escalation plans per page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute alias_prefix
    #   <p>Used to list only contacts who's aliases start with the specified prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of contact. A contact is type <code>PERSONAL</code> and an escalation plan is
    #            type <code>ESCALATION</code>.</p>
    #
    #   Enum, one of: ["PERSONAL", "ESCALATION"]
    #
    #   @return [String]
    #
    ListContactsInput = ::Struct.new(
      :next_token,
      :max_results,
      :alias_prefix,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute contacts
    #   <p>A list of the contacts and escalation plans in your Incident Manager account.</p>
    #
    #   @return [Array<Contact>]
    #
    ListContactsOutput = ::Struct.new(
      :next_token,
      :contacts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of engagements per page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute incident_id
    #   <p>The Amazon Resource Name (ARN) of the incident you're listing engagements for.</p>
    #
    #   @return [String]
    #
    # @!attribute time_range_value
    #   <p>The time range to lists engagements for an incident.</p>
    #
    #   @return [TimeRange]
    #
    ListEngagementsInput = ::Struct.new(
      :next_token,
      :max_results,
      :incident_id,
      :time_range_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute engagements
    #   <p>A list of each engagement that occurred during the specified time range of an
    #            incident.</p>
    #
    #   @return [Array<Engagement>]
    #
    ListEngagementsOutput = ::Struct.new(
      :next_token,
      :engagements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute page_id
    #   <p>The Amazon Resource Name (ARN) of the engagement to a specific contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of acknowledgements per page of results.</p>
    #
    #   @return [Integer]
    #
    ListPageReceiptsInput = ::Struct.new(
      :page_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute receipts
    #   <p>A list of each acknowledgement.</p>
    #
    #   @return [Array<Receipt>]
    #
    ListPageReceiptsOutput = ::Struct.new(
      :next_token,
      :receipts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact you are retrieving engagements for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of engagements to contact channels to list per page of results. </p>
    #
    #   @return [Integer]
    #
    ListPagesByContactInput = ::Struct.new(
      :contact_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute pages
    #   <p>The list of engagements to a contact's contact channel.</p>
    #
    #   @return [Array<Page>]
    #
    ListPagesByContactOutput = ::Struct.new(
      :next_token,
      :pages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of engagements to contact channels to list per page of
    #            results.</p>
    #
    #   @return [Integer]
    #
    ListPagesByEngagementInput = ::Struct.new(
      :engagement_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute pages
    #   <p>The list of engagements to contact channels.</p>
    #
    #   @return [Array<Page>]
    #
    ListPagesByEngagementOutput = ::Struct.new(
      :next_token,
      :pages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
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
    #   <p>The tags related to the contact or escalation plan.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Incident Manager engaging a contact's contact channel.</p>
    #
    # @!attribute page_arn
    #   <p>The Amazon Resource Name (ARN) of the page to the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute engagement_arn
    #   <p>The ARN of the engagement that this page is part of.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_arn
    #   <p>The ARN of the contact that Incident Manager is engaging.</p>
    #
    #   @return [String]
    #
    # @!attribute sender
    #   <p>The user that started the engagement.</p>
    #
    #   @return [String]
    #
    # @!attribute incident_id
    #   <p>The ARN of the incident that's engaging the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute sent_time
    #   <p>The time that Incident Manager engaged the contact channel.</p>
    #
    #   @return [Time]
    #
    # @!attribute delivery_time
    #   <p>The time the message was delivered to the contact channel.</p>
    #
    #   @return [Time]
    #
    # @!attribute read_time
    #   <p>The time that the contact channel acknowledged engagement.</p>
    #
    #   @return [Time]
    #
    Page = ::Struct.new(
      :page_arn,
      :engagement_arn,
      :contact_arn,
      :sender,
      :incident_id,
      :sent_time,
      :delivery_time,
      :read_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The stages that an escalation plan or engagement plan engages contacts and contact
    #          methods in.</p>
    #
    # @!attribute stages
    #   <p>A list of stages that the escalation plan or engagement plan uses to engage contacts and
    #            contact methods.</p>
    #
    #   @return [Array<Stage>]
    #
    Plan = ::Struct.new(
      :stages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>Details of the resource policy.</p>
    #
    #   @return [String]
    #
    PutContactPolicyInput = ::Struct.new(
      :contact_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutContactPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Records events during an engagement.</p>
    #
    # @!attribute contact_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the contact channel Incident Manager engaged.</p>
    #
    #   @return [String]
    #
    # @!attribute receipt_type
    #   <p>The type follows the engagement cycle, <code>SENT</code>, <code>DELIVERED</code>, and
    #               <code>READ</code>.</p>
    #
    #   Enum, one of: ["DELIVERED", "ERROR", "READ", "SENT", "STOP"]
    #
    #   @return [String]
    #
    # @!attribute receipt_info
    #   <p>Information provided during the page acknowledgement.</p>
    #
    #   @return [String]
    #
    # @!attribute receipt_time
    #   <p>The time receipt was <code>SENT</code>, <code>DELIVERED</code>, or
    #            <code>READ</code>.</p>
    #
    #   @return [Time]
    #
    Receipt = ::Struct.new(
      :contact_channel_arn,
      :receipt_type,
      :receipt_info,
      :receipt_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReceiptType
    #
    module ReceiptType
      # No documentation available.
      #
      DELIVERED = "DELIVERED"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      READ = "READ"

      # No documentation available.
      #
      SENT = "SENT"

      # No documentation available.
      #
      STOP = "STOP"
    end

    # <p>Request references a resource that doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   Hypothetical resource identifier that was not found
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Hypothetical resource type that was not found
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    #
    #   @return [String]
    #
    SendActivationCodeInput = ::Struct.new(
      :contact_channel_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SendActivationCodeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   Identifier of the resource affected
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Type of the resource affected
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   Service Quotas requirement to identify originating service
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   Service Quotas requirement to identify originating quota
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set amount of time that an escalation plan or engagement plan engages the specified
    #          contacts or contact methods.</p>
    #
    # @!attribute duration_in_minutes
    #   <p>The time to wait until beginning the next stage. The duration can only be set to 0 if a
    #            target is specified.</p>
    #
    #   @return [Integer]
    #
    # @!attribute targets
    #   <p>The contacts or contact methods that the escalation plan or engagement plan is
    #            engaging.</p>
    #
    #   @return [Array<Target>]
    #
    Stage = ::Struct.new(
      :duration_in_minutes,
      :targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact being engaged.</p>
    #
    #   @return [String]
    #
    # @!attribute sender
    #   <p>The user that started the engagement.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The secure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The secure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute public_subject
    #   <p>The insecure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute public_content
    #   <p>The insecure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute incident_id
    #   <p>The ARN of the incident that the engagement is part of.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    #
    #   @return [String]
    #
    StartEngagementInput = ::Struct.new(
      :contact_id,
      :sender,
      :subject,
      :content,
      :public_subject,
      :public_content,
      :incident_id,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engagement_arn
    #   <p>The ARN of the engagement.</p>
    #
    #   @return [String]
    #
    StartEngagementOutput = ::Struct.new(
      :engagement_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason that you're stopping the engagement. </p>
    #
    #   @return [String]
    #
    StopEngagementInput = ::Struct.new(
      :engagement_id,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopEngagementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A container of a key-value name pair.</p>
    #
    # @!attribute key
    #   <p>Name of the
    #            object
    #            key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Value of the tag.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags that you are adding to the contact or escalation plan.</p>
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

    # <p>The contact or contact channel that's being engaged.</p>
    #
    # @!attribute channel_target_info
    #   <p>Information about the contact channel Incident Manager is engaging.</p>
    #
    #   @return [ChannelTargetInfo]
    #
    # @!attribute contact_target_info
    #   <p>Information about the contact that Incident Manager is engaging.</p>
    #
    #   @return [ContactTargetInfo]
    #
    Target = ::Struct.new(
      :channel_target_info,
      :contact_target_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   Service Quotas requirement to identify originating service
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   Service Quotas requirement to identify originating quota
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   Advice to clients on when the call can be safely retried
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end

    end

    # <p>A range of between two set times</p>
    #
    # @!attribute start_time
    #   <p>The start of the time range.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end of the time range.</p>
    #
    #   @return [Time]
    #
    TimeRange = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The key of the tag that you want to remove.</p>
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

    # @!attribute contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact channel.</p>
    #
    #   @return [String]
    #
    # @!attribute delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel. </p>
    #
    #   @return [ContactChannelAddress]
    #
    UpdateContactChannelInput = ::Struct.new(
      :contact_channel_id,
      :name,
      :delivery_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateContactChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan you're updating.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The full name of the contact or escalation plan.</p>
    #
    #   @return [String]
    #
    # @!attribute plan
    #   <p>A list of stages. A contact has an engagement plan with stages for specified contact
    #            channels. An escalation plan uses these stages to contact specified contacts. </p>
    #
    #   @return [Plan]
    #
    UpdateContactInput = ::Struct.new(
      :contact_id,
      :display_name,
      :plan,
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

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services
    #          service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   Reason the request failed validation
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   The fields that caused the error
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

    # <p>Provides information about which field caused the exception.</p>
    #
    # @!attribute name
    #   <p>The name of the field that caused the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Information about what caused the field to cause an exception.</p>
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
    end

  end
end
