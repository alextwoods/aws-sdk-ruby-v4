# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Connect
  module Types

    # <p>You do not have sufficient permissions to perform this action.</p>
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

    # <p>Information about the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Contact.html">contact</a> associated to the
    #    user.</p>
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #
    #   @return [String]
    #
    # @!attribute channel
    #   <p>The channel of the contact.</p>
    #
    #   Enum, one of: ["VOICE", "CHAT", "TASK"]
    #
    #   @return [String]
    #
    # @!attribute initiation_method
    #   <p>How the contact was initiated.</p>
    #
    #   Enum, one of: ["INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API"]
    #
    #   @return [String]
    #
    # @!attribute agent_contact_state
    #   <p>The <a href="https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html">state of the contact</a>.</p>
    #
    #   Enum, one of: ["INCOMING", "PENDING", "CONNECTING", "CONNECTED", "CONNECTED_ONHOLD", "MISSED", "ERROR", "ENDED", "REJECTED"]
    #
    #   @return [String]
    #
    # @!attribute state_start_timestamp
    #   <p>The epoch timestamp when the contact state started.</p>
    #
    #   @return [Time]
    #
    # @!attribute connected_to_agent_timestamp
    #   <p>The time at which the contact was connected to an agent.</p>
    #
    #   @return [Time]
    #
    # @!attribute queue
    #   <p>Contains information about a queue resource for which metrics are returned.</p>
    #
    #   @return [QueueReference]
    #
    AgentContactReference = ::Struct.new(
      :contact_id,
      :channel,
      :initiation_method,
      :agent_contact_state,
      :state_start_timestamp,
      :connected_to_agent_timestamp,
      :queue,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the agent who accepted the contact.</p>
    #
    # @!attribute id
    #   <p>The identifier of the agent who accepted the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute connected_to_agent_timestamp
    #   <p>The timestamp when the contact was connected to the agent.</p>
    #
    #   @return [Time]
    #
    AgentInfo = ::Struct.new(
      :id,
      :connected_to_agent_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an agent status.</p>
    #
    # @!attribute agent_status_arn
    #   <p>The Amazon Resource Name (ARN) of the agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_status_id
    #   <p>The identifier of the agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of agent status.</p>
    #
    #   Enum, one of: ["ROUTABLE", "CUSTOM", "OFFLINE"]
    #
    #   @return [String]
    #
    # @!attribute display_order
    #   <p>The display order of the agent status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the agent status.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    AgentStatus = ::Struct.new(
      :agent_status_arn,
      :agent_status_id,
      :name,
      :description,
      :type,
      :display_order,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the agent's status.</p>
    #
    # @!attribute status_start_timestamp
    #   <p>The start timestamp of the agent's status.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_arn
    #   <p>The Amazon Resource Name (ARN) of the agent's status.</p>
    #
    #   @return [String]
    #
    AgentStatusReference = ::Struct.new(
      :status_start_timestamp,
      :status_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AgentStatusState
    #
    module AgentStatusState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Summary information for an agent status.</p>
    #
    # @!attribute id
    #   <p>The identifier for an agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the agent status.</p>
    #
    #   Enum, one of: ["ROUTABLE", "CUSTOM", "OFFLINE"]
    #
    #   @return [String]
    #
    AgentStatusSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AgentStatusType
    #
    module AgentStatusType
      # No documentation available.
      #
      ROUTABLE = "ROUTABLE"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"

      # No documentation available.
      #
      OFFLINE = "OFFLINE"
    end

    # <p>Configuration of the answering machine detection.</p>
    #
    # @!attribute enable_answer_machine_detection
    #   <p>The flag to indicate if answer machine detection analysis needs to be performed for a voice
    #      call. If set to <code>true</code>, <code>TrafficType</code> must be set as <code>CAMPAIGN</code>.
    #     </p>
    #
    #   @return [Boolean]
    #
    # @!attribute await_answer_machine_prompt
    #   <p>Wait for the answering machine prompt.</p>
    #
    #   @return [Boolean]
    #
    AnswerMachineDetectionConfig = ::Struct.new(
      :enable_answer_machine_detection,
      :await_answer_machine_prompt,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable_answer_machine_detection ||= false
        self.await_answer_machine_prompt ||= false
      end
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute origin
    #   <p>The domain to add to your allow list.</p>
    #
    #   @return [String]
    #
    AssociateApprovedOriginInput = ::Struct.new(
      :instance_id,
      :origin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateApprovedOriginOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute lex_bot
    #   <p>Configuration information of an Amazon Lex bot.</p>
    #
    #   @return [LexBot]
    #
    # @!attribute lex_v2_bot
    #   <p>The Amazon Lex V2 bot to associate with the instance.</p>
    #
    #   @return [LexV2Bot]
    #
    AssociateBotInput = ::Struct.new(
      :instance_id,
      :lex_bot,
      :lex_v2_bot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateBotOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    #   Enum, one of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary. If this is empty, the default is set to none.</p>
    #
    #   @return [String]
    #
    AssociateDefaultVocabularyInput = ::Struct.new(
      :instance_id,
      :language_code,
      :vocabulary_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateDefaultVocabularyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #
    #   Enum, one of: ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"]
    #
    #   @return [String]
    #
    # @!attribute storage_config
    #   <p>A valid storage type.</p>
    #
    #   @return [InstanceStorageConfig]
    #
    AssociateInstanceStorageConfigInput = ::Struct.new(
      :instance_id,
      :resource_type,
      :storage_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    #   @return [String]
    #
    AssociateInstanceStorageConfigOutput = ::Struct.new(
      :association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) for the Lambda function being associated. Maximum number of characters allowed is
    #      140.</p>
    #
    #   @return [String]
    #
    AssociateLambdaFunctionInput = ::Struct.new(
      :instance_id,
      :function_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateLambdaFunctionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute lex_bot
    #   <p>The Amazon Lex bot to associate with the instance.</p>
    #
    #   @return [LexBot]
    #
    AssociateLexBotInput = ::Struct.new(
      :instance_id,
      :lex_bot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateLexBotOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    AssociatePhoneNumberContactFlowInput = ::Struct.new(
      :phone_number_id,
      :instance_id,
      :contact_flow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociatePhoneNumberContactFlowOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_ids
    #   <p>The quick connects to associate with this queue.</p>
    #
    #   @return [Array<String>]
    #
    AssociateQueueQuickConnectsInput = ::Struct.new(
      :instance_id,
      :queue_id,
      :quick_connect_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateQueueQuickConnectsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_configs
    #   <p>The queues to associate with this routing profile.</p>
    #
    #   @return [Array<RoutingProfileQueueConfig>]
    #
    AssociateRoutingProfileQueuesInput = ::Struct.new(
      :instance_id,
      :routing_profile_id,
      :queue_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateRoutingProfileQueuesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>A valid security key in PEM format.</p>
    #
    #   @return [String]
    #
    AssociateSecurityKeyInput = ::Struct.new(
      :instance_id,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    #   @return [String]
    #
    AssociateSecurityKeyOutput = ::Struct.new(
      :association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a reference when the <code>referenceType</code> is
    #    <code>ATTACHMENT</code>. Otherwise, null.</p>
    #
    # @!attribute name
    #   <p>Identifier of the attachment reference.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The location path of the attachment reference.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of the attachment reference type.</p>
    #
    #   Enum, one of: ["APPROVED", "REJECTED"]
    #
    #   @return [String]
    #
    AttachmentReference = ::Struct.new(
      :name,
      :value,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A toggle for an individual feature at the instance level.</p>
    #
    # @!attribute attribute_type
    #   <p>The type of attribute.</p>
    #
    #   Enum, one of: ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #
    #   @return [String]
    #
    Attribute = ::Struct.new(
      :attribute_type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about available phone numbers.</p>
    #
    # @!attribute phone_number
    #   <p>The phone number. Phone numbers are formatted <code>[+] [country code] [subscriber number including area code]</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_country_code
    #   <p>The ISO country code.</p>
    #
    #   Enum, one of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #
    #   @return [String]
    #
    # @!attribute phone_number_type
    #   <p>The type of phone number.</p>
    #
    #   Enum, one of: ["TOLL_FREE", "DID"]
    #
    #   @return [String]
    #
    AvailableNumberSummary = ::Struct.new(
      :phone_number,
      :phone_number_country_code,
      :phone_number_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Channel
    #
    module Channel
      # No documentation available.
      #
      VOICE = "VOICE"

      # No documentation available.
      #
      CHAT = "CHAT"

      # No documentation available.
      #
      TASK = "TASK"
    end

    # <p>A chat message.</p>
    #
    # @!attribute content_type
    #   <p>The type of the content. Supported types are <code>text/plain</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the chat message.</p>
    #
    #   @return [String]
    #
    ChatMessage = ::Struct.new(
      :content_type,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The streaming configuration, such as the Amazon SNS streaming endpoint.</p>
    #
    # @!attribute streaming_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the standard Amazon SNS topic. The Amazon Resource Name (ARN) of the streaming endpoint that is used
    #      to publish real-time message streaming for chat conversations.</p>
    #
    #   @return [String]
    #
    ChatStreamingConfiguration = ::Struct.new(
      :streaming_endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number you want to claim. Phone numbers are formatted <code>[+] [country code]
    #       [subscriber number including area code]</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_description
    #   <p>The description of the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    ClaimPhoneNumberInput = ::Struct.new(
      :target_arn,
      :phone_number,
      :phone_number_description,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #
    #   @return [String]
    #
    ClaimPhoneNumberOutput = ::Struct.new(
      :phone_number_id,
      :phone_number_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a phone number that has been claimed to your Amazon Connect instance.</p>
    #
    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number. Phone numbers are formatted <code>[+] [country code] [subscriber number including area code]</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_country_code
    #   <p>The ISO country code.</p>
    #
    #   Enum, one of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #
    #   @return [String]
    #
    # @!attribute phone_number_type
    #   <p>The type of phone number.</p>
    #
    #   Enum, one of: ["TOLL_FREE", "DID"]
    #
    #   @return [String]
    #
    # @!attribute phone_number_description
    #   <p>The description of the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute phone_number_status
    #   <p>The status of the phone number.</p>
    #
    #   @return [PhoneNumberStatus]
    #
    ClaimedPhoneNumberSummary = ::Struct.new(
      :phone_number_id,
      :phone_number_arn,
      :phone_number,
      :phone_number_country_code,
      :phone_number_type,
      :phone_number_description,
      :target_arn,
      :tags,
      :phone_number_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Comparison
    #
    module Comparison
      # No documentation available.
      #
      LT = "LT"
    end

    # <p>Contains information about a contact.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier for the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_contact_id
    #   <p>If this contact is related to other contacts, this is the ID of the initial contact.</p>
    #
    #   @return [String]
    #
    # @!attribute previous_contact_id
    #   <p>If this contact is not the first contact, this is the ID of the previous contact.</p>
    #
    #   @return [String]
    #
    # @!attribute initiation_method
    #   <p>Indicates how the contact was initiated.</p>
    #
    #   Enum, one of: ["INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute channel
    #   <p>How the contact reached your contact center.</p>
    #
    #   Enum, one of: ["VOICE", "CHAT", "TASK"]
    #
    #   @return [String]
    #
    # @!attribute queue_info
    #   <p>If this contact was queued, this contains information about the queue. </p>
    #
    #   @return [QueueInfo]
    #
    # @!attribute agent_info
    #   <p>Information about the agent who accepted the contact.</p>
    #
    #   @return [AgentInfo]
    #
    # @!attribute initiation_timestamp
    #   <p>The date and time this contact was initiated, in UTC time. For <code>INBOUND</code>, this is
    #      when the contact arrived. For <code>OUTBOUND</code>, this is when the agent began dialing. For
    #       <code>CALLBACK</code>, this is when the callback contact was created. For <code>TRANSFER</code>
    #      and <code>QUEUE_TRANSFER</code>, this is when the transfer was initiated. For <code>API</code>,
    #      this is when the request arrived.</p>
    #
    #   @return [Time]
    #
    # @!attribute disconnect_timestamp
    #   <p>The timestamp when the customer endpoint disconnected from Amazon Connect.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_timestamp
    #   <p>The timestamp when contact was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute scheduled_timestamp
    #   <p>The timestamp, in Unix epoch time format, at which to start running the inbound flow.
    #     </p>
    #
    #   @return [Time]
    #
    Contact = ::Struct.new(
      :arn,
      :id,
      :initial_contact_id,
      :previous_contact_id,
      :initiation_method,
      :name,
      :description,
      :channel,
      :queue_info,
      :agent_info,
      :initiation_timestamp,
      :disconnect_timestamp,
      :last_update_timestamp,
      :scheduled_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters user data based on the contact information that is associated to
    #    the users. It contains a list of <a href="https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html">contact states</a>.</p>
    #
    # @!attribute contact_states
    #   <p>A list of up to 9 <a href="https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html">contact states</a>.</p>
    #
    #   @return [Array<String>]
    #
    ContactFilter = ::Struct.new(
      :contact_states,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a contact flow.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the contact flow. For descriptions of the available types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html contact-flow-types">Choose a Contact Flow Type</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #
    #   Enum, one of: ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The type of contact flow.</p>
    #
    #   Enum, one of: ["ACTIVE", "ARCHIVED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ContactFlow = ::Struct.new(
      :arn,
      :id,
      :name,
      :type,
      :state,
      :description,
      :content,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a contact flow module.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The type of contact flow module.</p>
    #
    #   Enum, one of: ["ACTIVE", "ARCHIVED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the contact flow module.</p>
    #
    #   Enum, one of: ["PUBLISHED", "SAVED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ContactFlowModule = ::Struct.new(
      :arn,
      :id,
      :name,
      :content,
      :description,
      :state,
      :status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContactFlowModuleState
    #
    module ContactFlowModuleState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      ARCHIVED = "ARCHIVED"
    end

    # Includes enum constants for ContactFlowModuleStatus
    #
    module ContactFlowModuleStatus
      # No documentation available.
      #
      PUBLISHED = "PUBLISHED"

      # No documentation available.
      #
      SAVED = "SAVED"
    end

    # <p>Contains summary information about a contact flow.</p>
    #
    # @!attribute id
    #   <p>The identifier of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The type of contact flow module.</p>
    #
    #   Enum, one of: ["ACTIVE", "ARCHIVED"]
    #
    #   @return [String]
    #
    ContactFlowModuleSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The contact flow has not been published.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ContactFlowNotPublishedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContactFlowState
    #
    module ContactFlowState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      ARCHIVED = "ARCHIVED"
    end

    # <p>Contains summary information about a contact flow.</p>
    #          <p>You can also create and update contact flows using the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    #
    # @!attribute id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_type
    #   <p>The type of contact flow.</p>
    #
    #   Enum, one of: ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"]
    #
    #   @return [String]
    #
    # @!attribute contact_flow_state
    #   <p>The type of contact flow.</p>
    #
    #   Enum, one of: ["ACTIVE", "ARCHIVED"]
    #
    #   @return [String]
    #
    ContactFlowSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :contact_flow_type,
      :contact_flow_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContactFlowType
    #
    module ContactFlowType
      # No documentation available.
      #
      CONTACT_FLOW = "CONTACT_FLOW"

      # No documentation available.
      #
      CUSTOMER_QUEUE = "CUSTOMER_QUEUE"

      # No documentation available.
      #
      CUSTOMER_HOLD = "CUSTOMER_HOLD"

      # No documentation available.
      #
      CUSTOMER_WHISPER = "CUSTOMER_WHISPER"

      # No documentation available.
      #
      AGENT_HOLD = "AGENT_HOLD"

      # No documentation available.
      #
      AGENT_WHISPER = "AGENT_WHISPER"

      # No documentation available.
      #
      OUTBOUND_WHISPER = "OUTBOUND_WHISPER"

      # No documentation available.
      #
      AGENT_TRANSFER = "AGENT_TRANSFER"

      # No documentation available.
      #
      QUEUE_TRANSFER = "QUEUE_TRANSFER"
    end

    # Includes enum constants for ContactInitiationMethod
    #
    module ContactInitiationMethod
      # No documentation available.
      #
      INBOUND = "INBOUND"

      # No documentation available.
      #
      OUTBOUND = "OUTBOUND"

      # No documentation available.
      #
      TRANSFER = "TRANSFER"

      # No documentation available.
      #
      QUEUE_TRANSFER = "QUEUE_TRANSFER"

      # No documentation available.
      #
      CALLBACK = "CALLBACK"

      # No documentation available.
      #
      API = "API"
    end

    # <p>The contact with the specified ID is not active or does not exist.</p>
    #
    # @!attribute message
    #   <p>The message.</p>
    #
    #   @return [String]
    #
    ContactNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContactState
    #
    module ContactState
      # No documentation available.
      #
      INCOMING = "INCOMING"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      CONNECTING = "CONNECTING"

      # No documentation available.
      #
      CONNECTED = "CONNECTED"

      # No documentation available.
      #
      CONNECTED_ONHOLD = "CONNECTED_ONHOLD"

      # No documentation available.
      #
      MISSED = "MISSED"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      ENDED = "ENDED"

      # No documentation available.
      #
      REJECTED = "REJECTED"
    end

    # <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #    This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #          <ul>
    #             <li>
    #                <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #      operator</p>
    #             </li>
    #             <li>
    #                <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #      operator.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code> condition.
    #     </p>
    #
    #   @return [Array<Array<TagCondition>>]
    #
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an <code>AND</code>
    #      condition.</p>
    #
    #   @return [Array<TagCondition>]
    #
    # @!attribute tag_condition
    #   <p>A leaf node condition which can be used to specify a tag condition. </p>
    #
    #   @return [TagCondition]
    #
    ControlPlaneTagFilter = ::Struct.new(
      :or_conditions,
      :and_conditions,
      :tag_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the status.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the status.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the status.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute display_order
    #   <p>The display order of the status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateAgentStatusInput = ::Struct.new(
      :instance_id,
      :name,
      :description,
      :state,
      :display_order,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute agent_status_arn
    #   <p>The Amazon Resource Name (ARN) of the agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_status_id
    #   <p>The identifier of the agent status.</p>
    #
    #   @return [String]
    #
    CreateAgentStatusOutput = ::Struct.new(
      :agent_status_arn,
      :agent_status_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the contact flow. For descriptions of the available types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html contact-flow-types">Choose a Contact Flow Type</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #
    #   Enum, one of: ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the contact flow. </p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the contact flow. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateContactFlowInput = ::Struct.new(
      :instance_id,
      :name,
      :type,
      :description,
      :content,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the contact flow module. </p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    CreateContactFlowModuleInput = ::Struct.new(
      :instance_id,
      :name,
      :description,
      :content,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the contact flow module.</p>
    #
    #   @return [String]
    #
    CreateContactFlowModuleOutput = ::Struct.new(
      :id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_arn
    #   <p>The Amazon Resource Name (ARN) of the contact flow.</p>
    #
    #   @return [String]
    #
    CreateContactFlowOutput = ::Struct.new(
      :contact_flow_id,
      :contact_flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute time_zone
    #   <p>The time zone of the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute config
    #   <p>Configuration information for the hours of operation: day, start time, and end time.</p>
    #
    #   @return [Array<HoursOfOperationConfig>]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateHoursOfOperationInput = ::Struct.new(
      :instance_id,
      :name,
      :description,
      :time_zone,
      :config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute hours_of_operation_arn
    #   <p>The Amazon Resource Name (ARN) for the hours of operation.</p>
    #
    #   @return [String]
    #
    CreateHoursOfOperationOutput = ::Struct.new(
      :hours_of_operation_id,
      :hours_of_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>The idempotency token.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_management_type
    #   <p>The type of identity management for your Amazon Connect users.</p>
    #
    #   Enum, one of: ["SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"]
    #
    #   @return [String]
    #
    # @!attribute instance_alias
    #   <p>The name for your instance.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_id
    #   <p>The identifier for the directory.</p>
    #
    #   @return [String]
    #
    # @!attribute inbound_calls_enabled
    #   <p>Your contact center handles incoming contacts.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute outbound_calls_enabled
    #   <p>Your contact center allows outbound calls.</p>
    #
    #   @return [Boolean]
    #
    CreateInstanceInput = ::Struct.new(
      :client_token,
      :identity_management_type,
      :instance_alias,
      :directory_id,
      :inbound_calls_enabled,
      :outbound_calls_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Connect::Types::CreateInstanceInput "\
          "client_token=#{client_token || 'nil'}, "\
          "identity_management_type=#{identity_management_type || 'nil'}, "\
          "instance_alias=\"[SENSITIVE]\", "\
          "directory_id=#{directory_id || 'nil'}, "\
          "inbound_calls_enabled=#{inbound_calls_enabled || 'nil'}, "\
          "outbound_calls_enabled=#{outbound_calls_enabled || 'nil'}>"
      end
    end

    # @!attribute id
    #   <p>The identifier for the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the instance.</p>
    #
    #   @return [String]
    #
    CreateInstanceOutput = ::Struct.new(
      :id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute integration_type
    #   <p>The type of information to be ingested.</p>
    #
    #   Enum, one of: ["EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE"]
    #
    #   @return [String]
    #
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integration.</p>
    #
    #   @return [String]
    #
    # @!attribute source_application_url
    #   <p>The URL for the external application. This field is only required for the EVENT integration type.</p>
    #
    #   @return [String]
    #
    # @!attribute source_application_name
    #   <p>The name of the external application. This field is only required for the EVENT integration type.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The type of the data source. This field is only required for the EVENT integration type.</p>
    #
    #   Enum, one of: ["SALESFORCE", "ZENDESK"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateIntegrationAssociationInput = ::Struct.new(
      :instance_id,
      :integration_type,
      :integration_arn,
      :source_application_url,
      :source_application_name,
      :source_type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #
    #   @return [String]
    #
    # @!attribute integration_association_arn
    #   <p>The Amazon Resource Name (ARN) for the association.</p>
    #
    #   @return [String]
    #
    CreateIntegrationAssociationOutput = ::Struct.new(
      :integration_association_id,
      :integration_association_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute outbound_caller_config
    #   <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    #
    #   @return [OutboundCallerConfig]
    #
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_contacts
    #   <p>The maximum number of contacts that can be in the queue before it is considered full.</p>
    #
    #   @return [Integer]
    #
    # @!attribute quick_connect_ids
    #   <p>The quick connects available to agents who are working the queue.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateQueueInput = ::Struct.new(
      :instance_id,
      :name,
      :description,
      :outbound_caller_config,
      :hours_of_operation_id,
      :max_contacts,
      :quick_connect_ids,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute queue_arn
    #   <p>The Amazon Resource Name (ARN) of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    CreateQueueOutput = ::Struct.new(
      :queue_arn,
      :queue_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_config
    #   <p>Configuration settings for the quick connect.</p>
    #
    #   @return [QuickConnectConfig]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateQuickConnectInput = ::Struct.new(
      :instance_id,
      :name,
      :description,
      :quick_connect_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quick_connect_arn
    #   <p>The Amazon Resource Name (ARN) for the quick connect. </p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect. </p>
    #
    #   @return [String]
    #
    CreateQuickConnectOutput = ::Struct.new(
      :quick_connect_arn,
      :quick_connect_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the routing profile. Must not be more than 127 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the routing profile. Must not be more than 250 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute default_outbound_queue_id
    #   <p>The default outbound queue for the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_configs
    #   <p>The inbound queues associated with the routing profile. If no queue is added, the agent can
    #      make only outbound calls.</p>
    #
    #   @return [Array<RoutingProfileQueueConfig>]
    #
    # @!attribute media_concurrencies
    #   <p>The channels that agents can handle in the Contact Control Panel (CCP) for this routing
    #      profile.</p>
    #
    #   @return [Array<MediaConcurrency>]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRoutingProfileInput = ::Struct.new(
      :instance_id,
      :name,
      :description,
      :default_outbound_queue_id,
      :queue_configs,
      :media_concurrencies,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute routing_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    CreateRoutingProfileOutput = ::Struct.new(
      :routing_profile_arn,
      :routing_profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_profile_name
    #   <p>The name of the security profile.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the security profile.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>Permissions assigned to the security profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateSecurityProfileInput = ::Struct.new(
      :security_profile_name,
      :description,
      :permissions,
      :instance_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #
    #   @return [String]
    #
    # @!attribute security_profile_arn
    #   <p>The Amazon Resource Name (ARN) for the security profile.</p>
    #
    #   @return [String]
    #
    CreateSecurityProfileOutput = ::Struct.new(
      :security_profile_id,
      :security_profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    #
    #   @return [String]
    #
    # @!attribute constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    #
    #   @return [TaskTemplateConstraints]
    #
    # @!attribute defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    #
    #   @return [TaskTemplateDefaults]
    #
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it.
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created. </p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>Fields that are part of the template.</p>
    #
    #   @return [Array<TaskTemplateField>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    CreateTaskTemplateInput = ::Struct.new(
      :instance_id,
      :name,
      :description,
      :contact_flow_id,
      :constraints,
      :defaults,
      :status,
      :fields,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the task template resource.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the task template resource.</p>
    #
    #   @return [String]
    #
    CreateTaskTemplateOutput = ::Struct.new(
      :id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #
    #   @return [String]
    #
    # @!attribute use_case_type
    #   <p>The type of use case to associate to the integration association. Each integration
    #      association can have only one of each use case type.</p>
    #
    #   Enum, one of: ["RULES_EVALUATION", "CONNECT_CAMPAIGNS"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateUseCaseInput = ::Struct.new(
      :instance_id,
      :integration_association_id,
      :use_case_type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute use_case_id
    #   <p>The identifier of the use case.</p>
    #
    #   @return [String]
    #
    # @!attribute use_case_arn
    #   <p>The Amazon Resource Name (ARN) for the use case.</p>
    #
    #   @return [String]
    #
    CreateUseCaseOutput = ::Struct.new(
      :use_case_id,
      :use_case_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the user hierarchy group. Must not be more than 100 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_group_id
    #   <p>The identifier for the parent hierarchy group. The user hierarchy is created at level one if
    #      the parent group ID is null.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateUserHierarchyGroupInput = ::Struct.new(
      :name,
      :parent_group_id,
      :instance_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_group_arn
    #   <p>The Amazon Resource Name (ARN) of the hierarchy group. </p>
    #
    #   @return [String]
    #
    CreateUserHierarchyGroupOutput = ::Struct.new(
      :hierarchy_group_id,
      :hierarchy_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute username
    #   <p>The user name for the account. For instances not using SAML for identity management, the
    #      user name can include up to 20 characters. If you are using SAML for identity management, the
    #      user name can include up to 64 characters from [a-zA-Z0-9_-.\@]+.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password for the user account. A password is required if you are using Amazon Connect for
    #      identity management. Otherwise, it is an error to include a password.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_info
    #   <p>The information about the identity of the user.</p>
    #
    #   @return [UserIdentityInfo]
    #
    # @!attribute phone_config
    #   <p>The phone settings for the user.</p>
    #
    #   @return [UserPhoneConfig]
    #
    # @!attribute directory_user_id
    #   <p>The identifier of the user account in the directory used for identity management. If Amazon Connect
    #      cannot access the directory, you can specify this identifier to authenticate users. If you
    #      include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity
    #      information is used to authenticate users from your directory.</p>
    #            <p>This parameter is required if you are using an existing directory for identity management in
    #      Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for
    #      identity management and include this parameter, an error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute security_profile_ids
    #   <p>The identifier of the security profile for the user.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateUserInput = ::Struct.new(
      :username,
      :password,
      :identity_info,
      :phone_config,
      :directory_user_id,
      :security_profile_ids,
      :routing_profile_id,
      :hierarchy_group_id,
      :instance_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user account.</p>
    #
    #   @return [String]
    #
    CreateUserOutput = ::Struct.new(
      :user_id,
      :user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If a create request is received more than once with same client token,
    #      subsequent requests return the previous response without creating a vocabulary again.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_name
    #   <p>A unique name of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    #   Enum, one of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the custom vocabulary in plain-text format with a table of values. Each row
    #      in the table represents a word or a phrase, described with <code>Phrase</code>, <code>IPA</code>,
    #       <code>SoundsLike</code>, and <code>DisplayAs</code> fields. Separate the fields with TAB
    #      characters. The size limit is 50KB. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html create-vocabulary-table">Create a custom
    #       vocabulary using a table</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateVocabularyInput = ::Struct.new(
      :client_token,
      :instance_id,
      :vocabulary_name,
      :language_code,
      :content,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_arn
    #   <p>The Amazon Resource Name (ARN) of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the custom vocabulary.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    CreateVocabularyOutput = ::Struct.new(
      :vocabulary_arn,
      :vocabulary_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains credentials to use for federation.</p>
    #
    # @!attribute access_token
    #   <p>An access token generated for a federated user to access Amazon Connect.</p>
    #
    #   @return [String]
    #
    # @!attribute access_token_expiration
    #   <p>A token generated with an expiration time for the session a user is logged in to
    #      Amazon Connect.</p>
    #
    #   @return [Time]
    #
    # @!attribute refresh_token
    #   <p>Renews a token generated for a user to access the Amazon Connect instance.</p>
    #
    #   @return [String]
    #
    # @!attribute refresh_token_expiration
    #   <p>Renews the expiration timer for a generated token.</p>
    #
    #   @return [Time]
    #
    Credentials = ::Struct.new(
      :access_token,
      :access_token_expiration,
      :refresh_token,
      :refresh_token_expiration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Connect::Types::Credentials "\
          "access_token=\"[SENSITIVE]\", "\
          "access_token_expiration=#{access_token_expiration || 'nil'}, "\
          "refresh_token=\"[SENSITIVE]\", "\
          "refresh_token_expiration=#{refresh_token_expiration || 'nil'}>"
      end
    end

    # <p>Contains information about a real-time metric. For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html">Real-time Metrics Definitions</a> in the <i>Amazon Connect Administrator
    #    Guide</i>.</p>
    #
    # @!attribute name
    #   <p>The name of the metric.</p>
    #
    #   Enum, one of: ["AGENTS_ONLINE", "AGENTS_AVAILABLE", "AGENTS_ON_CALL", "AGENTS_NON_PRODUCTIVE", "AGENTS_AFTER_CONTACT_WORK", "AGENTS_ERROR", "AGENTS_STAFFED", "CONTACTS_IN_QUEUE", "OLDEST_CONTACT_AGE", "CONTACTS_SCHEDULED", "AGENTS_ON_CONTACT", "SLOTS_ACTIVE", "SLOTS_AVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit for the metric.</p>
    #
    #   Enum, one of: ["SECONDS", "COUNT", "PERCENT"]
    #
    #   @return [String]
    #
    CurrentMetric = ::Struct.new(
      :name,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the data for a real-time metric.</p>
    #
    # @!attribute metric
    #   <p>Information about the metric.</p>
    #
    #   @return [CurrentMetric]
    #
    # @!attribute value
    #   <p>The value of the metric.</p>
    #
    #   @return [Float]
    #
    CurrentMetricData = ::Struct.new(
      :metric,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CurrentMetricName
    #
    module CurrentMetricName
      # No documentation available.
      #
      AGENTS_ONLINE = "AGENTS_ONLINE"

      # No documentation available.
      #
      AGENTS_AVAILABLE = "AGENTS_AVAILABLE"

      # No documentation available.
      #
      AGENTS_ON_CALL = "AGENTS_ON_CALL"

      # No documentation available.
      #
      AGENTS_NON_PRODUCTIVE = "AGENTS_NON_PRODUCTIVE"

      # No documentation available.
      #
      AGENTS_AFTER_CONTACT_WORK = "AGENTS_AFTER_CONTACT_WORK"

      # No documentation available.
      #
      AGENTS_ERROR = "AGENTS_ERROR"

      # No documentation available.
      #
      AGENTS_STAFFED = "AGENTS_STAFFED"

      # No documentation available.
      #
      CONTACTS_IN_QUEUE = "CONTACTS_IN_QUEUE"

      # No documentation available.
      #
      OLDEST_CONTACT_AGE = "OLDEST_CONTACT_AGE"

      # No documentation available.
      #
      CONTACTS_SCHEDULED = "CONTACTS_SCHEDULED"

      # No documentation available.
      #
      AGENTS_ON_CONTACT = "AGENTS_ON_CONTACT"

      # No documentation available.
      #
      SLOTS_ACTIVE = "SLOTS_ACTIVE"

      # No documentation available.
      #
      SLOTS_AVAILABLE = "SLOTS_AVAILABLE"
    end

    # <p>Contains information about a set of real-time metrics.</p>
    #
    # @!attribute dimensions
    #   <p>The dimensions for the metrics.</p>
    #
    #   @return [Dimensions]
    #
    # @!attribute collections
    #   <p>The set of metrics.</p>
    #
    #   @return [Array<CurrentMetricData>]
    #
    CurrentMetricResult = ::Struct.new(
      :dimensions,
      :collections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a reference when the <code>referenceType</code> is <code>DATE</code>.
    #    Otherwise, null.</p>
    #
    # @!attribute name
    #   <p>Identifier of the date reference.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A valid date.</p>
    #
    #   @return [String]
    #
    DateReference = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a default vocabulary.</p>
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    #   Enum, one of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_name
    #   <p>A unique name of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    DefaultVocabulary = ::Struct.new(
      :instance_id,
      :language_code,
      :vocabulary_id,
      :vocabulary_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    DeleteContactFlowInput = ::Struct.new(
      :instance_id,
      :contact_flow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_module_id
    #   <p>The identifier of the contact flow module.</p>
    #
    #   @return [String]
    #
    DeleteContactFlowModuleInput = ::Struct.new(
      :instance_id,
      :contact_flow_module_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteContactFlowModuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteContactFlowOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    #   @return [String]
    #
    DeleteHoursOfOperationInput = ::Struct.new(
      :instance_id,
      :hours_of_operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteHoursOfOperationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    DeleteInstanceInput = ::Struct.new(
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteInstanceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #
    #   @return [String]
    #
    DeleteIntegrationAssociationInput = ::Struct.new(
      :instance_id,
      :integration_association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteIntegrationAssociationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    #   @return [String]
    #
    DeleteQuickConnectInput = ::Struct.new(
      :instance_id,
      :quick_connect_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteQuickConnectOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #
    #   @return [String]
    #
    DeleteSecurityProfileInput = ::Struct.new(
      :instance_id,
      :security_profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSecurityProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute task_template_id
    #   <p>A unique identifier for the task template.</p>
    #
    #   @return [String]
    #
    DeleteTaskTemplateInput = ::Struct.new(
      :instance_id,
      :task_template_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTaskTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #
    #   @return [String]
    #
    # @!attribute use_case_id
    #   <p>The identifier for the use case.</p>
    #
    #   @return [String]
    #
    DeleteUseCaseInput = ::Struct.new(
      :instance_id,
      :integration_association_id,
      :use_case_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUseCaseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    DeleteUserHierarchyGroupInput = ::Struct.new(
      :hierarchy_group_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUserHierarchyGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier of the user.</p>
    #
    #   @return [String]
    #
    DeleteUserInput = ::Struct.new(
      :instance_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    DeleteVocabularyInput = ::Struct.new(
      :instance_id,
      :vocabulary_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary_arn
    #   <p>The Amazon Resource Name (ARN) of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the custom vocabulary.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    DeleteVocabularyOutput = ::Struct.new(
      :vocabulary_arn,
      :vocabulary_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_status_id
    #   <p>The identifier for the agent status.</p>
    #
    #   @return [String]
    #
    DescribeAgentStatusInput = ::Struct.new(
      :instance_id,
      :agent_status_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute agent_status
    #   <p>The agent status.</p>
    #
    #   @return [AgentStatus]
    #
    DescribeAgentStatusOutput = ::Struct.new(
      :agent_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    DescribeContactFlowInput = ::Struct.new(
      :instance_id,
      :contact_flow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_module_id
    #   <p>The identifier of the contact flow module.</p>
    #
    #   @return [String]
    #
    DescribeContactFlowModuleInput = ::Struct.new(
      :instance_id,
      :contact_flow_module_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_flow_module
    #   <p>Information about the contact flow module.</p>
    #
    #   @return [ContactFlowModule]
    #
    DescribeContactFlowModuleOutput = ::Struct.new(
      :contact_flow_module,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_flow
    #   <p>Information about the contact flow.</p>
    #
    #   @return [ContactFlow]
    #
    DescribeContactFlowOutput = ::Struct.new(
      :contact_flow,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #
    #   @return [String]
    #
    DescribeContactInput = ::Struct.new(
      :instance_id,
      :contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact
    #   <p>Information about the contact.</p>
    #
    #   @return [Contact]
    #
    DescribeContactOutput = ::Struct.new(
      :contact,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    #   @return [String]
    #
    DescribeHoursOfOperationInput = ::Struct.new(
      :instance_id,
      :hours_of_operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hours_of_operation
    #   <p>The hours of operation.</p>
    #
    #   @return [HoursOfOperation]
    #
    DescribeHoursOfOperationOutput = ::Struct.new(
      :hours_of_operation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_type
    #   <p>The type of attribute.</p>
    #
    #   Enum, one of: ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE"]
    #
    #   @return [String]
    #
    DescribeInstanceAttributeInput = ::Struct.new(
      :instance_id,
      :attribute_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute
    #   <p>The
    #      type
    #      of attribute.</p>
    #
    #   @return [Attribute]
    #
    DescribeInstanceAttributeOutput = ::Struct.new(
      :attribute,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    DescribeInstanceInput = ::Struct.new(
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance
    #   <p>The name of the instance.</p>
    #
    #   @return [Instance]
    #
    DescribeInstanceOutput = ::Struct.new(
      :instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #
    #   Enum, one of: ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"]
    #
    #   @return [String]
    #
    DescribeInstanceStorageConfigInput = ::Struct.new(
      :instance_id,
      :association_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute storage_config
    #   <p>A valid storage type.</p>
    #
    #   @return [InstanceStorageConfig]
    #
    DescribeInstanceStorageConfigOutput = ::Struct.new(
      :storage_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    #   @return [String]
    #
    DescribePhoneNumberInput = ::Struct.new(
      :phone_number_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute claimed_phone_number_summary
    #   <p>Information about a phone number that's been claimed to your Amazon Connect instance.</p>
    #
    #   @return [ClaimedPhoneNumberSummary]
    #
    DescribePhoneNumberOutput = ::Struct.new(
      :claimed_phone_number_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    DescribeQueueInput = ::Struct.new(
      :instance_id,
      :queue_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute queue
    #   <p>The name of the queue.</p>
    #
    #   @return [Queue]
    #
    DescribeQueueOutput = ::Struct.new(
      :queue,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    #   @return [String]
    #
    DescribeQuickConnectInput = ::Struct.new(
      :instance_id,
      :quick_connect_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quick_connect
    #   <p>Information about the quick connect.</p>
    #
    #   @return [QuickConnect]
    #
    DescribeQuickConnectOutput = ::Struct.new(
      :quick_connect,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    DescribeRoutingProfileInput = ::Struct.new(
      :instance_id,
      :routing_profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute routing_profile
    #   <p>The routing profile.</p>
    #
    #   @return [RoutingProfile]
    #
    DescribeRoutingProfileOutput = ::Struct.new(
      :routing_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    DescribeSecurityProfileInput = ::Struct.new(
      :security_profile_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_profile
    #   <p>The security profile.</p>
    #
    #   @return [SecurityProfile]
    #
    DescribeSecurityProfileOutput = ::Struct.new(
      :security_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    DescribeUserHierarchyGroupInput = ::Struct.new(
      :hierarchy_group_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hierarchy_group
    #   <p>Information about the hierarchy group.</p>
    #
    #   @return [HierarchyGroup]
    #
    DescribeUserHierarchyGroupOutput = ::Struct.new(
      :hierarchy_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    DescribeUserHierarchyStructureInput = ::Struct.new(
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hierarchy_structure
    #   <p>Information about the hierarchy structure.</p>
    #
    #   @return [HierarchyStructure]
    #
    DescribeUserHierarchyStructureOutput = ::Struct.new(
      :hierarchy_structure,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    DescribeUserInput = ::Struct.new(
      :user_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user
    #   <p>Information about the user account and configuration settings.</p>
    #
    #   @return [User]
    #
    DescribeUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    DescribeVocabularyInput = ::Struct.new(
      :instance_id,
      :vocabulary_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vocabulary
    #   <p>A list of specific words that you want Contact Lens for Amazon Connect to recognize in your audio input. They are
    #      generally domain-specific words and phrases, words that Contact Lens is not recognizing, or proper
    #      nouns.</p>
    #
    #   @return [Vocabulary]
    #
    DescribeVocabularyOutput = ::Struct.new(
      :vocabulary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Outbound calls to the destination number are not allowed.</p>
    #
    # @!attribute message
    #   <p>The message about the outbound calls.</p>
    #
    #   @return [String]
    #
    DestinationNotAllowedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the dimensions for a set of metrics.</p>
    #
    # @!attribute queue
    #   <p>Information about the queue for which metrics are returned.</p>
    #
    #   @return [QueueReference]
    #
    # @!attribute channel
    #   <p>The channel used for grouping and filters.</p>
    #
    #   Enum, one of: ["VOICE", "CHAT", "TASK"]
    #
    #   @return [String]
    #
    Dimensions = ::Struct.new(
      :queue,
      :channel,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DirectoryType
    #
    module DirectoryType
      # No documentation available.
      #
      SAML = "SAML"

      # No documentation available.
      #
      CONNECT_MANAGED = "CONNECT_MANAGED"

      # No documentation available.
      #
      EXISTING_DIRECTORY = "EXISTING_DIRECTORY"
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute origin
    #   <p>The domain URL of the integrated application.</p>
    #
    #   @return [String]
    #
    DisassociateApprovedOriginInput = ::Struct.new(
      :instance_id,
      :origin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateApprovedOriginOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute lex_bot
    #   <p>Configuration information of an Amazon Lex bot.</p>
    #
    #   @return [LexBot]
    #
    # @!attribute lex_v2_bot
    #   <p>The Amazon Lex V2 bot to disassociate from the instance.</p>
    #
    #   @return [LexV2Bot]
    #
    DisassociateBotInput = ::Struct.new(
      :instance_id,
      :lex_bot,
      :lex_v2_bot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateBotOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #
    #   Enum, one of: ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"]
    #
    #   @return [String]
    #
    DisassociateInstanceStorageConfigInput = ::Struct.new(
      :instance_id,
      :association_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateInstanceStorageConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance..</p>
    #
    #   @return [String]
    #
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function being disassociated.</p>
    #
    #   @return [String]
    #
    DisassociateLambdaFunctionInput = ::Struct.new(
      :instance_id,
      :function_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateLambdaFunctionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_name
    #   <p>The name of the Amazon Lex bot. Maximum character limit of 50.</p>
    #
    #   @return [String]
    #
    # @!attribute lex_region
    #   <p>The Region in which the Amazon Lex bot has been created.</p>
    #
    #   @return [String]
    #
    DisassociateLexBotInput = ::Struct.new(
      :instance_id,
      :bot_name,
      :lex_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateLexBotOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    DisassociatePhoneNumberContactFlowInput = ::Struct.new(
      :phone_number_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociatePhoneNumberContactFlowOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_ids
    #   <p>The quick connects to disassociate from the queue.</p>
    #
    #   @return [Array<String>]
    #
    DisassociateQueueQuickConnectsInput = ::Struct.new(
      :instance_id,
      :queue_id,
      :quick_connect_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateQueueQuickConnectsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_references
    #   <p>The queues to disassociate from this routing profile.</p>
    #
    #   @return [Array<RoutingProfileQueueReference>]
    #
    DisassociateRoutingProfileQueuesInput = ::Struct.new(
      :instance_id,
      :routing_profile_id,
      :queue_references,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateRoutingProfileQueuesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    #   @return [String]
    #
    DisassociateSecurityKeyInput = ::Struct.new(
      :instance_id,
      :association_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateSecurityKeyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource with the specified name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateResourceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a reference when the <code>referenceType</code> is <code>EMAIL</code>.
    #    Otherwise, null.</p>
    #
    # @!attribute name
    #   <p>Identifier of the email reference.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A valid email address.</p>
    #
    #   @return [String]
    #
    EmailReference = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The encryption configuration.</p>
    #
    # @!attribute encryption_type
    #   <p>The type of encryption.</p>
    #
    #   Enum, one of: ["KMS"]
    #
    #   @return [String]
    #
    # @!attribute key_id
    #   <p>The full ARN of the encryption key. </p>
    #            <note>
    #               <p>Be sure to provide the full ARN of the encryption key, not just the ID.</p>
    #            </note>
    #
    #   @return [String]
    #
    EncryptionConfig = ::Struct.new(
      :encryption_type,
      :key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionType
    #
    module EncryptionType
      # No documentation available.
      #
      KMS = "KMS"
    end

    # <p>Contains the filter to apply when retrieving metrics.</p>
    #
    # @!attribute queues
    #   <p>The queues to use to filter the metrics. You should specify at least one queue, and can
    #      specify up to 100 queues per request. The <code>GetCurrentMetricsData</code> API in particular
    #      requires a queue when you include a <code>Filter</code> in your request. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute channels
    #   <p>The channel to use to filter the metrics.</p>
    #
    #   @return [Array<String>]
    #
    Filters = ::Struct.new(
      :queues,
      :channels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_contact_id
    #   <p>The identifier of the initial contact.</p>
    #
    #   @return [String]
    #
    GetContactAttributesInput = ::Struct.new(
      :instance_id,
      :initial_contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>Information about the attributes.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetContactAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The queues, up to 100, or channels, to use to filter the metrics returned. Metric data is
    #      retrieved only for the resources associated with the queues or channels included in the filter.
    #      You can include both queue IDs and queue ARNs in the same request. VOICE, CHAT, and TASK channels are supported.</p>
    #
    #   @return [Filters]
    #
    # @!attribute groupings
    #   <p>The grouping applied to the metrics returned. For example, when grouped by
    #       <code>QUEUE</code>, the metrics returned apply to each queue rather than aggregated for all
    #      queues. If you group by <code>CHANNEL</code>, you should include a Channels filter.
    #      VOICE, CHAT, and TASK channels are supported.</p>
    #            <p>If no <code>Grouping</code> is included in the request, a summary of metrics is
    #      returned.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute current_metrics
    #   <p>The metrics to retrieve. Specify the name and unit for each metric. The following metrics
    #      are available. For a description of all the metrics, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html">Real-time Metrics
    #       Definitions</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #            <dl>
    #               <dt>AGENTS_AFTER_CONTACT_WORK</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html aftercallwork-real-time">ACW</a>
    #                  </p>
    #
    #               </dd>
    #               <dt>AGENTS_AVAILABLE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html available-real-time">Available</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ERROR</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html error-real-time">Error</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_NON_PRODUCTIVE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html non-productive-time-real-time">NPT (Non-Productive Time)</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ON_CALL</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html on-call-real-time">On
    #          contact</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ON_CONTACT</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html on-call-real-time">On
    #          contact</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ONLINE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html online-real-time">Online</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_STAFFED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html staffed-real-time">Staffed</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_IN_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html in-queue-real-time">In
    #          queue</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_SCHEDULED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html scheduled-real-time">Scheduled</a>
    #                  </p>
    #               </dd>
    #               <dt>OLDEST_CONTACT_AGE</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>When you use groupings, Unit says SECONDS and the Value is returned in SECONDS. </p>
    #                  <p>When you do not use groupings, Unit says SECONDS but the Value is returned in
    #         MILLISECONDS. For example, if you get a response like this:</p>
    #                  <p>
    #                     <code>{ "Metric": { "Name": "OLDEST_CONTACT_AGE", "Unit": "SECONDS" }, "Value": 24113.0
    #         </code>}</p>
    #                  <p>The actual OLDEST_CONTACT_AGE is 24 seconds.</p>
    #
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html oldest-real-time">Oldest</a>
    #                  </p>
    #               </dd>
    #               <dt>SLOTS_ACTIVE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html active-real-time">Active</a>
    #                  </p>
    #               </dd>
    #               <dt>SLOTS_AVAILABLE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html availability-real-time">Availability</a>
    #                  </p>
    #               </dd>
    #            </dl>
    #
    #   @return [Array<CurrentMetric>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #            <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
    #      the token must use the same request parameters as the request that generated the token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    GetCurrentMetricDataInput = ::Struct.new(
      :instance_id,
      :filters,
      :groupings,
      :current_metrics,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #            <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
    #      the token must use the same request parameters as the request that generated the token.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_results
    #   <p>Information about the real-time metrics.</p>
    #
    #   @return [Array<CurrentMetricResult>]
    #
    # @!attribute data_snapshot_time
    #   <p>The time at which the metrics were retrieved and cached for pagination.</p>
    #
    #   @return [Time]
    #
    GetCurrentMetricDataOutput = ::Struct.new(
      :next_token,
      :metric_results,
      :data_snapshot_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters up to 100 <code>Queues</code>, or up to 9 <code>ContactStates</code>. The user data is retrieved only for those users who are associated with
    #      the queues and have contacts that are in the specified <code>ContactState</code>. </p>
    #
    #   @return [UserDataFilters]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    GetCurrentUserDataInput = ::Struct.new(
      :instance_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute user_data_list
    #   <p>A list of the user data that is returned.</p>
    #
    #   @return [Array<UserData>]
    #
    GetCurrentUserDataOutput = ::Struct.new(
      :next_token,
      :user_data_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    GetFederationTokenInput = ::Struct.new(
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute credentials
    #   <p>The credentials to use for federation.</p>
    #
    #   @return [Credentials]
    #
    GetFederationTokenOutput = ::Struct.new(
      :credentials,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to start the reporting interval for the
    #      retrieval of historical metrics data. The time must be specified using a multiple of 5 minutes,
    #      such as 10:05, 10:10, 10:15.</p>
    #            <p>The start time cannot be earlier than 24 hours before the time of the request. Historical
    #      metrics are available only for 24 hours.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to end the reporting interval for the
    #      retrieval of historical metrics data. The time must be specified using an interval of 5 minutes,
    #      such as 11:00, 11:05, 11:10, and must be later than the start time timestamp.</p>
    #            <p>The time range between the start and end time must be less than 24 hours.</p>
    #
    #   @return [Time]
    #
    # @!attribute filters
    #   <p>The queues, up to 100, or channels, to use to filter the metrics returned. Metric data is
    #      retrieved only for the resources associated with the queues or channels included in the filter.
    #      You can include both queue IDs and queue ARNs in the same request. VOICE, CHAT, and TASK channels are supported.</p>
    #            <note>
    #               <p>To filter by <code>Queues</code>, enter the queue
    #       ID/ARN, not the name of the queue.</p>
    #            </note>
    #
    #   @return [Filters]
    #
    # @!attribute groupings
    #   <p>The grouping applied to the metrics returned. For example, when results are grouped by
    #      queue, the metrics returned are grouped by queue. The values returned apply to the metrics for
    #      each queue rather than aggregated for all queues.</p>
    #
    #            <p>If no grouping is specified, a summary of metrics for all queues is returned.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute historical_metrics
    #   <p>The metrics to retrieve. Specify the name, unit, and statistic for each metric. The
    #      following historical metrics are available. For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html">Historical Metrics Definitions</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #            <note>
    #               <p>This API does not support a contacts
    #       incoming metric (there's no CONTACTS_INCOMING metric missing from the documented list). </p>
    #            </note>
    #
    #            <dl>
    #               <dt>ABANDON_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>AFTER_CONTACT_WORK_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>API_CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CALLBACK_CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_ABANDONED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_AGENT_HUNG_UP_FIRST</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_CONSULTED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_INCOMING</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_OUTBOUND</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_HOLD_ABANDONS</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_MISSED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_QUEUED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_IN</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_IN_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>HANDLE_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>INTERACTION_AND_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>INTERACTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>OCCUPANCY</dt>
    #               <dd>
    #                  <p>Unit: PERCENT</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>QUEUE_ANSWER_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>QUEUED_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: MAX</p>
    #               </dd>
    #               <dt>SERVICE_LEVEL</dt>
    #               <dd>
    #                  <p>You can include up to 20 SERVICE_LEVEL metrics in a request.</p>
    #                  <p>Unit: PERCENT</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you must enter <code>LT</code> (for
    #         "Less than"). </p>
    #               </dd>
    #            </dl>
    #
    #   @return [Array<HistoricalMetric>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    GetMetricDataInput = ::Struct.new(
      :instance_id,
      :start_time,
      :end_time,
      :filters,
      :groupings,
      :historical_metrics,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #            <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
    #      the token must use the same request parameters as the request that generated the token.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_results
    #   <p>Information about the historical metrics.</p>
    #            <p>If no grouping is specified, a summary of metric data is returned.</p>
    #
    #   @return [Array<HistoricalMetricResult>]
    #
    GetMetricDataOutput = ::Struct.new(
      :next_token,
      :metric_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute task_template_id
    #   <p>A unique identifier for the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_version
    #   <p>The system generated version of a task template that is associated with a task, when the
    #      task is created.</p>
    #
    #   @return [String]
    #
    GetTaskTemplateInput = ::Struct.new(
      :instance_id,
      :task_template_id,
      :snapshot_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    #
    #   @return [String]
    #
    # @!attribute constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    #
    #   @return [TaskTemplateConstraints]
    #
    # @!attribute defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    #
    #   @return [TaskTemplateDefaults]
    #
    # @!attribute fields
    #   <p>Fields that are part of the template.</p>
    #
    #   @return [Array<TaskTemplateField>]
    #
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it.
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp when the task template was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>The timestamp when the task template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetTaskTemplateOutput = ::Struct.new(
      :instance_id,
      :id,
      :arn,
      :name,
      :description,
      :contact_flow_id,
      :constraints,
      :defaults,
      :fields,
      :status,
      :last_modified_time,
      :created_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Grouping
    #
    module Grouping
      # No documentation available.
      #
      QUEUE = "QUEUE"

      # No documentation available.
      #
      CHANNEL = "CHANNEL"
    end

    # <p>Contains information about a hierarchy group.</p>
    #
    # @!attribute id
    #   <p>The identifier of the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute level_id
    #   <p>The identifier of the level in the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_path
    #   <p>Information about the levels in the hierarchy group.</p>
    #
    #   @return [HierarchyPath]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    HierarchyGroup = ::Struct.new(
      :id,
      :arn,
      :name,
      :level_id,
      :hierarchy_path,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A leaf node condition which can be used to specify a hierarchy group condition.</p>
    #
    # @!attribute value
    #   <p>The value in the hierarchy group condition.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_group_match_type
    #   <p>The type of hierarchy group match.</p>
    #
    #   Enum, one of: ["EXACT", "WITH_CHILD_GROUPS"]
    #
    #   @return [String]
    #
    HierarchyGroupCondition = ::Struct.new(
      :value,
      :hierarchy_group_match_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HierarchyGroupMatchType
    #
    module HierarchyGroupMatchType
      # No documentation available.
      #
      EXACT = "EXACT"

      # No documentation available.
      #
      WITH_CHILD_GROUPS = "WITH_CHILD_GROUPS"
    end

    # <p>Contains summary information about a hierarchy group.</p>
    #
    # @!attribute id
    #   <p>The identifier of the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the hierarchy group.</p>
    #
    #   @return [String]
    #
    HierarchyGroupSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the hierarchy group.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the hierarchy group. </p>
    #
    #   @return [String]
    #
    HierarchyGroupSummaryReference = ::Struct.new(
      :id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a hierarchy level.</p>
    #
    # @!attribute id
    #   <p>The identifier of the hierarchy level.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the hierarchy level.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the hierarchy level.</p>
    #
    #   @return [String]
    #
    HierarchyLevel = ::Struct.new(
      :id,
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the hierarchy level to update.</p>
    #
    # @!attribute name
    #   <p>The name of the user hierarchy level. Must not be more than 50 characters.</p>
    #
    #   @return [String]
    #
    HierarchyLevelUpdate = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the levels of a hierarchy group.</p>
    #
    # @!attribute level_one
    #   <p>Information about level one.</p>
    #
    #   @return [HierarchyGroupSummary]
    #
    # @!attribute level_two
    #   <p>Information about level two.</p>
    #
    #   @return [HierarchyGroupSummary]
    #
    # @!attribute level_three
    #   <p>Information about level three.</p>
    #
    #   @return [HierarchyGroupSummary]
    #
    # @!attribute level_four
    #   <p>Information about level four.</p>
    #
    #   @return [HierarchyGroupSummary]
    #
    # @!attribute level_five
    #   <p>Information about level five.</p>
    #
    #   @return [HierarchyGroupSummary]
    #
    HierarchyPath = ::Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the levels in the hierarchy group.</p>
    #
    # @!attribute level_one
    #   <p>Information about level one.</p>
    #
    #   @return [HierarchyGroupSummaryReference]
    #
    # @!attribute level_two
    #   <p>Information about level two.</p>
    #
    #   @return [HierarchyGroupSummaryReference]
    #
    # @!attribute level_three
    #   <p>Information about level three.</p>
    #
    #   @return [HierarchyGroupSummaryReference]
    #
    # @!attribute level_four
    #   <p>Information about level four.</p>
    #
    #   @return [HierarchyGroupSummaryReference]
    #
    # @!attribute level_five
    #   <p>Information about level five.</p>
    #
    #   @return [HierarchyGroupSummaryReference]
    #
    HierarchyPathReference = ::Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a hierarchy structure.</p>
    #
    # @!attribute level_one
    #   <p>Information about level one.</p>
    #
    #   @return [HierarchyLevel]
    #
    # @!attribute level_two
    #   <p>Information about level two.</p>
    #
    #   @return [HierarchyLevel]
    #
    # @!attribute level_three
    #   <p>Information about level three.</p>
    #
    #   @return [HierarchyLevel]
    #
    # @!attribute level_four
    #   <p>Information about level four.</p>
    #
    #   @return [HierarchyLevel]
    #
    # @!attribute level_five
    #   <p>Information about level five.</p>
    #
    #   @return [HierarchyLevel]
    #
    HierarchyStructure = ::Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the level hierarchy to update.</p>
    #
    # @!attribute level_one
    #   <p>The
    #      update
    #      for level one.</p>
    #
    #   @return [HierarchyLevelUpdate]
    #
    # @!attribute level_two
    #   <p>The update for level two.</p>
    #
    #   @return [HierarchyLevelUpdate]
    #
    # @!attribute level_three
    #   <p>The update for level three.</p>
    #
    #   @return [HierarchyLevelUpdate]
    #
    # @!attribute level_four
    #   <p>The update for level four.</p>
    #
    #   @return [HierarchyLevelUpdate]
    #
    # @!attribute level_five
    #   <p>The update for level five.</p>
    #
    #   @return [HierarchyLevelUpdate]
    #
    HierarchyStructureUpdate = ::Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a historical metric. For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html">Historical Metrics Definitions</a> in the <i>Amazon Connect Administrator
    #    Guide</i>.</p>
    #
    # @!attribute name
    #   <p>The name of the metric.</p>
    #
    #   Enum, one of: ["CONTACTS_QUEUED", "CONTACTS_HANDLED", "CONTACTS_ABANDONED", "CONTACTS_CONSULTED", "CONTACTS_AGENT_HUNG_UP_FIRST", "CONTACTS_HANDLED_INCOMING", "CONTACTS_HANDLED_OUTBOUND", "CONTACTS_HOLD_ABANDONS", "CONTACTS_TRANSFERRED_IN", "CONTACTS_TRANSFERRED_OUT", "CONTACTS_TRANSFERRED_IN_FROM_QUEUE", "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE", "CONTACTS_MISSED", "CALLBACK_CONTACTS_HANDLED", "API_CONTACTS_HANDLED", "OCCUPANCY", "HANDLE_TIME", "AFTER_CONTACT_WORK_TIME", "QUEUED_TIME", "ABANDON_TIME", "QUEUE_ANSWER_TIME", "HOLD_TIME", "INTERACTION_TIME", "INTERACTION_AND_HOLD_TIME", "SERVICE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute threshold
    #   <p>The threshold for the metric, used with service level metrics.</p>
    #
    #   @return [Threshold]
    #
    # @!attribute statistic
    #   <p>The statistic for the metric.</p>
    #
    #   Enum, one of: ["SUM", "MAX", "AVG"]
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit for the metric.</p>
    #
    #   Enum, one of: ["SECONDS", "COUNT", "PERCENT"]
    #
    #   @return [String]
    #
    HistoricalMetric = ::Struct.new(
      :name,
      :threshold,
      :statistic,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the data for a historical metric.</p>
    #
    # @!attribute metric
    #   <p>Information about the metric.</p>
    #
    #   @return [HistoricalMetric]
    #
    # @!attribute value
    #   <p>The value of the metric.</p>
    #
    #   @return [Float]
    #
    HistoricalMetricData = ::Struct.new(
      :metric,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HistoricalMetricName
    #
    module HistoricalMetricName
      # No documentation available.
      #
      CONTACTS_QUEUED = "CONTACTS_QUEUED"

      # No documentation available.
      #
      CONTACTS_HANDLED = "CONTACTS_HANDLED"

      # No documentation available.
      #
      CONTACTS_ABANDONED = "CONTACTS_ABANDONED"

      # No documentation available.
      #
      CONTACTS_CONSULTED = "CONTACTS_CONSULTED"

      # No documentation available.
      #
      CONTACTS_AGENT_HUNG_UP_FIRST = "CONTACTS_AGENT_HUNG_UP_FIRST"

      # No documentation available.
      #
      CONTACTS_HANDLED_INCOMING = "CONTACTS_HANDLED_INCOMING"

      # No documentation available.
      #
      CONTACTS_HANDLED_OUTBOUND = "CONTACTS_HANDLED_OUTBOUND"

      # No documentation available.
      #
      CONTACTS_HOLD_ABANDONS = "CONTACTS_HOLD_ABANDONS"

      # No documentation available.
      #
      CONTACTS_TRANSFERRED_IN = "CONTACTS_TRANSFERRED_IN"

      # No documentation available.
      #
      CONTACTS_TRANSFERRED_OUT = "CONTACTS_TRANSFERRED_OUT"

      # No documentation available.
      #
      CONTACTS_TRANSFERRED_IN_FROM_QUEUE = "CONTACTS_TRANSFERRED_IN_FROM_QUEUE"

      # No documentation available.
      #
      CONTACTS_TRANSFERRED_OUT_FROM_QUEUE = "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE"

      # No documentation available.
      #
      CONTACTS_MISSED = "CONTACTS_MISSED"

      # No documentation available.
      #
      CALLBACK_CONTACTS_HANDLED = "CALLBACK_CONTACTS_HANDLED"

      # No documentation available.
      #
      API_CONTACTS_HANDLED = "API_CONTACTS_HANDLED"

      # No documentation available.
      #
      OCCUPANCY = "OCCUPANCY"

      # No documentation available.
      #
      HANDLE_TIME = "HANDLE_TIME"

      # No documentation available.
      #
      AFTER_CONTACT_WORK_TIME = "AFTER_CONTACT_WORK_TIME"

      # No documentation available.
      #
      QUEUED_TIME = "QUEUED_TIME"

      # No documentation available.
      #
      ABANDON_TIME = "ABANDON_TIME"

      # No documentation available.
      #
      QUEUE_ANSWER_TIME = "QUEUE_ANSWER_TIME"

      # No documentation available.
      #
      HOLD_TIME = "HOLD_TIME"

      # No documentation available.
      #
      INTERACTION_TIME = "INTERACTION_TIME"

      # No documentation available.
      #
      INTERACTION_AND_HOLD_TIME = "INTERACTION_AND_HOLD_TIME"

      # No documentation available.
      #
      SERVICE_LEVEL = "SERVICE_LEVEL"
    end

    # <p>Contains information about the historical metrics retrieved.</p>
    #
    # @!attribute dimensions
    #   <p>The dimension for the metrics.</p>
    #
    #   @return [Dimensions]
    #
    # @!attribute collections
    #   <p>The set of metrics.</p>
    #
    #   @return [Array<HistoricalMetricData>]
    #
    HistoricalMetricResult = ::Struct.new(
      :dimensions,
      :collections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about of the hours of operation.</p>
    #
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute hours_of_operation_arn
    #   <p>The Amazon Resource Name (ARN) for the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute time_zone
    #   <p>The time zone for the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute config
    #   <p>Configuration information for the hours of operation.</p>
    #
    #   @return [Array<HoursOfOperationConfig>]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    HoursOfOperation = ::Struct.new(
      :hours_of_operation_id,
      :hours_of_operation_arn,
      :name,
      :description,
      :time_zone,
      :config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the hours of operation.</p>
    #
    # @!attribute day
    #   <p>The day that the hours of operation applies to.</p>
    #
    #   Enum, one of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start time that your contact center opens.</p>
    #
    #   @return [HoursOfOperationTimeSlice]
    #
    # @!attribute end_time
    #   <p>The end time that your contact center closes.</p>
    #
    #   @return [HoursOfOperationTimeSlice]
    #
    HoursOfOperationConfig = ::Struct.new(
      :day,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HoursOfOperationDays
    #
    module HoursOfOperationDays
      # No documentation available.
      #
      SUNDAY = "SUNDAY"

      # No documentation available.
      #
      MONDAY = "MONDAY"

      # No documentation available.
      #
      TUESDAY = "TUESDAY"

      # No documentation available.
      #
      WEDNESDAY = "WEDNESDAY"

      # No documentation available.
      #
      THURSDAY = "THURSDAY"

      # No documentation available.
      #
      FRIDAY = "FRIDAY"

      # No documentation available.
      #
      SATURDAY = "SATURDAY"
    end

    # <p>Contains summary information about hours of operation for a contact center.</p>
    #
    # @!attribute id
    #   <p>The identifier of the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the hours of operation.</p>
    #
    #   @return [String]
    #
    HoursOfOperationSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The start time or end time for an hours of operation.</p>
    #
    # @!attribute hours
    #   <p>The hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute minutes
    #   <p>The minutes.</p>
    #
    #   @return [Integer]
    #
    HoursOfOperationTimeSlice = ::Struct.new(
      :hours,
      :minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An entity with the same name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IdempotencyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Connect instance.</p>
    #
    # @!attribute id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_management_type
    #   <p>The identity management type.</p>
    #
    #   Enum, one of: ["SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"]
    #
    #   @return [String]
    #
    # @!attribute instance_alias
    #   <p>The alias of instance.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute service_role
    #   <p>The service role of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_status
    #   <p>The state of the instance.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>Relevant
    #      details why the instance was not successfully created. </p>
    #
    #   @return [InstanceStatusReason]
    #
    # @!attribute inbound_calls_enabled
    #   <p>Whether inbound calls are enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute outbound_calls_enabled
    #   <p>Whether outbound calls are enabled.</p>
    #
    #   @return [Boolean]
    #
    Instance = ::Struct.new(
      :id,
      :arn,
      :identity_management_type,
      :instance_alias,
      :created_time,
      :service_role,
      :instance_status,
      :status_reason,
      :inbound_calls_enabled,
      :outbound_calls_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Connect::Types::Instance "\
          "id=#{id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "identity_management_type=#{identity_management_type || 'nil'}, "\
          "instance_alias=\"[SENSITIVE]\", "\
          "created_time=#{created_time || 'nil'}, "\
          "service_role=#{service_role || 'nil'}, "\
          "instance_status=#{instance_status || 'nil'}, "\
          "status_reason=#{status_reason || 'nil'}, "\
          "inbound_calls_enabled=#{inbound_calls_enabled || 'nil'}, "\
          "outbound_calls_enabled=#{outbound_calls_enabled || 'nil'}>"
      end
    end

    # Includes enum constants for InstanceAttributeType
    #
    module InstanceAttributeType
      # No documentation available.
      #
      INBOUND_CALLS = "INBOUND_CALLS"

      # No documentation available.
      #
      OUTBOUND_CALLS = "OUTBOUND_CALLS"

      # No documentation available.
      #
      CONTACTFLOW_LOGS = "CONTACTFLOW_LOGS"

      # No documentation available.
      #
      CONTACT_LENS = "CONTACT_LENS"

      # No documentation available.
      #
      AUTO_RESOLVE_BEST_VOICES = "AUTO_RESOLVE_BEST_VOICES"

      # No documentation available.
      #
      USE_CUSTOM_TTS_VOICES = "USE_CUSTOM_TTS_VOICES"

      # No documentation available.
      #
      EARLY_MEDIA = "EARLY_MEDIA"

      # No documentation available.
      #
      MULTI_PARTY_CONFERENCE = "MULTI_PARTY_CONFERENCE"
    end

    # Includes enum constants for InstanceStatus
    #
    module InstanceStatus
      # No documentation available.
      #
      CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      CREATION_FAILED = "CREATION_FAILED"
    end

    # <p>Relevant
    #    details why the instance was not successfully created.</p>
    #
    # @!attribute message
    #   <p>The message.</p>
    #
    #   @return [String]
    #
    InstanceStatusReason = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The storage configuration for the instance.</p>
    #
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>A valid storage type.</p>
    #
    #   Enum, one of: ["S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"]
    #
    #   @return [String]
    #
    # @!attribute s3_config
    #   <p>The S3 bucket
    #      configuration.</p>
    #
    #   @return [S3Config]
    #
    # @!attribute kinesis_video_stream_config
    #   <p>The configuration of the Kinesis video stream.</p>
    #
    #   @return [KinesisVideoStreamConfig]
    #
    # @!attribute kinesis_stream_config
    #   <p>The configuration of the Kinesis data stream.</p>
    #
    #   @return [KinesisStreamConfig]
    #
    # @!attribute kinesis_firehose_config
    #   <p>The configuration of the Kinesis Firehose delivery stream.</p>
    #
    #   @return [KinesisFirehoseConfig]
    #
    InstanceStorageConfig = ::Struct.new(
      :association_id,
      :storage_type,
      :s3_config,
      :kinesis_video_stream_config,
      :kinesis_stream_config,
      :kinesis_firehose_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceStorageResourceType
    #
    module InstanceStorageResourceType
      # No documentation available.
      #
      CHAT_TRANSCRIPTS = "CHAT_TRANSCRIPTS"

      # No documentation available.
      #
      CALL_RECORDINGS = "CALL_RECORDINGS"

      # No documentation available.
      #
      SCHEDULED_REPORTS = "SCHEDULED_REPORTS"

      # No documentation available.
      #
      MEDIA_STREAMS = "MEDIA_STREAMS"

      # No documentation available.
      #
      CONTACT_TRACE_RECORDS = "CONTACT_TRACE_RECORDS"

      # No documentation available.
      #
      AGENT_EVENTS = "AGENT_EVENTS"

      # No documentation available.
      #
      REAL_TIME_CONTACT_ANALYSIS_SEGMENTS = "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"
    end

    # <p>Information about the instance.</p>
    #
    # @!attribute id
    #   <p>The identifier of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_management_type
    #   <p>The identity management type of the instance.</p>
    #
    #   Enum, one of: ["SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"]
    #
    #   @return [String]
    #
    # @!attribute instance_alias
    #   <p>The alias of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>When the instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute service_role
    #   <p>The service role of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_status
    #   <p>The state of the instance.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute inbound_calls_enabled
    #   <p>Whether inbound calls are enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute outbound_calls_enabled
    #   <p>Whether outbound calls are enabled.</p>
    #
    #   @return [Boolean]
    #
    InstanceSummary = ::Struct.new(
      :id,
      :arn,
      :identity_management_type,
      :instance_alias,
      :created_time,
      :service_role,
      :instance_status,
      :inbound_calls_enabled,
      :outbound_calls_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Connect::Types::InstanceSummary "\
          "id=#{id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "identity_management_type=#{identity_management_type || 'nil'}, "\
          "instance_alias=\"[SENSITIVE]\", "\
          "created_time=#{created_time || 'nil'}, "\
          "service_role=#{service_role || 'nil'}, "\
          "instance_status=#{instance_status || 'nil'}, "\
          "inbound_calls_enabled=#{inbound_calls_enabled || 'nil'}, "\
          "outbound_calls_enabled=#{outbound_calls_enabled || 'nil'}>"
      end
    end

    # <p>Contains summary information about the associated AppIntegrations.</p>
    #
    # @!attribute integration_association_id
    #   <p>The identifier for the AppIntegration association.</p>
    #
    #   @return [String]
    #
    # @!attribute integration_association_arn
    #   <p>The Amazon Resource Name (ARN) for the AppIntegration association.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute integration_type
    #   <p>The integration type.</p>
    #
    #   Enum, one of: ["EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE"]
    #
    #   @return [String]
    #
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) for the AppIntegration.</p>
    #
    #   @return [String]
    #
    # @!attribute source_application_url
    #   <p>The URL for the external application.</p>
    #
    #   @return [String]
    #
    # @!attribute source_application_name
    #   <p>The user-provided, friendly name for the external application.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The name of the source.</p>
    #
    #   Enum, one of: ["SALESFORCE", "ZENDESK"]
    #
    #   @return [String]
    #
    IntegrationAssociationSummary = ::Struct.new(
      :integration_association_id,
      :integration_association_arn,
      :instance_id,
      :integration_type,
      :integration_arn,
      :source_application_url,
      :source_application_name,
      :source_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IntegrationType
    #
    module IntegrationType
      # No documentation available.
      #
      EVENT = "EVENT"

      # No documentation available.
      #
      VOICE_ID = "VOICE_ID"

      # No documentation available.
      #
      PINPOINT_APP = "PINPOINT_APP"

      # No documentation available.
      #
      WISDOM_ASSISTANT = "WISDOM_ASSISTANT"

      # No documentation available.
      #
      WISDOM_KNOWLEDGE_BASE = "WISDOM_KNOWLEDGE_BASE"
    end

    # <p>Request processing failed because of an error or failure with the service.</p>
    #
    # @!attribute message
    #   <p>The message.</p>
    #
    #   @return [String]
    #
    InternalServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The contact flow is not valid.</p>
    #
    # @!attribute problems
    #   <p>The problems with the contact flow. Please fix before trying again.</p>
    #
    #   @return [Array<ProblemDetail>]
    #
    InvalidContactFlowException = ::Struct.new(
      :problems,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The problems with the module. Please fix before trying again.</p>
    #
    # @!attribute problems
    #
    #   @return [Array<ProblemDetail>]
    #
    InvalidContactFlowModuleException = ::Struct.new(
      :problems,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of the specified parameters are not valid.</p>
    #
    # @!attribute message
    #   <p>The message about the parameters.</p>
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is not valid.</p>
    #
    # @!attribute message
    #   <p>The message about the request.</p>
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A field that is invisible to an agent.</p>
    #
    # @!attribute id
    #   <p>Identifier of the invisible field.</p>
    #
    #   @return [TaskTemplateFieldIdentifier]
    #
    InvisibleFieldInfo = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information of a Kinesis Data Firehose delivery stream.</p>
    #
    # @!attribute firehose_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery stream.</p>
    #
    #   @return [String]
    #
    KinesisFirehoseConfig = ::Struct.new(
      :firehose_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information of a Kinesis data stream.</p>
    #
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the data stream.</p>
    #
    #   @return [String]
    #
    KinesisStreamConfig = ::Struct.new(
      :stream_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information of a Kinesis video stream.</p>
    #
    # @!attribute prefix
    #   <p>The prefix of the video stream.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period_hours
    #   <p>The number of hours data is retained in the stream. Kinesis Video Streams retains the data
    #      in a data store that is associated with the stream.</p>
    #            <p>The default value is 0, indicating that the stream does not persist data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_config
    #   <p>The encryption configuration.</p>
    #
    #   @return [EncryptionConfig]
    #
    KinesisVideoStreamConfig = ::Struct.new(
      :prefix,
      :retention_period_hours,
      :encryption_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retention_period_hours ||= 0
      end
    end

    # <p>Configuration information of an Amazon Lex bot.</p>
    #
    # @!attribute name
    #   <p>The name of the Amazon Lex bot.</p>
    #
    #   @return [String]
    #
    # @!attribute lex_region
    #   <p>The Region that the Amazon Lex bot was created in.</p>
    #
    #   @return [String]
    #
    LexBot = ::Struct.new(
      :name,
      :lex_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information of an Amazon Lex or Amazon Lex V2 bot.</p>
    #
    # @!attribute lex_bot
    #   <p>Configuration information of an Amazon Lex bot.</p>
    #
    #   @return [LexBot]
    #
    # @!attribute lex_v2_bot
    #   <p>Configuration information of an Amazon Lex V2 bot.</p>
    #
    #   @return [LexV2Bot]
    #
    LexBotConfig = ::Struct.new(
      :lex_bot,
      :lex_v2_bot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information of an Amazon Lex V2 bot.</p>
    #
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Lex V2 bot.</p>
    #
    #   @return [String]
    #
    LexV2Bot = ::Struct.new(
      :alias_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LexVersion
    #
    module LexVersion
      # No documentation available.
      #
      V1 = "V1"

      # No documentation available.
      #
      V2 = "V2"
    end

    # <p>The allowed limit for the resource has been exceeded.</p>
    #
    # @!attribute message
    #   <p>The message about the limit.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute agent_status_types
    #   <p>Available agent status types.</p>
    #
    #   @return [Array<String>]
    #
    ListAgentStatusesInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :agent_status_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_status_summary_list
    #   <p>A summary of agent statuses.</p>
    #
    #   @return [Array<AgentStatusSummary>]
    #
    ListAgentStatusesOutput = ::Struct.new(
      :next_token,
      :agent_status_summary_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListApprovedOriginsInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origins
    #   <p>The approved origins.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListApprovedOriginsOutput = ::Struct.new(
      :origins,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lex_version
    #   <p>The version of Amazon Lex or Amazon Lex V2.</p>
    #
    #   Enum, one of: ["V1", "V2"]
    #
    #   @return [String]
    #
    ListBotsInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :lex_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lex_bots
    #   <p>The names and Regions of the Amazon Lex or Amazon Lex V2 bots associated with the specified
    #      instance.</p>
    #
    #   @return [Array<LexBotConfig>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListBotsOutput = ::Struct.new(
      :lex_bots,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute contact_flow_module_state
    #   <p>The state of the contact flow module.</p>
    #
    #   Enum, one of: ["ACTIVE", "ARCHIVED"]
    #
    #   @return [String]
    #
    ListContactFlowModulesInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :contact_flow_module_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_flow_modules_summary_list
    #   <p>Information about the contact flow module.</p>
    #
    #   @return [Array<ContactFlowModuleSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListContactFlowModulesOutput = ::Struct.new(
      :contact_flow_modules_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_types
    #   <p>The type of contact flow.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListContactFlowsInput = ::Struct.new(
      :instance_id,
      :contact_flow_types,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute contact_flow_summary_list
    #   <p>Information about the contact flows.</p>
    #
    #   @return [Array<ContactFlowSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListContactFlowsOutput = ::Struct.new(
      :contact_flow_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the initial contact.</p>
    #
    #   @return [String]
    #
    # @!attribute reference_types
    #   <p>The type of reference.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #            <important>
    #               <p>This is not expected to be set, because the value returned in the previous response is
    #       always null.</p>
    #            </important>
    #
    #   @return [String]
    #
    ListContactReferencesInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :reference_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reference_summary_list
    #   <p>Information about the contact flows.</p>
    #
    #   @return [Array<ReferenceSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #            <important>
    #               <p>This is always returned as null in the response.</p>
    #            </important>
    #
    #   @return [String]
    #
    ListContactReferencesOutput = ::Struct.new(
      :reference_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    #   Enum, one of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListDefaultVocabulariesInput = ::Struct.new(
      :instance_id,
      :language_code,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute default_vocabulary_list
    #   <p>A list of default vocabularies.</p>
    #
    #   @return [Array<DefaultVocabulary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListDefaultVocabulariesOutput = ::Struct.new(
      :default_vocabulary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListHoursOfOperationsInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute hours_of_operation_summary_list
    #   <p>Information about the hours of operation.</p>
    #
    #   @return [Array<HoursOfOperationSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListHoursOfOperationsOutput = ::Struct.new(
      :hours_of_operation_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListInstanceAttributesInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>The attribute types.</p>
    #
    #   @return [Array<Attribute>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListInstanceAttributesOutput = ::Struct.new(
      :attributes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #
    #   Enum, one of: ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListInstanceStorageConfigsInput = ::Struct.new(
      :instance_id,
      :resource_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute storage_configs
    #   <p>A valid storage type.</p>
    #
    #   @return [Array<InstanceStorageConfig>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListInstanceStorageConfigsOutput = ::Struct.new(
      :storage_configs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListInstancesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_summary_list
    #   <p>Information about the instances.</p>
    #
    #   @return [Array<InstanceSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListInstancesOutput = ::Struct.new(
      :instance_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute integration_type
    #   <p>The integration type.</p>
    #
    #   Enum, one of: ["EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListIntegrationAssociationsInput = ::Struct.new(
      :instance_id,
      :integration_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute integration_association_summary_list
    #   <p>The associations.</p>
    #
    #   @return [Array<IntegrationAssociationSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListIntegrationAssociationsOutput = ::Struct.new(
      :integration_association_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListLambdaFunctionsInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lambda_functions
    #   <p>The Lambdafunction ARNs associated with the specified instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListLambdaFunctionsOutput = ::Struct.new(
      :lambda_functions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. If no value is specified, the default is 10.
    #      </p>
    #
    #   @return [Integer]
    #
    ListLexBotsInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lex_bots
    #   <p>The names and Regions of the Amazon Lex bots associated with the specified instance.</p>
    #
    #   @return [Array<LexBot>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListLexBotsOutput = ::Struct.new(
      :lex_bots,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_types
    #   <p>The type of phone number.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute phone_number_country_codes
    #   <p>The ISO country code.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListPhoneNumbersInput = ::Struct.new(
      :instance_id,
      :phone_number_types,
      :phone_number_country_codes,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute phone_number_summary_list
    #   <p>Information about the phone numbers.</p>
    #
    #   @return [Array<PhoneNumberSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListPhoneNumbersOutput = ::Struct.new(
      :phone_number_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about phone numbers that have been claimed to your Amazon Connect instance.</p>
    #
    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number. Phone numbers are formatted <code>[+] [country code] [subscriber number including area code]</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_country_code
    #   <p>The ISO country code.</p>
    #
    #   Enum, one of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #
    #   @return [String]
    #
    # @!attribute phone_number_type
    #   <p>The type of phone number.</p>
    #
    #   Enum, one of: ["TOLL_FREE", "DID"]
    #
    #   @return [String]
    #
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.</p>
    #
    #   @return [String]
    #
    ListPhoneNumbersSummary = ::Struct.new(
      :phone_number_id,
      :phone_number_arn,
      :phone_number,
      :phone_number_country_code,
      :phone_number_type,
      :target_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to. If <code>TargetArn</code> input is not provided, this API lists numbers claimed
    #      to all the Amazon Connect instances belonging to your account.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_country_codes
    #   <p>The ISO country code.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute phone_number_types
    #   <p>The type of phone number.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute phone_number_prefix
    #   <p>The prefix of the phone number. If provided, it must contain <code>+</code> as part of the country code.</p>
    #
    #   @return [String]
    #
    ListPhoneNumbersV2Input = ::Struct.new(
      :target_arn,
      :max_results,
      :next_token,
      :phone_number_country_codes,
      :phone_number_types,
      :phone_number_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute list_phone_numbers_summary_list
    #   <p>Information about phone numbers that have been claimed to your Amazon Connect instances.</p>
    #
    #   @return [Array<ListPhoneNumbersSummary>]
    #
    ListPhoneNumbersV2Output = ::Struct.new(
      :next_token,
      :list_phone_numbers_summary_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListPromptsInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute prompt_summary_list
    #   <p>Information about the prompts.</p>
    #
    #   @return [Array<PromptSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListPromptsOutput = ::Struct.new(
      :prompt_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListQueueQuickConnectsInput = ::Struct.new(
      :instance_id,
      :queue_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_summary_list
    #   <p>Information about the quick connects.</p>
    #
    #   @return [Array<QuickConnectSummary>]
    #
    ListQueueQuickConnectsOutput = ::Struct.new(
      :next_token,
      :quick_connect_summary_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_types
    #   <p>The type of queue.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListQueuesInput = ::Struct.new(
      :instance_id,
      :queue_types,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute queue_summary_list
    #   <p>Information about the queues.</p>
    #
    #   @return [Array<QueueSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListQueuesOutput = ::Struct.new(
      :queue_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute quick_connect_types
    #   <p>The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are
    #      prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).</p>
    #
    #   @return [Array<String>]
    #
    ListQuickConnectsInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :quick_connect_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quick_connect_summary_list
    #   <p>Information about the quick connects.</p>
    #
    #   @return [Array<QuickConnectSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListQuickConnectsOutput = ::Struct.new(
      :quick_connect_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListRoutingProfileQueuesInput = ::Struct.new(
      :instance_id,
      :routing_profile_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_queue_config_summary_list
    #   <p>Information about the routing profiles.</p>
    #
    #   @return [Array<RoutingProfileQueueConfigSummary>]
    #
    ListRoutingProfileQueuesOutput = ::Struct.new(
      :next_token,
      :routing_profile_queue_config_summary_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListRoutingProfilesInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute routing_profile_summary_list
    #   <p>Information about the routing profiles.</p>
    #
    #   @return [Array<RoutingProfileSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListRoutingProfilesOutput = ::Struct.new(
      :routing_profile_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListSecurityKeysInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_keys
    #   <p>The security keys.</p>
    #
    #   @return [Array<SecurityKey>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListSecurityKeysOutput = ::Struct.new(
      :security_keys,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListSecurityProfilePermissionsInput = ::Struct.new(
      :security_profile_id,
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permissions
    #   <p>The permissions granted to the security profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListSecurityProfilePermissionsOutput = ::Struct.new(
      :permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListSecurityProfilesInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_profile_summary_list
    #   <p>Information about the security profiles.</p>
    #
    #   @return [Array<SecurityProfileSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListSecurityProfilesOutput = ::Struct.new(
      :security_profile_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
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
    #   <p>Information about the tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #            <important>
    #               <p>It is not expected that you set this because the value returned in the previous response is
    #       always null.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #            <important>
    #               <p>It is not expected that you set this.</p>
    #            </important>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it.
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the task template.</p>
    #
    #   @return [String]
    #
    ListTaskTemplatesInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :status,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_templates
    #   <p>Provides details about a list of task templates belonging to an instance.</p>
    #
    #   @return [Array<TaskTemplateMetadata>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #            <important>
    #               <p>This is always returned as a null in the response.</p>
    #            </important>
    #
    #   @return [String]
    #
    ListTaskTemplatesOutput = ::Struct.new(
      :task_templates,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides summary information about the use cases for the specified integration
    #    association.</p>
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListUseCasesInput = ::Struct.new(
      :instance_id,
      :integration_association_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute use_case_summary_list
    #   <p>The use cases.</p>
    #
    #   @return [Array<UseCase>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListUseCasesOutput = ::Struct.new(
      :use_case_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListUserHierarchyGroupsInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_hierarchy_group_summary_list
    #   <p>Information about the hierarchy groups.</p>
    #
    #   @return [Array<HierarchyGroupSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListUserHierarchyGroupsOutput = ::Struct.new(
      :user_hierarchy_group_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListUsersInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_summary_list
    #   <p>Information about the users.</p>
    #
    #   @return [Array<UserSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListUsersOutput = ::Struct.new(
      :user_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about which channels are supported, and how many contacts an agent can
    #    have on a channel simultaneously.</p>
    #
    # @!attribute channel
    #   <p>The channels that agents can handle in the Contact Control Panel (CCP).</p>
    #
    #   Enum, one of: ["VOICE", "CHAT", "TASK"]
    #
    #   @return [String]
    #
    # @!attribute concurrency
    #   <p>The number of contacts an agent can have on a channel simultaneously.</p>
    #            <p>Valid Range for <code>VOICE</code>: Minimum value of 1. Maximum value of 1.</p>
    #            <p>Valid Range for <code>CHAT</code>: Minimum value of 1. Maximum value of 10.</p>
    #            <p>Valid Range for <code>TASK</code>: Minimum value of 1. Maximum value of 10.</p>
    #
    #   @return [Integer]
    #
    MediaConcurrency = ::Struct.new(
      :channel,
      :concurrency,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.concurrency ||= 0
      end
    end

    # <p>Information about a reference when the <code>referenceType</code> is <code>NUMBER</code>.
    #    Otherwise, null.</p>
    #
    # @!attribute name
    #   <p>Identifier of the number reference.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A valid number.</p>
    #
    #   @return [String]
    #
    NumberReference = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    #
    # @!attribute outbound_caller_id_name
    #   <p>The caller ID name.</p>
    #
    #   @return [String]
    #
    # @!attribute outbound_caller_id_number_id
    #   <p>The caller ID number.</p>
    #
    #   @return [String]
    #
    # @!attribute outbound_flow_id
    #   <p>The outbound whisper flow to be used during an outbound call.</p>
    #
    #   @return [String]
    #
    OutboundCallerConfig = ::Struct.new(
      :outbound_caller_id_name,
      :outbound_caller_id_number_id,
      :outbound_flow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The contact is not permitted.</p>
    #
    # @!attribute message
    #   <p>The message about the contact.</p>
    #
    #   @return [String]
    #
    OutboundContactNotPermittedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The customer's details.</p>
    #
    # @!attribute display_name
    #   <p>Display name of the participant.</p>
    #
    #   @return [String]
    #
    ParticipantDetails = ::Struct.new(
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PhoneNumberCountryCode
    #
    module PhoneNumberCountryCode
      # No documentation available.
      #
      AF = "AF"

      # No documentation available.
      #
      AL = "AL"

      # No documentation available.
      #
      DZ = "DZ"

      # No documentation available.
      #
      AS = "AS"

      # No documentation available.
      #
      AD = "AD"

      # No documentation available.
      #
      AO = "AO"

      # No documentation available.
      #
      AI = "AI"

      # No documentation available.
      #
      AQ = "AQ"

      # No documentation available.
      #
      AG = "AG"

      # No documentation available.
      #
      AR = "AR"

      # No documentation available.
      #
      AM = "AM"

      # No documentation available.
      #
      AW = "AW"

      # No documentation available.
      #
      AU = "AU"

      # No documentation available.
      #
      AT = "AT"

      # No documentation available.
      #
      AZ = "AZ"

      # No documentation available.
      #
      BS = "BS"

      # No documentation available.
      #
      BH = "BH"

      # No documentation available.
      #
      BD = "BD"

      # No documentation available.
      #
      BB = "BB"

      # No documentation available.
      #
      BY = "BY"

      # No documentation available.
      #
      BE = "BE"

      # No documentation available.
      #
      BZ = "BZ"

      # No documentation available.
      #
      BJ = "BJ"

      # No documentation available.
      #
      BM = "BM"

      # No documentation available.
      #
      BT = "BT"

      # No documentation available.
      #
      BO = "BO"

      # No documentation available.
      #
      BA = "BA"

      # No documentation available.
      #
      BW = "BW"

      # No documentation available.
      #
      BR = "BR"

      # No documentation available.
      #
      IO = "IO"

      # No documentation available.
      #
      VG = "VG"

      # No documentation available.
      #
      BN = "BN"

      # No documentation available.
      #
      BG = "BG"

      # No documentation available.
      #
      BF = "BF"

      # No documentation available.
      #
      BI = "BI"

      # No documentation available.
      #
      KH = "KH"

      # No documentation available.
      #
      CM = "CM"

      # No documentation available.
      #
      CA = "CA"

      # No documentation available.
      #
      CV = "CV"

      # No documentation available.
      #
      KY = "KY"

      # No documentation available.
      #
      CF = "CF"

      # No documentation available.
      #
      TD = "TD"

      # No documentation available.
      #
      CL = "CL"

      # No documentation available.
      #
      CN = "CN"

      # No documentation available.
      #
      CX = "CX"

      # No documentation available.
      #
      CC = "CC"

      # No documentation available.
      #
      CO = "CO"

      # No documentation available.
      #
      KM = "KM"

      # No documentation available.
      #
      CK = "CK"

      # No documentation available.
      #
      CR = "CR"

      # No documentation available.
      #
      HR = "HR"

      # No documentation available.
      #
      CU = "CU"

      # No documentation available.
      #
      CW = "CW"

      # No documentation available.
      #
      CY = "CY"

      # No documentation available.
      #
      CZ = "CZ"

      # No documentation available.
      #
      CD = "CD"

      # No documentation available.
      #
      DK = "DK"

      # No documentation available.
      #
      DJ = "DJ"

      # No documentation available.
      #
      DM = "DM"

      # No documentation available.
      #
      DO = "DO"

      # No documentation available.
      #
      TL = "TL"

      # No documentation available.
      #
      EC = "EC"

      # No documentation available.
      #
      EG = "EG"

      # No documentation available.
      #
      SV = "SV"

      # No documentation available.
      #
      GQ = "GQ"

      # No documentation available.
      #
      ER = "ER"

      # No documentation available.
      #
      EE = "EE"

      # No documentation available.
      #
      ET = "ET"

      # No documentation available.
      #
      FK = "FK"

      # No documentation available.
      #
      FO = "FO"

      # No documentation available.
      #
      FJ = "FJ"

      # No documentation available.
      #
      FI = "FI"

      # No documentation available.
      #
      FR = "FR"

      # No documentation available.
      #
      PF = "PF"

      # No documentation available.
      #
      GA = "GA"

      # No documentation available.
      #
      GM = "GM"

      # No documentation available.
      #
      GE = "GE"

      # No documentation available.
      #
      DE = "DE"

      # No documentation available.
      #
      GH = "GH"

      # No documentation available.
      #
      GI = "GI"

      # No documentation available.
      #
      GR = "GR"

      # No documentation available.
      #
      GL = "GL"

      # No documentation available.
      #
      GD = "GD"

      # No documentation available.
      #
      GU = "GU"

      # No documentation available.
      #
      GT = "GT"

      # No documentation available.
      #
      GG = "GG"

      # No documentation available.
      #
      GN = "GN"

      # No documentation available.
      #
      GW = "GW"

      # No documentation available.
      #
      GY = "GY"

      # No documentation available.
      #
      HT = "HT"

      # No documentation available.
      #
      HN = "HN"

      # No documentation available.
      #
      HK = "HK"

      # No documentation available.
      #
      HU = "HU"

      # No documentation available.
      #
      IS = "IS"

      # No documentation available.
      #
      IN = "IN"

      # No documentation available.
      #
      ID = "ID"

      # No documentation available.
      #
      IR = "IR"

      # No documentation available.
      #
      IQ = "IQ"

      # No documentation available.
      #
      IE = "IE"

      # No documentation available.
      #
      IM = "IM"

      # No documentation available.
      #
      IL = "IL"

      # No documentation available.
      #
      IT = "IT"

      # No documentation available.
      #
      CI = "CI"

      # No documentation available.
      #
      JM = "JM"

      # No documentation available.
      #
      JP = "JP"

      # No documentation available.
      #
      JE = "JE"

      # No documentation available.
      #
      JO = "JO"

      # No documentation available.
      #
      KZ = "KZ"

      # No documentation available.
      #
      KE = "KE"

      # No documentation available.
      #
      KI = "KI"

      # No documentation available.
      #
      KW = "KW"

      # No documentation available.
      #
      KG = "KG"

      # No documentation available.
      #
      LA = "LA"

      # No documentation available.
      #
      LV = "LV"

      # No documentation available.
      #
      LB = "LB"

      # No documentation available.
      #
      LS = "LS"

      # No documentation available.
      #
      LR = "LR"

      # No documentation available.
      #
      LY = "LY"

      # No documentation available.
      #
      LI = "LI"

      # No documentation available.
      #
      LT = "LT"

      # No documentation available.
      #
      LU = "LU"

      # No documentation available.
      #
      MO = "MO"

      # No documentation available.
      #
      MK = "MK"

      # No documentation available.
      #
      MG = "MG"

      # No documentation available.
      #
      MW = "MW"

      # No documentation available.
      #
      MY = "MY"

      # No documentation available.
      #
      MV = "MV"

      # No documentation available.
      #
      ML = "ML"

      # No documentation available.
      #
      MT = "MT"

      # No documentation available.
      #
      MH = "MH"

      # No documentation available.
      #
      MR = "MR"

      # No documentation available.
      #
      MU = "MU"

      # No documentation available.
      #
      YT = "YT"

      # No documentation available.
      #
      MX = "MX"

      # No documentation available.
      #
      FM = "FM"

      # No documentation available.
      #
      MD = "MD"

      # No documentation available.
      #
      MC = "MC"

      # No documentation available.
      #
      MN = "MN"

      # No documentation available.
      #
      ME = "ME"

      # No documentation available.
      #
      MS = "MS"

      # No documentation available.
      #
      MA = "MA"

      # No documentation available.
      #
      MZ = "MZ"

      # No documentation available.
      #
      MM = "MM"

      # No documentation available.
      #
      NA = "NA"

      # No documentation available.
      #
      NR = "NR"

      # No documentation available.
      #
      NP = "NP"

      # No documentation available.
      #
      NL = "NL"

      # No documentation available.
      #
      AN = "AN"

      # No documentation available.
      #
      NC = "NC"

      # No documentation available.
      #
      NZ = "NZ"

      # No documentation available.
      #
      NI = "NI"

      # No documentation available.
      #
      NE = "NE"

      # No documentation available.
      #
      NG = "NG"

      # No documentation available.
      #
      NU = "NU"

      # No documentation available.
      #
      KP = "KP"

      # No documentation available.
      #
      MP = "MP"

      # No documentation available.
      #
      NO = "NO"

      # No documentation available.
      #
      OM = "OM"

      # No documentation available.
      #
      PK = "PK"

      # No documentation available.
      #
      PW = "PW"

      # No documentation available.
      #
      PA = "PA"

      # No documentation available.
      #
      PG = "PG"

      # No documentation available.
      #
      PY = "PY"

      # No documentation available.
      #
      PE = "PE"

      # No documentation available.
      #
      PH = "PH"

      # No documentation available.
      #
      PN = "PN"

      # No documentation available.
      #
      PL = "PL"

      # No documentation available.
      #
      PT = "PT"

      # No documentation available.
      #
      PR = "PR"

      # No documentation available.
      #
      QA = "QA"

      # No documentation available.
      #
      CG = "CG"

      # No documentation available.
      #
      RE = "RE"

      # No documentation available.
      #
      RO = "RO"

      # No documentation available.
      #
      RU = "RU"

      # No documentation available.
      #
      RW = "RW"

      # No documentation available.
      #
      BL = "BL"

      # No documentation available.
      #
      SH = "SH"

      # No documentation available.
      #
      KN = "KN"

      # No documentation available.
      #
      LC = "LC"

      # No documentation available.
      #
      MF = "MF"

      # No documentation available.
      #
      PM = "PM"

      # No documentation available.
      #
      VC = "VC"

      # No documentation available.
      #
      WS = "WS"

      # No documentation available.
      #
      SM = "SM"

      # No documentation available.
      #
      ST = "ST"

      # No documentation available.
      #
      SA = "SA"

      # No documentation available.
      #
      SN = "SN"

      # No documentation available.
      #
      RS = "RS"

      # No documentation available.
      #
      SC = "SC"

      # No documentation available.
      #
      SL = "SL"

      # No documentation available.
      #
      SG = "SG"

      # No documentation available.
      #
      SX = "SX"

      # No documentation available.
      #
      SK = "SK"

      # No documentation available.
      #
      SI = "SI"

      # No documentation available.
      #
      SB = "SB"

      # No documentation available.
      #
      SO = "SO"

      # No documentation available.
      #
      ZA = "ZA"

      # No documentation available.
      #
      KR = "KR"

      # No documentation available.
      #
      ES = "ES"

      # No documentation available.
      #
      LK = "LK"

      # No documentation available.
      #
      SD = "SD"

      # No documentation available.
      #
      SR = "SR"

      # No documentation available.
      #
      SJ = "SJ"

      # No documentation available.
      #
      SZ = "SZ"

      # No documentation available.
      #
      SE = "SE"

      # No documentation available.
      #
      CH = "CH"

      # No documentation available.
      #
      SY = "SY"

      # No documentation available.
      #
      TW = "TW"

      # No documentation available.
      #
      TJ = "TJ"

      # No documentation available.
      #
      TZ = "TZ"

      # No documentation available.
      #
      TH = "TH"

      # No documentation available.
      #
      TG = "TG"

      # No documentation available.
      #
      TK = "TK"

      # No documentation available.
      #
      TO = "TO"

      # No documentation available.
      #
      TT = "TT"

      # No documentation available.
      #
      TN = "TN"

      # No documentation available.
      #
      TR = "TR"

      # No documentation available.
      #
      TM = "TM"

      # No documentation available.
      #
      TC = "TC"

      # No documentation available.
      #
      TV = "TV"

      # No documentation available.
      #
      VI = "VI"

      # No documentation available.
      #
      UG = "UG"

      # No documentation available.
      #
      UA = "UA"

      # No documentation available.
      #
      AE = "AE"

      # No documentation available.
      #
      GB = "GB"

      # No documentation available.
      #
      US = "US"

      # No documentation available.
      #
      UY = "UY"

      # No documentation available.
      #
      UZ = "UZ"

      # No documentation available.
      #
      VU = "VU"

      # No documentation available.
      #
      VA = "VA"

      # No documentation available.
      #
      VE = "VE"

      # No documentation available.
      #
      VN = "VN"

      # No documentation available.
      #
      WF = "WF"

      # No documentation available.
      #
      EH = "EH"

      # No documentation available.
      #
      YE = "YE"

      # No documentation available.
      #
      ZM = "ZM"

      # No documentation available.
      #
      ZW = "ZW"
    end

    # <p>Contains information about a phone number for a quick connect.</p>
    #
    # @!attribute phone_number
    #   <p>The phone number in E.164 format.</p>
    #
    #   @return [String]
    #
    PhoneNumberQuickConnectConfig = ::Struct.new(
      :phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of the phone number.</p>
    #
    # @!attribute status
    #   <p>The status.</p>
    #
    #   Enum, one of: ["CLAIMED", "IN_PROGRESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The status message.</p>
    #
    #   @return [String]
    #
    PhoneNumberStatus = ::Struct.new(
      :status,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains summary information about a phone number for a contact center.</p>
    #
    # @!attribute id
    #   <p>The identifier of the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_type
    #   <p>The type of phone number.</p>
    #
    #   Enum, one of: ["TOLL_FREE", "DID"]
    #
    #   @return [String]
    #
    # @!attribute phone_number_country_code
    #   <p>The ISO country code.</p>
    #
    #   Enum, one of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #
    #   @return [String]
    #
    PhoneNumberSummary = ::Struct.new(
      :id,
      :arn,
      :phone_number,
      :phone_number_type,
      :phone_number_country_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PhoneNumberType
    #
    module PhoneNumberType
      # No documentation available.
      #
      TOLL_FREE = "TOLL_FREE"

      # No documentation available.
      #
      DID = "DID"
    end

    # Includes enum constants for PhoneNumberWorkflowStatus
    #
    module PhoneNumberWorkflowStatus
      # No documentation available.
      #
      Claimed = "CLAIMED"

      # No documentation available.
      #
      InProgress = "IN_PROGRESS"

      # No documentation available.
      #
      Failed = "FAILED"
    end

    # Includes enum constants for PhoneType
    #
    module PhoneType
      # No documentation available.
      #
      SOFT_PHONE = "SOFT_PHONE"

      # No documentation available.
      #
      DESK_PHONE = "DESK_PHONE"
    end

    # <p>Information about a problem detail.</p>
    #
    # @!attribute message
    #   <p>The problem detail's message.</p>
    #
    #   @return [String]
    #
    ProblemDetail = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the prompt.</p>
    #
    # @!attribute id
    #   <p>The identifier of the prompt.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prompt.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the prompt.</p>
    #
    #   @return [String]
    #
    PromptSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute property_list
    #
    #   @return [Array<PropertyValidationExceptionProperty>]
    #
    PropertyValidationException = ::Struct.new(
      :message,
      :property_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about why a property is not valid.</p>
    #
    # @!attribute property_path
    #   <p>The full property path.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Why the property is not valid.</p>
    #
    #   Enum, one of: ["INVALID_FORMAT", "UNIQUE_CONSTRAINT_VIOLATED", "REFERENCED_RESOURCE_NOT_FOUND", "RESOURCE_NAME_ALREADY_EXISTS", "REQUIRED_PROPERTY_MISSING", "NOT_SUPPORTED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message describing why the property is not valid.</p>
    #
    #   @return [String]
    #
    PropertyValidationExceptionProperty = ::Struct.new(
      :property_path,
      :reason,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PropertyValidationExceptionReason
    #
    module PropertyValidationExceptionReason
      # No documentation available.
      #
      INVALID_FORMAT = "INVALID_FORMAT"

      # No documentation available.
      #
      UNIQUE_CONSTRAINT_VIOLATED = "UNIQUE_CONSTRAINT_VIOLATED"

      # No documentation available.
      #
      REFERENCED_RESOURCE_NOT_FOUND = "REFERENCED_RESOURCE_NOT_FOUND"

      # No documentation available.
      #
      RESOURCE_NAME_ALREADY_EXISTS = "RESOURCE_NAME_ALREADY_EXISTS"

      # No documentation available.
      #
      REQUIRED_PROPERTY_MISSING = "REQUIRED_PROPERTY_MISSING"

      # No documentation available.
      #
      NOT_SUPPORTED = "NOT_SUPPORTED"
    end

    # @!attribute user_id
    #   <p>The identifier of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_status_id
    #   <p>The identifier of the agent status.</p>
    #
    #   @return [String]
    #
    PutUserStatusInput = ::Struct.new(
      :user_id,
      :instance_id,
      :agent_status_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutUserStatusOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a queue.</p>
    #
    # @!attribute name
    #   <p>The name of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_arn
    #   <p>The Amazon Resource Name (ARN) for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute outbound_caller_config
    #   <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    #
    #   @return [OutboundCallerConfig]
    #
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_contacts
    #   <p>The maximum number of contacts that can be in the queue before it is considered full.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the queue.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    Queue = ::Struct.new(
      :name,
      :queue_arn,
      :queue_id,
      :description,
      :outbound_caller_config,
      :hours_of_operation_id,
      :max_contacts,
      :status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If this contact was queued, this contains information about the queue. </p>
    #
    # @!attribute id
    #   <p>The identifier of the agent who accepted the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute enqueue_timestamp
    #   <p>The timestamp when the contact was added to the queue.</p>
    #
    #   @return [Time]
    #
    QueueInfo = ::Struct.new(
      :id,
      :enqueue_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a queue for a quick connect. The contact flow must be of type
    #    Transfer to Queue.</p>
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    QueueQuickConnectConfig = ::Struct.new(
      :queue_id,
      :contact_flow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a queue resource for which metrics are returned.</p>
    #
    # @!attribute id
    #   <p>The identifier of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the queue.</p>
    #
    #   @return [String]
    #
    QueueReference = ::Struct.new(
      :id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QueueStatus
    #
    module QueueStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Contains summary information about a queue.</p>
    #
    # @!attribute id
    #   <p>The identifier of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_type
    #   <p>The type of queue.</p>
    #
    #   Enum, one of: ["STANDARD", "AGENT"]
    #
    #   @return [String]
    #
    QueueSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :queue_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QueueType
    #
    module QueueType
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      AGENT = "AGENT"
    end

    # <p>Contains information about a quick connect.</p>
    #
    # @!attribute quick_connect_arn
    #   <p>The Amazon Resource Name (ARN) of the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_config
    #   <p>Contains information about the quick connect.</p>
    #
    #   @return [QuickConnectConfig]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    QuickConnect = ::Struct.new(
      :quick_connect_arn,
      :quick_connect_id,
      :name,
      :description,
      :quick_connect_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains configuration settings for a quick connect.</p>
    #
    # @!attribute quick_connect_type
    #   <p>The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are
    #      prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE). </p>
    #
    #   Enum, one of: ["USER", "QUEUE", "PHONE_NUMBER"]
    #
    #   @return [String]
    #
    # @!attribute user_config
    #   <p>The user configuration. This is required only if QuickConnectType is USER.</p>
    #
    #   @return [UserQuickConnectConfig]
    #
    # @!attribute queue_config
    #   <p>The queue configuration. This is required only if QuickConnectType is QUEUE.</p>
    #
    #   @return [QueueQuickConnectConfig]
    #
    # @!attribute phone_config
    #   <p>The phone configuration. This is required only if QuickConnectType is PHONE_NUMBER.</p>
    #
    #   @return [PhoneNumberQuickConnectConfig]
    #
    QuickConnectConfig = ::Struct.new(
      :quick_connect_type,
      :user_config,
      :queue_config,
      :phone_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains summary information about a quick connect.</p>
    #
    # @!attribute id
    #   <p>The identifier for the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_type
    #   <p>The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are
    #      prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).</p>
    #
    #   Enum, one of: ["USER", "QUEUE", "PHONE_NUMBER"]
    #
    #   @return [String]
    #
    QuickConnectSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :quick_connect_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QuickConnectType
    #
    module QuickConnectType
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      QUEUE = "QUEUE"

      # No documentation available.
      #
      PHONE_NUMBER = "PHONE_NUMBER"
    end

    # <p>Indicates a field that is read-only to an agent.</p>
    #
    # @!attribute id
    #   <p>Identifier of the read-only field.</p>
    #
    #   @return [TaskTemplateFieldIdentifier]
    #
    ReadOnlyFieldInfo = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Well-formed data on a contact, used by agents to complete a contact request. You can have up
    #    to 4,096 UTF-8 bytes across all references for a contact.</p>
    #
    # @!attribute value
    #   <p>A valid value for the reference. For example, for a URL reference, a formatted URL that is
    #      displayed to an agent in the Contact Control Panel (CCP).</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the reference.</p>
    #
    #   Enum, one of: ["URL", "ATTACHMENT", "NUMBER", "STRING", "DATE", "EMAIL"]
    #
    #   @return [String]
    #
    Reference = ::Struct.new(
      :value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReferenceStatus
    #
    module ReferenceStatus
      # No documentation available.
      #
      APPROVED = "APPROVED"

      # No documentation available.
      #
      REJECTED = "REJECTED"
    end

    # <p>Contains summary information about a reference. <code>ReferenceSummary</code> contains only
    #    one non null field between the URL and attachment based on the reference type.</p>
    #
    class ReferenceSummary < Hearth::Union
      # <p>Information about the reference when the <code>referenceType</code> is <code>URL</code>.
      #    Otherwise, null.</p>
      #
      class Url < ReferenceSummary
        def to_h
          { url: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Connect::Types::Url #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Information about the reference when the <code>referenceType</code> is
      #     <code>ATTACHMENT</code>. Otherwise, null.</p>
      #
      class Attachment < ReferenceSummary
        def to_h
          { attachment: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Connect::Types::Attachment #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Information about a reference when the <code>referenceType</code> is <code>STRING</code>.
      #    Otherwise, null.</p>
      #
      class String < ReferenceSummary
        def to_h
          { string: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Connect::Types::String #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Information about a reference when the <code>referenceType</code> is <code>NUMBER</code>.
      #    Otherwise, null.</p>
      #
      class Number < ReferenceSummary
        def to_h
          { number: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Connect::Types::Number #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Information about a reference when the <code>referenceType</code> is <code>DATE</code>.
      #    Otherwise, null.</p>
      #
      class Date < ReferenceSummary
        def to_h
          { date: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Connect::Types::Date #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Information about a reference when the <code>referenceType</code> is <code>EMAIL</code>.
      #    Otherwise, null.</p>
      #
      class Email < ReferenceSummary
        def to_h
          { email: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Connect::Types::Email #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ReferenceSummary
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Connect::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for ReferenceType
    #
    module ReferenceType
      # No documentation available.
      #
      URL = "URL"

      # No documentation available.
      #
      ATTACHMENT = "ATTACHMENT"

      # No documentation available.
      #
      NUMBER = "NUMBER"

      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      DATE = "DATE"

      # No documentation available.
      #
      EMAIL = "EMAIL"
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    ReleasePhoneNumberInput = ::Struct.new(
      :phone_number_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ReleasePhoneNumberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a required field.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the field.</p>
    #
    #   @return [TaskTemplateFieldIdentifier]
    #
    RequiredFieldInfo = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource already has that name.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>That resource is already in use. Please try another.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #
    #   Enum, one of: ["CONTACT", "CONTACT_FLOW", "INSTANCE", "PARTICIPANT", "HIERARCHY_LEVEL", "HIERARCHY_GROUP", "USER"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier for the resource.</p>
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      :resource_type,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource was not found.</p>
    #
    # @!attribute message
    #   <p>The message about the resource.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      CONTACT = "CONTACT"

      # No documentation available.
      #
      CONTACT_FLOW = "CONTACT_FLOW"

      # No documentation available.
      #
      INSTANCE = "INSTANCE"

      # No documentation available.
      #
      PARTICIPANT = "PARTICIPANT"

      # No documentation available.
      #
      HIERARCHY_LEVEL = "HIERARCHY_LEVEL"

      # No documentation available.
      #
      HIERARCHY_GROUP = "HIERARCHY_GROUP"

      # No documentation available.
      #
      USER = "USER"
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    #   @return [String]
    #
    ResumeContactRecordingInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ResumeContactRecordingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a routing profile.</p>
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute media_concurrencies
    #   <p>The channels agents can handle in the Contact Control Panel (CCP) for this routing
    #      profile.</p>
    #
    #   @return [Array<MediaConcurrency>]
    #
    # @!attribute default_outbound_queue_id
    #   <p>The identifier of the default outbound queue for this routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    RoutingProfile = ::Struct.new(
      :instance_id,
      :name,
      :routing_profile_arn,
      :routing_profile_id,
      :description,
      :media_concurrencies,
      :default_outbound_queue_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the queue and channel for which priority and delay can be
    #    set.</p>
    #
    # @!attribute queue_reference
    #   <p>Contains information about a queue resource.</p>
    #
    #   @return [RoutingProfileQueueReference]
    #
    # @!attribute priority
    #   <p>The order in which contacts are to be handled for the queue. For more information, see
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html">Queues: priority and
    #       delay</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute delay
    #   <p>The delay, in seconds, a contact should be in the queue before they are routed to an
    #      available agent. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html">Queues: priority and
    #       delay</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    #   @return [Integer]
    #
    RoutingProfileQueueConfig = ::Struct.new(
      :queue_reference,
      :priority,
      :delay,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains summary information about a routing profile queue.</p>
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_arn
    #   <p>The Amazon Resource Name (ARN) of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_name
    #   <p>The name of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The order in which contacts are to be handled for the queue. For more information, see
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html">Queues: priority and
    #       delay</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute delay
    #   <p>The delay, in seconds, that a contact should be in the queue before they are routed to an
    #      available agent. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html">Queues: priority and
    #       delay</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute channel
    #   <p>The channels this queue supports.</p>
    #
    #   Enum, one of: ["VOICE", "CHAT", "TASK"]
    #
    #   @return [String]
    #
    RoutingProfileQueueConfigSummary = ::Struct.new(
      :queue_id,
      :queue_arn,
      :queue_name,
      :priority,
      :delay,
      :channel,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.priority ||= 0
        self.delay ||= 0
      end
    end

    # <p>Contains the channel and queue identifier for a routing profile.</p>
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute channel
    #   <p>The channels agents can handle in the Contact Control Panel (CCP) for this routing
    #      profile.</p>
    #
    #   Enum, one of: ["VOICE", "CHAT", "TASK"]
    #
    #   @return [String]
    #
    RoutingProfileQueueReference = ::Struct.new(
      :queue_id,
      :channel,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the routing profile assigned to the user.</p>
    #
    # @!attribute id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the routing profile.</p>
    #
    #   @return [String]
    #
    RoutingProfileReference = ::Struct.new(
      :id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains summary information about a routing profile.</p>
    #
    # @!attribute id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the routing profile.</p>
    #
    #   @return [String]
    #
    RoutingProfileSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the Amazon Simple Storage Service (Amazon S3) storage type.</p>
    #
    # @!attribute bucket_name
    #   <p>The S3 bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_prefix
    #   <p>The S3 bucket prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_config
    #   <p>The Amazon S3 encryption configuration.</p>
    #
    #   @return [EncryptionConfig]
    #
    S3Config = ::Struct.new(
      :bucket_name,
      :bucket_prefix,
      :encryption_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_country_code
    #   <p>The ISO country code.</p>
    #
    #   Enum, one of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #
    #   @return [String]
    #
    # @!attribute phone_number_type
    #   <p>The type of phone number.</p>
    #
    #   Enum, one of: ["TOLL_FREE", "DID"]
    #
    #   @return [String]
    #
    # @!attribute phone_number_prefix
    #   <p>The prefix of the phone number. If provided, it must contain <code>+</code> as part of the country code.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    SearchAvailablePhoneNumbersInput = ::Struct.new(
      :target_arn,
      :phone_number_country_code,
      :phone_number_type,
      :phone_number_prefix,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute available_numbers_list
    #   <p>A list of available phone numbers that you can claim for your Amazon Connect instance.</p>
    #
    #   @return [Array<AvailableNumberSummary>]
    #
    SearchAvailablePhoneNumbersOutput = ::Struct.new(
      :next_token,
      :available_numbers_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #
    #   @return [UserSearchFilter]
    #
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return users.</p>
    #
    #   @return [UserSearchCriteria]
    #
    SearchUsersInput = ::Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute users
    #   <p>Information about the users.</p>
    #
    #   @return [Array<UserSearchSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute approximate_total_count
    #   <p>The total number of users who matched your search query.</p>
    #
    #   @return [Integer]
    #
    SearchUsersOutput = ::Struct.new(
      :users,
      :next_token,
      :approximate_total_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the custom vocabulary.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute name_starts_with
    #   <p>The starting pattern of the name of the vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    #   Enum, one of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #
    #   @return [String]
    #
    SearchVocabulariesInput = ::Struct.new(
      :instance_id,
      :max_results,
      :next_token,
      :state,
      :name_starts_with,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute vocabulary_summary_list
    #   <p>The list of the available custom vocabularies.</p>
    #
    #   @return [Array<VocabularySummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    SearchVocabulariesOutput = ::Struct.new(
      :vocabulary_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information of the security key.</p>
    #
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key of the security key.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>When the security key was created.</p>
    #
    #   @return [Time]
    #
    SecurityKey = ::Struct.new(
      :association_id,
      :key,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a security profile.</p>
    #
    # @!attribute id
    #   <p>The identifier for the security profile.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_resource_id
    #   <p>The organization resource identifier for the security profile.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the secruity profile.</p>
    #
    #   @return [String]
    #
    # @!attribute security_profile_name
    #   <p>The name for the security profile.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the security profile.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    SecurityProfile = ::Struct.new(
      :id,
      :organization_resource_id,
      :arn,
      :security_profile_name,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a security profile.</p>
    #
    # @!attribute id
    #   <p>The identifier of the security profile.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the security profile.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the security profile.</p>
    #
    #   @return [String]
    #
    SecurityProfileSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service quota has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SourceType
    #
    module SourceType
      # No documentation available.
      #
      SALESFORCE = "SALESFORCE"

      # No documentation available.
      #
      ZENDESK = "ZENDESK"
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow for initiating the chat.
    #      To
    #      see the ContactFlowId in the Amazon Connect console user interface, on the navigation menu go to <b>Routing</b>, <b>Contact Flows</b>. Choose the
    #      contact flow. On the contact flow page, under the name of the contact flow, choose <b>Show additional flow information</b>. The ContactFlowId is the last part of
    #      the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect
    #      attributes. They can be accessed in contact flows just like any other contact attributes. </p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute participant_details
    #   <p>Information identifying the participant.</p>
    #
    #   @return [ParticipantDetails]
    #
    # @!attribute initial_message
    #   <p>The initial message to be sent to the newly created chat.</p>
    #
    #   @return [ChatMessage]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    #   @return [String]
    #
    # @!attribute chat_duration_in_minutes
    #   <p>The total duration of the newly started chat session. If not specified, the chat session
    #      duration defaults to 25 hour. The minumum configurable time is 60 minutes. The maximum
    #      configurable time is 10,080 minutes (7 days).</p>
    #
    #   @return [Integer]
    #
    # @!attribute supported_messaging_content_types
    #   <p>The supported chat message content types. Content types can be text/plain or both text/plain
    #      and text/markdown.</p>
    #
    #   @return [Array<String>]
    #
    StartChatContactInput = ::Struct.new(
      :instance_id,
      :contact_flow_id,
      :attributes,
      :participant_details,
      :initial_message,
      :client_token,
      :chat_duration_in_minutes,
      :supported_messaging_content_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of this contact within the Amazon Connect instance. </p>
    #
    #   @return [String]
    #
    # @!attribute participant_id
    #   <p>The identifier for a chat participant. The participantId for a chat participant is the same
    #      throughout the chat lifecycle.</p>
    #
    #   @return [String]
    #
    # @!attribute participant_token
    #   <p>The token used by the chat participant to call <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html">CreateParticipantConnection</a>. The participant token is valid for the lifetime of a chat
    #      participant.</p>
    #
    #   @return [String]
    #
    StartChatContactOutput = ::Struct.new(
      :contact_id,
      :participant_id,
      :participant_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    #   @return [String]
    #
    # @!attribute voice_recording_configuration
    #   <p>The person being recorded.</p>
    #
    #   @return [VoiceRecordingConfiguration]
    #
    StartContactRecordingInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id,
      :voice_recording_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartContactRecordingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    #   @return [String]
    #
    # @!attribute chat_streaming_configuration
    #   <p>The streaming configuration, such as the Amazon SNS streaming endpoint.</p>
    #
    #   @return [ChatStreamingConfiguration]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    StartContactStreamingInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :chat_streaming_configuration,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute streaming_id
    #   <p>The identifier of the streaming configuration enabled. </p>
    #
    #   @return [String]
    #
    StartContactStreamingOutput = ::Struct.new(
      :streaming_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The phone number of the customer, in E.164 format.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The
    #      identifier of the contact flow for the outbound call. To see the ContactFlowId in the Amazon Connect
    #      console user interface, on the navigation menu go to <b>Routing</b>,
    #       <b>Contact Flows</b>. Choose the contact flow. On the contact flow
    #      page, under the name of the contact flow, choose <b>Show additional flow
    #       information</b>. The ContactFlowId is the last part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request. The token is valid for 7 days after creation. If a contact is already started, the
    #      contact ID is returned.
    #      </p>
    #
    #   @return [String]
    #
    # @!attribute source_phone_number
    #   <p>The phone number associated with the Amazon Connect instance, in E.164 format. If you do not specify
    #      a source phone number, you must specify a queue.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The queue for the call. If you specify a queue, the phone displayed for caller ID is the
    #      phone number specified in the queue. If you do not specify a queue, the queue defined in the
    #      contact flow is used. If you do not specify a queue, you must specify a source phone
    #      number.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect
    #      attributes, and can be accessed in contact flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute answer_machine_detection_config
    #   <p>Configuration of the answering machine detection for this outbound call. </p>
    #
    #   @return [AnswerMachineDetectionConfig]
    #
    # @!attribute campaign_id
    #   <p>The campaign identifier of the outbound communication.</p>
    #
    #   @return [String]
    #
    # @!attribute traffic_type
    #   <p>Denotes the class of traffic. Calls with different traffic types are handled differently by
    #      Amazon Connect. The default value is <code>GENERAL</code>. Use <code>CAMPAIGN</code> if
    #       <code>EnableAnswerMachineDetection</code> is set to <code>true</code>. For all other cases, use
    #       <code>GENERAL</code>. </p>
    #
    #   Enum, one of: ["GENERAL", "CAMPAIGN"]
    #
    #   @return [String]
    #
    StartOutboundVoiceContactInput = ::Struct.new(
      :destination_phone_number,
      :contact_flow_id,
      :instance_id,
      :client_token,
      :source_phone_number,
      :queue_id,
      :attributes,
      :answer_machine_detection_config,
      :campaign_id,
      :traffic_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of this contact within the Amazon Connect instance.</p>
    #
    #   @return [String]
    #
    StartOutboundVoiceContactOutput = ::Struct.new(
      :contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute previous_contact_id
    #   <p>The identifier of the previous chat, voice, or task contact. </p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow for initiating the tasks. To see the ContactFlowId in the
    #      Amazon Connect console user interface, on the navigation menu go to <b>Routing</b>, <b>Contact Flows</b>. Choose the contact flow. On
    #      the contact flow page, under the name of the contact flow, choose <b>Show
    #       additional flow information</b>. The ContactFlowId is the last part of the ARN, shown
    #      here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect
    #      attributes, and can be accessed in contact flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute name
    #   <p>The name of a task that is shown to an agent in the Contact Control Panel (CCP).</p>
    #
    #   @return [String]
    #
    # @!attribute references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP).</p>
    #
    #   @return [Hash<String, Reference>]
    #
    # @!attribute description
    #   <p>A description of the task that is shown to an agent in the Contact Control Panel
    #      (CCP).</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_time
    #   <p>The timestamp, in Unix Epoch seconds format, at which to start running the inbound contact flow. The scheduled time cannot be in the past. It must be within up to 6 days in future. </p>
    #
    #   @return [Time]
    #
    # @!attribute task_template_id
    #   <p>A unique identifier for the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    #   @return [String]
    #
    StartTaskContactInput = ::Struct.new(
      :instance_id,
      :previous_contact_id,
      :contact_flow_id,
      :attributes,
      :name,
      :references,
      :description,
      :client_token,
      :scheduled_time,
      :task_template_id,
      :quick_connect_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of this contact within the Amazon Connect instance.</p>
    #
    #   @return [String]
    #
    StartTaskContactOutput = ::Struct.new(
      :contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Statistic
    #
    module Statistic
      # No documentation available.
      #
      SUM = "SUM"

      # No documentation available.
      #
      MAX = "MAX"

      # No documentation available.
      #
      AVG = "AVG"
    end

    # @!attribute contact_id
    #   <p>The ID of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    StopContactInput = ::Struct.new(
      :contact_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopContactOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    #   @return [String]
    #
    StopContactRecordingInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopContactRecordingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact that is associated with
    #      the first interaction with the contact center.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_id
    #   <p>The identifier of the streaming configuration enabled. </p>
    #
    #   @return [String]
    #
    StopContactStreamingInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :streaming_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopContactStreamingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StorageType
    #
    module StorageType
      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      KINESIS_VIDEO_STREAM = "KINESIS_VIDEO_STREAM"

      # No documentation available.
      #
      KINESIS_STREAM = "KINESIS_STREAM"

      # No documentation available.
      #
      KINESIS_FIREHOSE = "KINESIS_FIREHOSE"
    end

    # Includes enum constants for StringComparisonType
    #
    module StringComparisonType
      # No documentation available.
      #
      STARTS_WITH = "STARTS_WITH"

      # No documentation available.
      #
      CONTAINS = "CONTAINS"

      # No documentation available.
      #
      EXACT = "EXACT"
    end

    # <p>A leaf node condition which can be used to specify a string condition, for example,
    #     <code>username = 'abc'</code>. </p>
    #
    # @!attribute field_name
    #   <p>The name of the field in the string condition.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the string.</p>
    #
    #   @return [String]
    #
    # @!attribute comparison_type
    #   <p>The type of comparison to be made when evaluating the string condition.</p>
    #
    #   Enum, one of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #
    #   @return [String]
    #
    StringCondition = ::Struct.new(
      :field_name,
      :value,
      :comparison_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a reference when the <code>referenceType</code> is <code>STRING</code>.
    #    Otherwise, null.</p>
    #
    # @!attribute name
    #   <p>Identifier of the string reference.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A valid string.</p>
    #
    #   @return [String]
    #
    StringReference = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    #   @return [String]
    #
    SuspendContactRecordingInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SuspendContactRecordingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A leaf node condition which can be used to specify a tag condition, for example, <code>HAVE
    #     BPO = 123</code>. </p>
    #
    # @!attribute tag_key
    #   <p>The tag key in the tag condition.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_value
    #   <p>The tag value in the tag condition.</p>
    #
    #   @return [String]
    #
    TagCondition = ::Struct.new(
      :tag_key,
      :tag_value,
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
    #   <p>One or more tags. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #
    #   @return [Hash<String, String>]
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

    # <p>Describes constraints that apply to the template fields.</p>
    #
    # @!attribute required_fields
    #   <p>Lists the fields that are required to be filled by agents.</p>
    #
    #   @return [Array<RequiredFieldInfo>]
    #
    # @!attribute read_only_fields
    #   <p>Lists the fields that are read-only to agents, and cannot be edited.</p>
    #
    #   @return [Array<ReadOnlyFieldInfo>]
    #
    # @!attribute invisible_fields
    #   <p>Lists the fields that are invisible to agents.</p>
    #
    #   @return [Array<InvisibleFieldInfo>]
    #
    TaskTemplateConstraints = ::Struct.new(
      :required_fields,
      :read_only_fields,
      :invisible_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a default field and its corresponding value.</p>
    #
    # @!attribute id
    #   <p>Identifier of a field. </p>
    #
    #   @return [TaskTemplateFieldIdentifier]
    #
    # @!attribute default_value
    #   <p>Default value for the field.</p>
    #
    #   @return [String]
    #
    TaskTemplateDefaultFieldValue = ::Struct.new(
      :id,
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes default values for fields on a template.</p>
    #
    # @!attribute default_field_values
    #   <p>Default value for the field.</p>
    #
    #   @return [Array<TaskTemplateDefaultFieldValue>]
    #
    TaskTemplateDefaults = ::Struct.new(
      :default_field_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a single task template field.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the field.</p>
    #
    #   @return [TaskTemplateFieldIdentifier]
    #
    # @!attribute description
    #   <p>The description of the field.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Indicates the type of field.</p>
    #
    #   Enum, one of: ["NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL"]
    #
    #   @return [String]
    #
    # @!attribute single_select_options
    #   <p>A list of options for a single select field.</p>
    #
    #   @return [Array<String>]
    #
    TaskTemplateField = ::Struct.new(
      :id,
      :description,
      :type,
      :single_select_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The identifier of the task template field.</p>
    #
    # @!attribute name
    #   <p>The name of the task template field.</p>
    #
    #   @return [String]
    #
    TaskTemplateFieldIdentifier = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskTemplateFieldType
    #
    module TaskTemplateFieldType
      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      DESCRIPTION = "DESCRIPTION"

      # No documentation available.
      #
      SCHEDULED_TIME = "SCHEDULED_TIME"

      # No documentation available.
      #
      QUICK_CONNECT = "QUICK_CONNECT"

      # No documentation available.
      #
      URL = "URL"

      # No documentation available.
      #
      NUMBER = "NUMBER"

      # No documentation available.
      #
      TEXT = "TEXT"

      # No documentation available.
      #
      TEXT_AREA = "TEXT_AREA"

      # No documentation available.
      #
      DATE_TIME = "DATE_TIME"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      SINGLE_SELECT = "SINGLE_SELECT"

      # No documentation available.
      #
      EMAIL = "EMAIL"
    end

    # <p>Contains summary information about the task template.</p>
    #
    # @!attribute id
    #   <p>A unique identifier for the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it.
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp when the task template was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>The timestamp when the task template was created.</p>
    #
    #   @return [Time]
    #
    TaskTemplateMetadata = ::Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :status,
      :last_modified_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskTemplateStatus
    #
    module TaskTemplateStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # <p>Contains information about the threshold for service level metrics.</p>
    #
    # @!attribute comparison
    #   <p>The type of comparison. Only "less than" (LT) comparisons are supported.</p>
    #
    #   Enum, one of: ["LT"]
    #
    #   @return [String]
    #
    # @!attribute threshold_value
    #   <p>The threshold value to compare.</p>
    #
    #   @return [Float]
    #
    Threshold = ::Struct.new(
      :comparison,
      :threshold_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The throttling limit has been exceeded.</p>
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

    # Includes enum constants for TrafficType
    #
    module TrafficType
      # No documentation available.
      #
      GENERAL = "GENERAL"

      # No documentation available.
      #
      CAMPAIGN = "CAMPAIGN"
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    TransferContactInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :queue_id,
      :user_id,
      :contact_flow_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #
    #   @return [String]
    #
    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact.</p>
    #
    #   @return [String]
    #
    TransferContactOutput = ::Struct.new(
      :contact_id,
      :contact_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Unit
    #
    module Unit
      # No documentation available.
      #
      SECONDS = "SECONDS"

      # No documentation available.
      #
      COUNT = "COUNT"

      # No documentation available.
      #
      PERCENT = "PERCENT"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
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

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_status_id
    #   <p>The identifier of the agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the agent status.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the agent status.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute display_order
    #   <p>The display order of the agent status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reset_order_number
    #   <p>A number indicating the reset order of the agent status.</p>
    #
    #   @return [Boolean]
    #
    UpdateAgentStatusInput = ::Struct.new(
      :instance_id,
      :agent_status_id,
      :name,
      :description,
      :state,
      :display_order,
      :reset_order_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.reset_order_number ||= false
      end
    end

    UpdateAgentStatusOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The Amazon Connect attributes. These attributes can be accessed in contact flows just like any other
    #      contact attributes.</p>
    #            <p>You can have up to 32,768 UTF-8 bytes across all attributes for a contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateContactAttributesInput = ::Struct.new(
      :initial_contact_id,
      :instance_id,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateContactAttributesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The JSON string that represents contact flow’s content. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/flow-language-example.html">Example contact
    #       flow in Amazon Connect Flow language</a> in the <i>Amazon Connect Administrator Guide</i>.
    #     </p>
    #
    #   @return [String]
    #
    UpdateContactFlowContentInput = ::Struct.new(
      :instance_id,
      :contact_flow_id,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateContactFlowContentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>TThe name of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_state
    #   <p>The state of contact flow.</p>
    #
    #   Enum, one of: ["ACTIVE", "ARCHIVED"]
    #
    #   @return [String]
    #
    UpdateContactFlowMetadataInput = ::Struct.new(
      :instance_id,
      :contact_flow_id,
      :name,
      :description,
      :contact_flow_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateContactFlowMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_module_id
    #   <p>The identifier of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the contact flow module.</p>
    #
    #   @return [String]
    #
    UpdateContactFlowModuleContentInput = ::Struct.new(
      :instance_id,
      :contact_flow_module_id,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateContactFlowModuleContentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_module_id
    #   <p>The identifier of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the contact flow module.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of contact flow module.</p>
    #
    #   Enum, one of: ["ACTIVE", "ARCHIVED"]
    #
    #   @return [String]
    #
    UpdateContactFlowModuleMetadataInput = ::Struct.new(
      :instance_id,
      :contact_flow_module_id,
      :name,
      :description,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateContactFlowModuleMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact flow.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the contact flow.</p>
    #
    #   @return [String]
    #
    UpdateContactFlowNameInput = ::Struct.new(
      :instance_id,
      :contact_flow_id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateContactFlowNameOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with your contact center.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute references
    #   <p>Well-formed data on contact, shown to agents on Contact Control Panel (CCP).</p>
    #
    #   @return [Hash<String, Reference>]
    #
    UpdateContactInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :name,
      :description,
      :references,
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

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_time
    #   <p>The timestamp, in Unix Epoch seconds format, at which to start running the inbound contact flow. The scheduled time cannot be in the past. It must be within up to 6 days in future. </p>
    #
    #   @return [Time]
    #
    UpdateContactScheduleInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :scheduled_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateContactScheduleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute hours_of_operation_id
    #   <p>The identifier of the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute time_zone
    #   <p>The time zone of the hours of operation.</p>
    #
    #   @return [String]
    #
    # @!attribute config
    #   <p>Configuration information of the hours of operation.</p>
    #
    #   @return [Array<HoursOfOperationConfig>]
    #
    UpdateHoursOfOperationInput = ::Struct.new(
      :instance_id,
      :hours_of_operation_id,
      :name,
      :description,
      :time_zone,
      :config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateHoursOfOperationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_type
    #   <p>The type of attribute.</p>
    #            <note>
    #               <p>Only allowlisted customers can consume USE_CUSTOM_TTS_VOICES. To access this feature,
    #       contact Amazon Web Services Support for allowlisting.</p>
    #            </note>
    #
    #   Enum, one of: ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the attribute. Maximum character limit is 100. </p>
    #
    #   @return [String]
    #
    UpdateInstanceAttributeInput = ::Struct.new(
      :instance_id,
      :attribute_type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateInstanceAttributeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #
    #   Enum, one of: ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"]
    #
    #   @return [String]
    #
    # @!attribute storage_config
    #   <p>The storage configuration for the instance.</p>
    #
    #   @return [InstanceStorageConfig]
    #
    UpdateInstanceStorageConfigInput = ::Struct.new(
      :instance_id,
      :association_id,
      :resource_type,
      :storage_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateInstanceStorageConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    UpdatePhoneNumberInput = ::Struct.new(
      :phone_number_id,
      :target_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #
    #   @return [String]
    #
    UpdatePhoneNumberOutput = ::Struct.new(
      :phone_number_id,
      :phone_number_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    #   @return [String]
    #
    UpdateQueueHoursOfOperationInput = ::Struct.new(
      :instance_id,
      :queue_id,
      :hours_of_operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateQueueHoursOfOperationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute max_contacts
    #   <p>The maximum number of contacts that can be in the queue before it is considered full.</p>
    #
    #   @return [Integer]
    #
    UpdateQueueMaxContactsInput = ::Struct.new(
      :instance_id,
      :queue_id,
      :max_contacts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateQueueMaxContactsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the queue.</p>
    #
    #   @return [String]
    #
    UpdateQueueNameInput = ::Struct.new(
      :instance_id,
      :queue_id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateQueueNameOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute outbound_caller_config
    #   <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    #
    #   @return [OutboundCallerConfig]
    #
    UpdateQueueOutboundCallerConfigInput = ::Struct.new(
      :instance_id,
      :queue_id,
      :outbound_caller_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateQueueOutboundCallerConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the queue.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    UpdateQueueStatusInput = ::Struct.new(
      :instance_id,
      :queue_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateQueueStatusOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_config
    #   <p>Information about the configuration settings for the quick connect.</p>
    #
    #   @return [QuickConnectConfig]
    #
    UpdateQuickConnectConfigInput = ::Struct.new(
      :instance_id,
      :quick_connect_id,
      :quick_connect_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateQuickConnectConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the quick connect.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the quick connect.</p>
    #
    #   @return [String]
    #
    UpdateQuickConnectNameInput = ::Struct.new(
      :instance_id,
      :quick_connect_id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateQuickConnectNameOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute media_concurrencies
    #   <p>The channels that agents can handle in the Contact Control Panel (CCP).</p>
    #
    #   @return [Array<MediaConcurrency>]
    #
    UpdateRoutingProfileConcurrencyInput = ::Struct.new(
      :instance_id,
      :routing_profile_id,
      :media_concurrencies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRoutingProfileConcurrencyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute default_outbound_queue_id
    #   <p>The identifier for the default outbound queue.</p>
    #
    #   @return [String]
    #
    UpdateRoutingProfileDefaultOutboundQueueInput = ::Struct.new(
      :instance_id,
      :routing_profile_id,
      :default_outbound_queue_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRoutingProfileDefaultOutboundQueueOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the routing profile. Must not be more than 127 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the routing profile. Must not be more than 250 characters.</p>
    #
    #   @return [String]
    #
    UpdateRoutingProfileNameInput = ::Struct.new(
      :instance_id,
      :routing_profile_id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRoutingProfileNameOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute queue_configs
    #   <p>The queues to be updated for this routing profile.
    #      Queues must first be associated to the routing
    #      profile. You can do this using AssociateRoutingProfileQueues.</p>
    #
    #   @return [Array<RoutingProfileQueueConfig>]
    #
    UpdateRoutingProfileQueuesInput = ::Struct.new(
      :instance_id,
      :routing_profile_id,
      :queue_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRoutingProfileQueuesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>The description of the security profile.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>The permissions granted to a security profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    UpdateSecurityProfileInput = ::Struct.new(
      :description,
      :permissions,
      :security_profile_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateSecurityProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_template_id
    #   <p>A unique identifier for the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    #
    #   @return [String]
    #
    # @!attribute constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    #
    #   @return [TaskTemplateConstraints]
    #
    # @!attribute defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    #
    #   @return [TaskTemplateDefaults]
    #
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it.
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>Fields that are part of the template.</p>
    #
    #   @return [Array<TaskTemplateField>]
    #
    UpdateTaskTemplateInput = ::Struct.new(
      :task_template_id,
      :instance_id,
      :name,
      :description,
      :contact_flow_id,
      :constraints,
      :defaults,
      :status,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the task template resource.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the task template resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the task template.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    #
    #   @return [String]
    #
    # @!attribute constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    #
    #   @return [TaskTemplateConstraints]
    #
    # @!attribute defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    #
    #   @return [TaskTemplateDefaults]
    #
    # @!attribute fields
    #   <p>Fields that are part of the template.</p>
    #
    #   @return [Array<TaskTemplateField>]
    #
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it.
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp when the task template was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_time
    #   <p>The timestamp when the task template was created.</p>
    #
    #   @return [Time]
    #
    UpdateTaskTemplateOutput = ::Struct.new(
      :instance_id,
      :id,
      :arn,
      :name,
      :description,
      :contact_flow_id,
      :constraints,
      :defaults,
      :fields,
      :status,
      :last_modified_time,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the hierarchy group. Must not be more than 100 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    UpdateUserHierarchyGroupNameInput = ::Struct.new(
      :name,
      :hierarchy_group_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateUserHierarchyGroupNameOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    UpdateUserHierarchyInput = ::Struct.new(
      :hierarchy_group_id,
      :user_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateUserHierarchyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hierarchy_structure
    #   <p>The hierarchy levels to update.</p>
    #
    #   @return [HierarchyStructureUpdate]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    UpdateUserHierarchyStructureInput = ::Struct.new(
      :hierarchy_structure,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateUserHierarchyStructureOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_info
    #   <p>The identity information for the user.</p>
    #
    #   @return [UserIdentityInfo]
    #
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    UpdateUserIdentityInfoInput = ::Struct.new(
      :identity_info,
      :user_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateUserIdentityInfoOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_config
    #   <p>Information about phone configuration settings for the user.</p>
    #
    #   @return [UserPhoneConfig]
    #
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    UpdateUserPhoneConfigInput = ::Struct.new(
      :phone_config,
      :user_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateUserPhoneConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    UpdateUserRoutingProfileInput = ::Struct.new(
      :routing_profile_id,
      :user_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateUserRoutingProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_profile_ids
    #   <p>The identifiers of the security profiles for the user.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    #   @return [String]
    #
    UpdateUserSecurityProfilesInput = ::Struct.new(
      :security_profile_ids,
      :user_id,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateUserSecurityProfilesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The URL reference.</p>
    #
    # @!attribute name
    #   <p>Identifier of the URL reference.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A valid URL.</p>
    #
    #   @return [String]
    #
    UrlReference = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the
    #    use
    #    case.</p>
    #
    # @!attribute use_case_id
    #   <p>The identifier for the use case.</p>
    #
    #   @return [String]
    #
    # @!attribute use_case_arn
    #   <p>The Amazon Resource Name (ARN) for the use case.</p>
    #
    #   @return [String]
    #
    # @!attribute use_case_type
    #   <p>The type of use case to associate to the integration association. Each integration
    #      association can have only one of each use case type.</p>
    #
    #   Enum, one of: ["RULES_EVALUATION", "CONNECT_CAMPAIGNS"]
    #
    #   @return [String]
    #
    UseCase = ::Struct.new(
      :use_case_id,
      :use_case_arn,
      :use_case_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UseCaseType
    #
    module UseCaseType
      # No documentation available.
      #
      RULES_EVALUATION = "RULES_EVALUATION"

      # No documentation available.
      #
      CONNECT_CAMPAIGNS = "CONNECT_CAMPAIGNS"
    end

    # <p>Contains information about a user account for a Amazon Connect instance.</p>
    #
    # @!attribute id
    #   <p>The identifier of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name assigned to the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_info
    #   <p>Information about the user identity.</p>
    #
    #   @return [UserIdentityInfo]
    #
    # @!attribute phone_config
    #   <p>Information about the phone configuration for the user.</p>
    #
    #   @return [UserPhoneConfig]
    #
    # @!attribute directory_user_id
    #   <p>The identifier of the user account in the directory used for identity management.</p>
    #
    #   @return [String]
    #
    # @!attribute security_profile_ids
    #   <p>The identifiers of the security profiles for the user.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The
    #      tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    User = ::Struct.new(
      :id,
      :arn,
      :username,
      :identity_info,
      :phone_config,
      :directory_user_id,
      :security_profile_ids,
      :routing_profile_id,
      :hierarchy_group_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data for a user.</p>
    #
    # @!attribute user
    #   <p>Information about the user for the data that is returned. It contains resourceId and ARN of
    #      the user. </p>
    #
    #   @return [UserReference]
    #
    # @!attribute routing_profile
    #   <p>Information about the routing profile that is assigned to the user.</p>
    #
    #   @return [RoutingProfileReference]
    #
    # @!attribute hierarchy_path
    #   <p>Contains information about the levels of a hierarchy group assigned to a user.</p>
    #
    #   @return [HierarchyPathReference]
    #
    # @!attribute status
    #   <p>The status of the agent that they manually set in their Contact Control Panel (CCP), or that
    #      the supervisor manually changes in the real-time metrics report.</p>
    #
    #   @return [AgentStatusReference]
    #
    # @!attribute available_slots_by_channel
    #   <p>A map of available slots by channel. The key is a channel name. The value is an integer: the
    #      available number of slots. </p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute max_slots_by_channel
    #   <p>A map of maximum slots by channel. The key is a channel name. The value is an integer: the
    #      maximum number of slots. This is calculated from <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_MediaConcurrency.html">MediaConcurrency</a> of the RoutingProfile assigned to the agent. </p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute active_slots_by_channel
    #   <p> A map of active slots by channel. The key is a channel name. The value is an integer: the
    #      number of active slots.  </p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute contacts
    #   <p>A list of contact reference information.</p>
    #
    #   @return [Array<AgentContactReference>]
    #
    UserData = ::Struct.new(
      :user,
      :routing_profile,
      :hierarchy_path,
      :status,
      :available_slots_by_channel,
      :max_slots_by_channel,
      :active_slots_by_channel,
      :contacts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter for the user data.</p>
    #
    # @!attribute queues
    #   <p>Contains information about a queue resource for which metrics are returned.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute contact_filter
    #   <p>A filter for the user data based on the contact information that is associated to the user. It
    #      contains a list of contact states. </p>
    #
    #   @return [ContactFilter]
    #
    UserDataFilters = ::Struct.new(
      :queues,
      :contact_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the identity of a user.</p>
    #
    # @!attribute first_name
    #   <p>The first name. This is required if you are using Amazon Connect or SAML for identity
    #      management.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name. This is required if you are using Amazon Connect or SAML for identity
    #      management.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address. If you are using SAML for identity management and include this parameter,
    #      an error is returned.</p>
    #
    #   @return [String]
    #
    UserIdentityInfo = ::Struct.new(
      :first_name,
      :last_name,
      :email,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user's first name and last name.</p>
    #
    # @!attribute first_name
    #   <p>The user's first name.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The user's last name.</p>
    #
    #   @return [String]
    #
    UserIdentityInfoLite = ::Struct.new(
      :first_name,
      :last_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>No user with the specified credentials was found in the Amazon Connect instance.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UserNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the phone configuration settings for a user.</p>
    #
    # @!attribute phone_type
    #   <p>The phone type.</p>
    #
    #   Enum, one of: ["SOFT_PHONE", "DESK_PHONE"]
    #
    #   @return [String]
    #
    # @!attribute auto_accept
    #   <p>The Auto accept setting.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute after_contact_work_time_limit
    #   <p>The After Call Work (ACW) timeout setting, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute desk_phone_number
    #   <p>The phone number for the user's desk phone.</p>
    #
    #   @return [String]
    #
    UserPhoneConfig = ::Struct.new(
      :phone_type,
      :auto_accept,
      :after_contact_work_time_limit,
      :desk_phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_accept ||= false
        self.after_contact_work_time_limit ||= 0
      end
    end

    # <p>Contains information about the quick connect configuration settings for a user. The contact
    #    flow must be of type Transfer to Agent.</p>
    #
    # @!attribute user_id
    #   <p>The identifier of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    #   @return [String]
    #
    UserQuickConnectConfig = ::Struct.new(
      :user_id,
      :contact_flow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the user.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the user.</p>
    #
    #   @return [String]
    #
    UserReference = ::Struct.new(
      :id,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The search criteria to be used to return users.</p>
    #
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code>
    #      condition.</p>
    #
    #   @return [Array<UserSearchCriteria>]
    #
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an <code>AND</code> condition.
    #     </p>
    #
    #   @return [Array<UserSearchCriteria>]
    #
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #
    #   @return [StringCondition]
    #
    # @!attribute hierarchy_group_condition
    #   <p>A leaf node condition which can be used to specify a hierarchy group condition.</p>
    #
    #   @return [HierarchyGroupCondition]
    #
    UserSearchCriteria = ::Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      :hierarchy_group_condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters to be applied to search results.</p>
    #
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #
    #   @return [ControlPlaneTagFilter]
    #
    UserSearchFilter = ::Struct.new(
      :tag_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the returned users.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_user_id
    #   <p>The directory identifier of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_group_id
    #   <p>The identifier of the user's hierarchy group.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the user's summary.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_info
    #   <p>The user's first name and last name.</p>
    #
    #   @return [UserIdentityInfoLite]
    #
    # @!attribute phone_config
    #   <p>Contains information about the phone configuration settings for a user.</p>
    #
    #   @return [UserPhoneConfig]
    #
    # @!attribute routing_profile_id
    #   <p>The identifier of the user's routing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute security_profile_ids
    #   <p>The identifiers of the user's security profiles.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute username
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    UserSearchSummary = ::Struct.new(
      :arn,
      :directory_user_id,
      :hierarchy_group_id,
      :id,
      :identity_info,
      :phone_config,
      :routing_profile_id,
      :security_profile_ids,
      :tags,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains summary information about a user.</p>
    #
    # @!attribute id
    #   <p>The identifier of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user account.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The Amazon Connect user name of the user account.</p>
    #
    #   @return [String]
    #
    UserSummary = ::Struct.new(
      :id,
      :arn,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a custom vocabulary.</p>
    #
    # @!attribute name
    #   <p>A unique name of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    #   Enum, one of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the custom vocabulary.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp when the custom vocabulary was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>The reason why the custom vocabulary was not created.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the custom vocabulary in plain-text format with a table of values. Each row
    #      in the table represents a word or a phrase, described with <code>Phrase</code>, <code>IPA</code>,
    #       <code>SoundsLike</code>, and <code>DisplayAs</code> fields. Separate the fields with TAB
    #      characters. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html create-vocabulary-table">Create a custom
    #       vocabulary using a table</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    Vocabulary = ::Struct.new(
      :name,
      :id,
      :arn,
      :language_code,
      :state,
      :last_modified_time,
      :failure_reason,
      :content,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VocabularyLanguageCode
    #
    module VocabularyLanguageCode
      # No documentation available.
      #
      AR_AE = "ar-AE"

      # No documentation available.
      #
      DE_CH = "de-CH"

      # No documentation available.
      #
      DE_DE = "de-DE"

      # No documentation available.
      #
      EN_AB = "en-AB"

      # No documentation available.
      #
      EN_AU = "en-AU"

      # No documentation available.
      #
      EN_GB = "en-GB"

      # No documentation available.
      #
      EN_IE = "en-IE"

      # No documentation available.
      #
      EN_IN = "en-IN"

      # No documentation available.
      #
      EN_US = "en-US"

      # No documentation available.
      #
      EN_WL = "en-WL"

      # No documentation available.
      #
      ES_ES = "es-ES"

      # No documentation available.
      #
      ES_US = "es-US"

      # No documentation available.
      #
      FR_CA = "fr-CA"

      # No documentation available.
      #
      FR_FR = "fr-FR"

      # No documentation available.
      #
      HI_IN = "hi-IN"

      # No documentation available.
      #
      IT_IT = "it-IT"

      # No documentation available.
      #
      JA_JP = "ja-JP"

      # No documentation available.
      #
      KO_KR = "ko-KR"

      # No documentation available.
      #
      PT_BR = "pt-BR"

      # No documentation available.
      #
      PT_PT = "pt-PT"

      # No documentation available.
      #
      ZH_CN = "zh-CN"
    end

    # Includes enum constants for VocabularyState
    #
    module VocabularyState
      # No documentation available.
      #
      CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      CREATION_FAILED = "CREATION_FAILED"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"
    end

    # <p>Contains summary information about the custom vocabulary.</p>
    #
    # @!attribute name
    #   <p>A unique name of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the custom vocabulary.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    #   Enum, one of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the custom vocabulary.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp when the custom vocabulary was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>The reason why the custom vocabulary was not created.</p>
    #
    #   @return [String]
    #
    VocabularySummary = ::Struct.new(
      :name,
      :id,
      :arn,
      :language_code,
      :state,
      :last_modified_time,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the recording configuration settings.</p>
    #
    # @!attribute voice_recording_track
    #   <p>Identifies which track is being recorded.</p>
    #
    #   Enum, one of: ["FROM_AGENT", "TO_AGENT", "ALL"]
    #
    #   @return [String]
    #
    VoiceRecordingConfiguration = ::Struct.new(
      :voice_recording_track,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VoiceRecordingTrack
    #
    module VoiceRecordingTrack
      # No documentation available.
      #
      FROM_AGENT = "FROM_AGENT"

      # No documentation available.
      #
      TO_AGENT = "TO_AGENT"

      # No documentation available.
      #
      ALL = "ALL"
    end

  end
end
