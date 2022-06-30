# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::VoiceID
  module Types

    # <p>You do not have sufficient permissions to perform this action. Check the error message and try
    #             again.</p>
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

    # <p>The configuration used to authenticate a speaker during a session.</p>
    #
    # @!attribute acceptance_threshold
    #   <p>The minimum threshold needed to successfully authenticate a speaker.</p>
    #
    #   @return [Integer]
    #
    AuthenticationConfiguration = ::Struct.new(
      :acceptance_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthenticationDecision
    #
    module AuthenticationDecision
      # No documentation available.
      #
      ACCEPT = "ACCEPT"

      # No documentation available.
      #
      REJECT = "REJECT"

      # No documentation available.
      #
      NOT_ENOUGH_SPEECH = "NOT_ENOUGH_SPEECH"

      # No documentation available.
      #
      SPEAKER_NOT_ENROLLED = "SPEAKER_NOT_ENROLLED"

      # No documentation available.
      #
      SPEAKER_OPTED_OUT = "SPEAKER_OPTED_OUT"

      # No documentation available.
      #
      SPEAKER_ID_NOT_PROVIDED = "SPEAKER_ID_NOT_PROVIDED"

      # No documentation available.
      #
      SPEAKER_EXPIRED = "SPEAKER_EXPIRED"
    end

    # <p>The authentication result produced by Voice ID, processed against the current session state and streamed
    #             audio of the speaker.</p>
    #
    # @!attribute authentication_result_id
    #   <p>The unique identifier for this authentication result. Because there can be multiple authentications
    #               for a given session, this field helps to identify if the returned result is from a previous streaming
    #               activity or a new result. Note that in absence of any new streaming activity,
    #               <code>AcceptanceThreshold</code> changes, or <code>SpeakerId</code> changes, Voice ID
    #               always returns cached Authentication Result for this API.</p>
    #
    #   @return [String]
    #
    # @!attribute audio_aggregation_started_at
    #   <p>A timestamp indicating when audio aggregation started for this authentication result.</p>
    #
    #   @return [Time]
    #
    # @!attribute audio_aggregation_ended_at
    #   <p>A timestamp indicating when audio aggregation ended for this authentication result.</p>
    #
    #   @return [Time]
    #
    # @!attribute customer_speaker_id
    #   <p>The client-provided identifier for the speaker whose authentication result is produced. Only present if a
    #               <code>SpeakerId</code> is provided for the session.</p>
    #
    #   @return [String]
    #
    # @!attribute generated_speaker_id
    #   <p>The service-generated identifier for the speaker whose authentication result is produced.</p>
    #
    #   @return [String]
    #
    # @!attribute decision
    #   <p>The authentication decision produced by Voice ID, processed against the current session state and streamed
    #               audio of the speaker.</p>
    #
    #   Enum, one of: ["ACCEPT", "REJECT", "NOT_ENOUGH_SPEECH", "SPEAKER_NOT_ENROLLED", "SPEAKER_OPTED_OUT", "SPEAKER_ID_NOT_PROVIDED", "SPEAKER_EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute score
    #   <p>The authentication score for the speaker whose authentication result is produced. This value is
    #               only present if the authentication decision is either <code>ACCEPT</code> or <code>REJECT</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute configuration
    #   <p>The <code>AuthenticationConfiguration</code> used to generate this authentication result.</p>
    #
    #   @return [AuthenticationConfiguration]
    #
    AuthenticationResult = ::Struct.new(
      :authentication_result_id,
      :audio_aggregation_started_at,
      :audio_aggregation_ended_at,
      :customer_speaker_id,
      :generated_speaker_id,
      :decision,
      :score,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::AuthenticationResult "\
          "authentication_result_id=#{authentication_result_id || 'nil'}, "\
          "audio_aggregation_started_at=#{audio_aggregation_started_at || 'nil'}, "\
          "audio_aggregation_ended_at=#{audio_aggregation_ended_at || 'nil'}, "\
          "customer_speaker_id=\"[SENSITIVE]\", "\
          "generated_speaker_id=#{generated_speaker_id || 'nil'}, "\
          "decision=#{decision || 'nil'}, "\
          "score=#{score || 'nil'}, "\
          "configuration=#{configuration || 'nil'}>"
      end
    end

    # <p>The request failed due to a conflict. Check the <code>ConflictType</code> and error message for
    #             more details.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute conflict_type
    #   <p>The type of conflict which caused a ConflictException. Possible types and the corresponding error messages
    #               are as follows:</p>
    #           <ul>
    #               <li>
    #                       <p>
    #                     <code>DOMAIN_NOT_ACTIVE</code>: The domain is not active.</p>
    #                   </li>
    #               <li>
    #                       <p>
    #                     <code>CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT</code>: You cannot change the speaker ID after an enrollment has been requested.</p>
    #                   </li>
    #               <li>
    #                       <p>
    #                     <code>ENROLLMENT_ALREADY_EXISTS</code>: There is already an enrollment for this session.</p>
    #                   </li>
    #               <li>
    #                       <p>
    #                     <code>SPEAKER_NOT_SET</code>: You must set the speaker ID before requesting an enrollment.</p>
    #                   </li>
    #               <li>
    #                       <p>
    #                     <code>SPEAKER_OPTED_OUT</code>: You cannot request an enrollment for an opted out speaker.</p>
    #                   </li>
    #               <li>
    #                       <p>
    #                     <code>CONCURRENT_CHANGES</code>: The request could not be processed as the resource was modified by another request during execution.</p>
    #                   </li>
    #            </ul>
    #
    #   Enum, one of: ["ANOTHER_ACTIVE_STREAM", "DOMAIN_NOT_ACTIVE", "CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT", "ENROLLMENT_ALREADY_EXISTS", "SPEAKER_NOT_SET", "SPEAKER_OPTED_OUT", "CONCURRENT_CHANGES", "DOMAIN_LOCKED_FROM_ENCRYPTION_UPDATES"]
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :conflict_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConflictType
    #
    module ConflictType
      # No documentation available.
      #
      ANOTHER_ACTIVE_STREAM = "ANOTHER_ACTIVE_STREAM"

      # No documentation available.
      #
      DOMAIN_NOT_ACTIVE = "DOMAIN_NOT_ACTIVE"

      # No documentation available.
      #
      CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT = "CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT"

      # No documentation available.
      #
      ENROLLMENT_ALREADY_EXISTS = "ENROLLMENT_ALREADY_EXISTS"

      # No documentation available.
      #
      SPEAKER_NOT_SET = "SPEAKER_NOT_SET"

      # No documentation available.
      #
      SPEAKER_OPTED_OUT = "SPEAKER_OPTED_OUT"

      # No documentation available.
      #
      CONCURRENT_CHANGES = "CONCURRENT_CHANGES"

      # No documentation available.
      #
      DOMAIN_LOCKED_FROM_ENCRYPTION_UPDATES = "DOMAIN_LOCKED_FROM_ENCRYPTION_UPDATES"
    end

    # @!attribute name
    #   <p>The name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A brief description of this domain.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration, containing the KMS key identifier, to be used by Voice ID for
    #               the server-side encryption of your data. Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/encryption-at-rest.html encryption-at-rest-voiceid">
    #                   Amazon Connect Voice ID encryption at rest</a> for more details on how the KMS key is used.
    #           </p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    # @!attribute client_token
    #   <p>The idempotency token for creating a new domain. If not provided, Amazon Web Services SDK populates
    #               this field.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags you want added to the domain.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDomainInput = ::Struct.new(
      :name,
      :description,
      :server_side_encryption_configuration,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::CreateDomainInput "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "server_side_encryption_configuration=#{server_side_encryption_configuration || 'nil'}, "\
          "client_token=#{client_token || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute domain
    #   <p>Information about the newly created domain.</p>
    #
    #   @return [Domain]
    #
    CreateDomainOutput = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteDomainInput = ::Struct.new(
      :domain_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDomainOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain containing the fraudster.</p>
    #
    #   @return [String]
    #
    # @!attribute fraudster_id
    #   <p>The identifier of the fraudster you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteFraudsterInput = ::Struct.new(
      :domain_id,
      :fraudster_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::DeleteFraudsterInput "\
          "domain_id=#{domain_id || 'nil'}, "\
          "fraudster_id=\"[SENSITIVE]\">"
      end
    end

    DeleteFraudsterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain containing the speaker.</p>
    #
    #   @return [String]
    #
    # @!attribute speaker_id
    #   <p>The identifier of the speaker you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteSpeakerInput = ::Struct.new(
      :domain_id,
      :speaker_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::DeleteSpeakerInput "\
          "domain_id=#{domain_id || 'nil'}, "\
          "speaker_id=\"[SENSITIVE]\">"
      end
    end

    DeleteSpeakerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain you are describing.</p>
    #
    #   @return [String]
    #
    DescribeDomainInput = ::Struct.new(
      :domain_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>Information about the specified domain.</p>
    #
    #   @return [Domain]
    #
    DescribeDomainOutput = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain containing the fraudster.</p>
    #
    #   @return [String]
    #
    # @!attribute fraudster_id
    #   <p>The identifier of the fraudster you are describing.</p>
    #
    #   @return [String]
    #
    DescribeFraudsterInput = ::Struct.new(
      :domain_id,
      :fraudster_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::DescribeFraudsterInput "\
          "domain_id=#{domain_id || 'nil'}, "\
          "fraudster_id=\"[SENSITIVE]\">"
      end
    end

    # @!attribute fraudster
    #   <p>Information about the specified fraudster.</p>
    #
    #   @return [Fraudster]
    #
    DescribeFraudsterOutput = ::Struct.new(
      :fraudster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier for the domain containing the fraudster registration job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The identifier for the fraudster registration job you are describing.</p>
    #
    #   @return [String]
    #
    DescribeFraudsterRegistrationJobInput = ::Struct.new(
      :domain_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p>Contains details about the specified fraudster registration job.</p>
    #
    #   @return [FraudsterRegistrationJob]
    #
    DescribeFraudsterRegistrationJobOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain containing the speaker enrollment job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The identifier of the speaker enrollment job you are describing.</p>
    #
    #   @return [String]
    #
    DescribeSpeakerEnrollmentJobInput = ::Struct.new(
      :domain_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p>Contains details about the specified speaker enrollment job.</p>
    #
    #   @return [SpeakerEnrollmentJob]
    #
    DescribeSpeakerEnrollmentJobOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    #
    #   @return [String]
    #
    # @!attribute speaker_id
    #   <p>The identifier of the speaker you are describing.</p>
    #
    #   @return [String]
    #
    DescribeSpeakerInput = ::Struct.new(
      :domain_id,
      :speaker_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::DescribeSpeakerInput "\
          "domain_id=#{domain_id || 'nil'}, "\
          "speaker_id=\"[SENSITIVE]\">"
      end
    end

    # @!attribute speaker
    #   <p>Information about the specified speaker.</p>
    #
    #   @return [Speaker]
    #
    DescribeSpeakerOutput = ::Struct.new(
      :speaker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains all the information about a domain.</p>
    #
    # @!attribute domain_id
    #   <p>The service-generated identifier for the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The client-provided name for the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The client-provided description of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_status
    #   <p>The current status of the domain.</p>
    #
    #   Enum, one of: ["ACTIVE", "PENDING", "SUSPENDED"]
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The server-side encryption configuration containing the KMS key identifier you want Voice ID to use
    #               to encrypt your data.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    # @!attribute created_at
    #   <p>The timestamp at which the domain is created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The timestamp showing the domain's last update.</p>
    #
    #   @return [Time]
    #
    # @!attribute server_side_encryption_update_details
    #   <p>Details about the most recent server-side encryption configuration update. When the server-side
    #               encryption configuration is changed, dependency on the old KMS key is removed through an
    #               asynchronous process. When this update is complete, the domain's data can only be accessed using the
    #               new KMS key.</p>
    #
    #   @return [ServerSideEncryptionUpdateDetails]
    #
    Domain = ::Struct.new(
      :domain_id,
      :arn,
      :name,
      :description,
      :domain_status,
      :server_side_encryption_configuration,
      :created_at,
      :updated_at,
      :server_side_encryption_update_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::Domain "\
          "domain_id=#{domain_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "domain_status=#{domain_status || 'nil'}, "\
          "server_side_encryption_configuration=#{server_side_encryption_configuration || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "updated_at=#{updated_at || 'nil'}, "\
          "server_side_encryption_update_details=#{server_side_encryption_update_details || 'nil'}>"
      end
    end

    # Includes enum constants for DomainStatus
    #
    module DomainStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SUSPENDED = "SUSPENDED"
    end

    # <p>Contains a summary of information about a domain.</p>
    #
    # @!attribute domain_id
    #   <p>The service-generated identifier for the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The client-provided name for the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The client-provided description of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_status
    #   <p>The current status of the domain.</p>
    #
    #   Enum, one of: ["ACTIVE", "PENDING", "SUSPENDED"]
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The server-side encryption configuration containing the KMS key identifier you want Voice ID to use
    #               to encrypt your data.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    # @!attribute created_at
    #   <p>The timestamp showing when the domain is created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The timestamp showing the domain's last update.</p>
    #
    #   @return [Time]
    #
    # @!attribute server_side_encryption_update_details
    #   <p>Details about the most recent server-side encryption configuration update. When the server-side
    #               encryption configuration is changed, dependency on the old KMS key is removed through an
    #               asynchronous process. When this update is complete, the domain’s data can only be accessed using the
    #               new KMS key.</p>
    #
    #   @return [ServerSideEncryptionUpdateDetails]
    #
    DomainSummary = ::Struct.new(
      :domain_id,
      :arn,
      :name,
      :description,
      :domain_status,
      :server_side_encryption_configuration,
      :created_at,
      :updated_at,
      :server_side_encryption_update_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::DomainSummary "\
          "domain_id=#{domain_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "domain_status=#{domain_status || 'nil'}, "\
          "server_side_encryption_configuration=#{server_side_encryption_configuration || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "updated_at=#{updated_at || 'nil'}, "\
          "server_side_encryption_update_details=#{server_side_encryption_update_details || 'nil'}>"
      end
    end

    # Includes enum constants for DuplicateRegistrationAction
    #
    module DuplicateRegistrationAction
      # No documentation available.
      #
      SKIP = "SKIP"

      # No documentation available.
      #
      REGISTER_AS_NEW = "REGISTER_AS_NEW"
    end

    # <p>Contains configurations defining enrollment behavior for the batch job.</p>
    #
    # @!attribute existing_enrollment_action
    #   <p> The action to take when the specified speaker is already enrolled in the specified domain. The default
    #               value is <code>SKIP</code>, which skips the enrollment for the existing speaker. Setting the value to
    #               <code>OVERWRITE</code> replaces the existing voice prints and enrollment audio stored for that speaker
    #               with new data generated from the latest audio.</p>
    #
    #   Enum, one of: ["SKIP", "OVERWRITE"]
    #
    #   @return [String]
    #
    # @!attribute fraud_detection_config
    #   <p>The fraud detection configuration to use for the speaker enrollment job.</p>
    #
    #   @return [EnrollmentJobFraudDetectionConfig]
    #
    EnrollmentConfig = ::Struct.new(
      :existing_enrollment_action,
      :fraud_detection_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration defining the action to take when a speaker is flagged by the fraud detection system
    #             during a batch speaker enrollment job, and the risk threshold to use for identification.</p>
    #
    # @!attribute fraud_detection_action
    #   <p>The action to take when the given speaker is flagged by the fraud detection system. The default value is
    #               <code>FAIL</code>, which fails the speaker enrollment. Changing this value to <code>IGNORE</code>
    #               results in the speaker being enrolled even if they are flagged by the fraud detection system.</p>
    #
    #   Enum, one of: ["IGNORE", "FAIL"]
    #
    #   @return [String]
    #
    # @!attribute risk_threshold
    #   <p>Threshold value for determining whether the speaker is a high risk to be fraudulent. If the detected risk
    #               score calculated by Voice ID is greater than or equal to the threshold, the speaker is considered a fraudster.</p>
    #
    #   @return [Integer]
    #
    EnrollmentJobFraudDetectionConfig = ::Struct.new(
      :fraud_detection_action,
      :risk_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain where the session started.</p>
    #
    #   @return [String]
    #
    # @!attribute session_name_or_id
    #   <p>The session identifier, or name of the session, that you want to evaluate. In Voice ID
    #               integration, this is the Contact-Id.</p>
    #
    #   @return [String]
    #
    EvaluateSessionInput = ::Struct.new(
      :domain_id,
      :session_name_or_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain containing the session.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The service-generated identifier of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute session_name
    #   <p>The client-provided name of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_status
    #   <p>The current status of audio streaming for this session. This field is useful to infer next steps when
    #               the Authentication or Fraud Detection results are empty or the decision is <code>NOT_ENOUGH_SPEECH</code>.
    #               In this situation, if the <code>StreamingStatus</code> is <code>ONGOING/PENDING_CONFIGURATION</code>, it can
    #               mean that the client should call the API again later, after Voice ID has enough audio to produce a result.
    #               If the decision remains <code>NOT_ENOUGH_SPEECH</code> even after <code>StreamingStatus</code> is <code>ENDED</code>,
    #               it means that the previously streamed session did not have enough speech to perform evaluation, and a new
    #               streaming session is needed to try again.</p>
    #
    #   Enum, one of: ["PENDING_CONFIGURATION", "ONGOING", "ENDED"]
    #
    #   @return [String]
    #
    # @!attribute authentication_result
    #   <p>Details resulting from the authentication process, such as authentication decision and
    #               authentication score.</p>
    #
    #   @return [AuthenticationResult]
    #
    # @!attribute fraud_detection_result
    #   <p>Details resulting from the fraud detection process, such as fraud detection decision and risk score.</p>
    #
    #   @return [FraudDetectionResult]
    #
    EvaluateSessionOutput = ::Struct.new(
      :domain_id,
      :session_id,
      :session_name,
      :streaming_status,
      :authentication_result,
      :fraud_detection_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExistingEnrollmentAction
    #
    module ExistingEnrollmentAction
      # No documentation available.
      #
      SKIP = "SKIP"

      # No documentation available.
      #
      OVERWRITE = "OVERWRITE"
    end

    # <p>Contains error details for a failed batch job.</p>
    #
    # @!attribute status_code
    #   <p>An HTTP status code representing the nature of the error.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p>A description of the error that caused the batch job failure.</p>
    #
    #   @return [String]
    #
    FailureDetails = ::Struct.new(
      :status_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FraudDetectionAction
    #
    module FraudDetectionAction
      # No documentation available.
      #
      IGNORE = "IGNORE"

      # No documentation available.
      #
      FAIL = "FAIL"
    end

    # <p>The configuration used for performing fraud detection over a speaker during a session.</p>
    #
    # @!attribute risk_threshold
    #   <p>Threshold value for determining whether the speaker is a fraudster. If the detected risk score
    #               calculated by Voice ID is higher than the threshold, the speaker is considered a fraudster.</p>
    #
    #   @return [Integer]
    #
    FraudDetectionConfiguration = ::Struct.new(
      :risk_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FraudDetectionDecision
    #
    module FraudDetectionDecision
      # No documentation available.
      #
      HIGH_RISK = "HIGH_RISK"

      # No documentation available.
      #
      LOW_RISK = "LOW_RISK"

      # No documentation available.
      #
      NOT_ENOUGH_SPEECH = "NOT_ENOUGH_SPEECH"
    end

    # Includes enum constants for FraudDetectionReason
    #
    module FraudDetectionReason
      # No documentation available.
      #
      KNOWN_FRAUDSTER = "KNOWN_FRAUDSTER"
    end

    # <p>The fraud detection result produced by Voice ID, processed against the current session state and streamed
    #             audio of the speaker.</p>
    #
    # @!attribute fraud_detection_result_id
    #   <p>The unique identifier for this fraud detection result. Given there can be multiple fraud detections
    #               for a given session, this field helps in identifying if the returned result is from previous streaming
    #               activity or a new result. Note that in the absence of any new streaming activity or risk threshold
    #               changes, Voice ID always returns cached Fraud Detection result for this API.</p>
    #
    #   @return [String]
    #
    # @!attribute audio_aggregation_started_at
    #   <p>A timestamp indicating when audio aggregation started for this fraud detection result.</p>
    #
    #   @return [Time]
    #
    # @!attribute audio_aggregation_ended_at
    #   <p>A timestamp indicating when audio aggregation ended for this fraud detection result.</p>
    #
    #   @return [Time]
    #
    # @!attribute configuration
    #   <p>The <code>FraudDetectionConfiguration</code> used to generate this fraud detection result.</p>
    #
    #   @return [FraudDetectionConfiguration]
    #
    # @!attribute decision
    #   <p>The fraud detection decision produced by Voice ID, processed against the current session state and
    #               streamed audio of the speaker.</p>
    #
    #   Enum, one of: ["HIGH_RISK", "LOW_RISK", "NOT_ENOUGH_SPEECH"]
    #
    #   @return [String]
    #
    # @!attribute reasons
    #   <p>The reason speaker was flagged by the fraud detection system. This is only be populated if fraud
    #               detection Decision is <code>HIGH_RISK</code>, and only has one possible value:
    #               <code>KNOWN_FRAUDSTER</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute risk_details
    #   <p>Details about each risk analyzed for this speaker.</p>
    #
    #   @return [FraudRiskDetails]
    #
    FraudDetectionResult = ::Struct.new(
      :fraud_detection_result_id,
      :audio_aggregation_started_at,
      :audio_aggregation_ended_at,
      :configuration,
      :decision,
      :reasons,
      :risk_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details regarding various fraud risk analyses performed against the current session state and streamed
    #             audio of the speaker.</p>
    #
    # @!attribute known_fraudster_risk
    #   <p>The details resulting from 'Known Fraudster Risk' analysis of the speaker.</p>
    #
    #   @return [KnownFraudsterRisk]
    #
    FraudRiskDetails = ::Struct.new(
      :known_fraudster_risk,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains all the information about a fraudster.</p>
    #
    # @!attribute domain_id
    #   <p>The identifier for the domain containing the fraudster.</p>
    #
    #   @return [String]
    #
    # @!attribute generated_fraudster_id
    #   <p>The service-generated identifier for the fraudster.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp when Voice ID identified the fraudster.</p>
    #
    #   @return [Time]
    #
    Fraudster = ::Struct.new(
      :domain_id,
      :generated_fraudster_id,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains all the information about a fraudster registration job.</p>
    #
    # @!attribute job_name
    #   <p>The client-provided name for the fraudster registration job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The service-generated identifier for the fraudster registration job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the fraudster registration job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute domain_id
    #   <p>The identifier of the domain containing the fraudster registration job.</p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access customer's buckets
    #               to read the input manifest file and write the job output file.</p>
    #
    #   @return [String]
    #
    # @!attribute registration_config
    #   <p>The registration config containing details such as the action to take when a duplicate fraudster is
    #               detected, and the similarity threshold to use for detecting a duplicate fraudster.</p>
    #
    #   @return [RegistrationConfig]
    #
    # @!attribute input_data_config
    #   <p>The input data config containing an S3 URI for the input manifest file that contains the list
    #               of fraudster registration job requests.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data config containing the S3 location where you want Voice ID to write your job output
    #               file; you must also include a KMS key iD in order to encrypt the file.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute created_at
    #   <p>A timestamp showing the creation time of the fraudster registration job.</p>
    #
    #   @return [Time]
    #
    # @!attribute ended_at
    #   <p>A timestamp showing when the fraudster registration job ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_details
    #   <p>Contains details that are populated when an entire batch job fails. In cases of individual registration
    #               job failures, the batch job as a whole doesn't fail; it is completed with a <code>JobStatus</code> of
    #               <code>COMPLETED_WITH_ERRORS</code>. You can use the job output file to identify the individual
    #               registration requests that failed.</p>
    #
    #   @return [FailureDetails]
    #
    # @!attribute job_progress
    #   <p>Shows the completed percentage of registration requests listed in the input file.</p>
    #
    #   @return [JobProgress]
    #
    FraudsterRegistrationJob = ::Struct.new(
      :job_name,
      :job_id,
      :job_status,
      :domain_id,
      :data_access_role_arn,
      :registration_config,
      :input_data_config,
      :output_data_config,
      :created_at,
      :ended_at,
      :failure_details,
      :job_progress,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::FraudsterRegistrationJob "\
          "job_name=\"[SENSITIVE]\", "\
          "job_id=#{job_id || 'nil'}, "\
          "job_status=#{job_status || 'nil'}, "\
          "domain_id=#{domain_id || 'nil'}, "\
          "data_access_role_arn=#{data_access_role_arn || 'nil'}, "\
          "registration_config=#{registration_config || 'nil'}, "\
          "input_data_config=#{input_data_config || 'nil'}, "\
          "output_data_config=#{output_data_config || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "ended_at=#{ended_at || 'nil'}, "\
          "failure_details=#{failure_details || 'nil'}, "\
          "job_progress=#{job_progress || 'nil'}>"
      end
    end

    # Includes enum constants for FraudsterRegistrationJobStatus
    #
    module FraudsterRegistrationJobStatus
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains a summary of information about a fraudster registration job.</p>
    #
    # @!attribute job_name
    #   <p>The client-provied name for the fraudster registration job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The service-generated identifier for the fraudster registration job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the fraudster registration job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute domain_id
    #   <p>The identifier of the domain containing the fraudster registration job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>A timestamp showing when the fraudster registration job is created. </p>
    #
    #   @return [Time]
    #
    # @!attribute ended_at
    #   <p>A timestamp showing when the fraudster registration job ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_details
    #   <p>Contains details that are populated when an entire batch job fails. In cases of individual registration
    #               job failures, the batch job as a whole doesn't fail; it is completed with a <code>JobStatus</code> of
    #               <code>COMPLETED_WITH_ERRORS</code>. You can use the job output file to identify the individual
    #               registration requests that failed.</p>
    #
    #   @return [FailureDetails]
    #
    # @!attribute job_progress
    #   <p>Shows the completed percentage of registration requests listed in the input file.</p>
    #
    #   @return [JobProgress]
    #
    FraudsterRegistrationJobSummary = ::Struct.new(
      :job_name,
      :job_id,
      :job_status,
      :domain_id,
      :created_at,
      :ended_at,
      :failure_details,
      :job_progress,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::FraudsterRegistrationJobSummary "\
          "job_name=\"[SENSITIVE]\", "\
          "job_id=#{job_id || 'nil'}, "\
          "job_status=#{job_status || 'nil'}, "\
          "domain_id=#{domain_id || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "ended_at=#{ended_at || 'nil'}, "\
          "failure_details=#{failure_details || 'nil'}, "\
          "job_progress=#{job_progress || 'nil'}>"
      end
    end

    # <p>The configuration containing input file information for a batch job.</p>
    #
    # @!attribute s3_uri
    #   <p>The S3 location for the input manifest file that contains the list of individual enrollment or registration
    #               job requests.</p>
    #
    #   @return [String]
    #
    InputDataConfig = ::Struct.new(
      :s3_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed due to an unknown error on the server side.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates the completion progress for a batch job.</p>
    #
    # @!attribute percent_complete
    #   <p>Shows the completed percentage of enrollment or registration requests listed in the input file.</p>
    #
    #   @return [Integer]
    #
    JobProgress = ::Struct.new(
      :percent_complete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details produced as a result of performing known fraudster risk analysis on a speaker.</p>
    #
    # @!attribute risk_score
    #   <p>The score indicating the likelihood the speaker is a known fraudster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute generated_fraudster_id
    #   <p>The identifier of the fraudster that is the closest match to the speaker. If there are no fraudsters
    #               registered in a given domain, or if there are no fraudsters with a non-zero RiskScore, this value is
    #               <code>null</code>.</p>
    #
    #   @return [String]
    #
    KnownFraudsterRisk = ::Struct.new(
      :risk_score,
      :generated_fraudster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
    #               further pages of results. The default is 100; the maximum allowed page size is also 100.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    #   @return [String]
    #
    ListDomainsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_summaries
    #   <p>A list containing details about each domain in the Amazon Web Services account.</p>
    #
    #   @return [Array<DomainSummary>]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    #   @return [String]
    #
    ListDomainsOutput = ::Struct.new(
      :domain_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain containing the fraudster registration Jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Provides the status of your fraudster registration job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
    #               further pages of results. The default is 100; the maximum allowed page size is also 100.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    #   @return [String]
    #
    ListFraudsterRegistrationJobsInput = ::Struct.new(
      :domain_id,
      :job_status,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_summaries
    #   <p>A list containing details about each specified fraudster registration job.</p>
    #
    #   @return [Array<FraudsterRegistrationJobSummary>]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    #   @return [String]
    #
    ListFraudsterRegistrationJobsOutput = ::Struct.new(
      :job_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain containing the speaker enrollment jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Provides the status of your speaker enrollment Job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
    #               further pages of results. The default is 100; the maximum allowed page size is also 100.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    #   @return [String]
    #
    ListSpeakerEnrollmentJobsInput = ::Struct.new(
      :domain_id,
      :job_status,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_summaries
    #   <p>A list containing details about each specified speaker enrollment job.</p>
    #
    #   @return [Array<SpeakerEnrollmentJobSummary>]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    #   @return [String]
    #
    ListSpeakerEnrollmentJobsOutput = ::Struct.new(
      :job_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
    #               further pages of results. The default is 100; the maximum allowed page size is also 100.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    #   @return [String]
    #
    ListSpeakersInput = ::Struct.new(
      :domain_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute speaker_summaries
    #   <p>A list containing details about each speaker in the Amazon Web Services account.
    #           </p>
    #
    #   @return [Array<SpeakerSummary>]
    #
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    #   @return [String]
    #
    ListSpeakersOutput = ::Struct.new(
      :speaker_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource for which you want to list the tags.</p>
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
    #   <p>The list of tags associated with the specified resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_id
    #   <p>The identifier of the domain containing the speaker.</p>
    #
    #   @return [String]
    #
    # @!attribute speaker_id
    #   <p>The identifier of the speaker you want opted-out.</p>
    #
    #   @return [String]
    #
    OptOutSpeakerInput = ::Struct.new(
      :domain_id,
      :speaker_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::OptOutSpeakerInput "\
          "domain_id=#{domain_id || 'nil'}, "\
          "speaker_id=\"[SENSITIVE]\">"
      end
    end

    # @!attribute speaker
    #   <p>Details about the opted-out speaker.</p>
    #
    #   @return [Speaker]
    #
    OptOutSpeakerOutput = ::Struct.new(
      :speaker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration containing output file information for a batch job.</p>
    #
    # @!attribute s3_uri
    #   <p>The S3 path of the folder where Voice ID writes the job output file. It has a
    #               <code>*.out</code> extension. For example, if the input file name is <code>input-file.json</code> and
    #               the output folder path is <code>s3://output-bucket/output-folder</code>, the full output file path is
    #               <code>s3://output-bucket/output-folder/job-Id/input-file.json.out</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>the identifier of the KMS key you want Voice ID to use to encrypt the output file of the fraudster
    #               registration job.</p>
    #
    #   @return [String]
    #
    OutputDataConfig = ::Struct.new(
      :s3_uri,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration defining the action to take when a duplicate fraudster is detected, and the
    #             similarity threshold to use for detecting a duplicate fraudster during a batch fraudster registration job.</p>
    #
    # @!attribute duplicate_registration_action
    #   <p>The action to take when a fraudster is identified as a duplicate. The default action is
    #               <code>SKIP</code>, which skips registering the duplicate fraudster. Setting the value to
    #               <code>REGISTER_AS_NEW</code> always registers a new fraudster into the specified domain.</p>
    #
    #   Enum, one of: ["SKIP", "REGISTER_AS_NEW"]
    #
    #   @return [String]
    #
    # @!attribute fraudster_similarity_threshold
    #   <p>The minimum similarity score between the new and old fraudsters in order to consider the new
    #               fraudster a duplicate.</p>
    #
    #   @return [Integer]
    #
    RegistrationConfig = ::Struct.new(
      :duplicate_registration_action,
      :fraudster_similarity_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource cannot be found. Check the <code>ResourceType</code> and error message for
    #             more details.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource which cannot not be found. Possible types are <code>BATCH_JOB</code>, <code>COMPLIANCE_CONSENT</code>,
    #               <code>DOMAIN</code>, <code>FRAUDSTER</code>, <code>SESSION</code> and <code>SPEAKER</code>.</p>
    #
    #   Enum, one of: ["BATCH_JOB", "COMPLIANCE_CONSENT", "DOMAIN", "FRAUDSTER", "SESSION", "SPEAKER"]
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      BATCH_JOB = "BATCH_JOB"

      # No documentation available.
      #
      COMPLIANCE_CONSENT = "COMPLIANCE_CONSENT"

      # No documentation available.
      #
      DOMAIN = "DOMAIN"

      # No documentation available.
      #
      FRAUDSTER = "FRAUDSTER"

      # No documentation available.
      #
      SESSION = "SESSION"

      # No documentation available.
      #
      SPEAKER = "SPEAKER"
    end

    # <p>The configuration containing information about the customer managed key used for encrypting
    #             customer data.</p>
    #
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS key you want Voice ID to use to encrypt your data.</p>
    #
    #   @return [String]
    #
    ServerSideEncryptionConfiguration = ::Struct.new(
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the most recent server-side encryption configuration update. When the server-side
    #             encryption configuration is changed, dependency on the old KMS key is removed through an
    #             asynchronous process. When this update is complete, the domain’s data can only be accessed using the
    #             new KMS key.</p>
    #
    # @!attribute old_kms_key_id
    #   <p>The previous KMS key ID the domain was encrypted with, before
    #               ServerSideEncryptionConfiguration was updated to a new KMS key ID.</p>
    #
    #   @return [String]
    #
    # @!attribute update_status
    #   <p>Status of the server-side encryption update. During an update, if there is an issue with the domain's
    #               current or old KMS key ID, such as an inaccessible or disabled key, then the status
    #               is FAILED. In order to resolve this, the key needs to be made accessible, and then an UpdateDomain call
    #               with the existing server-side encryption configuration will re-attempt this update process.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Message explaining the current UpdateStatus. When the UpdateStatus is FAILED, this message explains
    #               the cause of the failure.</p>
    #
    #   @return [String]
    #
    ServerSideEncryptionUpdateDetails = ::Struct.new(
      :old_kms_key_id,
      :update_status,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServerSideEncryptionUpdateStatus
    #
    module ServerSideEncryptionUpdateStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The request exceeded the service quota. Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#voiceid-quotas">Voice ID Service
    #             Quotas</a> and try your request again.</p>
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

    # <p>Contains all the information about a speaker.</p>
    #
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_speaker_id
    #   <p>The client-provided identifier for the speaker.</p>
    #
    #   @return [String]
    #
    # @!attribute generated_speaker_id
    #   <p>The service-generated identifier for the speaker.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the speaker.</p>
    #
    #   Enum, one of: ["ENROLLED", "EXPIRED", "OPTED_OUT", "PENDING"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>A timestamp showing when the speaker is created. </p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>A timestamp showing the speaker's last update.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_accessed_at
    #   <p>The timestamp when the speaker was last accessed for enrollment, re-enrollment or a successful authentication. This timestamp is accurate to one hour.</p>
    #
    #   @return [Time]
    #
    Speaker = ::Struct.new(
      :domain_id,
      :customer_speaker_id,
      :generated_speaker_id,
      :status,
      :created_at,
      :updated_at,
      :last_accessed_at,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::Speaker "\
          "domain_id=#{domain_id || 'nil'}, "\
          "customer_speaker_id=\"[SENSITIVE]\", "\
          "generated_speaker_id=#{generated_speaker_id || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "updated_at=#{updated_at || 'nil'}, "\
          "last_accessed_at=#{last_accessed_at || 'nil'}>"
      end
    end

    # <p>Contains all the information about a speaker enrollment job.</p>
    #
    # @!attribute job_name
    #   <p>The client-provided name for the speaker enrollment job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The service-generated identifier for the speaker enrollment job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the speaker enrollment job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment job.</p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access customer's buckets
    #               to read the input manifest file and write the job output file.</p>
    #
    #   @return [String]
    #
    # @!attribute enrollment_config
    #   <p>The configuration that defines the action to take when the speaker is already enrolled in Voice ID, and the
    #               <code>FraudDetectionConfig</code> to use.</p>
    #
    #   @return [EnrollmentConfig]
    #
    # @!attribute input_data_config
    #   <p>The input data config containing an S3 URI for the input manifest file that contains the list
    #               of speaker enrollment job requests.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data config containing the S3 location where Voice ID writes the job output file; you must
    #               also include a KMS key ID to encrypt the file.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute created_at
    #   <p>A timestamp showing the creation of the speaker enrollment job.</p>
    #
    #   @return [Time]
    #
    # @!attribute ended_at
    #   <p>A timestamp showing when the speaker enrollment job ended. </p>
    #
    #   @return [Time]
    #
    # @!attribute failure_details
    #   <p>Contains details that are populated when an entire batch job fails. In cases of individual registration
    #               job failures, the batch job as a whole doesn't fail; it is completed with a <code>JobStatus</code> of
    #               <code>COMPLETED_WITH_ERRORS</code>. You can use the job output file to identify the individual
    #               registration requests that failed.</p>
    #
    #   @return [FailureDetails]
    #
    # @!attribute job_progress
    #   <p>Provides details on job progress. This field shows the completed percentage of registration
    #               requests listed in the input file.</p>
    #
    #   @return [JobProgress]
    #
    SpeakerEnrollmentJob = ::Struct.new(
      :job_name,
      :job_id,
      :job_status,
      :domain_id,
      :data_access_role_arn,
      :enrollment_config,
      :input_data_config,
      :output_data_config,
      :created_at,
      :ended_at,
      :failure_details,
      :job_progress,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::SpeakerEnrollmentJob "\
          "job_name=\"[SENSITIVE]\", "\
          "job_id=#{job_id || 'nil'}, "\
          "job_status=#{job_status || 'nil'}, "\
          "domain_id=#{domain_id || 'nil'}, "\
          "data_access_role_arn=#{data_access_role_arn || 'nil'}, "\
          "enrollment_config=#{enrollment_config || 'nil'}, "\
          "input_data_config=#{input_data_config || 'nil'}, "\
          "output_data_config=#{output_data_config || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "ended_at=#{ended_at || 'nil'}, "\
          "failure_details=#{failure_details || 'nil'}, "\
          "job_progress=#{job_progress || 'nil'}>"
      end
    end

    # Includes enum constants for SpeakerEnrollmentJobStatus
    #
    module SpeakerEnrollmentJobStatus
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains a summary of information about a speaker enrollment job.</p>
    #
    # @!attribute job_name
    #   <p>The client-provided name for the speaker enrollment job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The service-generated identifier for the speaker enrollment job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the speaker enrollment job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>A timestamp showing the creation time of the speaker enrollment job.</p>
    #
    #   @return [Time]
    #
    # @!attribute ended_at
    #   <p>A timestamp showing when the speaker enrollment job ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_details
    #   <p>Contains details that are populated when an entire batch job fails. In cases of individual registration
    #               job failures, the batch job as a whole doesn't fail; it is completed with a <code>JobStatus</code> of
    #               <code>COMPLETED_WITH_ERRORS</code>. You can use the job output file to identify the individual
    #               registration requests that failed.</p>
    #
    #   @return [FailureDetails]
    #
    # @!attribute job_progress
    #   <p>Provides details regarding job progress. This field shows the completed percentage of enrollment
    #               requests listed in the input file.</p>
    #
    #   @return [JobProgress]
    #
    SpeakerEnrollmentJobSummary = ::Struct.new(
      :job_name,
      :job_id,
      :job_status,
      :domain_id,
      :created_at,
      :ended_at,
      :failure_details,
      :job_progress,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::SpeakerEnrollmentJobSummary "\
          "job_name=\"[SENSITIVE]\", "\
          "job_id=#{job_id || 'nil'}, "\
          "job_status=#{job_status || 'nil'}, "\
          "domain_id=#{domain_id || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "ended_at=#{ended_at || 'nil'}, "\
          "failure_details=#{failure_details || 'nil'}, "\
          "job_progress=#{job_progress || 'nil'}>"
      end
    end

    # Includes enum constants for SpeakerStatus
    #
    module SpeakerStatus
      # No documentation available.
      #
      ENROLLED = "ENROLLED"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"

      # No documentation available.
      #
      OPTED_OUT = "OPTED_OUT"

      # No documentation available.
      #
      PENDING = "PENDING"
    end

    # <p>Contains a summary of information about a speaker.</p>
    #
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_speaker_id
    #   <p>The client-provided identifier for the speaker.</p>
    #
    #   @return [String]
    #
    # @!attribute generated_speaker_id
    #   <p>The service-generated identifier for the speaker. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the speaker.</p>
    #
    #   Enum, one of: ["ENROLLED", "EXPIRED", "OPTED_OUT", "PENDING"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>A timestamp showing the speaker's creation time. </p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>A timestamp showing the speaker's last update.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_accessed_at
    #   <p>The timestamp when the speaker was last accessed for enrollment, re-enrollment or a successful authentication. This timestamp is accurate to one hour.</p>
    #
    #   @return [Time]
    #
    SpeakerSummary = ::Struct.new(
      :domain_id,
      :customer_speaker_id,
      :generated_speaker_id,
      :status,
      :created_at,
      :updated_at,
      :last_accessed_at,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::SpeakerSummary "\
          "domain_id=#{domain_id || 'nil'}, "\
          "customer_speaker_id=\"[SENSITIVE]\", "\
          "generated_speaker_id=#{generated_speaker_id || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "updated_at=#{updated_at || 'nil'}, "\
          "last_accessed_at=#{last_accessed_at || 'nil'}>"
      end
    end

    # @!attribute client_token
    #   <p>The idempotency token for starting a new fraudster registration job. If not provided, Amazon Web Services
    #               SDK populates this field.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of the new fraudster registration job.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_id
    #   <p>The identifier of the domain containing the fraudster registration job and in which the fraudsters are
    #               registered.</p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access customer's buckets
    #               to read the input manifest file and write the Job output file. Refer to the
    #               <a href="https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-fraudster-watchlist.html">Create and
    #                   edit a fraudster watchlist</a> documentation for the permissions needed in this role.</p>
    #
    #   @return [String]
    #
    # @!attribute registration_config
    #   <p>The registration config containing details such as the action to take when a duplicate fraudster is
    #               detected, and the similarity threshold to use for detecting a duplicate fraudster.</p>
    #
    #   @return [RegistrationConfig]
    #
    # @!attribute input_data_config
    #   <p>The input data config containing an S3 URI for the input manifest file that contains the list
    #               of fraudster registration requests.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data config containing the S3 location where Voice ID writes the job output file; you must
    #               also include a KMS key ID to encrypt the file.</p>
    #
    #   @return [OutputDataConfig]
    #
    StartFraudsterRegistrationJobInput = ::Struct.new(
      :client_token,
      :job_name,
      :domain_id,
      :data_access_role_arn,
      :registration_config,
      :input_data_config,
      :output_data_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::StartFraudsterRegistrationJobInput "\
          "client_token=#{client_token || 'nil'}, "\
          "job_name=\"[SENSITIVE]\", "\
          "domain_id=#{domain_id || 'nil'}, "\
          "data_access_role_arn=#{data_access_role_arn || 'nil'}, "\
          "registration_config=#{registration_config || 'nil'}, "\
          "input_data_config=#{input_data_config || 'nil'}, "\
          "output_data_config=#{output_data_config || 'nil'}>"
      end
    end

    # @!attribute job
    #   <p>Details about the started fraudster registration job.</p>
    #
    #   @return [FraudsterRegistrationJob]
    #
    StartFraudsterRegistrationJobOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>The idempotency token for starting a new speaker enrollment Job. If not provided, Amazon Web Services
    #               SDK populates this field.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>A name for your speaker enrollment job.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment job and in which the speakers are
    #               enrolled.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access customer's buckets
    #               to read the input manifest file and write the job output file. Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-batch-enrollment.html">Batch enrollment using audio data from prior
    #                   calls</a> documentation for the permissions needed in this role.</p>
    #
    #   @return [String]
    #
    # @!attribute enrollment_config
    #   <p>The enrollment config that contains details such as the action to take when a speaker is already
    #               enrolled in Voice ID or when a speaker is identified as a fraudster.</p>
    #
    #   @return [EnrollmentConfig]
    #
    # @!attribute input_data_config
    #   <p>The input data config containing the S3 location for the input manifest file that contains the list of
    #               speaker enrollment requests.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data config containing the S3 location where Voice ID writes the job output file; you must
    #               also include a KMS key ID to encrypt the file.</p>
    #
    #   @return [OutputDataConfig]
    #
    StartSpeakerEnrollmentJobInput = ::Struct.new(
      :client_token,
      :job_name,
      :domain_id,
      :data_access_role_arn,
      :enrollment_config,
      :input_data_config,
      :output_data_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::StartSpeakerEnrollmentJobInput "\
          "client_token=#{client_token || 'nil'}, "\
          "job_name=\"[SENSITIVE]\", "\
          "domain_id=#{domain_id || 'nil'}, "\
          "data_access_role_arn=#{data_access_role_arn || 'nil'}, "\
          "enrollment_config=#{enrollment_config || 'nil'}, "\
          "input_data_config=#{input_data_config || 'nil'}, "\
          "output_data_config=#{output_data_config || 'nil'}>"
      end
    end

    # @!attribute job
    #   <p>Details about the started speaker enrollment job.</p>
    #
    #   @return [SpeakerEnrollmentJob]
    #
    StartSpeakerEnrollmentJobOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StreamingStatus
    #
    module StreamingStatus
      # No documentation available.
      #
      PENDING_CONFIGURATION = "PENDING_CONFIGURATION"

      # No documentation available.
      #
      ONGOING = "ONGOING"

      # No documentation available.
      #
      ENDED = "ENDED"
    end

    # <p>A tag that can be assigned to a Voice ID resource.</p>
    #
    # @!attribute key
    #   <p>The first part of a key:value pair that forms a tag associated with a given resource. For example,
    #               in the tag ‘Department’:’Sales’, the key is 'Department'.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The second part of a key:value pair that forms a tag associated with a given resource. For example,
    #               in the tag ‘Department’:’Sales’, the value is 'Sales'.
    #           </p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::Tag "\
          "key=\"[SENSITIVE]\", "\
          "value=\"[SENSITIVE]\">"
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource you want to tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags to assign to the specified resource.</p>
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

    # <p>The request was denied due to request throttling. Please slow down your request rate. Refer to
    #             <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html##voiceid-api-quotas">
    #                 Amazon Connect Voice ID Service API throttling quotas
    #             </a> and try your request again.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource you want to remove tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of tag keys you want to remove from the specified resource.</p>
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

    # @!attribute domain_id
    #   <p>The identifier of the domain to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A brief description about this domain.</p>
    #
    #   @return [String]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration, containing the KMS key identifier, to be used by Voice ID for the server-side
    #               encryption of your data. Note that all the existing data in the domain are still encrypted using the
    #               existing key, only the data added to domain after updating the key is encrypted using the new key. </p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    UpdateDomainInput = ::Struct.new(
      :domain_id,
      :name,
      :description,
      :server_side_encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::VoiceID::Types::UpdateDomainInput "\
          "domain_id=#{domain_id || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "server_side_encryption_configuration=#{server_side_encryption_configuration || 'nil'}>"
      end
    end

    # @!attribute domain
    #   <p>Details about the updated domain</p>
    #
    #   @return [Domain]
    #
    UpdateDomainOutput = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed one or more validations; check the error message for more details.</p>
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

  end
end
