# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SNS
  module Types

    # @!attribute topic_arn
    #   <p>The ARN of the topic whose access control policy you wish to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute label
    #   <p>A unique identifier for the new policy statement.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account IDs of the users (principals) who will be given access to the
    #               specified actions. The users must have Amazon Web Services account, but do not need to be signed up for
    #               this service.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute action_name
    #   <p>The action you want to allow for the specified principal(s).</p>
    #           <p>Valid values: Any Amazon SNS action name, for example <code>Publish</code>.</p>
    #
    #   @return [Array<String>]
    #
    AddPermissionInput = ::Struct.new(
      :topic_arn,
      :label,
      :aws_account_id,
      :action_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AddPermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the user has been denied access to the requested resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AuthorizationErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Two or more batch entries in the request have the same <code>Id</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BatchEntryIdsNotDistinctException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The length of all the batch messages put together is more than the limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BatchRequestTooLongException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Gives a detailed description of failed messages in the batch.</p>
    #
    # @!attribute id
    #   <p>The <code>Id</code> of an entry in a batch request</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>An error code representing why the action failed on this entry.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message explaining why the action failed on this entry.</p>
    #
    #   @return [String]
    #
    # @!attribute sender_fault
    #   <p>Specifies whether the error happened due to the caller of the batch API action.</p>
    #
    #   @return [Boolean]
    #
    BatchResultErrorEntry = ::Struct.new(
      :id,
      :code,
      :message,
      :sender_fault,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.sender_fault ||= false
      end

    end

    # <p>The input for the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>
    #
    # @!attribute phone_number
    #   <p>The phone number for which you want to check the opt out status.</p>
    #
    #   @return [String]
    #
    CheckIfPhoneNumberIsOptedOutInput = ::Struct.new(
      :phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response from the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>
    #
    # @!attribute is_opted_out
    #   <p>Indicates whether the phone number is opted out:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>true</code> – The phone number is opted out, meaning you cannot publish
    #                       SMS messages to it.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>false</code> – The phone number is opted in, meaning you can publish SMS
    #                       messages to it.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Boolean]
    #
    CheckIfPhoneNumberIsOptedOutOutput = ::Struct.new(
      :is_opted_out,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_opted_out ||= false
      end

    end

    # <p>Can't perform multiple operations on a tag simultaneously. Perform the operations
    #             sequentially.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentAccessException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for ConfirmSubscription action.</p>
    #
    # @!attribute topic_arn
    #   <p>The ARN of the topic for which you wish to confirm a subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>Short-lived token sent to an endpoint during the <code>Subscribe</code> action.</p>
    #
    #   @return [String]
    #
    # @!attribute authenticate_on_unsubscribe
    #   <p>Disallows unauthenticated unsubscribes of the subscription. If the value of this
    #               parameter is <code>true</code> and the request has an Amazon Web Services signature, then only the topic
    #               owner and the subscription owner can unsubscribe the endpoint. The unsubscribe action
    #               requires Amazon Web Services authentication. </p>
    #
    #   @return [String]
    #
    ConfirmSubscriptionInput = ::Struct.new(
      :topic_arn,
      :token,
      :authenticate_on_unsubscribe,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response for ConfirmSubscriptions action.</p>
    #
    # @!attribute subscription_arn
    #   <p>The ARN of the created subscription.</p>
    #
    #   @return [String]
    #
    ConfirmSubscriptionOutput = ::Struct.new(
      :subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for CreatePlatformApplication action.</p>
    #
    # @!attribute name
    #   <p>Application names must be made up of only uppercase and lowercase ASCII letters,
    #               numbers, underscores, hyphens, and periods, and must be between 1 and 256 characters
    #               long.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The following platforms are supported: ADM (Amazon Device Messaging), APNS (Apple Push
    #               Notification Service), APNS_SANDBOX, and GCM (Firebase Cloud Messaging).</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>For a list of attributes, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html">SetPlatformApplicationAttributes</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreatePlatformApplicationInput = ::Struct.new(
      :name,
      :platform,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response from CreatePlatformApplication action.</p>
    #
    # @!attribute platform_application_arn
    #   <p>PlatformApplicationArn is returned.</p>
    #
    #   @return [String]
    #
    CreatePlatformApplicationOutput = ::Struct.new(
      :platform_application_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for CreatePlatformEndpoint action.</p>
    #
    # @!attribute platform_application_arn
    #   <p>PlatformApplicationArn returned from CreatePlatformApplication is used to create a an
    #               endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p>Unique identifier created by the notification service for an app on a device. The
    #               specific name for Token will vary, depending on which notification service is being
    #               used. For example, when using APNS as the notification service, you need the device
    #               token. Alternatively, when using GCM (Firebase Cloud Messaging) or ADM, the device token
    #               equivalent is called the registration ID.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_user_data
    #   <p>Arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The
    #               data must be in UTF-8 format and less than 2KB.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>For a list of attributes, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetEndpointAttributes.html">SetEndpointAttributes</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreatePlatformEndpointInput = ::Struct.new(
      :platform_application_arn,
      :token,
      :custom_user_data,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response from CreateEndpoint action.</p>
    #
    # @!attribute endpoint_arn
    #   <p>EndpointArn returned from CreateEndpoint action.</p>
    #
    #   @return [String]
    #
    CreatePlatformEndpointOutput = ::Struct.new(
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number
    #   <p>The destination phone number to verify. On verification, Amazon SNS adds this phone number
    #               to the list of verified phone numbers that you can send SMS messages to.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language to use for sending the OTP. The default value is
    #               <code>en-US</code>.</p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-419", "es-ES", "de-DE", "fr-CA", "fr-FR", "it-IT", "ja-JP", "pt-BR", "kr-KR", "zh-CN", "zh-TW"]
    #
    #   @return [String]
    #
    CreateSMSSandboxPhoneNumberInput = ::Struct.new(
      :phone_number,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateSMSSandboxPhoneNumberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for CreateTopic action.</p>
    #
    # @!attribute name
    #   <p>The name of the topic you want to create.</p>
    #           <p>Constraints: Topic names must be made up of only uppercase and lowercase ASCII
    #               letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters
    #               long.</p>
    #           <p>For a FIFO (first-in-first-out) topic, the name must end with the <code>.fifo</code>
    #               suffix. </p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A map of attributes with their corresponding values.</p>
    #           <p>The following lists the names, descriptions, and values of the special request
    #               parameters that the <code>CreateTopic</code> action uses:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DisplayName</code> – The display name to use for a topic with SMS
    #                       subscriptions.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FifoTopic</code> – Set to true to create a FIFO topic.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Policy</code> – The policy that defines who can access your
    #                       topic. By default, only the topic owner can publish or subscribe to the
    #                       topic.</p>
    #               </li>
    #            </ul>
    #
    #           <p>The following attribute applies only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html">server-side
    #               encryption</a>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>KmsMasterKeyId</code> – The ID of an Amazon Web Services managed customer master
    #                       key (CMK) for Amazon SNS or a custom CMK. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html sse-key-terms">Key
    #                           Terms</a>. For more examples, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html API_DescribeKey_RequestParameters">KeyId</a> in the <i>Key Management Service API
    #                           Reference</i>. </p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>The following attributes apply only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html">FIFO topics</a>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>FifoTopic</code> – When this is set to <code>true</code>, a FIFO
    #                   topic is created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                       <code>ContentBasedDeduplication</code> – Enables content-based deduplication for
    #                       FIFO topics.</p>
    #
    #                   <ul>
    #                     <li>
    #                           <p>By default, <code>ContentBasedDeduplication</code> is set to <code>false</code>.
    #                               If you create a FIFO topic and this attribute is <code>false</code>, you must
    #                               specify a value for the <code>MessageDeduplicationId</code> parameter for the
    #                               <a href="https://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a> action. </p>
    #                       </li>
    #                     <li>
    #                           <p>When you set <code>ContentBasedDeduplication</code> to <code>true</code>,
    #                               Amazon SNS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using
    #                               the body of the message (but not the attributes of the message).</p>
    #                           <p>(Optional) To override the generated value, you can specify a value
    #                               for the <code>MessageDeduplicationId</code> parameter for the <code>Publish</code>
    #                               action.</p>
    #                        </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>The list of tags to add to a new topic.</p>
    #           <note>
    #               <p>To be able to tag a topic on creation, you must have the
    #                       <code>sns:CreateTopic</code> and <code>sns:TagResource</code>
    #                   permissions.</p>
    #           </note>
    #
    #   @return [Array<Tag>]
    #
    CreateTopicInput = ::Struct.new(
      :name,
      :attributes,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response from CreateTopic action.</p>
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) assigned to the created topic.</p>
    #
    #   @return [String]
    #
    CreateTopicOutput = ::Struct.new(
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for DeleteEndpoint action.</p>
    #
    # @!attribute endpoint_arn
    #   <p>EndpointArn of endpoint to delete.</p>
    #
    #   @return [String]
    #
    DeleteEndpointInput = ::Struct.new(
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEndpointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for DeletePlatformApplication action.</p>
    #
    # @!attribute platform_application_arn
    #   <p>PlatformApplicationArn of platform application object to delete.</p>
    #
    #   @return [String]
    #
    DeletePlatformApplicationInput = ::Struct.new(
      :platform_application_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePlatformApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number
    #   <p>The destination phone number to delete.</p>
    #
    #   @return [String]
    #
    DeleteSMSSandboxPhoneNumberInput = ::Struct.new(
      :phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSMSSandboxPhoneNumberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute topic_arn
    #   <p>The ARN of the topic you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteTopicInput = ::Struct.new(
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTopicOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The batch request doesn't contain any entries.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EmptyBatchRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The endpoint for mobile app and device.</p>
    #
    # @!attribute endpoint_arn
    #   <p>The <code>EndpointArn</code> for mobile app and device.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>Attributes for endpoint.</p>
    #
    #   @return [Hash<String, String>]
    #
    Endpoint = ::Struct.new(
      :endpoint_arn,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception error indicating endpoint disabled.</p>
    #
    # @!attribute message
    #   <p>Message for endpoint disabled.</p>
    #
    #   @return [String]
    #
    EndpointDisabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the number of filter polices in your Amazon Web Services account exceeds the limit. To
    #             add more filter polices, submit an Amazon SNS Limit Increase case in the Amazon Web Services Support
    #             Center.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FilterPolicyLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for GetEndpointAttributes action.</p>
    #
    # @!attribute endpoint_arn
    #   <p>EndpointArn for GetEndpointAttributes input.</p>
    #
    #   @return [String]
    #
    GetEndpointAttributesInput = ::Struct.new(
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response from GetEndpointAttributes of the EndpointArn.</p>
    #
    # @!attribute attributes
    #   <p>Attributes include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>CustomUserData</code> – arbitrary user data to associate with the
    #                       endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and
    #                       less than 2KB.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Enabled</code> – flag that enables/disables delivery to the
    #                       endpoint. Amazon SNS will set this to false when a notification service indicates to
    #                       Amazon SNS that the endpoint is invalid. Users can set it back to true, typically
    #                       after updating Token.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Token</code> – device token, also referred to as a registration id,
    #                       for an app and mobile device. This is returned from the notification service
    #                       when an app and mobile device are registered with the notification
    #                       service.</p>
    #                   <note>
    #                       <p>The device token for the iOS platform is returned in lowercase.</p>
    #                   </note>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    GetEndpointAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for GetPlatformApplicationAttributes action.</p>
    #
    # @!attribute platform_application_arn
    #   <p>PlatformApplicationArn for GetPlatformApplicationAttributesInput.</p>
    #
    #   @return [String]
    #
    GetPlatformApplicationAttributesInput = ::Struct.new(
      :platform_application_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response for GetPlatformApplicationAttributes action.</p>
    #
    # @!attribute attributes
    #   <p>Attributes include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>AppleCertificateExpiryDate</code> – The expiry date of the SSL certificate used to configure certificate-based authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ApplePlatformTeamID</code> – The Apple developer account ID used to configure token-based authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ApplePlatformBundleID</code> – The app identifier used to configure token-based authentication.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EventEndpointCreated</code> – Topic ARN to which EndpointCreated
    #                       event notifications should be sent.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EventEndpointDeleted</code> – Topic ARN to which EndpointDeleted
    #                       event notifications should be sent.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EventEndpointUpdated</code> – Topic ARN to which EndpointUpdate
    #                       event notifications should be sent.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EventDeliveryFailure</code> – Topic ARN to which DeliveryFailure
    #                       event notifications should be sent upon Direct Publish delivery failure
    #                       (permanent) to one of the application's endpoints.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    GetPlatformApplicationAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <code>GetSMSAttributes</code> request.</p>
    #
    # @!attribute attributes
    #   <p>A list of the individual attribute names, such as <code>MonthlySpendLimit</code>, for
    #               which you want values.</p>
    #           <p>For all attribute names, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html">SetSMSAttributes</a>.</p>
    #           <p>If you don't use this parameter, Amazon SNS returns all SMS attributes.</p>
    #
    #   @return [Array<String>]
    #
    GetSMSAttributesInput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response from the <code>GetSMSAttributes</code> request.</p>
    #
    # @!attribute attributes
    #   <p>The SMS attribute names and their values.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetSMSAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetSMSSandboxAccountStatusInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute is_in_sandbox
    #   <p>Indicates whether the calling Amazon Web Services account is in the SMS sandbox.</p>
    #
    #   @return [Boolean]
    #
    GetSMSSandboxAccountStatusOutput = ::Struct.new(
      :is_in_sandbox,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_in_sandbox ||= false
      end

    end

    # <p>Input for GetSubscriptionAttributes.</p>
    #
    # @!attribute subscription_arn
    #   <p>The ARN of the subscription whose properties you want to get.</p>
    #
    #   @return [String]
    #
    GetSubscriptionAttributesInput = ::Struct.new(
      :subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response for GetSubscriptionAttributes action.</p>
    #
    # @!attribute attributes
    #   <p>A map of the subscription's attributes. Attributes in this map include the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>ConfirmationWasAuthenticated</code> – <code>true</code> if the
    #                       subscription confirmation request was authenticated.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>DeliveryPolicy</code> – The JSON serialization of the
    #                       subscription's delivery policy.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EffectiveDeliveryPolicy</code> – The JSON serialization of the
    #                       effective delivery policy that takes into account the topic delivery policy and
    #                       account system defaults.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>FilterPolicy</code> – The filter policy JSON that is assigned to
    #                       the subscription. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-message-filtering.html">Amazon SNS Message
    #                           Filtering</a> in the <i>Amazon SNS Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Owner</code> – The Amazon Web Services account ID of the subscription's
    #                       owner.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>PendingConfirmation</code> – <code>true</code> if the subscription
    #                       hasn't been confirmed. To confirm a pending subscription, call the
    #                           <code>ConfirmSubscription</code> action with a confirmation token.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>RawMessageDelivery</code> – <code>true</code> if raw message
    #                       delivery is enabled for the subscription. Raw messages are free of JSON
    #                       formatting and can be sent to HTTP/S and Amazon SQS endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue.
    #       Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    #       or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held
    #       in the dead-letter queue for further analysis or reprocessing.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>SubscriptionArn</code> – The subscription's ARN.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>TopicArn</code> – The topic ARN that the subscription is associated
    #                       with.</p>
    #               </li>
    #            </ul>
    #
    #           <p>The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
    #                   <ul>
    #                     <li>
    #                           <p>Permission to write to the Kinesis Data Firehose delivery stream</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon SNS listed as a trusted entity</p>
    #                       </li>
    #                  </ul>
    #                   <p>Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions.
    #                   For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html">Fanout
    #                       to Kinesis Data Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
    #                       </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    GetSubscriptionAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for GetTopicAttributes action.</p>
    #
    # @!attribute topic_arn
    #   <p>The ARN of the topic whose properties you want to get.</p>
    #
    #   @return [String]
    #
    GetTopicAttributesInput = ::Struct.new(
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response for GetTopicAttributes action.</p>
    #
    # @!attribute attributes
    #   <p>A map of the topic's attributes. Attributes in this map include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DeliveryPolicy</code> – The JSON serialization of the topic's
    #                       delivery policy.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DisplayName</code> – The human-readable name used in the
    #                           <code>From</code> field for notifications to <code>email</code> and
    #                           <code>email-json</code> endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Owner</code> – The Amazon Web Services account ID of the topic's owner.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Policy</code> – The JSON serialization of the topic's access
    #                       control policy.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SubscriptionsConfirmed</code> – The number of confirmed
    #                       subscriptions for the topic.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SubscriptionsDeleted</code> – The number of deleted subscriptions
    #                       for the topic.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SubscriptionsPending</code> – The number of subscriptions pending
    #                       confirmation for the topic.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TopicArn</code> – The topic's ARN.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EffectiveDeliveryPolicy</code> – The JSON serialization of the
    #                       effective delivery policy, taking system defaults into account.</p>
    #               </li>
    #            </ul>
    #
    #           <p>The following attribute applies only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html">server-side-encryption</a>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>KmsMasterKeyId</code> - The ID of an Amazon Web Services managed customer master key
    #                       (CMK) for Amazon SNS or a custom CMK. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html sse-key-terms">Key
    #                           Terms</a>. For more examples, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html API_DescribeKey_RequestParameters">KeyId</a> in the <i>Key Management Service API
    #                           Reference</i>.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>The following attributes apply only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html">FIFO topics</a>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>FifoTopic</code> – When this is set to <code>true</code>, a FIFO
    #                   topic is created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                       <code>ContentBasedDeduplication</code> – Enables content-based deduplication for
    #                       FIFO topics.</p>
    #
    #                   <ul>
    #                     <li>
    #                           <p>By default, <code>ContentBasedDeduplication</code> is set to <code>false</code>.
    #                               If you create a FIFO topic and this attribute is <code>false</code>, you must
    #                               specify a value for the <code>MessageDeduplicationId</code> parameter for the
    #                               <a href="https://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a> action. </p>
    #                       </li>
    #                     <li>
    #                           <p>When you set <code>ContentBasedDeduplication</code> to <code>true</code>,
    #                               Amazon SNS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using
    #                               the body of the message (but not the attributes of the message).</p>
    #                           <p>(Optional) To override the generated value, you can specify a value
    #                               for the <code>MessageDeduplicationId</code> parameter for the <code>Publish</code>
    #                               action.</p>
    #                        </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    GetTopicAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates an internal service error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>Id</code> of a batch entry in a batch request doesn't abide by the specification. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidBatchEntryIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a request parameter does not comply with the associated
    #             constraints.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a request parameter does not comply with the associated constraints.</p>
    #
    # @!attribute message
    #   <p>The parameter of an entry in a request doesn't abide by the specification. </p>
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The credential signature isn't valid. You must use an HTTPS endpoint and sign your
    #             request using Signature Version 4.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSecurityException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ciphertext references a key that doesn't exist or that you don't have access
    #             to.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSAccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified customer master key (CMK) isn't
    #             enabled.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSDisabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the state of the specified resource isn't valid for
    #             this request. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a
    #                 Customer Master Key</a> in the <i>Key Management Service Developer
    #                 Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSInvalidStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because the specified entity or resource can't be
    #             found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Web Services access key ID needs a subscription for the service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSOptInRequired = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to request throttling. For more information about
    #             throttling, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second">Limits</a> in
    #             the <i>Key Management Service Developer Guide.</i>
    #          </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LanguageCodeString
    #
    module LanguageCodeString
      # No documentation available.
      #
      en_US = "en-US"

      # No documentation available.
      #
      en_GB = "en-GB"

      # No documentation available.
      #
      es_419 = "es-419"

      # No documentation available.
      #
      es_ES = "es-ES"

      # No documentation available.
      #
      de_DE = "de-DE"

      # No documentation available.
      #
      fr_CA = "fr-CA"

      # No documentation available.
      #
      fr_FR = "fr-FR"

      # No documentation available.
      #
      it_IT = "it-IT"

      # No documentation available.
      #
      jp_JP = "ja-JP"

      # No documentation available.
      #
      pt_BR = "pt-BR"

      # No documentation available.
      #
      kr_KR = "kr-KR"

      # No documentation available.
      #
      zh_CN = "zh-CN"

      # No documentation available.
      #
      zh_TW = "zh-TW"
    end

    # <p>Input for ListEndpointsByPlatformApplication action.</p>
    #
    # @!attribute platform_application_arn
    #   <p>PlatformApplicationArn for ListEndpointsByPlatformApplicationInput action.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>NextToken string is used when calling ListEndpointsByPlatformApplication action to
    #               retrieve additional records that are available after the first page results.</p>
    #
    #   @return [String]
    #
    ListEndpointsByPlatformApplicationInput = ::Struct.new(
      :platform_application_arn,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response for ListEndpointsByPlatformApplication action.</p>
    #
    # @!attribute endpoints
    #   <p>Endpoints returned for ListEndpointsByPlatformApplication action.</p>
    #
    #   @return [Array<Endpoint>]
    #
    # @!attribute next_token
    #   <p>NextToken string is returned when calling ListEndpointsByPlatformApplication action if
    #               additional records are available after the first page results.</p>
    #
    #   @return [String]
    #
    ListEndpointsByPlatformApplicationOutput = ::Struct.new(
      :endpoints,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Token that the previous <code>ListOriginationNumbers</code> request returns.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of origination numbers to return.</p>
    #
    #   @return [Integer]
    #
    ListOriginationNumbersInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A <code>NextToken</code> string is returned when you call the
    #                   <code>ListOriginationNumbers</code> operation if additional pages of records are
    #               available.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_numbers
    #   <p>A list of the calling account's verified and pending origination numbers.</p>
    #
    #   @return [Array<PhoneNumberInformation>]
    #
    ListOriginationNumbersOutput = ::Struct.new(
      :next_token,
      :phone_numbers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <code>ListPhoneNumbersOptedOut</code> action.</p>
    #
    # @!attribute next_token
    #   <p>A <code>NextToken</code> string is used when you call the
    #                   <code>ListPhoneNumbersOptedOut</code> action to retrieve additional records that are
    #               available after the first page of results.</p>
    #
    #   @return [String]
    #
    ListPhoneNumbersOptedOutInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response from the <code>ListPhoneNumbersOptedOut</code> action.</p>
    #
    # @!attribute phone_numbers
    #   <p>A list of phone numbers that are opted out of receiving SMS messages. The list is
    #               paginated, and each page can contain up to 100 phone numbers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A <code>NextToken</code> string is returned when you call the
    #                   <code>ListPhoneNumbersOptedOut</code> action if additional records are available
    #               after the first page of results.</p>
    #
    #   @return [String]
    #
    ListPhoneNumbersOptedOutOutput = ::Struct.new(
      :phone_numbers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for ListPlatformApplications action.</p>
    #
    # @!attribute next_token
    #   <p>NextToken string is used when calling ListPlatformApplications action to retrieve
    #               additional records that are available after the first page results.</p>
    #
    #   @return [String]
    #
    ListPlatformApplicationsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response for ListPlatformApplications action.</p>
    #
    # @!attribute platform_applications
    #   <p>Platform applications returned when calling ListPlatformApplications action.</p>
    #
    #   @return [Array<PlatformApplication>]
    #
    # @!attribute next_token
    #   <p>NextToken string is returned when calling ListPlatformApplications action if
    #               additional records are available after the first page results.</p>
    #
    #   @return [String]
    #
    ListPlatformApplicationsOutput = ::Struct.new(
      :platform_applications,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Token that the previous <code>ListSMSSandboxPhoneNumbersInput</code> request
    #               returns.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of phone numbers to return.</p>
    #
    #   @return [Integer]
    #
    ListSMSSandboxPhoneNumbersInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_numbers
    #   <p>A list of the calling account's pending and verified phone numbers.</p>
    #
    #   @return [Array<SMSSandboxPhoneNumber>]
    #
    # @!attribute next_token
    #   <p>A <code>NextToken</code> string is returned when you call the
    #               <code>ListSMSSandboxPhoneNumbersInput</code> operation if additional pages of
    #               records are available.</p>
    #
    #   @return [String]
    #
    ListSMSSandboxPhoneNumbersOutput = ::Struct.new(
      :phone_numbers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for ListSubscriptionsByTopic action.</p>
    #
    # @!attribute topic_arn
    #   <p>The ARN of the topic for which you wish to find subscriptions.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Token returned by the previous <code>ListSubscriptionsByTopic</code> request.</p>
    #
    #   @return [String]
    #
    ListSubscriptionsByTopicInput = ::Struct.new(
      :topic_arn,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response for ListSubscriptionsByTopic action.</p>
    #
    # @!attribute subscriptions
    #   <p>A list of subscriptions.</p>
    #
    #   @return [Array<Subscription>]
    #
    # @!attribute next_token
    #   <p>Token to pass along to the next <code>ListSubscriptionsByTopic</code> request. This
    #               element is returned if there are more subscriptions to retrieve.</p>
    #
    #   @return [String]
    #
    ListSubscriptionsByTopicOutput = ::Struct.new(
      :subscriptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for ListSubscriptions action.</p>
    #
    # @!attribute next_token
    #   <p>Token returned by the previous <code>ListSubscriptions</code> request.</p>
    #
    #   @return [String]
    #
    ListSubscriptionsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response for ListSubscriptions action</p>
    #
    # @!attribute subscriptions
    #   <p>A list of subscriptions.</p>
    #
    #   @return [Array<Subscription>]
    #
    # @!attribute next_token
    #   <p>Token to pass along to the next <code>ListSubscriptions</code> request. This element
    #               is returned if there are more subscriptions to retrieve.</p>
    #
    #   @return [String]
    #
    ListSubscriptionsOutput = ::Struct.new(
      :subscriptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the topic for which to list tags.</p>
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
    #   <p>The tags associated with the specified topic.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Token returned by the previous <code>ListTopics</code> request.</p>
    #
    #   @return [String]
    #
    ListTopicsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response for ListTopics action.</p>
    #
    # @!attribute topics
    #   <p>A list of topic ARNs.</p>
    #
    #   @return [Array<Topic>]
    #
    # @!attribute next_token
    #   <p>Token to pass along to the next <code>ListTopics</code> request. This element is
    #               returned if there are additional topics to retrieve.</p>
    #
    #   @return [String]
    #
    ListTopicsOutput = ::Struct.new(
      :topics,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user-specified message attribute value. For string data types, the value attribute
    #             has the same restrictions on the content as the message body. For more information, see
    #             <a href="https://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a>.</p>
    #         <p>Name, type, and value must not be empty or null. In addition, the message body should
    #             not be empty or null. All parts of the message attribute, including name, type, and
    #             value, are included in the message size restriction, which is currently 256 KB (262,144
    #             bytes). For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html">Amazon SNS message attributes</a> and
    #             <a href="https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html">Publishing
    #                 to a mobile phone</a> in the <i>Amazon SNS Developer Guide.</i>
    #          </p>
    #
    # @!attribute data_type
    #   <p>Amazon SNS supports the following logical data types: String, String.Array, Number, and
    #               Binary. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html SNSMessageAttributes.DataTypes">Message
    #                   Attribute Data Types</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute string_value
    #   <p>Strings are Unicode with UTF8 binary encoding. For a list of code values, see <a href="https://en.wikipedia.org/wiki/ASCII ASCII_printable_characters">ASCII Printable
    #               Characters</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute binary_value
    #   <p>Binary type attributes can store any binary data, for example, compressed data,
    #               encrypted data, or images.</p>
    #
    #   @return [String]
    #
    MessageAttributeValue = ::Struct.new(
      :data_type,
      :string_value,
      :binary_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the requested resource does not exist.</p>
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

    # Includes enum constants for NumberCapability
    #
    module NumberCapability
      # No documentation available.
      #
      SMS = "SMS"

      # No documentation available.
      #
      MMS = "MMS"

      # No documentation available.
      #
      VOICE = "VOICE"
    end

    # <p>Input for the OptInPhoneNumber action.</p>
    #
    # @!attribute phone_number
    #   <p>The phone number to opt in. Use E.164 format.</p>
    #
    #   @return [String]
    #
    OptInPhoneNumberInput = ::Struct.new(
      :phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response for the OptInPhoneNumber action.</p>
    #
    OptInPhoneNumberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the specified phone number opted out of receiving SMS messages from
    #             your Amazon Web Services account. You can't send SMS messages to phone numbers that opt out.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OptedOutException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of phone numbers and their metadata.</p>
    #
    # @!attribute created_at
    #   <p>The date and time when the phone number was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute phone_number
    #   <p>The phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute iso2_country_code
    #   <p>The two-character code for the country or region, in ISO 3166-1 alpha-2 format.</p>
    #
    #   @return [String]
    #
    # @!attribute route_type
    #   <p>The list of supported routes.</p>
    #
    #   Enum, one of: ["Transactional", "Promotional", "Premium"]
    #
    #   @return [String]
    #
    # @!attribute number_capabilities
    #   <p>The capabilities of each phone number.</p>
    #
    #   @return [Array<String>]
    #
    PhoneNumberInformation = ::Struct.new(
      :created_at,
      :phone_number,
      :status,
      :iso2_country_code,
      :route_type,
      :number_capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Platform application object.</p>
    #
    # @!attribute platform_application_arn
    #   <p>PlatformApplicationArn for platform application object.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>Attributes for platform application object.</p>
    #
    #   @return [Hash<String, String>]
    #
    PlatformApplication = ::Struct.new(
      :platform_application_arn,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exception error indicating platform application disabled.</p>
    #
    # @!attribute message
    #   <p>Message for platform application disabled.</p>
    #
    #   @return [String]
    #
    PlatformApplicationDisabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute topic_arn
    #   <p>The Amazon resource name (ARN) of the topic you want to batch publish to.</p>
    #
    #   @return [String]
    #
    # @!attribute publish_batch_request_entries
    #   <p>A list of <code>PublishBatch</code> request entries to be sent to the SNS topic.</p>
    #
    #   @return [Array<PublishBatchRequestEntry>]
    #
    PublishBatchInput = ::Struct.new(
      :topic_arn,
      :publish_batch_request_entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successful
    #   <p>A list of successful <code>PublishBatch</code> responses.</p>
    #
    #   @return [Array<PublishBatchResultEntry>]
    #
    # @!attribute failed
    #   <p>A list of failed <code>PublishBatch</code> responses. </p>
    #
    #   @return [Array<BatchResultErrorEntry>]
    #
    PublishBatchOutput = ::Struct.new(
      :successful,
      :failed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of a single Amazon SNS message along with an <code>Id</code> that identifies a message within the batch. </p>
    #
    # @!attribute id
    #   <p>An identifier for the message in this batch.</p>
    #           <note>
    #               <p>The <code>Ids</code> of a batch request must be unique within a request. </p>
    #               <p>This identifier can have up to 80 characters. The following characters are accepted: alphanumeric characters, hyphens(-), and underscores (_). </p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The body of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The subject of the batch message.</p>
    #
    #   @return [String]
    #
    # @!attribute message_structure
    #   <p>Set <code>MessageStructure</code> to <code>json</code> if you want to send a different message for each protocol. For example, using one publish action, you can send a short message to your SMS subscribers and a longer message to your email subscribers. If you set <code>MessageStructure</code> to <code>json</code>, the value of the <code>Message</code> parameter must: </p>
    #           <ul>
    #               <li>
    #                  <p>be a syntactically valid JSON object; and</p>
    #               </li>
    #               <li>
    #                  <p>contain at least a top-level JSON key of "default" with a value that is a string.</p>
    #               </li>
    #            </ul>
    #           <p>You can define other top-level keys that define the message you want to send to a
    #               specific transport protocol (e.g. http). </p>
    #
    #   @return [String]
    #
    # @!attribute message_attributes
    #   <p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-message-attributes.html">Amazon SNS message attributes</a> in the Amazon SNS Developer Guide.</p>
    #
    #   @return [Hash<String, MessageAttributeValue>]
    #
    # @!attribute message_deduplication_id
    #   <p>This parameter applies only to FIFO (first-in-first-out) topics.</p>
    #           <p>The token used for deduplication of messages within a 5-minute minimum deduplication interval. If a message with a particular <code>MessageDeduplicationId</code> is sent successfully, subsequent messages with the same <code>MessageDeduplicationId</code> are accepted successfully but aren't delivered.</p>
    #           <ul>
    #               <li>
    #                  <p>Every message must have a unique <code>MessageDeduplicationId</code>.</p>
    #                   <ul>
    #                     <li>
    #                        <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your topic, Amazon SNS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message).</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't provide a <code>MessageDeduplicationId</code> and the topic doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p>
    #                     </li>
    #                     <li>
    #                        <p>If the topic has a <code>ContentBasedDeduplication</code> set, your
    #                                   <code>MessageDeduplicationId</code> overrides the generated one. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p>
    #               </li>
    #               <li>
    #                  <p>If you send one message with <code>ContentBasedDeduplication</code> enabled, and then another
    #                       message with a <code>MessageDeduplicationId</code> that is the same as the one
    #                       generated for the first <code>MessageDeduplicationId</code>, the two messages
    #                       are treated as duplicates and only one copy of the message is delivered. </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>The <code>MessageDeduplicationId</code> is available to the consumer of the message (this can be useful for troubleshooting delivery issues).</p>
    #               <p>If a message is sent successfully but the acknowledgement is lost and the message is resent with the same <code>MessageDeduplicationId</code> after the deduplication interval, Amazon SNS can't detect duplicate messages. </p>
    #               <p>Amazon SNS continues to keep track of the message deduplication ID even after the message is received and deleted. </p>
    #           </note>
    #           <p>The length of <code>MessageDeduplicationId</code> is 128 characters.</p>
    #           <p>
    #               <code>MessageDeduplicationId</code> can contain alphanumeric characters <code>(a-z, A-Z, 0-9)</code> and punctuation <code>(!" $%&'()*+,-./:;<=>?@[\]^_`{|}~)</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute message_group_id
    #   <p>This parameter applies only to FIFO (first-in-first-out) topics.</p>
    #           <p>The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single topic, use <code>MessageGroupId</code> values (for example, session data for multiple users). In this scenario, multiple consumers can process the topic, but the session data of each user is processed in a FIFO fashion. </p>
    #           <p>You must associate a non-empty <code>MessageGroupId</code> with a message. If you don't provide a <code>MessageGroupId</code>, the action fails. </p>
    #           <p>The length of <code>MessageGroupId</code> is 128 characters.</p>
    #           <p>
    #               <code>MessageGroupId</code> can contain alphanumeric characters <code>(a-z, A-Z, 0-9)</code> and punctuation <code>(!" $%&'()*+,-./:;<=>?@[\]^_`{|}~)</code>.</p>
    #
    #
    #           <important>
    #               <p>
    #                  <code>MessageGroupId</code> is required for FIFO topics. You can't use it for standard topics. </p>
    #            </important>
    #
    #   @return [String]
    #
    PublishBatchRequestEntry = ::Struct.new(
      :id,
      :message,
      :subject,
      :message_structure,
      :message_attributes,
      :message_deduplication_id,
      :message_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Encloses data related to a successful message in a batch request for topic.</p>
    #
    # @!attribute id
    #   <p>The <code>Id</code> of an entry in a batch request.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>An identifier for the message.</p>
    #
    #   @return [String]
    #
    # @!attribute sequence_number
    #   <p>This parameter applies only to FIFO (first-in-first-out) topics.</p>
    #           <p>The large, non-consecutive number that Amazon SNS assigns to each message.</p>
    #           <p>The length of <code>SequenceNumber</code> is 128 bits. <code>SequenceNumber</code> continues to increase for a particular <code>MessageGroupId</code>.</p>
    #
    #   @return [String]
    #
    PublishBatchResultEntry = ::Struct.new(
      :id,
      :message_id,
      :sequence_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for Publish action.</p>
    #
    # @!attribute topic_arn
    #   <p>The topic you want to publish to.</p>
    #           <p>If you don't specify a value for the <code>TopicArn</code> parameter, you must specify
    #               a value for the <code>PhoneNumber</code> or <code>TargetArn</code> parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute target_arn
    #   <p>If you don't specify a value for the <code>TargetArn</code> parameter, you must
    #               specify a value for the <code>PhoneNumber</code> or <code>TopicArn</code>
    #               parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number to which you want to deliver an SMS message. Use E.164 format.</p>
    #           <p>If you don't specify a value for the <code>PhoneNumber</code> parameter, you must
    #               specify a value for the <code>TargetArn</code> or <code>TopicArn</code>
    #               parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message you want to send.</p>
    #           <p>If you are publishing to a topic and you want to send the same message to all
    #               transport protocols, include the text of the message as a String value. If you want to
    #               send different messages for each transport protocol, set the value of the
    #                   <code>MessageStructure</code> parameter to <code>json</code> and use a JSON object
    #               for the <code>Message</code> parameter.
    #           </p>
    #           <p></p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>With the exception of SMS, messages must be UTF-8 encoded strings and at most
    #                       256 KB in size (262,144 bytes, not 262,144 characters).</p>
    #               </li>
    #               <li>
    #                   <p>For SMS, each message can contain up to 140 characters. This character limit
    #                       depends on the encoding schema. For example, an SMS message can contain 160 GSM
    #                       characters, 140 ASCII characters, or 70 UCS-2 characters.</p>
    #                   <p>If you publish a message that exceeds this size limit, Amazon SNS sends the message
    #                       as multiple messages, each fitting within the size limit. Messages aren't
    #                       truncated mid-word but are cut off at whole-word boundaries.</p>
    #                   <p>The total size limit for a single SMS <code>Publish</code> action is 1,600
    #                       characters.</p>
    #               </li>
    #            </ul>
    #           <p>JSON-specific constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Keys in the JSON object that correspond to supported transport protocols must
    #                       have simple JSON string values.</p>
    #               </li>
    #               <li>
    #                   <p>The values will be parsed (unescaped) before they are used in outgoing
    #                       messages.</p>
    #               </li>
    #               <li>
    #                   <p>Outbound notifications are JSON encoded (meaning that the characters will be
    #                       reescaped for sending).</p>
    #               </li>
    #               <li>
    #                   <p>Values have a minimum length of 0 (the empty string, "", is allowed).</p>
    #               </li>
    #               <li>
    #                   <p>Values have a maximum length bounded by the overall message size (so,
    #                       including multiple protocols may limit message sizes).</p>
    #               </li>
    #               <li>
    #                   <p>Non-string values will cause the key to be ignored.</p>
    #               </li>
    #               <li>
    #                   <p>Keys that do not correspond to supported transport protocols are
    #                       ignored.</p>
    #               </li>
    #               <li>
    #                   <p>Duplicate keys are not allowed.</p>
    #               </li>
    #               <li>
    #                   <p>Failure to parse or validate any key or value in the message will cause the
    #                           <code>Publish</code> call to return an error (no partial delivery).</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>Optional parameter to be used as the "Subject" line when the message is delivered to
    #               email endpoints. This field will also be included, if present, in the standard JSON
    #               messages delivered to other endpoints.</p>
    #           <p>Constraints: Subjects must be ASCII text that begins with a letter, number, or
    #               punctuation mark; must not include line breaks or control characters; and must be less
    #               than 100 characters long.</p>
    #
    #   @return [String]
    #
    # @!attribute message_structure
    #   <p>Set <code>MessageStructure</code> to <code>json</code> if you want to send a different
    #               message for each protocol. For example, using one publish action, you can send a short
    #               message to your SMS subscribers and a longer message to your email subscribers. If you
    #               set <code>MessageStructure</code> to <code>json</code>, the value of the
    #                   <code>Message</code> parameter must: </p>
    #           <ul>
    #               <li>
    #                   <p>be a syntactically valid JSON object; and</p>
    #               </li>
    #               <li>
    #                   <p>contain at least a top-level JSON key of "default" with a value that is a
    #                       string.</p>
    #               </li>
    #            </ul>
    #           <p>You can define other top-level keys that define the message you want to send to a
    #               specific transport protocol (e.g., "http").</p>
    #           <p>Valid value: <code>json</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute message_attributes
    #   <p>Message attributes for Publish action.</p>
    #
    #   @return [Hash<String, MessageAttributeValue>]
    #
    # @!attribute message_deduplication_id
    #   <p>This parameter applies only to FIFO (first-in-first-out) topics. The
    #                   <code>MessageDeduplicationId</code> can contain up to 128 alphanumeric characters
    #               <code>(a-z, A-Z, 0-9)</code> and punctuation
    #               <code>(!" $%&'()*+,-./:;<=>?@[\]^_`{|}~)</code>.</p>
    #           <p>Every message must have a unique <code>MessageDeduplicationId</code>, which is a token
    #               used for deduplication of sent messages. If a message with a particular
    #                   <code>MessageDeduplicationId</code> is sent successfully, any message sent with the
    #               same <code>MessageDeduplicationId</code> during the 5-minute deduplication interval is
    #               treated as a duplicate. </p>
    #           <p>If the topic has <code>ContentBasedDeduplication</code> set, the system generates a
    #                   <code>MessageDeduplicationId</code> based on the contents of the message. Your
    #                   <code>MessageDeduplicationId</code> overrides the generated one.</p>
    #
    #   @return [String]
    #
    # @!attribute message_group_id
    #   <p>This parameter applies only to FIFO (first-in-first-out) topics. The
    #               <code>MessageGroupId</code> can contain up to 128 alphanumeric characters
    #               <code>(a-z, A-Z, 0-9)</code> and punctuation
    #               <code>(!" $%&'()*+,-./:;<=>?@[\]^_`{|}~)</code>.</p>
    #           <p>The <code>MessageGroupId</code> is a tag that specifies that a message belongs to a
    #               specific message group. Messages that belong to the same message group are processed in
    #               a FIFO manner (however, messages in different message groups might be processed out of
    #               order). Every message must include a <code>MessageGroupId</code>.</p>
    #
    #   @return [String]
    #
    PublishInput = ::Struct.new(
      :topic_arn,
      :target_arn,
      :phone_number,
      :message,
      :subject,
      :message_structure,
      :message_attributes,
      :message_deduplication_id,
      :message_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Response for Publish action.</p>
    #
    # @!attribute message_id
    #   <p>Unique identifier assigned to the published message.</p>
    #           <p>Length Constraint: Maximum 100 characters</p>
    #
    #   @return [String]
    #
    # @!attribute sequence_number
    #   <p>This response element applies only to FIFO (first-in-first-out) topics. </p>
    #           <p>The sequence number is a large, non-consecutive number that Amazon SNS assigns to each
    #               message. The length of <code>SequenceNumber</code> is 128 bits.
    #                   <code>SequenceNumber</code> continues to increase for each
    #                   <code>MessageGroupId</code>.</p>
    #
    #   @return [String]
    #
    PublishOutput = ::Struct.new(
      :message_id,
      :sequence_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for RemovePermission action.</p>
    #
    # @!attribute topic_arn
    #   <p>The ARN of the topic whose access control policy you wish to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute label
    #   <p>The unique label of the statement you want to remove.</p>
    #
    #   @return [String]
    #
    RemovePermissionInput = ::Struct.new(
      :topic_arn,
      :label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemovePermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Can’t perform the action on the specified resource. Make sure that the resource
    #             exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RouteType
    #
    module RouteType
      # No documentation available.
      #
      Transactional = "Transactional"

      # No documentation available.
      #
      Promotional = "Promotional"

      # No documentation available.
      #
      Premium = "Premium"
    end

    # <p>A verified or pending destination phone number in the SMS sandbox.</p>
    #         <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send
    #                 SMS messages only to verified destination phone numbers. For more information, including how to
    #                 move out of the sandbox to send messages without restrictions,
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    #
    # @!attribute phone_number
    #   <p>The destination phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The destination phone number's verification status.</p>
    #
    #   Enum, one of: ["Pending", "Verified"]
    #
    #   @return [String]
    #
    SMSSandboxPhoneNumber = ::Struct.new(
      :phone_number,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SMSSandboxPhoneNumberVerificationStatus
    #
    module SMSSandboxPhoneNumberVerificationStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      Verified = "Verified"
    end

    # <p>Input for SetEndpointAttributes action.</p>
    #
    # @!attribute endpoint_arn
    #   <p>EndpointArn used for SetEndpointAttributes action.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A map of the endpoint attributes. Attributes in this map include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>CustomUserData</code> – arbitrary user data to associate with the
    #                       endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and
    #                       less than 2KB.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Enabled</code> – flag that enables/disables delivery to the
    #                       endpoint. Amazon SNS will set this to false when a notification service indicates to
    #                       Amazon SNS that the endpoint is invalid. Users can set it back to true, typically
    #                       after updating Token.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Token</code> – device token, also referred to as a registration id,
    #                       for an app and mobile device. This is returned from the notification service
    #                       when an app and mobile device are registered with the notification
    #                       service.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    SetEndpointAttributesInput = ::Struct.new(
      :endpoint_arn,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SetEndpointAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for SetPlatformApplicationAttributes action.</p>
    #
    # @!attribute platform_application_arn
    #   <p>PlatformApplicationArn for SetPlatformApplicationAttributes action.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A map of the platform application attributes. Attributes in this map include the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PlatformCredential</code> – The credential received from the notification service.</p>
    #                   <ul>
    #                     <li>
    #                        <p>For ADM, <code>PlatformCredential</code>is client secret.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using certificate credentials, <code>PlatformCredential</code> is private key.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using token credentials, <code>PlatformCredential</code> is signing key.</p>
    #                     </li>
    #                     <li>
    #                        <p>For GCM (Firebase Cloud Messaging), <code>PlatformCredential</code> is API key. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>PlatformPrincipal</code> – The principal received from the notification service.</p>
    #                  <ul>
    #                     <li>
    #                        <p>For ADM, <code>PlatformPrincipal</code>is client id.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using certificate credentials, <code>PlatformPrincipal</code> is SSL certificate.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using token credentials, <code>PlatformPrincipal</code> is signing key ID.</p>
    #                     </li>
    #                     <li>
    #                        <p>For GCM (Firebase Cloud Messaging), there is no <code>PlatformPrincipal</code>. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #           <ul>
    #               <li>
    #                      <p>
    #                       <code>EventEndpointCreated</code> – Topic ARN to which
    #                           <code>EndpointCreated</code> event notifications are sent.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EventEndpointDeleted</code> – Topic ARN to which
    #                           <code>EndpointDeleted</code> event notifications are sent.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EventEndpointUpdated</code> – Topic ARN to which
    #                           <code>EndpointUpdate</code> event notifications are sent.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>EventDeliveryFailure</code> – Topic ARN to which
    #                           <code>DeliveryFailure</code> event notifications are sent upon Direct
    #                       Publish delivery failure (permanent) to one of the application's
    #                       endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>SuccessFeedbackRoleArn</code> – IAM role ARN used to give Amazon SNS
    #                       write access to use CloudWatch Logs on your behalf.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>FailureFeedbackRoleArn</code> – IAM role ARN used to give Amazon SNS
    #                       write access to use CloudWatch Logs on your behalf.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>SuccessFeedbackSampleRate</code> – Sample rate percentage (0-100)
    #                       of successfully delivered messages.</p>
    #               </li>
    #            </ul>
    #           <p>The following attributes only apply to <code>APNs</code> token-based authentication:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>ApplePlatformTeamID</code> – The identifier that's assigned to your Apple developer account team.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ApplePlatformBundleID</code> – The bundle identifier that's assigned to your iOS app.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    SetPlatformApplicationAttributesInput = ::Struct.new(
      :platform_application_arn,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SetPlatformApplicationAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the SetSMSAttributes action.</p>
    #
    # @!attribute attributes
    #   <p>The default settings for sending SMS messages from your Amazon Web Services account. You can set values
    #               for the following attribute names:</p>
    #           <p>
    #               <code>MonthlySpendLimit</code> – The maximum amount in USD that you are willing to spend
    #               each month to send SMS messages. When Amazon SNS determines that sending an SMS message would
    #               incur a cost that exceeds this limit, it stops sending SMS messages within
    #               minutes.</p>
    #           <important>
    #               <p>Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During
    #                   that interval, if you continue to send SMS messages, you will incur costs that
    #                   exceed your limit.</p>
    #           </important>
    #           <p>By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to
    #               raise the limit, submit an <a href="https://console.aws.amazon.com/support/home /case/create?issueType=service-limit-increase&limitType=service-code-sns">SNS Limit Increase case</a>. For <b>New limit
    #                   value</b>, enter your desired monthly spend limit. In the <b>Use Case Description</b> field, explain that you are requesting
    #               an SMS monthly spend limit increase.</p>
    #           <p>
    #               <code>DeliveryStatusIAMRole</code> – The ARN of the IAM role that allows Amazon SNS to write
    #               logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS
    #               writes a log that includes the message price, the success or failure status, the reason
    #               for failure (if the message failed), the message dwell time, and other
    #               information.</p>
    #           <p>
    #               <code>DeliveryStatusSuccessSamplingRate</code> – The percentage of successful SMS
    #               deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an
    #               integer from 0 - 100. For example, to write logs only for failed deliveries, set this
    #               value to <code>0</code>. To write logs for 10% of your successful deliveries, set it to
    #                   <code>10</code>.</p>
    #           <p>
    #               <code>DefaultSenderID</code> – A string, such as your business brand, that is displayed
    #               as the sender on the receiving device. Support for sender IDs varies by country. The
    #               sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one
    #               letter.</p>
    #           <p>
    #               <code>DefaultSMSType</code> – The type of SMS message that you will send by default. You
    #               can assign the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Promotional</code> – (Default) Noncritical messages, such as marketing
    #                       messages. Amazon SNS optimizes the message delivery to incur the lowest cost.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Transactional</code> – Critical messages that support customer
    #                       transactions, such as one-time passcodes for multi-factor authentication. Amazon SNS optimizes the message delivery to achieve the highest reliability.</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <code>UsageReportS3Bucket</code> – The name of the Amazon S3 bucket to receive daily SMS
    #               usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to
    #               the bucket. The report includes the following information for each SMS message that was
    #               successfully delivered by your Amazon Web Services account:</p>
    #           <ul>
    #               <li>
    #                   <p>Time that the message was published (in UTC)</p>
    #               </li>
    #               <li>
    #                   <p>Message ID</p>
    #               </li>
    #               <li>
    #                   <p>Destination phone number</p>
    #               </li>
    #               <li>
    #                   <p>Message type</p>
    #               </li>
    #               <li>
    #                   <p>Delivery status</p>
    #               </li>
    #               <li>
    #                   <p>Message price (in USD)</p>
    #               </li>
    #               <li>
    #                   <p>Part number (a message is split into multiple parts if it is too long for a
    #                       single message)</p>
    #               </li>
    #               <li>
    #                   <p>Total number of parts</p>
    #               </li>
    #            </ul>
    #           <p>To receive the report, the bucket must have a policy that allows the Amazon SNS service
    #               principal to perform the <code>s3:PutObject</code> and <code>s3:GetBucketLocation</code>
    #               actions.</p>
    #           <p>For an example bucket policy and usage report, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sms_stats.html">Monitoring SMS Activity</a> in the
    #                   <i>Amazon SNS Developer Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    SetSMSAttributesInput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response for the SetSMSAttributes action.</p>
    #
    SetSMSAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for SetSubscriptionAttributes action.</p>
    #
    # @!attribute subscription_arn
    #   <p>The ARN of the subscription to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>A map of attributes with their corresponding values.</p>
    #           <p>The following lists the names, descriptions, and values of the special request
    #               parameters that this action uses:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FilterPolicy</code> – The simple JSON object that lets your
    #                       subscriber receive only a subset of messages, rather than receiving every
    #                       message published to the topic.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RawMessageDelivery</code> – When set to <code>true</code>,
    #                       enables raw message delivery to Amazon SQS or HTTP/S endpoints. This eliminates the
    #                       need for the endpoints to process JSON formatting, which is otherwise created
    #                       for Amazon SNS metadata.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue.
    #       Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    #       or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held
    #       in the dead-letter queue for further analysis or reprocessing.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
    #                   <ul>
    #                     <li>
    #                           <p>Permission to write to the Kinesis Data Firehose delivery stream</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon SNS listed as a trusted entity</p>
    #                       </li>
    #                  </ul>
    #                   <p>Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions.
    #                   For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html">Fanout
    #                       to Kinesis Data Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
    #                       </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute attribute_value
    #   <p>The new value for the attribute in JSON format.</p>
    #
    #   @return [String]
    #
    SetSubscriptionAttributesInput = ::Struct.new(
      :subscription_arn,
      :attribute_name,
      :attribute_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SetSubscriptionAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for SetTopicAttributes action.</p>
    #
    # @!attribute topic_arn
    #   <p>The ARN of the topic to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>A map of attributes with their corresponding values.</p>
    #           <p>The following lists the names, descriptions, and values of the special request
    #               parameters that the <code>SetTopicAttributes</code> action uses:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DisplayName</code> – The display name to use for a topic with SMS
    #                       subscriptions.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Policy</code> – The policy that defines who can access your
    #                       topic. By default, only the topic owner can publish or subscribe to the
    #                       topic.</p>
    #               </li>
    #            </ul>
    #
    #           <p>The following attribute applies only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html">server-side-encryption</a>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>KmsMasterKeyId</code> – The ID of an Amazon Web Services managed customer master
    #                       key (CMK) for Amazon SNS or a custom CMK. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html sse-key-terms">Key
    #                           Terms</a>. For more examples, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html API_DescribeKey_RequestParameters">KeyId</a> in the <i>Key Management Service API
    #                           Reference</i>. </p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>The following attribute applies only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html">FIFO topics</a>:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                       <code>ContentBasedDeduplication</code> – Enables content-based deduplication for
    #                       FIFO topics.</p>
    #
    #                   <ul>
    #                     <li>
    #                           <p>By default, <code>ContentBasedDeduplication</code> is set to <code>false</code>.
    #                               If you create a FIFO topic and this attribute is <code>false</code>, you must
    #                               specify a value for the <code>MessageDeduplicationId</code> parameter for the
    #                               <a href="https://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a> action. </p>
    #                       </li>
    #                     <li>
    #                           <p>When you set <code>ContentBasedDeduplication</code> to <code>true</code>,
    #                               Amazon SNS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using
    #                               the body of the message (but not the attributes of the message).</p>
    #                           <p>(Optional) To override the generated value, you can specify a value
    #                               for the <code>MessageDeduplicationId</code> parameter for the <code>Publish</code>
    #                               action.</p>
    #                        </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute attribute_value
    #   <p>The new value for the attribute.</p>
    #
    #   @return [String]
    #
    SetTopicAttributesInput = ::Struct.new(
      :topic_arn,
      :attribute_name,
      :attribute_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SetTopicAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag has been added to a resource with the same ARN as a deleted resource. Wait a
    #             short while and then retry the operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StaleTagException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for Subscribe action.</p>
    #
    # @!attribute topic_arn
    #   <p>The ARN of the topic you want to subscribe to.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol that you want to use. Supported protocols include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>http</code> – delivery of JSON-encoded message via HTTP
    #                       POST</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>https</code> – delivery of JSON-encoded message via HTTPS
    #                       POST</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>email</code> – delivery of message via SMTP</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>email-json</code> – delivery of JSON-encoded message via
    #                       SMTP</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sms</code> – delivery of message via SMS</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqs</code> – delivery of JSON-encoded message to an Amazon SQS
    #                       queue</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>application</code> – delivery of JSON-encoded message to an
    #                       EndpointArn for a mobile app and device</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>lambda</code> – delivery of JSON-encoded message to an Lambda
    #                       function</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>firehose</code> – delivery of JSON-encoded message to an Amazon
    #                       Kinesis Data Firehose delivery stream.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The endpoint that you want to receive notifications. Endpoints vary by
    #               protocol:</p>
    #           <ul>
    #               <li>
    #                   <p>For the <code>http</code> protocol, the (public) endpoint is a URL beginning
    #                       with <code>http://</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>https</code> protocol, the (public) endpoint is a URL beginning
    #                       with <code>https://</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>email</code> protocol, the endpoint is an email address.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>email-json</code> protocol, the endpoint is an email
    #                       address.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>sms</code> protocol, the endpoint is a phone number of an
    #                       SMS-enabled device.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>sqs</code> protocol, the endpoint is the ARN of an Amazon SQS
    #                       queue.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>application</code> protocol, the endpoint is the EndpointArn of
    #                       a mobile app and device.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>lambda</code> protocol, the endpoint is the ARN of an Lambda
    #                       function.</p>
    #               </li>
    #               <li>
    #                   <p>For the <code>firehose</code> protocol, the endpoint is the ARN of an Amazon
    #                       Kinesis Data Firehose delivery stream.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A map of attributes with their corresponding values.</p>
    #           <p>The following lists the names, descriptions, and values of the special request
    #               parameters that the <code>Subscribe</code> action uses:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FilterPolicy</code> – The simple JSON object that lets your
    #                       subscriber receive only a subset of messages, rather than receiving every
    #                       message published to the topic.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RawMessageDelivery</code> – When set to <code>true</code>,
    #                       enables raw message delivery to Amazon SQS or HTTP/S endpoints. This eliminates the
    #                       need for the endpoints to process JSON formatting, which is otherwise created
    #                       for Amazon SNS metadata.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue.
    #       Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    #       or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held
    #       in the dead-letter queue for further analysis or reprocessing.</p>
    #               </li>
    #            </ul>
    #
    #
    #           <p>The following attribute applies only to Amazon Kinesis Data Firehose delivery stream subscriptions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
    #                   <ul>
    #                     <li>
    #                           <p>Permission to write to the Kinesis Data Firehose delivery stream</p>
    #                       </li>
    #                     <li>
    #                           <p>Amazon SNS listed as a trusted entity</p>
    #                       </li>
    #                  </ul>
    #                   <p>Specifying a valid ARN for this attribute is required for Kinesis Data Firehose delivery stream subscriptions.
    #                   For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html">Fanout
    #                       to Kinesis Data Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
    #                       </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute return_subscription_arn
    #   <p>Sets whether the response from the <code>Subscribe</code> request includes the
    #               subscription ARN, even if the subscription is not yet confirmed.</p>
    #           <p>If you set this parameter to <code>true</code>, the response includes the ARN in all
    #               cases, even if the subscription is not yet confirmed. In addition to the ARN for
    #               confirmed subscriptions, the response also includes the <code>pending
    #                   subscription</code> ARN value for subscriptions that aren't yet confirmed. A
    #               subscription becomes confirmed when the subscriber calls the
    #                   <code>ConfirmSubscription</code> action with a confirmation token.</p>
    #           <p></p>
    #           <p>The default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    SubscribeInput = ::Struct.new(
      :topic_arn,
      :protocol,
      :endpoint,
      :attributes,
      :return_subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.return_subscription_arn ||= false
      end

    end

    # <p>Response for Subscribe action.</p>
    #
    # @!attribute subscription_arn
    #   <p>The ARN of the subscription if it is confirmed, or the string "pending confirmation"
    #               if the subscription requires confirmation. However, if the API request parameter
    #                   <code>ReturnSubscriptionArn</code> is true, then the value is always the
    #               subscription ARN, even if the subscription requires confirmation.</p>
    #
    #   @return [String]
    #
    SubscribeOutput = ::Struct.new(
      :subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A wrapper type for the attributes of an Amazon SNS subscription.</p>
    #
    # @!attribute subscription_arn
    #   <p>The subscription's ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The subscription's owner.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The subscription's protocol.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The subscription's endpoint (format depends on the protocol).</p>
    #
    #   @return [String]
    #
    # @!attribute topic_arn
    #   <p>The ARN of the subscription's topic.</p>
    #
    #   @return [String]
    #
    Subscription = ::Struct.new(
      :subscription_arn,
      :owner,
      :protocol,
      :endpoint,
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the customer already owns the maximum allowed number of
    #             subscriptions.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubscriptionLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The list of tags to be added to the specified topic.</p>
    #
    # @!attribute key
    #   <p>The required key portion of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The optional value portion of the tag.</p>
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

    # <p>Can't add more than 50 tags to a topic.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request doesn't comply with the IAM tag policy. Correct your request and then
    #             retry it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the topic to which to add tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to the specified topic. A tag consists of a required key and an
    #               optional value.</p>
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

    # <p>Indicates that the rate at which requests have been submitted for this action exceeds the limit for your Amazon Web Services account.</p>
    #
    # @!attribute message
    #   <p>Throttled request.</p>
    #
    #   @return [String]
    #
    ThrottledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The batch request contains more entries than permissible.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyEntriesInBatchRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A wrapper type for the topic's Amazon Resource Name (ARN). To retrieve a topic's
    #             attributes, use <code>GetTopicAttributes</code>.</p>
    #
    # @!attribute topic_arn
    #   <p>The topic's ARN.</p>
    #
    #   @return [String]
    #
    Topic = ::Struct.new(
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the customer already owns the maximum allowed number of topics.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TopicLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for Unsubscribe action.</p>
    #
    # @!attribute subscription_arn
    #   <p>The ARN of the subscription to be deleted.</p>
    #
    #   @return [String]
    #
    UnsubscribeInput = ::Struct.new(
      :subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UnsubscribeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the topic from which to remove tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the specified topic.</p>
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

    # <p>Indicates that a request parameter does not comply with the associated
    #             constraints.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UserErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that a parameter in the request is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the one-time password (OTP) used for verification is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the verification error.</p>
    #
    #   @return [String]
    #
    VerificationException = ::Struct.new(
      :message,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number
    #   <p>The destination phone number to verify.</p>
    #
    #   @return [String]
    #
    # @!attribute one_time_password
    #   <p>The OTP sent to the destination number from the
    #                   <code>CreateSMSSandBoxPhoneNumber</code> call.</p>
    #
    #   @return [String]
    #
    VerifySMSSandboxPhoneNumberInput = ::Struct.new(
      :phone_number,
      :one_time_password,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The destination phone number's verification status.</p>
    #
    VerifySMSSandboxPhoneNumberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
