# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AlexaForBusiness
  module Types

    # <p>An address book with attributes.</p>
    #
    # @!attribute address_book_arn
    #   <p>The ARN of the address book.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the address book.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the address book.</p>
    #
    #   @return [String]
    #
    AddressBook = ::Struct.new(
      :address_book_arn,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information related to an address book.</p>
    #
    # @!attribute address_book_arn
    #   <p>The ARN of the address book.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the address book.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the address book.</p>
    #
    #   @return [String]
    #
    AddressBookData = ::Struct.new(
      :address_book_arn,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource being created already exists.</p>
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

    # @!attribute skill_id
    #   <p>The unique identifier of the skill.</p>
    #
    #   @return [String]
    #
    ApproveSkillInput = ::Struct.new(
      :skill_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ApproveSkillOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact to associate with an address book.</p>
    #
    #   @return [String]
    #
    # @!attribute address_book_arn
    #   <p>The ARN of the address book with which to associate the contact.</p>
    #
    #   @return [String]
    #
    AssociateContactWithAddressBookInput = ::Struct.new(
      :contact_arn,
      :address_book_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateContactWithAddressBookOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_arn
    #   <p>The device ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute network_profile_arn
    #   <p>The ARN of the network profile to associate with a device.</p>
    #
    #   @return [String]
    #
    AssociateDeviceWithNetworkProfileInput = ::Struct.new(
      :device_arn,
      :network_profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateDeviceWithNetworkProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_arn
    #   <p>The ARN of the device to associate to a room. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute room_arn
    #   <p>The ARN of the room with which to associate the device. Required.</p>
    #
    #   @return [String]
    #
    AssociateDeviceWithRoomInput = ::Struct.new(
      :device_arn,
      :room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateDeviceWithRoomOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group_arn
    #   <p>The ARN of the skill group to associate with a room. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute room_arn
    #   <p>The ARN of the room with which to associate the skill group. Required.</p>
    #
    #   @return [String]
    #
    AssociateSkillGroupWithRoomInput = ::Struct.new(
      :skill_group_arn,
      :room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateSkillGroupWithRoomOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group_arn
    #   <p>The ARN of the skill group to associate the skill to. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute skill_id
    #   <p>The unique identifier of the skill.</p>
    #
    #   @return [String]
    #
    AssociateSkillWithSkillGroupInput = ::Struct.new(
      :skill_group_arn,
      :skill_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateSkillWithSkillGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_id
    #   <p>The private skill ID you want to make available to enrolled users.</p>
    #
    #   @return [String]
    #
    AssociateSkillWithUsersInput = ::Struct.new(
      :skill_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateSkillWithUsersOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The audio message. There is a 1 MB limit on the audio file input and the only supported
    #          format is MP3. To convert your MP3 audio files to an Alexa-friendly,  </p>
    #          <p>required codec version (MPEG version 2) and bit rate (48 kbps), you might use converter
    #          software. One option for this is a command-line tool, FFmpeg. For more information, see
    #             <a href="https://www.ffmpeg.org/">FFmpeg</a>. The following command converts the
    #          provided <input-file> to an MP3 file that is played in the announcement:</p>
    #          <p>
    #             <code>ffmpeg -i <input-file> -ac 2 -codec:a libmp3lame -b:a 48k -ar 16000
    #             <output-file.mp3></code>
    #          </p>
    #
    # @!attribute locale
    #   <p>The locale of the audio message. Currently, en-US is supported.</p>
    #
    #   Enum, one of: ["en-US"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the audio file. Currently, S3 URLs are supported. Only S3 locations
    #            comprised of safe characters are valid. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html Safe%20Characters">Safe Characters</a>.</p>
    #
    #   @return [String]
    #
    Audio = ::Struct.new(
      :locale,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Usage report with specified parameters.</p>
    #
    # @!attribute status
    #   <p>The status of the report generation execution (RUNNING, SUCCEEDED, or
    #            FAILED).</p>
    #
    #   Enum, one of: ["RUNNING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #
    #   Enum, one of: ["ACCESS_DENIED", "NO_SUCH_BUCKET", "INTERNAL_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute s3_location
    #   <p>The S3 location of the output reports.</p>
    #
    #   @return [BusinessReportS3Location]
    #
    # @!attribute delivery_time
    #   <p>The time of report delivery.</p>
    #
    #   @return [Time]
    #
    # @!attribute download_url
    #   <p>The download link where a user can download the report.</p>
    #
    #   @return [String]
    #
    BusinessReport = ::Struct.new(
      :status,
      :failure_code,
      :s3_location,
      :delivery_time,
      :download_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The content range of the report.</p>
    #
    # @!attribute interval
    #   <p>The interval of the content range.</p>
    #
    #   Enum, one of: ["ONE_DAY", "ONE_WEEK", "THIRTY_DAYS"]
    #
    #   @return [String]
    #
    BusinessReportContentRange = ::Struct.new(
      :interval,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BusinessReportFailureCode
    #
    module BusinessReportFailureCode
      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"

      # No documentation available.
      #
      NO_SUCH_BUCKET = "NO_SUCH_BUCKET"

      # No documentation available.
      #
      INTERNAL_FAILURE = "INTERNAL_FAILURE"
    end

    # Includes enum constants for BusinessReportFormat
    #
    module BusinessReportFormat
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      CSV_ZIP = "CSV_ZIP"
    end

    # Includes enum constants for BusinessReportInterval
    #
    module BusinessReportInterval
      # No documentation available.
      #
      ONE_DAY = "ONE_DAY"

      # No documentation available.
      #
      ONE_WEEK = "ONE_WEEK"

      # No documentation available.
      #
      THIRTY_DAYS = "THIRTY_DAYS"
    end

    # <p>The recurrence of the reports.</p>
    #
    # @!attribute start_date
    #   <p>The start date.</p>
    #
    #   @return [String]
    #
    BusinessReportRecurrence = ::Struct.new(
      :start_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 location of the output reports.</p>
    #
    # @!attribute path
    #   <p>The path of the business report.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p>The S3 bucket name of the output reports.</p>
    #
    #   @return [String]
    #
    BusinessReportS3Location = ::Struct.new(
      :path,
      :bucket_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The schedule of the usage report.</p>
    #
    # @!attribute schedule_arn
    #   <p>The ARN of the business report schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_name
    #   <p>The name identifier of the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The S3 bucket name of the output reports.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The S3 key where the report is delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the generated report (individual CSV files or zipped files of
    #            individual files).</p>
    #
    #   Enum, one of: ["CSV", "CSV_ZIP"]
    #
    #   @return [String]
    #
    # @!attribute content_range
    #   <p>The content range of the reports.</p>
    #
    #   @return [BusinessReportContentRange]
    #
    # @!attribute recurrence
    #   <p>The recurrence of the reports.</p>
    #
    #   @return [BusinessReportRecurrence]
    #
    # @!attribute last_business_report
    #   <p>The details of the last business report delivery for a specified time
    #            interval.</p>
    #
    #   @return [BusinessReport]
    #
    BusinessReportSchedule = ::Struct.new(
      :schedule_arn,
      :schedule_name,
      :s3_bucket_name,
      :s3_key_prefix,
      :format,
      :content_range,
      :recurrence,
      :last_business_report,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BusinessReportStatus
    #
    module BusinessReportStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The skill store category that is shown. Alexa skills are assigned a specific skill
    #          category during creation, such as News, Social, and Sports.</p>
    #
    # @!attribute category_id
    #   <p>The ID of the skill store category.</p>
    #
    #   @return [Integer]
    #
    # @!attribute category_name
    #   <p>The name of the skill store category.</p>
    #
    #   @return [String]
    #
    Category = ::Struct.new(
      :category_id,
      :category_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CommsProtocol
    #
    module CommsProtocol
      # No documentation available.
      #
      SIP = "SIP"

      # No documentation available.
      #
      SIPS = "SIPS"

      # No documentation available.
      #
      H323 = "H323"
    end

    # <p>There is a concurrent modification of resources.</p>
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

    # <p>The default conference provider that is used if no other scheduled meetings are
    #          detected.</p>
    #
    # @!attribute default_conference_provider_arn
    #   <p>The ARN of the default conference provider.</p>
    #
    #   @return [String]
    #
    ConferencePreference = ::Struct.new(
      :default_conference_provider_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An entity that provides a conferencing solution. Alexa for Business acts as the voice interface and mediator that connects users to their preferred conference provider. Examples of conference providers include Amazon Chime, Zoom, Cisco, and Polycom. </p>
    #
    # @!attribute arn
    #   <p>The ARN of the newly created conference provider.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the conference provider.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of conference providers.</p>
    #
    #   Enum, one of: ["CHIME", "BLUEJEANS", "FUZE", "GOOGLE_HANGOUTS", "POLYCOM", "RINGCENTRAL", "SKYPE_FOR_BUSINESS", "WEBEX", "ZOOM", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ip_dial_in
    #   <p>The IP endpoint and protocol for calling.</p>
    #
    #   @return [IPDialIn]
    #
    # @!attribute pstn_dial_in
    #   <p>The information for PSTN conferencing.</p>
    #
    #   @return [PSTNDialIn]
    #
    # @!attribute meeting_setting
    #   <p>The meeting settings for the conference provider.</p>
    #
    #   @return [MeetingSetting]
    #
    ConferenceProvider = ::Struct.new(
      :arn,
      :name,
      :type,
      :ip_dial_in,
      :pstn_dial_in,
      :meeting_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConferenceProviderType
    #
    module ConferenceProviderType
      # No documentation available.
      #
      CHIME = "CHIME"

      # No documentation available.
      #
      BLUEJEANS = "BLUEJEANS"

      # No documentation available.
      #
      FUZE = "FUZE"

      # No documentation available.
      #
      GOOGLE_HANGOUTS = "GOOGLE_HANGOUTS"

      # No documentation available.
      #
      POLYCOM = "POLYCOM"

      # No documentation available.
      #
      RINGCENTRAL = "RINGCENTRAL"

      # No documentation available.
      #
      SKYPE_FOR_BUSINESS = "SKYPE_FOR_BUSINESS"

      # No documentation available.
      #
      WEBEX = "WEBEX"

      # No documentation available.
      #
      ZOOM = "ZOOM"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # Includes enum constants for ConnectionStatus
    #
    module ConnectionStatus
      # No documentation available.
      #
      ONLINE = "ONLINE"

      # No documentation available.
      #
      OFFLINE = "OFFLINE"
    end

    # <p>A contact with attributes.</p>
    #
    # @!attribute contact_arn
    #   <p>The ARN of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name of the contact to display on the console.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name of the contact, used to call the contact on the device.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name of the contact, used to call the contact on the device.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number of the contact. The phone number type defaults to WORK. You can
    #            either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which
    #            lets you specify the phone number type and multiple numbers.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_numbers
    #   <p>The list of phone numbers for the contact.</p>
    #
    #   @return [Array<PhoneNumber>]
    #
    # @!attribute sip_addresses
    #   <p>The list of SIP addresses for the contact.</p>
    #
    #   @return [Array<SipAddress>]
    #
    Contact = ::Struct.new(
      :contact_arn,
      :display_name,
      :first_name,
      :last_name,
      :phone_number,
      :phone_numbers,
      :sip_addresses,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AlexaForBusiness::Types::Contact "\
          "contact_arn=#{contact_arn || 'nil'}, "\
          "display_name=#{display_name || 'nil'}, "\
          "first_name=#{first_name || 'nil'}, "\
          "last_name=#{last_name || 'nil'}, "\
          "phone_number=\"[SENSITIVE]\", "\
          "phone_numbers=#{phone_numbers || 'nil'}, "\
          "sip_addresses=#{sip_addresses || 'nil'}>"
      end
    end

    # <p>Information related to a contact.</p>
    #
    # @!attribute contact_arn
    #   <p>The ARN of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name of the contact to display on the console.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name of the contact, used to call the contact on the device.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name of the contact, used to call the contact on the device.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number of the contact. The phone number type defaults to WORK. You can
    #            specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you
    #            specify the phone number type and multiple numbers.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_numbers
    #   <p>The list of phone numbers for the contact.</p>
    #
    #   @return [Array<PhoneNumber>]
    #
    # @!attribute sip_addresses
    #   <p>The list of SIP addresses for the contact.</p>
    #
    #   @return [Array<SipAddress>]
    #
    ContactData = ::Struct.new(
      :contact_arn,
      :display_name,
      :first_name,
      :last_name,
      :phone_number,
      :phone_numbers,
      :sip_addresses,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AlexaForBusiness::Types::ContactData "\
          "contact_arn=#{contact_arn || 'nil'}, "\
          "display_name=#{display_name || 'nil'}, "\
          "first_name=#{first_name || 'nil'}, "\
          "last_name=#{last_name || 'nil'}, "\
          "phone_number=\"[SENSITIVE]\", "\
          "phone_numbers=#{phone_numbers || 'nil'}, "\
          "sip_addresses=#{sip_addresses || 'nil'}>"
      end
    end

    # <p>The content definition. This can contain only one text, SSML, or audio list
    #          object.</p>
    #
    # @!attribute text_list
    #   <p>The list of text messages.</p>
    #
    #   @return [Array<Text>]
    #
    # @!attribute ssml_list
    #   <p>The list of SSML messages.</p>
    #
    #   @return [Array<Ssml>]
    #
    # @!attribute audio_list
    #   <p>The list of audio messages.</p>
    #
    #   @return [Array<Audio>]
    #
    Content = ::Struct.new(
      :text_list,
      :ssml_list,
      :audio_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the address book.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the address book.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique, user-specified identifier for the request that ensures
    #            idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAddressBookInput = ::Struct.new(
      :name,
      :description,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute address_book_arn
    #   <p>The ARN of the newly created address book.</p>
    #
    #   @return [String]
    #
    CreateAddressBookOutput = ::Struct.new(
      :address_book_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schedule_name
    #   <p>The name identifier of the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The S3 bucket name of the output reports. If this isn't specified, the report can be
    #            retrieved from a download link by calling ListBusinessReportSchedule. </p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The S3 key where the report is delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the generated report (individual CSV files or zipped files of
    #            individual files).</p>
    #
    #   Enum, one of: ["CSV", "CSV_ZIP"]
    #
    #   @return [String]
    #
    # @!attribute content_range
    #   <p>The content range of the reports.</p>
    #
    #   @return [BusinessReportContentRange]
    #
    # @!attribute recurrence
    #   <p>The recurrence of the reports. If this isn't specified, the report will only be
    #            delivered one time when the API is called. </p>
    #
    #   @return [BusinessReportRecurrence]
    #
    # @!attribute client_request_token
    #   <p>The client request token.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the business report schedule.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateBusinessReportScheduleInput = ::Struct.new(
      :schedule_name,
      :s3_bucket_name,
      :s3_key_prefix,
      :format,
      :content_range,
      :recurrence,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schedule_arn
    #   <p>The ARN of the business report schedule.</p>
    #
    #   @return [String]
    #
    CreateBusinessReportScheduleOutput = ::Struct.new(
      :schedule_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conference_provider_name
    #   <p>The name of the conference provider.</p>
    #
    #   @return [String]
    #
    # @!attribute conference_provider_type
    #   <p>Represents a type within a list of predefined types.</p>
    #
    #   Enum, one of: ["CHIME", "BLUEJEANS", "FUZE", "GOOGLE_HANGOUTS", "POLYCOM", "RINGCENTRAL", "SKYPE_FOR_BUSINESS", "WEBEX", "ZOOM", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ip_dial_in
    #   <p>The IP endpoint and protocol for calling.</p>
    #
    #   @return [IPDialIn]
    #
    # @!attribute pstn_dial_in
    #   <p>The information for PSTN conferencing.</p>
    #
    #   @return [PSTNDialIn]
    #
    # @!attribute meeting_setting
    #   <p>The meeting settings for the conference provider.</p>
    #
    #   @return [MeetingSetting]
    #
    # @!attribute client_request_token
    #   <p>The request token of the client.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateConferenceProviderInput = ::Struct.new(
      :conference_provider_name,
      :conference_provider_type,
      :ip_dial_in,
      :pstn_dial_in,
      :meeting_setting,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conference_provider_arn
    #   <p>The ARN of the newly-created conference provider.</p>
    #
    #   @return [String]
    #
    CreateConferenceProviderOutput = ::Struct.new(
      :conference_provider_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute display_name
    #   <p>The name of the contact to display on the console.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name of the contact that is used to call the contact on the
    #            device.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name of the contact that is used to call the contact on the
    #            device.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number of the contact in E.164 format. The phone number type defaults to
    #            WORK. You can specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers,
    #            which lets you specify the phone number type and multiple numbers.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_numbers
    #   <p>The list of phone numbers for the contact.</p>
    #
    #   @return [Array<PhoneNumber>]
    #
    # @!attribute sip_addresses
    #   <p>The list of SIP addresses for the contact.</p>
    #
    #   @return [Array<SipAddress>]
    #
    # @!attribute client_request_token
    #   <p>A unique, user-specified identifier for this request that ensures
    #            idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateContactInput = ::Struct.new(
      :display_name,
      :first_name,
      :last_name,
      :phone_number,
      :phone_numbers,
      :sip_addresses,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AlexaForBusiness::Types::CreateContactInput "\
          "display_name=#{display_name || 'nil'}, "\
          "first_name=#{first_name || 'nil'}, "\
          "last_name=#{last_name || 'nil'}, "\
          "phone_number=\"[SENSITIVE]\", "\
          "phone_numbers=#{phone_numbers || 'nil'}, "\
          "sip_addresses=#{sip_addresses || 'nil'}, "\
          "client_request_token=#{client_request_token || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute contact_arn
    #   <p>The ARN of the newly created address book.</p>
    #
    #   @return [String]
    #
    CreateContactOutput = ::Struct.new(
      :contact_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates settings for the end of meeting reminder feature that are applied to a room
    #          profile. The end of meeting reminder enables Alexa to remind users when a meeting is
    #          ending.</p>
    #
    # @!attribute reminder_at_minutes
    #   <p> A range of 3 to 15 minutes that determines when the reminder begins.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute reminder_type
    #   <p>The type of sound that users hear during the end of meeting reminder. </p>
    #
    #   Enum, one of: ["ANNOUNCEMENT_TIME_CHECK", "ANNOUNCEMENT_VARIABLE_TIME_LEFT", "CHIME", "KNOCK"]
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Whether an end of meeting reminder is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    CreateEndOfMeetingReminder = ::Struct.new(
      :reminder_at_minutes,
      :reminder_type,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the gateway group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the gateway group.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p> A unique, user-specified identifier for the request that ensures idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateGatewayGroupInput = ::Struct.new(
      :name,
      :description,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_group_arn
    #   <p>The ARN of the created gateway group.</p>
    #
    #   @return [String]
    #
    CreateGatewayGroupOutput = ::Struct.new(
      :gateway_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates settings for the instant booking feature that are applied to a room profile.
    #          When users start their meeting with Alexa, Alexa automatically books the room for the
    #          configured duration if the room is available.</p>
    #
    # @!attribute duration_in_minutes
    #   <p>Duration between 15 and 240 minutes at increments of 15 that determines how long to book
    #            an available room when a meeting is started with Alexa.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled
    #   <p>Whether instant booking is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    CreateInstantBooking = ::Struct.new(
      :duration_in_minutes,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates meeting room settings of a room profile.</p>
    #
    # @!attribute room_utilization_metrics_enabled
    #   <p>Whether room utilization metrics are enabled or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute end_of_meeting_reminder
    #   <p>Creates settings for the end of meeting reminder feature that are applied to a room
    #            profile. The end of meeting reminder enables Alexa to remind users when a meeting is
    #            ending.</p>
    #
    #   @return [CreateEndOfMeetingReminder]
    #
    # @!attribute instant_booking
    #   <p>Settings to automatically book a room for a configured duration if it's free when joining a meeting with Alexa.</p>
    #
    #   @return [CreateInstantBooking]
    #
    # @!attribute require_check_in
    #   <p>Settings for requiring a check in when a room is reserved. Alexa can cancel a room reservation if it's not checked into to make the room available for others. Users can check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check in.”</p>
    #
    #   @return [CreateRequireCheckIn]
    #
    CreateMeetingRoomConfiguration = ::Struct.new(
      :room_utilization_metrics_enabled,
      :end_of_meeting_reminder,
      :instant_booking,
      :require_check_in,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_profile_name
    #   <p>The name of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Detailed information about a device's network profile.</p>
    #
    #   @return [String]
    #
    # @!attribute ssid
    #   <p>The SSID of the Wi-Fi network.</p>
    #
    #   @return [String]
    #
    # @!attribute security_type
    #   <p>The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK,
    #            WEP, or OPEN.</p>
    #
    #   Enum, one of: ["OPEN", "WEP", "WPA_PSK", "WPA2_PSK", "WPA2_ENTERPRISE"]
    #
    #   @return [String]
    #
    # @!attribute eap_method
    #   <p>The authentication standard that is used in the EAP framework. Currently, EAP_TLS is
    #            supported.</p>
    #
    #   Enum, one of: ["EAP_TLS"]
    #
    #   @return [String]
    #
    # @!attribute current_password
    #   <p>The current password of the Wi-Fi network.</p>
    #
    #   @return [String]
    #
    # @!attribute next_password
    #   <p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously
    #            transmitted to the device and is used when the password of the network changes to
    #            NextPassword. </p>
    #
    #   @return [String]
    #
    # @!attribute certificate_authority_arn
    #   <p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager
    #            (ACM). This is used to issue certificates to the devices. </p>
    #
    #   @return [String]
    #
    # @!attribute trust_anchors
    #   <p>The root certificates of your authentication server that is installed on your devices
    #            and used to trust your authentication server during EAP negotiation. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_request_token
    #   <p>A unique, user-specified identifier for the request that ensures idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags. </p>
    #
    #   @return [Array<Tag>]
    #
    CreateNetworkProfileInput = ::Struct.new(
      :network_profile_name,
      :description,
      :ssid,
      :security_type,
      :eap_method,
      :current_password,
      :next_password,
      :certificate_authority_arn,
      :trust_anchors,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AlexaForBusiness::Types::CreateNetworkProfileInput "\
          "network_profile_name=#{network_profile_name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "ssid=#{ssid || 'nil'}, "\
          "security_type=#{security_type || 'nil'}, "\
          "eap_method=#{eap_method || 'nil'}, "\
          "current_password=\"[SENSITIVE]\", "\
          "next_password=\"[SENSITIVE]\", "\
          "certificate_authority_arn=#{certificate_authority_arn || 'nil'}, "\
          "trust_anchors=#{trust_anchors || 'nil'}, "\
          "client_request_token=#{client_request_token || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    CreateNetworkProfileOutput = ::Struct.new(
      :network_profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_name
    #   <p>The name of a room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The time zone used by a room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>The valid address for the room.</p>
    #
    #   @return [String]
    #
    # @!attribute distance_unit
    #   <p>The distance unit to be used by devices in the profile.</p>
    #
    #   Enum, one of: ["METRIC", "IMPERIAL"]
    #
    #   @return [String]
    #
    # @!attribute temperature_unit
    #   <p>The temperature unit to be used by devices in the profile.</p>
    #
    #   Enum, one of: ["FAHRENHEIT", "CELSIUS"]
    #
    #   @return [String]
    #
    # @!attribute wake_word
    #   <p>A wake word for Alexa, Echo, Amazon, or a computer.</p>
    #
    #   Enum, one of: ["ALEXA", "AMAZON", "ECHO", "COMPUTER"]
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p>The locale of the room profile. (This is currently only available to a limited preview audience.)</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The user-specified token that is used during the creation of a profile.</p>
    #
    #   @return [String]
    #
    # @!attribute setup_mode_disabled
    #   <p>Whether room profile setup is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_volume_limit
    #   <p>The maximum volume limit for a room profile.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pstn_enabled
    #   <p>Whether PSTN calling is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_retention_opt_in
    #   <p>Whether data retention of the profile is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute meeting_room_configuration
    #   <p>The meeting room settings of a room profile.</p>
    #
    #   @return [CreateMeetingRoomConfiguration]
    #
    # @!attribute tags
    #   <p>The tags for the profile.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateProfileInput = ::Struct.new(
      :profile_name,
      :timezone,
      :address,
      :distance_unit,
      :temperature_unit,
      :wake_word,
      :locale,
      :client_request_token,
      :setup_mode_disabled,
      :max_volume_limit,
      :pstn_enabled,
      :data_retention_opt_in,
      :meeting_room_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_arn
    #   <p>The ARN of the newly created room profile in the response.</p>
    #
    #   @return [String]
    #
    CreateProfileOutput = ::Struct.new(
      :profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates settings for the require check in feature that are applied to a room profile. Require check in allows a meeting room’s Alexa or AVS device to prompt the user to check in; otherwise, the room will be released.</p>
    #
    # @!attribute release_after_minutes
    #   <p>Duration between 5 and 20 minutes to determine when to release the room if it's not checked into.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled
    #   <p>Whether require check in is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    CreateRequireCheckIn = ::Struct.new(
      :release_after_minutes,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_name
    #   <p>The name for the room.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the room.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_arn
    #   <p>The profile ARN for the room. This is required.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_calendar_id
    #   <p>The calendar ARN for the room.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique, user-specified identifier for this request that ensures idempotency.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the room.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateRoomInput = ::Struct.new(
      :room_name,
      :description,
      :profile_arn,
      :provider_calendar_id,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The ARN of the newly created room in the response.</p>
    #
    #   @return [String]
    #
    CreateRoomOutput = ::Struct.new(
      :room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group_name
    #   <p>The name for the skill group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the skill group.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique, user-specified identifier for this request that ensures idempotency.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the skill group.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateSkillGroupInput = ::Struct.new(
      :skill_group_name,
      :description,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group_arn
    #   <p>The ARN of the newly created skill group in the response.</p>
    #
    #   @return [String]
    #
    CreateSkillGroupOutput = ::Struct.new(
      :skill_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The ARN for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique, user-specified identifier for this request that ensures idempotency.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the user.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateUserInput = ::Struct.new(
      :user_id,
      :first_name,
      :last_name,
      :email,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_arn
    #   <p>The ARN of the newly created user in the response.</p>
    #
    #   @return [String]
    #
    CreateUserOutput = ::Struct.new(
      :user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute address_book_arn
    #   <p>The ARN of the address book to delete.</p>
    #
    #   @return [String]
    #
    DeleteAddressBookInput = ::Struct.new(
      :address_book_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAddressBookOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schedule_arn
    #   <p>The ARN of the business report schedule.</p>
    #
    #   @return [String]
    #
    DeleteBusinessReportScheduleInput = ::Struct.new(
      :schedule_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBusinessReportScheduleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conference_provider_arn
    #   <p>The ARN of the conference provider.</p>
    #
    #   @return [String]
    #
    DeleteConferenceProviderInput = ::Struct.new(
      :conference_provider_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConferenceProviderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact to delete.</p>
    #
    #   @return [String]
    #
    DeleteContactInput = ::Struct.new(
      :contact_arn,
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

    # @!attribute device_arn
    #   <p>The ARN of the device for which to request details.</p>
    #
    #   @return [String]
    #
    DeleteDeviceInput = ::Struct.new(
      :device_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDeviceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_arn
    #   <p>The ARN of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_usage_type
    #   <p>The type of usage data to delete.</p>
    #
    #   Enum, one of: ["VOICE"]
    #
    #   @return [String]
    #
    DeleteDeviceUsageDataInput = ::Struct.new(
      :device_arn,
      :device_usage_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDeviceUsageDataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_group_arn
    #   <p>The ARN of the gateway group to delete.</p>
    #
    #   @return [String]
    #
    DeleteGatewayGroupInput = ::Struct.new(
      :gateway_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteGatewayGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    DeleteNetworkProfileInput = ::Struct.new(
      :network_profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteNetworkProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_arn
    #   <p>The ARN of the room profile to delete. Required.</p>
    #
    #   @return [String]
    #
    DeleteProfileInput = ::Struct.new(
      :profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The ARN of the room to delete. Required.</p>
    #
    #   @return [String]
    #
    DeleteRoomInput = ::Struct.new(
      :room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRoomOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The ARN of the room from which to remove the room skill parameter details.</p>
    #
    #   @return [String]
    #
    # @!attribute skill_id
    #   <p>The ID of the skill from which to remove the room skill parameter details.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_key
    #   <p>The room skill parameter key for which to remove details.</p>
    #
    #   @return [String]
    #
    DeleteRoomSkillParameterInput = ::Struct.new(
      :room_arn,
      :skill_id,
      :parameter_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRoomSkillParameterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_id
    #   <p>The unique identifier of a skill.</p>
    #
    #   @return [String]
    #
    # @!attribute room_arn
    #   <p>The room that the skill is authorized for.</p>
    #
    #   @return [String]
    #
    DeleteSkillAuthorizationInput = ::Struct.new(
      :skill_id,
      :room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSkillAuthorizationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group_arn
    #   <p>The ARN of the skill group to delete. Required.</p>
    #
    #   @return [String]
    #
    DeleteSkillGroupInput = ::Struct.new(
      :skill_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSkillGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_arn
    #   <p>The ARN of the user to delete in the organization. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute enrollment_id
    #   <p>The ARN of the user's enrollment in the organization. Required.</p>
    #
    #   @return [String]
    #
    DeleteUserInput = ::Struct.new(
      :user_arn,
      :enrollment_id,
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

    # <p>The details about the developer that published the skill.</p>
    #
    # @!attribute developer_name
    #   <p>The name of the developer.</p>
    #
    #   @return [String]
    #
    # @!attribute privacy_policy
    #   <p>The URL of the privacy policy.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email of the developer.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The website of the developer.</p>
    #
    #   @return [String]
    #
    DeveloperInfo = ::Struct.new(
      :developer_name,
      :privacy_policy,
      :email,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A device with attributes.</p>
    #
    # @!attribute device_arn
    #   <p>The ARN of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_serial_number
    #   <p>The serial number of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type
    #   <p>The type of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_name
    #   <p>The name of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute software_version
    #   <p>The software version of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_address
    #   <p>The MAC address of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute room_arn
    #   <p>The room ARN of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_status
    #   <p>The status of a device. If the status is not READY, check the DeviceStatusInfo value
    #            for details.</p>
    #
    #   Enum, one of: ["READY", "PENDING", "WAS_OFFLINE", "DEREGISTERED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute device_status_info
    #   <p>Detailed information about a device's status.</p>
    #
    #   @return [DeviceStatusInfo]
    #
    # @!attribute network_profile_info
    #   <p>Detailed information about a device's network profile.</p>
    #
    #   @return [DeviceNetworkProfileInfo]
    #
    Device = ::Struct.new(
      :device_arn,
      :device_serial_number,
      :device_type,
      :device_name,
      :software_version,
      :mac_address,
      :room_arn,
      :device_status,
      :device_status_info,
      :network_profile_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Device attributes.</p>
    #
    # @!attribute device_arn
    #   <p>The ARN of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_serial_number
    #   <p>The serial number of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type
    #   <p>The type of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_name
    #   <p>The name of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute software_version
    #   <p>The software version of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_address
    #   <p>The MAC address of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_status
    #   <p>The status of a device.</p>
    #
    #   Enum, one of: ["READY", "PENDING", "WAS_OFFLINE", "DEREGISTERED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute network_profile_name
    #   <p>The name of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute room_arn
    #   <p>The room ARN associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute room_name
    #   <p>The name of the room associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_status_info
    #   <p>Detailed information about a device's status.</p>
    #
    #   @return [DeviceStatusInfo]
    #
    # @!attribute created_time
    #   <p>The time (in epoch) when the device data was created.</p>
    #
    #   @return [Time]
    #
    DeviceData = ::Struct.new(
      :device_arn,
      :device_serial_number,
      :device_type,
      :device_name,
      :software_version,
      :mac_address,
      :device_status,
      :network_profile_arn,
      :network_profile_name,
      :room_arn,
      :room_name,
      :device_status_info,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The list of device events.</p>
    #
    # @!attribute type
    #   <p>The type of device event.</p>
    #
    #   Enum, one of: ["CONNECTION_STATUS", "DEVICE_STATUS"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>The time (in epoch) when the event occurred. </p>
    #
    #   @return [Time]
    #
    DeviceEvent = ::Struct.new(
      :type,
      :value,
      :timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceEventType
    #
    module DeviceEventType
      # No documentation available.
      #
      CONNECTION_STATUS = "CONNECTION_STATUS"

      # No documentation available.
      #
      DEVICE_STATUS = "DEVICE_STATUS"
    end

    # <p>Detailed information about a device's network profile.</p>
    #
    # @!attribute network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>The ARN of the certificate associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_expiration_time
    #   <p>The time (in epoch) when the certificate expires.</p>
    #
    #   @return [Time]
    #
    DeviceNetworkProfileInfo = ::Struct.new(
      :network_profile_arn,
      :certificate_arn,
      :certificate_expiration_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed because this device is no longer registered and therefore no longer managed by this account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DeviceNotRegisteredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceStatus
    #
    module DeviceStatus
      # No documentation available.
      #
      READY = "READY"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      WAS_OFFLINE = "WAS_OFFLINE"

      # No documentation available.
      #
      DEREGISTERED = "DEREGISTERED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Details of a device’s status.</p>
    #
    # @!attribute feature
    #   <p>The list of available features on the device.</p>
    #
    #   Enum, one of: ["BLUETOOTH", "VOLUME", "NOTIFICATIONS", "LISTS", "SKILLS", "NETWORK_PROFILE", "SETTINGS", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The device status detail code.</p>
    #
    #   Enum, one of: ["DEVICE_SOFTWARE_UPDATE_NEEDED", "DEVICE_WAS_OFFLINE", "CREDENTIALS_ACCESS_FAILURE", "TLS_VERSION_MISMATCH", "ASSOCIATION_REJECTION", "AUTHENTICATION_FAILURE", "DHCP_FAILURE", "INTERNET_UNAVAILABLE", "DNS_FAILURE", "UNKNOWN_FAILURE", "CERTIFICATE_ISSUING_LIMIT_EXCEEDED", "INVALID_CERTIFICATE_AUTHORITY", "NETWORK_PROFILE_NOT_FOUND", "INVALID_PASSWORD_STATE", "PASSWORD_NOT_FOUND", "PASSWORD_MANAGER_ACCESS_DENIED", "CERTIFICATE_AUTHORITY_ACCESS_DENIED"]
    #
    #   @return [String]
    #
    DeviceStatusDetail = ::Struct.new(
      :feature,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceStatusDetailCode
    #
    module DeviceStatusDetailCode
      # No documentation available.
      #
      DEVICE_SOFTWARE_UPDATE_NEEDED = "DEVICE_SOFTWARE_UPDATE_NEEDED"

      # No documentation available.
      #
      DEVICE_WAS_OFFLINE = "DEVICE_WAS_OFFLINE"

      # No documentation available.
      #
      CREDENTIALS_ACCESS_FAILURE = "CREDENTIALS_ACCESS_FAILURE"

      # No documentation available.
      #
      TLS_VERSION_MISMATCH = "TLS_VERSION_MISMATCH"

      # No documentation available.
      #
      ASSOCIATION_REJECTION = "ASSOCIATION_REJECTION"

      # No documentation available.
      #
      AUTHENTICATION_FAILURE = "AUTHENTICATION_FAILURE"

      # No documentation available.
      #
      DHCP_FAILURE = "DHCP_FAILURE"

      # No documentation available.
      #
      INTERNET_UNAVAILABLE = "INTERNET_UNAVAILABLE"

      # No documentation available.
      #
      DNS_FAILURE = "DNS_FAILURE"

      # No documentation available.
      #
      UNKNOWN_FAILURE = "UNKNOWN_FAILURE"

      # No documentation available.
      #
      CERTIFICATE_ISSUING_LIMIT_EXCEEDED = "CERTIFICATE_ISSUING_LIMIT_EXCEEDED"

      # No documentation available.
      #
      INVALID_CERTIFICATE_AUTHORITY = "INVALID_CERTIFICATE_AUTHORITY"

      # No documentation available.
      #
      NETWORK_PROFILE_NOT_FOUND = "NETWORK_PROFILE_NOT_FOUND"

      # No documentation available.
      #
      INVALID_PASSWORD_STATE = "INVALID_PASSWORD_STATE"

      # No documentation available.
      #
      PASSWORD_NOT_FOUND = "PASSWORD_NOT_FOUND"

      # No documentation available.
      #
      PASSWORD_MANAGER_ACCESS_DENIED = "PASSWORD_MANAGER_ACCESS_DENIED"

      # No documentation available.
      #
      CERTIFICATE_AUTHORITY_ACCESS_DENIED = "CERTIFICATE_AUTHORITY_ACCESS_DENIED"
    end

    # <p>Detailed information about a device's status.</p>
    #
    # @!attribute device_status_details
    #   <p>One or more device status detail descriptions.</p>
    #
    #   @return [Array<DeviceStatusDetail>]
    #
    # @!attribute connection_status
    #   <p>The latest available information about the connection status of a device. </p>
    #
    #   Enum, one of: ["ONLINE", "OFFLINE"]
    #
    #   @return [String]
    #
    # @!attribute connection_status_updated_time
    #   <p>The time (in epoch) when the device connection status changed.</p>
    #
    #   @return [Time]
    #
    DeviceStatusInfo = ::Struct.new(
      :device_status_details,
      :connection_status,
      :connection_status_updated_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceUsageType
    #
    module DeviceUsageType
      # No documentation available.
      #
      VOICE = "VOICE"
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact to disassociate from an address book.</p>
    #
    #   @return [String]
    #
    # @!attribute address_book_arn
    #   <p>The ARN of the address from which to disassociate the contact.</p>
    #
    #   @return [String]
    #
    DisassociateContactFromAddressBookInput = ::Struct.new(
      :contact_arn,
      :address_book_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateContactFromAddressBookOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_arn
    #   <p>The ARN of the device to disassociate from a room. Required.</p>
    #
    #   @return [String]
    #
    DisassociateDeviceFromRoomInput = ::Struct.new(
      :device_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateDeviceFromRoomOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group_arn
    #   <p>The unique identifier of a skill. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute skill_id
    #   <p>The ARN of a skill group to associate to a skill.</p>
    #
    #   @return [String]
    #
    DisassociateSkillFromSkillGroupInput = ::Struct.new(
      :skill_group_arn,
      :skill_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateSkillFromSkillGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_id
    #   <p> The private skill ID you want to make unavailable for enrolled users.</p>
    #
    #   @return [String]
    #
    DisassociateSkillFromUsersInput = ::Struct.new(
      :skill_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateSkillFromUsersOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group_arn
    #   <p>The ARN of the skill group to disassociate from a room. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute room_arn
    #   <p>The ARN of the room from which the skill group is to be disassociated.
    #            Required.</p>
    #
    #   @return [String]
    #
    DisassociateSkillGroupFromRoomInput = ::Struct.new(
      :skill_group_arn,
      :room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateSkillGroupFromRoomOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DistanceUnit
    #
    module DistanceUnit
      # No documentation available.
      #
      METRIC = "METRIC"

      # No documentation available.
      #
      IMPERIAL = "IMPERIAL"
    end

    # Includes enum constants for EnablementType
    #
    module EnablementType
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      PENDING = "PENDING"
    end

    # Includes enum constants for EnablementTypeFilter
    #
    module EnablementTypeFilter
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      PENDING = "PENDING"
    end

    # <p>Settings for the end of meeting reminder feature that are applied to a room profile. The
    #          end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>
    #
    # @!attribute reminder_at_minutes
    #   <p>A range of 3 to 15 minutes that determines when the reminder begins.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute reminder_type
    #   <p>The type of sound that users hear during the end of meeting reminder. </p>
    #
    #   Enum, one of: ["ANNOUNCEMENT_TIME_CHECK", "ANNOUNCEMENT_VARIABLE_TIME_LEFT", "CHIME", "KNOCK"]
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Whether an end of meeting reminder is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    EndOfMeetingReminder = ::Struct.new(
      :reminder_at_minutes,
      :reminder_type,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EndOfMeetingReminderType
    #
    module EndOfMeetingReminderType
      # No documentation available.
      #
      ANNOUNCEMENT_TIME_CHECK = "ANNOUNCEMENT_TIME_CHECK"

      # No documentation available.
      #
      ANNOUNCEMENT_VARIABLE_TIME_LEFT = "ANNOUNCEMENT_VARIABLE_TIME_LEFT"

      # No documentation available.
      #
      CHIME = "CHIME"

      # No documentation available.
      #
      KNOCK = "KNOCK"
    end

    # Includes enum constants for EnrollmentStatus
    #
    module EnrollmentStatus
      # No documentation available.
      #
      INITIALIZED = "INITIALIZED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      REGISTERED = "REGISTERED"

      # No documentation available.
      #
      DISASSOCIATING = "DISASSOCIATING"

      # No documentation available.
      #
      DEREGISTERING = "DEREGISTERING"
    end

    # Includes enum constants for Feature
    #
    module Feature
      # No documentation available.
      #
      BLUETOOTH = "BLUETOOTH"

      # No documentation available.
      #
      VOLUME = "VOLUME"

      # No documentation available.
      #
      NOTIFICATIONS = "NOTIFICATIONS"

      # No documentation available.
      #
      LISTS = "LISTS"

      # No documentation available.
      #
      SKILLS = "SKILLS"

      # No documentation available.
      #
      NETWORK_PROFILE = "NETWORK_PROFILE"

      # No documentation available.
      #
      SETTINGS = "SETTINGS"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>A filter name and value pair that is used to return a more specific list of results.
    #          Filters can be used to match a set of resources by various criteria.</p>
    #
    # @!attribute key
    #   <p>The key of a filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values of a filter.</p>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The room that the appliances are associated with.</p>
    #
    #   @return [String]
    #
    ForgetSmartHomeAppliancesInput = ::Struct.new(
      :room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ForgetSmartHomeAppliancesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the gateway. </p>
    #
    # @!attribute arn
    #   <p>The ARN of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_group_arn
    #   <p>The ARN of the gateway group that the gateway is associated to.</p>
    #
    #   @return [String]
    #
    # @!attribute software_version
    #   <p>The software version of the gateway. The gateway automatically updates its software
    #            version during normal operation.</p>
    #
    #   @return [String]
    #
    Gateway = ::Struct.new(
      :arn,
      :name,
      :description,
      :gateway_group_arn,
      :software_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the gateway group.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the gateway group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the gateway group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the gateway group.</p>
    #
    #   @return [String]
    #
    GatewayGroup = ::Struct.new(
      :arn,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of a gateway group.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the gateway group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the gateway group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the gateway group.</p>
    #
    #   @return [String]
    #
    GatewayGroupSummary = ::Struct.new(
      :arn,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of a gateway.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_group_arn
    #   <p>The ARN of the gateway group that the gateway is associated to.</p>
    #
    #   @return [String]
    #
    # @!attribute software_version
    #   <p>The software version of the gateway. The gateway automatically updates its software
    #            version during normal operation.</p>
    #
    #   @return [String]
    #
    GatewaySummary = ::Struct.new(
      :arn,
      :name,
      :description,
      :gateway_group_arn,
      :software_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute address_book_arn
    #   <p>The ARN of the address book for which to request details.</p>
    #
    #   @return [String]
    #
    GetAddressBookInput = ::Struct.new(
      :address_book_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute address_book
    #   <p>The details of the requested address book.</p>
    #
    #   @return [AddressBook]
    #
    GetAddressBookOutput = ::Struct.new(
      :address_book,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetConferencePreferenceInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute preference
    #   <p>The conference preference.</p>
    #
    #   @return [ConferencePreference]
    #
    GetConferencePreferenceOutput = ::Struct.new(
      :preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conference_provider_arn
    #   <p>The ARN of the newly created conference provider.</p>
    #
    #   @return [String]
    #
    GetConferenceProviderInput = ::Struct.new(
      :conference_provider_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conference_provider
    #   <p>The conference provider.</p>
    #
    #   @return [ConferenceProvider]
    #
    GetConferenceProviderOutput = ::Struct.new(
      :conference_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact for which to request details.</p>
    #
    #   @return [String]
    #
    GetContactInput = ::Struct.new(
      :contact_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact
    #   <p>The details of the requested contact.</p>
    #
    #   @return [Contact]
    #
    GetContactOutput = ::Struct.new(
      :contact,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_arn
    #   <p>The ARN of the device for which to request details. Required.</p>
    #
    #   @return [String]
    #
    GetDeviceInput = ::Struct.new(
      :device_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device
    #   <p>The details of the device requested. Required.</p>
    #
    #   @return [Device]
    #
    GetDeviceOutput = ::Struct.new(
      :device,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_group_arn
    #   <p>The ARN of the gateway group to get.</p>
    #
    #   @return [String]
    #
    GetGatewayGroupInput = ::Struct.new(
      :gateway_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_group
    #   <p>The details of the gateway group.</p>
    #
    #   @return [GatewayGroup]
    #
    GetGatewayGroupOutput = ::Struct.new(
      :gateway_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The ARN of the gateway to get.</p>
    #
    #   @return [String]
    #
    GetGatewayInput = ::Struct.new(
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway
    #   <p>The details of the gateway.</p>
    #
    #   @return [Gateway]
    #
    GetGatewayOutput = ::Struct.new(
      :gateway,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetInvitationConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_name
    #   <p>The name of the organization sending the enrollment invite to a user.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_email
    #   <p>The email ID of the organization or individual contact that the enrolled user can use.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute private_skill_ids
    #   <p>The list of private skill IDs that you want to recommend to the user to enable in the
    #            invitation.</p>
    #
    #   @return [Array<String>]
    #
    GetInvitationConfigurationOutput = ::Struct.new(
      :organization_name,
      :contact_email,
      :private_skill_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    GetNetworkProfileInput = ::Struct.new(
      :network_profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_profile
    #   <p>The network profile associated with a device.</p>
    #
    #   @return [NetworkProfile]
    #
    GetNetworkProfileOutput = ::Struct.new(
      :network_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_arn
    #   <p>The ARN of the room profile for which to request details. Required.</p>
    #
    #   @return [String]
    #
    GetProfileInput = ::Struct.new(
      :profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile
    #   <p>The details of the room profile requested. Required.</p>
    #
    #   @return [Profile]
    #
    GetProfileOutput = ::Struct.new(
      :profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The ARN of the room for which to request details. Required.</p>
    #
    #   @return [String]
    #
    GetRoomInput = ::Struct.new(
      :room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room
    #   <p>The details of the room requested.</p>
    #
    #   @return [Room]
    #
    GetRoomOutput = ::Struct.new(
      :room,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The ARN of the room from which to get the room skill parameter details. </p>
    #
    #   @return [String]
    #
    # @!attribute skill_id
    #   <p>The ARN of the skill from which to get the room skill parameter details.
    #            Required.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_key
    #   <p>The room skill parameter key for which to get details. Required.</p>
    #
    #   @return [String]
    #
    GetRoomSkillParameterInput = ::Struct.new(
      :room_arn,
      :skill_id,
      :parameter_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_skill_parameter
    #   <p>The details of the room skill parameter requested. Required.</p>
    #
    #   @return [RoomSkillParameter]
    #
    GetRoomSkillParameterOutput = ::Struct.new(
      :room_skill_parameter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group_arn
    #   <p>The ARN of the skill group for which to get details. Required.</p>
    #
    #   @return [String]
    #
    GetSkillGroupInput = ::Struct.new(
      :skill_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group
    #   <p>The details of the skill group requested. Required.</p>
    #
    #   @return [SkillGroup]
    #
    GetSkillGroupOutput = ::Struct.new(
      :skill_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The IP endpoint and protocol for calling.</p>
    #
    # @!attribute endpoint
    #   <p>The IP address.</p>
    #
    #   @return [String]
    #
    # @!attribute comms_protocol
    #   <p>The protocol, including SIP, SIPS, and H323.</p>
    #
    #   Enum, one of: ["SIP", "SIPS", "H323"]
    #
    #   @return [String]
    #
    IPDialIn = ::Struct.new(
      :endpoint,
      :comms_protocol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings for the instant booking feature that are applied to a room profile. When users
    #          start their meeting with Alexa, Alexa  automatically books the room for the configured
    #          duration if the room is available.</p>
    #
    # @!attribute duration_in_minutes
    #   <p>Duration between 15 and 240 minutes at increments of 15 that determines how long to book
    #            an available room when a meeting is started with Alexa. </p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled
    #   <p>Whether instant booking is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    InstantBooking = ::Struct.new(
      :duration_in_minutes,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Certificate Authority can't issue or revoke a certificate.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidCertificateAuthorityException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The device is in an invalid state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDeviceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A password in SecretsManager is in an invalid state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSecretsManagerResourceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service linked role is locked for deletion. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidServiceLinkedRoleStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The attempt to update a user is invalid due to the user's current status.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidUserStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You are performing an action that would put you beyond your account's limits.</p>
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
    #   <p>The token used to list the remaining schedules from the previous API call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of schedules listed in the call.</p>
    #
    #   @return [Integer]
    #
    ListBusinessReportSchedulesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute business_report_schedules
    #   <p>The schedule of the reports.</p>
    #
    #   @return [Array<BusinessReportSchedule>]
    #
    # @!attribute next_token
    #   <p>The token used to list the remaining schedules from the previous API call.</p>
    #
    #   @return [String]
    #
    ListBusinessReportSchedulesOutput = ::Struct.new(
      :business_report_schedules,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The tokens used for pagination.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of conference providers to be returned, per paginated
    #            calls.</p>
    #
    #   @return [Integer]
    #
    ListConferenceProvidersInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conference_providers
    #   <p>The conference providers.</p>
    #
    #   @return [Array<ConferenceProvider>]
    #
    # @!attribute next_token
    #   <p>The tokens used for pagination.</p>
    #
    #   @return [String]
    #
    ListConferenceProvidersOutput = ::Struct.new(
      :conference_providers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_arn
    #   <p>The ARN of a device.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type
    #   <p>The event type to filter device events. If EventType isn't specified, this returns a
    #            list of all device events in reverse chronological order. If EventType is specified, this
    #            returns a list of device events for that EventType in reverse chronological order.
    #         </p>
    #
    #   Enum, one of: ["CONNECTION_STATUS", "DEVICE_STATUS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response only includes
    #            results beyond the token, up to the value specified by MaxResults. When the end of results
    #            is reached, the response has a value of null.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. The default value is 50. If
    #            more results exist than the specified MaxResults value, a token is included in the response
    #            so that the remaining results can be retrieved. </p>
    #
    #   @return [Integer]
    #
    ListDeviceEventsInput = ::Struct.new(
      :device_arn,
      :event_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_events
    #   <p>The device events requested for the device ARN.</p>
    #
    #   @return [Array<DeviceEvent>]
    #
    # @!attribute next_token
    #   <p>The token returned to indicate that there is more data available.</p>
    #
    #   @return [String]
    #
    ListDeviceEventsOutput = ::Struct.new(
      :device_events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token used to paginate though multiple pages of gateway group summaries.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of gateway group summaries to return. The default is 50.</p>
    #
    #   @return [Integer]
    #
    ListGatewayGroupsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_groups
    #   <p>The gateway groups in the list.</p>
    #
    #   @return [Array<GatewayGroupSummary>]
    #
    # @!attribute next_token
    #   <p>The token used to paginate though multiple pages of gateway group summaries.</p>
    #
    #   @return [String]
    #
    ListGatewayGroupsOutput = ::Struct.new(
      :gateway_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_group_arn
    #   <p>The gateway group ARN for which to list gateways.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token used to paginate though multiple pages of gateway summaries.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of gateway summaries to return. The default is 50.</p>
    #
    #   @return [Integer]
    #
    ListGatewaysInput = ::Struct.new(
      :gateway_group_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateways
    #   <p>The gateways in the list.</p>
    #
    #   @return [Array<GatewaySummary>]
    #
    # @!attribute next_token
    #   <p>The token used to paginate though multiple pages of gateway summaries.</p>
    #
    #   @return [String]
    #
    ListGatewaysOutput = ::Struct.new(
      :gateways,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group_arn
    #   <p>The ARN of the skill group for which to list enabled skills.</p>
    #
    #   @return [String]
    #
    # @!attribute enablement_type
    #   <p>Whether the skill is enabled under the user's account.</p>
    #
    #   Enum, one of: ["ENABLED", "PENDING"]
    #
    #   @return [String]
    #
    # @!attribute skill_type
    #   <p>Whether the skill is publicly available or is a private skill.</p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListSkillsInput = ::Struct.new(
      :skill_group_arn,
      :enablement_type,
      :skill_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_summaries
    #   <p>The list of enabled skills requested. Required.</p>
    #
    #   @return [Array<SkillSummary>]
    #
    # @!attribute next_token
    #   <p>The token returned to indicate that there is more data available.</p>
    #
    #   @return [String]
    #
    ListSkillsOutput = ::Struct.new(
      :skill_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The tokens used for pagination.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of categories returned, per paginated calls.</p>
    #
    #   @return [Integer]
    #
    ListSkillsStoreCategoriesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category_list
    #   <p>The list of categories.</p>
    #
    #   @return [Array<Category>]
    #
    # @!attribute next_token
    #   <p>The tokens used for pagination.</p>
    #
    #   @return [String]
    #
    ListSkillsStoreCategoriesOutput = ::Struct.new(
      :category_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category_id
    #   <p>The category ID for which the skills are being retrieved from the skill
    #            store.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The tokens used for pagination.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of skills returned per paginated calls.</p>
    #
    #   @return [Integer]
    #
    ListSkillsStoreSkillsByCategoryInput = ::Struct.new(
      :category_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skills_store_skills
    #   <p>The skill store skills.</p>
    #
    #   @return [Array<SkillsStoreSkill>]
    #
    # @!attribute next_token
    #   <p>The tokens used for pagination.</p>
    #
    #   @return [String]
    #
    ListSkillsStoreSkillsByCategoryOutput = ::Struct.new(
      :skills_store_skills,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The room that the appliances are associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of appliances to be returned, per paginated calls.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The tokens used for pagination.</p>
    #
    #   @return [String]
    #
    ListSmartHomeAppliancesInput = ::Struct.new(
      :room_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute smart_home_appliances
    #   <p>The smart home appliances.</p>
    #
    #   @return [Array<SmartHomeAppliance>]
    #
    # @!attribute next_token
    #   <p>The tokens used for pagination.</p>
    #
    #   @return [String]
    #
    ListSmartHomeAppliancesOutput = ::Struct.new(
      :smart_home_appliances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the specified resource for which to list tags.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    ListTagsInput = ::Struct.new(
      :arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags requested for the specified resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>The token returned to indicate that there is more data available.</p>
    #
    #   @return [String]
    #
    ListTagsOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Locale
    #
    module Locale
      # No documentation available.
      #
      en_US = "en-US"
    end

    # <p>Meeting room settings of a room profile.</p>
    #
    # @!attribute room_utilization_metrics_enabled
    #   <p>Whether room utilization metrics are enabled or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute end_of_meeting_reminder
    #   <p>Settings for the end of meeting reminder feature that are applied to a room profile. The
    #            end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>
    #
    #   @return [EndOfMeetingReminder]
    #
    # @!attribute instant_booking
    #   <p>Settings to automatically book the room if available for a configured duration when
    #            joining a meeting with Alexa. </p>
    #
    #   @return [InstantBooking]
    #
    # @!attribute require_check_in
    #   <p>Settings for requiring a check in when a room is reserved. Alexa can cancel a room
    #            reservation if it's not checked into. This makes the room available for others. Users can
    #            check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check
    #            in.” </p>
    #
    #   @return [RequireCheckIn]
    #
    MeetingRoomConfiguration = ::Struct.new(
      :room_utilization_metrics_enabled,
      :end_of_meeting_reminder,
      :instant_booking,
      :require_check_in,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The values that indicate whether a pin is always required (YES), never required (NO),
    #             or OPTIONAL.</p>
    #         <ul>
    #             <li>
    #                 <p>If YES, Alexa will always ask for a meeting pin.</p>
    #             </li>
    #             <li>
    #                 <p>If NO, Alexa will never ask for a meeting pin.</p>
    #             </li>
    #             <li>
    #                 <p>If OPTIONAL, Alexa will ask if you have a meeting pin and if the customer responds
    #                     with yes, it will ask for the meeting pin.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute require_pin
    #   <p>The values that indicate whether the pin is always required.</p>
    #
    #   Enum, one of: ["YES", "NO", "OPTIONAL"]
    #
    #   @return [String]
    #
    MeetingSetting = ::Struct.new(
      :require_pin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name sent in the request is already in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NameInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NetworkEapMethod
    #
    module NetworkEapMethod
      # No documentation available.
      #
      EAP_TLS = "EAP_TLS"
    end

    # <p>The network profile associated with a device.</p>
    #
    # @!attribute network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute network_profile_name
    #   <p>The name of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Detailed information about a device's network profile.</p>
    #
    #   @return [String]
    #
    # @!attribute ssid
    #   <p>The SSID of the Wi-Fi network.</p>
    #
    #   @return [String]
    #
    # @!attribute security_type
    #   <p>The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK,
    #            WEP, or OPEN.</p>
    #
    #   Enum, one of: ["OPEN", "WEP", "WPA_PSK", "WPA2_PSK", "WPA2_ENTERPRISE"]
    #
    #   @return [String]
    #
    # @!attribute eap_method
    #   <p>The authentication standard that is used in the EAP framework. Currently, EAP_TLS is
    #            supported. </p>
    #
    #   Enum, one of: ["EAP_TLS"]
    #
    #   @return [String]
    #
    # @!attribute current_password
    #   <p>The current password of the Wi-Fi network.</p>
    #
    #   @return [String]
    #
    # @!attribute next_password
    #   <p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously
    #            transmitted to the device and is used when the password of the network changes to
    #            NextPassword. </p>
    #
    #   @return [String]
    #
    # @!attribute certificate_authority_arn
    #   <p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager
    #            (ACM). This is used to issue certificates to the devices. </p>
    #
    #   @return [String]
    #
    # @!attribute trust_anchors
    #   <p>The root certificates of your authentication server, which is installed on your devices
    #            and used to trust your authentication server during EAP negotiation.</p>
    #
    #   @return [Array<String>]
    #
    NetworkProfile = ::Struct.new(
      :network_profile_arn,
      :network_profile_name,
      :description,
      :ssid,
      :security_type,
      :eap_method,
      :current_password,
      :next_password,
      :certificate_authority_arn,
      :trust_anchors,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AlexaForBusiness::Types::NetworkProfile "\
          "network_profile_arn=#{network_profile_arn || 'nil'}, "\
          "network_profile_name=#{network_profile_name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "ssid=#{ssid || 'nil'}, "\
          "security_type=#{security_type || 'nil'}, "\
          "eap_method=#{eap_method || 'nil'}, "\
          "current_password=\"[SENSITIVE]\", "\
          "next_password=\"[SENSITIVE]\", "\
          "certificate_authority_arn=#{certificate_authority_arn || 'nil'}, "\
          "trust_anchors=#{trust_anchors || 'nil'}>"
      end
    end

    # <p>The data associated with a network profile.</p>
    #
    # @!attribute network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute network_profile_name
    #   <p>The name of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Detailed information about a device's network profile.</p>
    #
    #   @return [String]
    #
    # @!attribute ssid
    #   <p>The SSID of the Wi-Fi network.</p>
    #
    #   @return [String]
    #
    # @!attribute security_type
    #   <p>The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK,
    #            WEP, or OPEN.</p>
    #
    #   Enum, one of: ["OPEN", "WEP", "WPA_PSK", "WPA2_PSK", "WPA2_ENTERPRISE"]
    #
    #   @return [String]
    #
    # @!attribute eap_method
    #   <p>The authentication standard that is used in the EAP framework. Currently, EAP_TLS is
    #            supported.</p>
    #
    #   Enum, one of: ["EAP_TLS"]
    #
    #   @return [String]
    #
    # @!attribute certificate_authority_arn
    #   <p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager
    #            (ACM). This is used to issue certificates to the devices.</p>
    #
    #   @return [String]
    #
    NetworkProfileData = ::Struct.new(
      :network_profile_arn,
      :network_profile_name,
      :description,
      :ssid,
      :security_type,
      :eap_method,
      :certificate_authority_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NetworkSecurityType
    #
    module NetworkSecurityType
      # No documentation available.
      #
      OPEN = "OPEN"

      # No documentation available.
      #
      WEP = "WEP"

      # No documentation available.
      #
      WPA_PSK = "WPA_PSK"

      # No documentation available.
      #
      WPA2_PSK = "WPA2_PSK"

      # No documentation available.
      #
      WPA2_ENTERPRISE = "WPA2_ENTERPRISE"
    end

    # <p>The resource is not found.</p>
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

    # <p>The information for public switched telephone network (PSTN) conferencing.</p>
    #
    # @!attribute country_code
    #   <p>The zip code.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number to call to join the conference.</p>
    #
    #   @return [String]
    #
    # @!attribute one_click_id_delay
    #   <p>The delay duration before Alexa enters the conference ID with dual-tone multi-frequency (DTMF). Each number on the dial pad corresponds to a DTMF tone, which is how we send data over the telephone network.</p>
    #
    #   @return [String]
    #
    # @!attribute one_click_pin_delay
    #   <p>The delay duration before Alexa enters the conference pin with dual-tone multi-frequency (DTMF). Each number on the dial pad corresponds to a DTMF tone, which is how we send data over the telephone network.</p>
    #
    #   @return [String]
    #
    PSTNDialIn = ::Struct.new(
      :country_code,
      :phone_number,
      :one_click_id_delay,
      :one_click_pin_delay,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The phone number for the contact containing the raw number and phone number type.</p>
    #
    # @!attribute number
    #   <p>The raw value of the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the phone number.</p>
    #
    #   Enum, one of: ["MOBILE", "WORK", "HOME"]
    #
    #   @return [String]
    #
    PhoneNumber = ::Struct.new(
      :number,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AlexaForBusiness::Types::PhoneNumber "\
          "number=\"[SENSITIVE]\", "\
          "type=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for PhoneNumberType
    #
    module PhoneNumberType
      # No documentation available.
      #
      MOBILE = "MOBILE"

      # No documentation available.
      #
      WORK = "WORK"

      # No documentation available.
      #
      HOME = "HOME"
    end

    # <p>A room profile with attributes.</p>
    #
    # @!attribute profile_arn
    #   <p>The ARN of a room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_name
    #   <p>The name of a room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute is_default
    #   <p>Retrieves if the profile is default or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute address
    #   <p>The address of a room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The time zone of a room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute distance_unit
    #   <p>The distance unit of a room profile.</p>
    #
    #   Enum, one of: ["METRIC", "IMPERIAL"]
    #
    #   @return [String]
    #
    # @!attribute temperature_unit
    #   <p>The temperature unit of a room profile.</p>
    #
    #   Enum, one of: ["FAHRENHEIT", "CELSIUS"]
    #
    #   @return [String]
    #
    # @!attribute wake_word
    #   <p>The wake word of a room profile.</p>
    #
    #   Enum, one of: ["ALEXA", "AMAZON", "ECHO", "COMPUTER"]
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p>The locale of a room profile. (This is currently available only to a limited preview
    #            audience.)</p>
    #
    #   @return [String]
    #
    # @!attribute setup_mode_disabled
    #   <p>The setup mode of a room profile.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_volume_limit
    #   <p>The max volume limit of a room profile.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pstn_enabled
    #   <p>The PSTN setting of a room profile.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_retention_opt_in
    #   <p>Whether data retention of the profile is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute address_book_arn
    #   <p>The ARN of the address book.</p>
    #
    #   @return [String]
    #
    # @!attribute meeting_room_configuration
    #   <p>Meeting room settings of a room profile.</p>
    #
    #   @return [MeetingRoomConfiguration]
    #
    Profile = ::Struct.new(
      :profile_arn,
      :profile_name,
      :is_default,
      :address,
      :timezone,
      :distance_unit,
      :temperature_unit,
      :wake_word,
      :locale,
      :setup_mode_disabled,
      :max_volume_limit,
      :pstn_enabled,
      :data_retention_opt_in,
      :address_book_arn,
      :meeting_room_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data of a room profile.</p>
    #
    # @!attribute profile_arn
    #   <p>The ARN of a room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_name
    #   <p>The name of a room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute is_default
    #   <p>Retrieves if the profile data is default or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute address
    #   <p>The address of a room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The time zone of a room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute distance_unit
    #   <p>The distance unit of a room profile.</p>
    #
    #   Enum, one of: ["METRIC", "IMPERIAL"]
    #
    #   @return [String]
    #
    # @!attribute temperature_unit
    #   <p>The temperature unit of a room profile.</p>
    #
    #   Enum, one of: ["FAHRENHEIT", "CELSIUS"]
    #
    #   @return [String]
    #
    # @!attribute wake_word
    #   <p>The wake word of a room profile.</p>
    #
    #   Enum, one of: ["ALEXA", "AMAZON", "ECHO", "COMPUTER"]
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p>The locale of a room profile. (This is currently available only to a limited preview
    #            audience.)</p>
    #
    #   @return [String]
    #
    ProfileData = ::Struct.new(
      :profile_arn,
      :profile_name,
      :is_default,
      :address,
      :timezone,
      :distance_unit,
      :temperature_unit,
      :wake_word,
      :locale,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conference_preference
    #   <p>The conference preference of a specific conference provider.</p>
    #
    #   @return [ConferencePreference]
    #
    PutConferencePreferenceInput = ::Struct.new(
      :conference_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutConferencePreferenceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_name
    #   <p>The name of the organization sending the enrollment invite to a user.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_email
    #   <p>The email ID of the organization or individual contact that the enrolled user can use.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute private_skill_ids
    #   <p>The list of private skill IDs that you want to recommend to the user to enable in the
    #            invitation.</p>
    #
    #   @return [Array<String>]
    #
    PutInvitationConfigurationInput = ::Struct.new(
      :organization_name,
      :contact_email,
      :private_skill_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutInvitationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The ARN of the room associated with the room skill parameter. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute skill_id
    #   <p>The ARN of the skill associated with the room skill parameter. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute room_skill_parameter
    #   <p>The updated room skill parameter. Required.</p>
    #
    #   @return [RoomSkillParameter]
    #
    PutRoomSkillParameterInput = ::Struct.new(
      :room_arn,
      :skill_id,
      :room_skill_parameter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutRoomSkillParameterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authorization_result
    #   <p>The authorization result specific to OAUTH code grant output. "Code” must be
    #            populated in the AuthorizationResult map to establish the authorization.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute skill_id
    #   <p>The unique identifier of a skill.</p>
    #
    #   @return [String]
    #
    # @!attribute room_arn
    #   <p>The room that the skill is authorized for.</p>
    #
    #   @return [String]
    #
    PutSkillAuthorizationInput = ::Struct.new(
      :authorization_result,
      :skill_id,
      :room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AlexaForBusiness::Types::PutSkillAuthorizationInput "\
          "authorization_result=\"[SENSITIVE]\", "\
          "skill_id=#{skill_id || 'nil'}, "\
          "room_arn=#{room_arn || 'nil'}>"
      end
    end

    PutSkillAuthorizationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_id
    #   <p>The client ID of the OEM used for code-based linking authorization on an AVS
    #            device.</p>
    #
    #   @return [String]
    #
    # @!attribute user_code
    #   <p>The code that is obtained after your AVS device has made a POST request to LWA as a
    #            part of the Device Authorization Request component of the OAuth code-based linking
    #            specification.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product ID used to identify your AVS device during authorization.</p>
    #
    #   @return [String]
    #
    # @!attribute device_serial_number
    #   <p>The key generated by the OEM that uniquely identifies a specified instance of your
    #            AVS device.</p>
    #
    #   @return [String]
    #
    # @!attribute amazon_id
    #   <p>The device type ID for your AVS device generated by Amazon when the OEM creates a new
    #            product on Amazon's Developer Console.</p>
    #
    #   @return [String]
    #
    # @!attribute room_arn
    #   <p>The Amazon Resource Name (ARN) of the room with which to associate your AVS device.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags.</p>
    #
    #   @return [Array<Tag>]
    #
    RegisterAVSDeviceInput = ::Struct.new(
      :client_id,
      :user_code,
      :product_id,
      :device_serial_number,
      :amazon_id,
      :room_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_arn
    #   <p>The ARN of the device.</p>
    #
    #   @return [String]
    #
    RegisterAVSDeviceOutput = ::Struct.new(
      :device_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_id
    #   <p>The unique identifier of the skill.</p>
    #
    #   @return [String]
    #
    RejectSkillInput = ::Struct.new(
      :skill_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RejectSkillOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings for the require check in feature that are applied to a room profile. Require check in allows a meeting room’s Alexa or AVS device to prompt the user to check in; otherwise, the room will be released. </p>
    #
    # @!attribute release_after_minutes
    #   <p>Duration between 5 and 20 minutes to determine when to release the room if it's not checked into. </p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled
    #   <p>Whether require check in is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    RequireCheckIn = ::Struct.new(
      :release_after_minutes,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RequirePin
    #
    module RequirePin
      # No documentation available.
      #
      YES = "YES"

      # No documentation available.
      #
      NO = "NO"

      # No documentation available.
      #
      OPTIONAL = "OPTIONAL"
    end

    # @!attribute user_id
    #   <p>The ARN of the user. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute skill_id
    #   <p>The ARN of the skill that was requested. Required.</p>
    #
    #   @return [String]
    #
    ResolveRoomInput = ::Struct.new(
      :user_id,
      :skill_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The ARN of the room from which the skill request was invoked.</p>
    #
    #   @return [String]
    #
    # @!attribute room_name
    #   <p>The name of the room from which the skill request was invoked.</p>
    #
    #   @return [String]
    #
    # @!attribute room_skill_parameters
    #   <p>Response to get the room profile request. Required.</p>
    #
    #   @return [Array<RoomSkillParameter>]
    #
    ResolveRoomOutput = ::Struct.new(
      :room_arn,
      :room_name,
      :room_skill_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Another resource is associated with the resource in the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceAssociatedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource in the request is already in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique, user-specified identifier for the request that ensures idempotency.</p>
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_arn
    #   <p>The ARN of the user for whom to revoke an enrollment invitation. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute enrollment_id
    #   <p>The ARN of the enrollment invitation to revoke. Required.</p>
    #
    #   @return [String]
    #
    RevokeInvitationInput = ::Struct.new(
      :user_arn,
      :enrollment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RevokeInvitationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A room with attributes.</p>
    #
    # @!attribute room_arn
    #   <p>The ARN of a room.</p>
    #
    #   @return [String]
    #
    # @!attribute room_name
    #   <p>The name of a room.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a room.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_calendar_id
    #   <p>The provider calendar ARN of a room.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_arn
    #   <p>The profile ARN of a room.</p>
    #
    #   @return [String]
    #
    Room = ::Struct.new(
      :room_arn,
      :room_name,
      :description,
      :provider_calendar_id,
      :profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data of a room.</p>
    #
    # @!attribute room_arn
    #   <p>The ARN of a room.</p>
    #
    #   @return [String]
    #
    # @!attribute room_name
    #   <p>The name of a room.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a room.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_calendar_id
    #   <p>The provider calendar ARN of a room.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_arn
    #   <p>The profile ARN of a room.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_name
    #   <p>The profile name of a room.</p>
    #
    #   @return [String]
    #
    RoomData = ::Struct.new(
      :room_arn,
      :room_name,
      :description,
      :provider_calendar_id,
      :profile_arn,
      :profile_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A skill parameter associated with a room.</p>
    #
    # @!attribute parameter_key
    #   <p>The parameter key of a room skill parameter. ParameterKey is an enumerated type that
    #            only takes “DEFAULT” or “SCOPE” as valid values.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_value
    #   <p>The parameter value of a room skill parameter.</p>
    #
    #   @return [String]
    #
    RoomSkillParameter = ::Struct.new(
      :parameter_key,
      :parameter_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>The filters to use to list a specified set of address books. The supported filter key
    #            is AddressBookName.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_criteria
    #   <p>The sort order to use in listing the specified set of address books. The supported
    #            sort key is AddressBookName.</p>
    #
    #   @return [Array<Sort>]
    #
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response only includes
    #            results beyond the token, up to the value specified by MaxResults.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified MaxResults value, a token is included in the response so that the remaining
    #            results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    SearchAddressBooksInput = ::Struct.new(
      :filters,
      :sort_criteria,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute address_books
    #   <p>The address books that meet the specified set of filter criteria, in sort
    #            order.</p>
    #
    #   @return [Array<AddressBookData>]
    #
    # @!attribute next_token
    #   <p>The token returned to indicate that there is more data available.</p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The total number of address books returned.</p>
    #
    #   @return [Integer]
    #
    SearchAddressBooksOutput = ::Struct.new(
      :address_books,
      :next_token,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>The filters to use to list a specified set of address books. The supported filter
    #            keys are DisplayName, FirstName, LastName, and AddressBookArns.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_criteria
    #   <p>The sort order to use in listing the specified set of contacts. The supported sort
    #            keys are DisplayName, FirstName, and LastName.</p>
    #
    #   @return [Array<Sort>]
    #
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response only includes
    #            results beyond the token, up to the value specified by MaxResults.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified MaxResults value, a token is included in the response so that the remaining
    #            results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    SearchContactsInput = ::Struct.new(
      :filters,
      :sort_criteria,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contacts
    #   <p>The contacts that meet the specified set of filter criteria, in sort order.</p>
    #
    #   @return [Array<ContactData>]
    #
    # @!attribute next_token
    #   <p>The token returned to indicate that there is more data available.</p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The total number of contacts returned.</p>
    #
    #   @return [Integer]
    #
    SearchContactsOutput = ::Struct.new(
      :contacts,
      :next_token,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>The filters to use to list a specified set of devices. Supported filter keys are
    #            DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName, DeviceType, DeviceSerialNumber,
    #            UnassociatedOnly, ConnectionStatus (ONLINE and OFFLINE), NetworkProfileName,
    #            NetworkProfileArn, Feature, and FailureCode.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_criteria
    #   <p>The sort order to use in listing the specified set of devices. Supported sort keys
    #            are DeviceName, DeviceStatus, RoomName, DeviceType, DeviceSerialNumber, ConnectionStatus,
    #            NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.</p>
    #
    #   @return [Array<Sort>]
    #
    SearchDevicesInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute devices
    #   <p>The devices that meet the specified set of filter criteria, in sort order.</p>
    #
    #   @return [Array<DeviceData>]
    #
    # @!attribute next_token
    #   <p>The token returned to indicate that there is more data available.</p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The total number of devices returned.</p>
    #
    #   @return [Integer]
    #
    SearchDevicesOutput = ::Struct.new(
      :devices,
      :next_token,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by MaxResults. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the
    #            specified MaxResults value, a token is included in the response so that the remaining
    #            results can be retrieved. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>The filters to use to list a specified set of network profiles. Valid filters are
    #            NetworkProfileName, Ssid, and SecurityType.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_criteria
    #   <p>The sort order to use to list the specified set of network profiles. Valid sort criteria
    #            includes NetworkProfileName, Ssid, and SecurityType.</p>
    #
    #   @return [Array<Sort>]
    #
    SearchNetworkProfilesInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_profiles
    #   <p>The network profiles that meet the specified set of filter criteria, in sort order. It
    #            is a list of NetworkProfileData objects. </p>
    #
    #   @return [Array<NetworkProfileData>]
    #
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by MaxResults.</p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The total number of network profiles returned.</p>
    #
    #   @return [Integer]
    #
    SearchNetworkProfilesOutput = ::Struct.new(
      :network_profiles,
      :next_token,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>The filters to use to list a specified set of room profiles. Supported filter keys
    #            are ProfileName and Address. Required. </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_criteria
    #   <p>The sort order to use in listing the specified set of room profiles. Supported sort
    #            keys are ProfileName and Address.</p>
    #
    #   @return [Array<Sort>]
    #
    SearchProfilesInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profiles
    #   <p>The profiles that meet the specified set of filter criteria, in sort order.</p>
    #
    #   @return [Array<ProfileData>]
    #
    # @!attribute next_token
    #   <p>The token returned to indicate that there is more data available.</p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The total number of room profiles returned.</p>
    #
    #   @return [Integer]
    #
    SearchProfilesOutput = ::Struct.new(
      :profiles,
      :next_token,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>The filters to use to list a specified set of rooms. The supported filter keys are
    #            RoomName and ProfileName.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_criteria
    #   <p>The sort order to use in listing the specified set of rooms. The supported sort keys
    #            are RoomName and ProfileName.</p>
    #
    #   @return [Array<Sort>]
    #
    SearchRoomsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rooms
    #   <p>The rooms that meet the specified set of filter criteria, in sort order.</p>
    #
    #   @return [Array<RoomData>]
    #
    # @!attribute next_token
    #   <p>The token returned to indicate that there is more data available.</p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The total number of rooms returned.</p>
    #
    #   @return [Integer]
    #
    SearchRoomsOutput = ::Struct.new(
      :rooms,
      :next_token,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.
    #            Required.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>The filters to use to list a specified set of skill groups. The supported filter key
    #            is SkillGroupName. </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_criteria
    #   <p>The sort order to use in listing the specified set of skill groups. The supported
    #            sort key is SkillGroupName. </p>
    #
    #   @return [Array<Sort>]
    #
    SearchSkillGroupsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_groups
    #   <p>The skill groups that meet the filter criteria, in sort order.</p>
    #
    #   @return [Array<SkillGroupData>]
    #
    # @!attribute next_token
    #   <p>The token returned to indicate that there is more data available.</p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The total number of skill groups returned.</p>
    #
    #   @return [Integer]
    #
    SearchSkillGroupsOutput = ::Struct.new(
      :skill_groups,
      :next_token,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #            results from this action. If this parameter is specified, the response includes only
    #            results beyond the token, up to the value specified by <code>MaxResults</code>.
    #            Required.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than
    #            the specified <code>MaxResults</code> value, a token is included in the response so that
    #            the remaining results can be retrieved. Required.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>The filters to use for listing a specific set of users. Required. Supported filter
    #            keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute sort_criteria
    #   <p>The sort order to use in listing the filtered set of users. Required. Supported sort
    #            keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.</p>
    #
    #   @return [Array<Sort>]
    #
    SearchUsersInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute users
    #   <p>The users that meet the specified set of filter criteria, in sort order.</p>
    #
    #   @return [Array<UserData>]
    #
    # @!attribute next_token
    #   <p>The token returned to indicate that there is more data available.</p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The total number of users returned.</p>
    #
    #   @return [Integer]
    #
    SearchUsersOutput = ::Struct.new(
      :users,
      :next_token,
      :total_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_filters
    #   <p>The filters to use to send an announcement to a specified list of rooms. The supported filter keys are RoomName, ProfileName, RoomArn, and ProfileArn. To send to all rooms, specify an empty RoomFilters list.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute content
    #   <p>The announcement content. This can contain only one of the three possible announcement types (text, SSML or audio).</p>
    #
    #   @return [Content]
    #
    # @!attribute time_to_live_in_seconds
    #   <p>The time to live for an announcement. Default is 300. If delivery doesn't occur within this time, the
    #            announcement is not delivered.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_request_token
    #   <p>The unique, user-specified identifier for the request that ensures idempotency.</p>
    #
    #   @return [String]
    #
    SendAnnouncementInput = ::Struct.new(
      :room_filters,
      :content,
      :time_to_live_in_seconds,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute announcement_arn
    #   <p>The identifier of the announcement.</p>
    #
    #   @return [String]
    #
    SendAnnouncementOutput = ::Struct.new(
      :announcement_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_arn
    #   <p>The ARN of the user to whom to send an invitation. Required.</p>
    #
    #   @return [String]
    #
    SendInvitationInput = ::Struct.new(
      :user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SendInvitationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SIP address for the contact containing the URI and SIP address type.</p>
    #
    # @!attribute uri
    #   <p>The URI for the SIP address.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the SIP address.</p>
    #
    #   Enum, one of: ["WORK"]
    #
    #   @return [String]
    #
    SipAddress = ::Struct.new(
      :uri,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AlexaForBusiness::Types::SipAddress "\
          "uri=\"[SENSITIVE]\", "\
          "type=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for SipType
    #
    module SipType
      # No documentation available.
      #
      WORK = "WORK"
    end

    # <p>Granular information about the skill.</p>
    #
    # @!attribute product_description
    #   <p>The description of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_phrase
    #   <p>The phrase used to trigger the skill.</p>
    #
    #   @return [String]
    #
    # @!attribute release_date
    #   <p>The date when the skill was released.</p>
    #
    #   @return [String]
    #
    # @!attribute end_user_license_agreement
    #   <p>The URL of the end user license agreement.</p>
    #
    #   @return [String]
    #
    # @!attribute generic_keywords
    #   <p>The generic keywords associated with the skill that can be used to find a
    #            skill.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute bullet_points
    #   <p>The details about what the skill supports organized as bullet points.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute new_in_this_version_bullet_points
    #   <p>The updates added in bullet points.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute skill_types
    #   <p>The types of skills.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute reviews
    #   <p>
    #               <i>This member has been deprecated.</i>
    #            </p>
    #            <p>The list of reviews for the skill, including Key and Value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute developer_info
    #   <p>The details about the developer that published the skill.</p>
    #
    #   @return [DeveloperInfo]
    #
    SkillDetails = ::Struct.new(
      :product_description,
      :invocation_phrase,
      :release_date,
      :end_user_license_agreement,
      :generic_keywords,
      :bullet_points,
      :new_in_this_version_bullet_points,
      :skill_types,
      :reviews,
      :developer_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A skill group with attributes.</p>
    #
    # @!attribute skill_group_arn
    #   <p>The ARN of a skill group.</p>
    #
    #   @return [String]
    #
    # @!attribute skill_group_name
    #   <p>The name of a skill group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a skill group.</p>
    #
    #   @return [String]
    #
    SkillGroup = ::Struct.new(
      :skill_group_arn,
      :skill_group_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The attributes of a skill group.</p>
    #
    # @!attribute skill_group_arn
    #   <p>The skill group ARN of a skill group.</p>
    #
    #   @return [String]
    #
    # @!attribute skill_group_name
    #   <p>The skill group name of a skill group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a skill group.</p>
    #
    #   @return [String]
    #
    SkillGroupData = ::Struct.new(
      :skill_group_arn,
      :skill_group_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The skill must be linked to a third-party account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SkillNotLinkedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of skills.</p>
    #
    # @!attribute skill_id
    #   <p>The ARN of the skill summary.</p>
    #
    #   @return [String]
    #
    # @!attribute skill_name
    #   <p>The name of the skill.</p>
    #
    #   @return [String]
    #
    # @!attribute supports_linking
    #   <p>Linking support for a skill.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enablement_type
    #   <p>Whether the skill is enabled under the user's account, or if it requires linking to be
    #            used.</p>
    #
    #   Enum, one of: ["ENABLED", "PENDING"]
    #
    #   @return [String]
    #
    # @!attribute skill_type
    #   <p>Whether the skill is publicly available or is a private skill.</p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE"]
    #
    #   @return [String]
    #
    SkillSummary = ::Struct.new(
      :skill_id,
      :skill_name,
      :supports_linking,
      :enablement_type,
      :skill_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.supports_linking ||= false
      end
    end

    # Includes enum constants for SkillType
    #
    module SkillType
      # No documentation available.
      #
      PUBLIC = "PUBLIC"

      # No documentation available.
      #
      PRIVATE = "PRIVATE"
    end

    # Includes enum constants for SkillTypeFilter
    #
    module SkillTypeFilter
      # No documentation available.
      #
      PUBLIC = "PUBLIC"

      # No documentation available.
      #
      PRIVATE = "PRIVATE"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>The detailed information about an Alexa skill.</p>
    #
    # @!attribute skill_id
    #   <p>The ARN of the skill.</p>
    #
    #   @return [String]
    #
    # @!attribute skill_name
    #   <p>The name of the skill.</p>
    #
    #   @return [String]
    #
    # @!attribute short_description
    #   <p>Short description about the skill.</p>
    #
    #   @return [String]
    #
    # @!attribute icon_url
    #   <p>The URL where the skill icon resides.</p>
    #
    #   @return [String]
    #
    # @!attribute sample_utterances
    #   <p>Sample utterances that interact with the skill.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute skill_details
    #   <p>Information about the skill.</p>
    #
    #   @return [SkillDetails]
    #
    # @!attribute supports_linking
    #   <p>Linking support for a skill.</p>
    #
    #   @return [Boolean]
    #
    SkillsStoreSkill = ::Struct.new(
      :skill_id,
      :skill_name,
      :short_description,
      :icon_url,
      :sample_utterances,
      :skill_details,
      :supports_linking,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.supports_linking ||= false
      end
    end

    # <p>A smart home appliance that can connect to a central system. Any domestic device can be
    #          a smart appliance. </p>
    #
    # @!attribute friendly_name
    #   <p>The friendly name of the smart home appliance.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the smart home appliance.</p>
    #
    #   @return [String]
    #
    # @!attribute manufacturer_name
    #   <p>The name of the manufacturer of the smart home appliance.</p>
    #
    #   @return [String]
    #
    SmartHomeAppliance = ::Struct.new(
      :friendly_name,
      :description,
      :manufacturer_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a sort criteria. </p>
    #
    # @!attribute key
    #   <p>The sort key of a sort object.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The sort value of a sort object.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    Sort = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortValue
    #
    module SortValue
      # No documentation available.
      #
      ASC = "ASC"

      # No documentation available.
      #
      DESC = "DESC"
    end

    # <p>The SSML message. For more information, see <a href="https://developer.amazon.com/docs/custom-skills/speech-synthesis-markup-language-ssml-reference.html">SSML Reference</a>.</p>
    #
    # @!attribute locale
    #   <p>The locale of the SSML message. Currently, en-US is supported.</p>
    #
    #   Enum, one of: ["en-US"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the SSML message in the correct SSML format. The audio tag is not supported.</p>
    #
    #   @return [String]
    #
    Ssml = ::Struct.new(
      :locale,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The ARN of the room with which the device to sync is associated. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute device_arn
    #   <p>The ARN of the device to sync. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute features
    #   <p>Request structure to start the device sync. Required.</p>
    #
    #   @return [Array<String>]
    #
    StartDeviceSyncInput = ::Struct.new(
      :room_arn,
      :device_arn,
      :features,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartDeviceSyncOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The room where smart home appliance discovery was initiated.</p>
    #
    #   @return [String]
    #
    StartSmartHomeApplianceDiscoveryInput = ::Struct.new(
      :room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartSmartHomeApplianceDiscoveryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair that can be associated with a resource. </p>
    #
    # @!attribute key
    #   <p>The key of a tag. Tag keys are case-sensitive. </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of a tag. Tag values are case sensitive and can be null.</p>
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

    # @!attribute arn
    #   <p>The ARN of the resource to which to add metadata tags. Required. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to the specified resource. Do not provide system tags. Required.
    #         </p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :arn,
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

    # Includes enum constants for TemperatureUnit
    #
    module TemperatureUnit
      # No documentation available.
      #
      FAHRENHEIT = "FAHRENHEIT"

      # No documentation available.
      #
      CELSIUS = "CELSIUS"
    end

    # <p>The text message.</p>
    #
    # @!attribute locale
    #   <p>The locale of the text message. Currently, en-US is supported.</p>
    #
    #   Enum, one of: ["en-US"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the text message.</p>
    #
    #   @return [String]
    #
    Text = ::Struct.new(
      :locale,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The caller has no permissions to operate on the resource involved in the API call.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource from which to remove metadata tags. Required. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tags to be removed from the specified resource. Do not provide system tags.
    #            Required. </p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :arn,
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

    # @!attribute address_book_arn
    #   <p>The ARN of the room to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated name of the room.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the room.</p>
    #
    #   @return [String]
    #
    UpdateAddressBookInput = ::Struct.new(
      :address_book_arn,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateAddressBookOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schedule_arn
    #   <p>The ARN of the business report schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The S3 location of the output reports.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The S3 key where the report is delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the generated report (individual CSV files or zipped files of
    #            individual files).</p>
    #
    #   Enum, one of: ["CSV", "CSV_ZIP"]
    #
    #   @return [String]
    #
    # @!attribute schedule_name
    #   <p>The name identifier of the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute recurrence
    #   <p>The recurrence of the reports.</p>
    #
    #   @return [BusinessReportRecurrence]
    #
    UpdateBusinessReportScheduleInput = ::Struct.new(
      :schedule_arn,
      :s3_bucket_name,
      :s3_key_prefix,
      :format,
      :schedule_name,
      :recurrence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateBusinessReportScheduleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conference_provider_arn
    #   <p>The ARN of the conference provider.</p>
    #
    #   @return [String]
    #
    # @!attribute conference_provider_type
    #   <p>The type of the conference provider.</p>
    #
    #   Enum, one of: ["CHIME", "BLUEJEANS", "FUZE", "GOOGLE_HANGOUTS", "POLYCOM", "RINGCENTRAL", "SKYPE_FOR_BUSINESS", "WEBEX", "ZOOM", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ip_dial_in
    #   <p>The IP endpoint and protocol for calling.</p>
    #
    #   @return [IPDialIn]
    #
    # @!attribute pstn_dial_in
    #   <p>The information for PSTN conferencing.</p>
    #
    #   @return [PSTNDialIn]
    #
    # @!attribute meeting_setting
    #   <p>The meeting settings for the conference provider.</p>
    #
    #   @return [MeetingSetting]
    #
    UpdateConferenceProviderInput = ::Struct.new(
      :conference_provider_arn,
      :conference_provider_type,
      :ip_dial_in,
      :pstn_dial_in,
      :meeting_setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateConferenceProviderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_arn
    #   <p>The ARN of the contact to update.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The updated display name of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The updated first name of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The updated last name of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The updated phone number of the contact. The phone number type defaults to WORK. You
    #            can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers,
    #            which lets you specify the phone number type and multiple numbers.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_numbers
    #   <p>The list of phone numbers for the contact.</p>
    #
    #   @return [Array<PhoneNumber>]
    #
    # @!attribute sip_addresses
    #   <p>The list of SIP addresses for the contact.</p>
    #
    #   @return [Array<SipAddress>]
    #
    UpdateContactInput = ::Struct.new(
      :contact_arn,
      :display_name,
      :first_name,
      :last_name,
      :phone_number,
      :phone_numbers,
      :sip_addresses,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AlexaForBusiness::Types::UpdateContactInput "\
          "contact_arn=#{contact_arn || 'nil'}, "\
          "display_name=#{display_name || 'nil'}, "\
          "first_name=#{first_name || 'nil'}, "\
          "last_name=#{last_name || 'nil'}, "\
          "phone_number=\"[SENSITIVE]\", "\
          "phone_numbers=#{phone_numbers || 'nil'}, "\
          "sip_addresses=#{sip_addresses || 'nil'}>"
      end
    end

    UpdateContactOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_arn
    #   <p>The ARN of the device to update. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute device_name
    #   <p>The updated device name. Required.</p>
    #
    #   @return [String]
    #
    UpdateDeviceInput = ::Struct.new(
      :device_arn,
      :device_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDeviceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings for the end of meeting reminder feature that are applied to a room profile. The
    #          end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>
    #
    # @!attribute reminder_at_minutes
    #   <p>Updates settings for the end of meeting reminder feature that are applied to a room
    #            profile. The end of meeting reminder enables Alexa to remind users when a meeting is
    #            ending. </p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute reminder_type
    #   <p>The type of sound that users hear during the end of meeting reminder. </p>
    #
    #   Enum, one of: ["ANNOUNCEMENT_TIME_CHECK", "ANNOUNCEMENT_VARIABLE_TIME_LEFT", "CHIME", "KNOCK"]
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Whether an end of meeting reminder is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    UpdateEndOfMeetingReminder = ::Struct.new(
      :reminder_at_minutes,
      :reminder_type,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_group_arn
    #   <p>The ARN of the gateway group to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated name of the gateway group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the gateway group.</p>
    #
    #   @return [String]
    #
    UpdateGatewayGroupInput = ::Struct.new(
      :gateway_group_arn,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateGatewayGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_arn
    #   <p>The ARN of the gateway to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated name of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute software_version
    #   <p>The updated software version of the gateway. The gateway automatically updates its
    #            software version during normal operation.</p>
    #
    #   @return [String]
    #
    UpdateGatewayInput = ::Struct.new(
      :gateway_arn,
      :name,
      :description,
      :software_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateGatewayOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates settings for the instant booking feature that are applied to a room profile. If
    #          instant booking is enabled, Alexa automatically reserves a room if it is free when a user
    #          joins a meeting with Alexa.</p>
    #
    # @!attribute duration_in_minutes
    #   <p>Duration between 15 and 240 minutes at increments of 15 that determines how long to book
    #            an available room when a meeting is started with Alexa.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled
    #   <p>Whether instant booking is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    UpdateInstantBooking = ::Struct.new(
      :duration_in_minutes,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates meeting room settings of a room profile.</p>
    #
    # @!attribute room_utilization_metrics_enabled
    #   <p>Whether room utilization metrics are enabled or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute end_of_meeting_reminder
    #   <p>Settings for the end of meeting reminder feature that are applied to a room profile. The
    #            end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>
    #
    #   @return [UpdateEndOfMeetingReminder]
    #
    # @!attribute instant_booking
    #   <p>Settings to automatically book an available room available for a configured duration
    #            when joining a meeting with Alexa.</p>
    #
    #   @return [UpdateInstantBooking]
    #
    # @!attribute require_check_in
    #   <p>Settings for requiring a check in when a room is reserved. Alexa can cancel a room reservation if it's not checked into to make the room available for others. Users can check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check in.” </p>
    #
    #   @return [UpdateRequireCheckIn]
    #
    UpdateMeetingRoomConfiguration = ::Struct.new(
      :room_utilization_metrics_enabled,
      :end_of_meeting_reminder,
      :instant_booking,
      :require_check_in,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_profile_arn
    #   <p>The ARN of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute network_profile_name
    #   <p>The name of the network profile associated with a device.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Detailed information about a device's network profile.</p>
    #
    #   @return [String]
    #
    # @!attribute current_password
    #   <p>The current password of the Wi-Fi network.</p>
    #
    #   @return [String]
    #
    # @!attribute next_password
    #   <p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously
    #            transmitted to the device and is used when the password of the network changes to
    #            NextPassword. </p>
    #
    #   @return [String]
    #
    # @!attribute certificate_authority_arn
    #   <p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager
    #            (ACM). This is used to issue certificates to the devices. </p>
    #
    #   @return [String]
    #
    # @!attribute trust_anchors
    #   <p>The root certificate(s) of your authentication server that will be installed on your
    #            devices and used to trust your authentication server during EAP negotiation. </p>
    #
    #   @return [Array<String>]
    #
    UpdateNetworkProfileInput = ::Struct.new(
      :network_profile_arn,
      :network_profile_name,
      :description,
      :current_password,
      :next_password,
      :certificate_authority_arn,
      :trust_anchors,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AlexaForBusiness::Types::UpdateNetworkProfileInput "\
          "network_profile_arn=#{network_profile_arn || 'nil'}, "\
          "network_profile_name=#{network_profile_name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "current_password=\"[SENSITIVE]\", "\
          "next_password=\"[SENSITIVE]\", "\
          "certificate_authority_arn=#{certificate_authority_arn || 'nil'}, "\
          "trust_anchors=#{trust_anchors || 'nil'}>"
      end
    end

    UpdateNetworkProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_arn
    #   <p>The ARN of the room profile to update. Required.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_name
    #   <p>The updated name for the room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute is_default
    #   <p>Sets the profile as default if selected. If this is missing, no update is done to the
    #            default status.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute timezone
    #   <p>The updated timezone for the room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>The updated address for the room profile.</p>
    #
    #   @return [String]
    #
    # @!attribute distance_unit
    #   <p>The updated distance unit for the room profile.</p>
    #
    #   Enum, one of: ["METRIC", "IMPERIAL"]
    #
    #   @return [String]
    #
    # @!attribute temperature_unit
    #   <p>The updated temperature unit for the room profile.</p>
    #
    #   Enum, one of: ["FAHRENHEIT", "CELSIUS"]
    #
    #   @return [String]
    #
    # @!attribute wake_word
    #   <p>The updated wake word for the room profile.</p>
    #
    #   Enum, one of: ["ALEXA", "AMAZON", "ECHO", "COMPUTER"]
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p>The updated locale for the room profile. (This is currently only available to a limited preview audience.)</p>
    #
    #   @return [String]
    #
    # @!attribute setup_mode_disabled
    #   <p>Whether the setup mode of the profile is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_volume_limit
    #   <p>The updated maximum volume limit for the room profile.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pstn_enabled
    #   <p>Whether the PSTN setting of the room profile is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_retention_opt_in
    #   <p>Whether data retention of the profile is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute meeting_room_configuration
    #   <p>The updated meeting room settings of a room profile.</p>
    #
    #   @return [UpdateMeetingRoomConfiguration]
    #
    UpdateProfileInput = ::Struct.new(
      :profile_arn,
      :profile_name,
      :is_default,
      :timezone,
      :address,
      :distance_unit,
      :temperature_unit,
      :wake_word,
      :locale,
      :setup_mode_disabled,
      :max_volume_limit,
      :pstn_enabled,
      :data_retention_opt_in,
      :meeting_room_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates settings for the require check in feature that are applied to a room profile. Require check in allows a meeting room’s Alexa or AVS device to prompt the user to check in; otherwise, the room will be released. </p>
    #
    # @!attribute release_after_minutes
    #   <p>Duration between 5 and 20 minutes to determine when to release the room if it's not checked into. </p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled
    #   <p>Whether require check in is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    UpdateRequireCheckIn = ::Struct.new(
      :release_after_minutes,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_arn
    #   <p>The ARN of the room to update. </p>
    #
    #   @return [String]
    #
    # @!attribute room_name
    #   <p>The updated name for the room.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description for the room.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_calendar_id
    #   <p>The updated provider calendar ARN for the room.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_arn
    #   <p>The updated profile ARN for the room.</p>
    #
    #   @return [String]
    #
    UpdateRoomInput = ::Struct.new(
      :room_arn,
      :room_name,
      :description,
      :provider_calendar_id,
      :profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRoomOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute skill_group_arn
    #   <p>The ARN of the skill group to update. </p>
    #
    #   @return [String]
    #
    # @!attribute skill_group_name
    #   <p>The updated name for the skill group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description for the skill group.</p>
    #
    #   @return [String]
    #
    UpdateSkillGroupInput = ::Struct.new(
      :skill_group_arn,
      :skill_group_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateSkillGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information related to a user.</p>
    #
    # @!attribute user_arn
    #   <p>The ARN of a user.</p>
    #
    #   @return [String]
    #
    # @!attribute first_name
    #   <p>The first name of a user.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>The last name of a user.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email of a user.</p>
    #
    #   @return [String]
    #
    # @!attribute enrollment_status
    #   <p>The enrollment status of a user.</p>
    #
    #   Enum, one of: ["INITIALIZED", "PENDING", "REGISTERED", "DISASSOCIATING", "DEREGISTERING"]
    #
    #   @return [String]
    #
    # @!attribute enrollment_id
    #   <p>The enrollment ARN of a user.</p>
    #
    #   @return [String]
    #
    UserData = ::Struct.new(
      :user_arn,
      :first_name,
      :last_name,
      :email,
      :enrollment_status,
      :enrollment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WakeWord
    #
    module WakeWord
      # No documentation available.
      #
      ALEXA = "ALEXA"

      # No documentation available.
      #
      AMAZON = "AMAZON"

      # No documentation available.
      #
      ECHO = "ECHO"

      # No documentation available.
      #
      COMPUTER = "COMPUTER"
    end

  end
end
