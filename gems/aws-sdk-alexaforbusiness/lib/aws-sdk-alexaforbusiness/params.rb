# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::AlexaForBusiness
  module Params

    module AddressBook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddressBook, context: context)
        type = Types::AddressBook.new
        type.address_book_arn = params[:address_book_arn]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module AddressBookData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddressBookData, context: context)
        type = Types::AddressBookData.new
        type.address_book_arn = params[:address_book_arn]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module AddressBookDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AddressBookData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ApproveSkillInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApproveSkillInput, context: context)
        type = Types::ApproveSkillInput.new
        type.skill_id = params[:skill_id]
        type
      end
    end

    module ApproveSkillOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApproveSkillOutput, context: context)
        type = Types::ApproveSkillOutput.new
        type
      end
    end

    module AssociateContactWithAddressBookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateContactWithAddressBookInput, context: context)
        type = Types::AssociateContactWithAddressBookInput.new
        type.contact_arn = params[:contact_arn]
        type.address_book_arn = params[:address_book_arn]
        type
      end
    end

    module AssociateContactWithAddressBookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateContactWithAddressBookOutput, context: context)
        type = Types::AssociateContactWithAddressBookOutput.new
        type
      end
    end

    module AssociateDeviceWithNetworkProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDeviceWithNetworkProfileInput, context: context)
        type = Types::AssociateDeviceWithNetworkProfileInput.new
        type.device_arn = params[:device_arn]
        type.network_profile_arn = params[:network_profile_arn]
        type
      end
    end

    module AssociateDeviceWithNetworkProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDeviceWithNetworkProfileOutput, context: context)
        type = Types::AssociateDeviceWithNetworkProfileOutput.new
        type
      end
    end

    module AssociateDeviceWithRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDeviceWithRoomInput, context: context)
        type = Types::AssociateDeviceWithRoomInput.new
        type.device_arn = params[:device_arn]
        type.room_arn = params[:room_arn]
        type
      end
    end

    module AssociateDeviceWithRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDeviceWithRoomOutput, context: context)
        type = Types::AssociateDeviceWithRoomOutput.new
        type
      end
    end

    module AssociateSkillGroupWithRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSkillGroupWithRoomInput, context: context)
        type = Types::AssociateSkillGroupWithRoomInput.new
        type.skill_group_arn = params[:skill_group_arn]
        type.room_arn = params[:room_arn]
        type
      end
    end

    module AssociateSkillGroupWithRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSkillGroupWithRoomOutput, context: context)
        type = Types::AssociateSkillGroupWithRoomOutput.new
        type
      end
    end

    module AssociateSkillWithSkillGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSkillWithSkillGroupInput, context: context)
        type = Types::AssociateSkillWithSkillGroupInput.new
        type.skill_group_arn = params[:skill_group_arn]
        type.skill_id = params[:skill_id]
        type
      end
    end

    module AssociateSkillWithSkillGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSkillWithSkillGroupOutput, context: context)
        type = Types::AssociateSkillWithSkillGroupOutput.new
        type
      end
    end

    module AssociateSkillWithUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSkillWithUsersInput, context: context)
        type = Types::AssociateSkillWithUsersInput.new
        type.skill_id = params[:skill_id]
        type
      end
    end

    module AssociateSkillWithUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSkillWithUsersOutput, context: context)
        type = Types::AssociateSkillWithUsersOutput.new
        type
      end
    end

    module Audio
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Audio, context: context)
        type = Types::Audio.new
        type.locale = params[:locale]
        type.location = params[:location]
        type
      end
    end

    module AudioList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Audio.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuthorizationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module BulletPoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BusinessReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BusinessReport, context: context)
        type = Types::BusinessReport.new
        type.status = params[:status]
        type.failure_code = params[:failure_code]
        type.s3_location = BusinessReportS3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type.delivery_time = params[:delivery_time]
        type.download_url = params[:download_url]
        type
      end
    end

    module BusinessReportContentRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BusinessReportContentRange, context: context)
        type = Types::BusinessReportContentRange.new
        type.interval = params[:interval]
        type
      end
    end

    module BusinessReportRecurrence
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BusinessReportRecurrence, context: context)
        type = Types::BusinessReportRecurrence.new
        type.start_date = params[:start_date]
        type
      end
    end

    module BusinessReportS3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BusinessReportS3Location, context: context)
        type = Types::BusinessReportS3Location.new
        type.path = params[:path]
        type.bucket_name = params[:bucket_name]
        type
      end
    end

    module BusinessReportSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BusinessReportSchedule, context: context)
        type = Types::BusinessReportSchedule.new
        type.schedule_arn = params[:schedule_arn]
        type.schedule_name = params[:schedule_name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.format = params[:format]
        type.content_range = BusinessReportContentRange.build(params[:content_range], context: "#{context}[:content_range]") unless params[:content_range].nil?
        type.recurrence = BusinessReportRecurrence.build(params[:recurrence], context: "#{context}[:recurrence]") unless params[:recurrence].nil?
        type.last_business_report = BusinessReport.build(params[:last_business_report], context: "#{context}[:last_business_report]") unless params[:last_business_report].nil?
        type
      end
    end

    module BusinessReportScheduleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BusinessReportSchedule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Category
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Category, context: context)
        type = Types::Category.new
        type.category_id = params[:category_id]
        type.category_name = params[:category_name]
        type
      end
    end

    module CategoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Category.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ConferencePreference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConferencePreference, context: context)
        type = Types::ConferencePreference.new
        type.default_conference_provider_arn = params[:default_conference_provider_arn]
        type
      end
    end

    module ConferenceProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConferenceProvider, context: context)
        type = Types::ConferenceProvider.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.ip_dial_in = IPDialIn.build(params[:ip_dial_in], context: "#{context}[:ip_dial_in]") unless params[:ip_dial_in].nil?
        type.pstn_dial_in = PSTNDialIn.build(params[:pstn_dial_in], context: "#{context}[:pstn_dial_in]") unless params[:pstn_dial_in].nil?
        type.meeting_setting = MeetingSetting.build(params[:meeting_setting], context: "#{context}[:meeting_setting]") unless params[:meeting_setting].nil?
        type
      end
    end

    module ConferenceProvidersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConferenceProvider.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Contact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Contact, context: context)
        type = Types::Contact.new
        type.contact_arn = params[:contact_arn]
        type.display_name = params[:display_name]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.phone_number = params[:phone_number]
        type.phone_numbers = PhoneNumberList.build(params[:phone_numbers], context: "#{context}[:phone_numbers]") unless params[:phone_numbers].nil?
        type.sip_addresses = SipAddressList.build(params[:sip_addresses], context: "#{context}[:sip_addresses]") unless params[:sip_addresses].nil?
        type
      end
    end

    module ContactData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContactData, context: context)
        type = Types::ContactData.new
        type.contact_arn = params[:contact_arn]
        type.display_name = params[:display_name]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.phone_number = params[:phone_number]
        type.phone_numbers = PhoneNumberList.build(params[:phone_numbers], context: "#{context}[:phone_numbers]") unless params[:phone_numbers].nil?
        type.sip_addresses = SipAddressList.build(params[:sip_addresses], context: "#{context}[:sip_addresses]") unless params[:sip_addresses].nil?
        type
      end
    end

    module ContactDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContactData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Content
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Content, context: context)
        type = Types::Content.new
        type.text_list = TextList.build(params[:text_list], context: "#{context}[:text_list]") unless params[:text_list].nil?
        type.ssml_list = SsmlList.build(params[:ssml_list], context: "#{context}[:ssml_list]") unless params[:ssml_list].nil?
        type.audio_list = AudioList.build(params[:audio_list], context: "#{context}[:audio_list]") unless params[:audio_list].nil?
        type
      end
    end

    module CreateAddressBookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAddressBookInput, context: context)
        type = Types::CreateAddressBookInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAddressBookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAddressBookOutput, context: context)
        type = Types::CreateAddressBookOutput.new
        type.address_book_arn = params[:address_book_arn]
        type
      end
    end

    module CreateBusinessReportScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBusinessReportScheduleInput, context: context)
        type = Types::CreateBusinessReportScheduleInput.new
        type.schedule_name = params[:schedule_name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.format = params[:format]
        type.content_range = BusinessReportContentRange.build(params[:content_range], context: "#{context}[:content_range]") unless params[:content_range].nil?
        type.recurrence = BusinessReportRecurrence.build(params[:recurrence], context: "#{context}[:recurrence]") unless params[:recurrence].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBusinessReportScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBusinessReportScheduleOutput, context: context)
        type = Types::CreateBusinessReportScheduleOutput.new
        type.schedule_arn = params[:schedule_arn]
        type
      end
    end

    module CreateConferenceProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConferenceProviderInput, context: context)
        type = Types::CreateConferenceProviderInput.new
        type.conference_provider_name = params[:conference_provider_name]
        type.conference_provider_type = params[:conference_provider_type]
        type.ip_dial_in = IPDialIn.build(params[:ip_dial_in], context: "#{context}[:ip_dial_in]") unless params[:ip_dial_in].nil?
        type.pstn_dial_in = PSTNDialIn.build(params[:pstn_dial_in], context: "#{context}[:pstn_dial_in]") unless params[:pstn_dial_in].nil?
        type.meeting_setting = MeetingSetting.build(params[:meeting_setting], context: "#{context}[:meeting_setting]") unless params[:meeting_setting].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateConferenceProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConferenceProviderOutput, context: context)
        type = Types::CreateConferenceProviderOutput.new
        type.conference_provider_arn = params[:conference_provider_arn]
        type
      end
    end

    module CreateContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactInput, context: context)
        type = Types::CreateContactInput.new
        type.display_name = params[:display_name]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.phone_number = params[:phone_number]
        type.phone_numbers = PhoneNumberList.build(params[:phone_numbers], context: "#{context}[:phone_numbers]") unless params[:phone_numbers].nil?
        type.sip_addresses = SipAddressList.build(params[:sip_addresses], context: "#{context}[:sip_addresses]") unless params[:sip_addresses].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContactOutput, context: context)
        type = Types::CreateContactOutput.new
        type.contact_arn = params[:contact_arn]
        type
      end
    end

    module CreateEndOfMeetingReminder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndOfMeetingReminder, context: context)
        type = Types::CreateEndOfMeetingReminder.new
        type.reminder_at_minutes = EndOfMeetingReminderMinutesList.build(params[:reminder_at_minutes], context: "#{context}[:reminder_at_minutes]") unless params[:reminder_at_minutes].nil?
        type.reminder_type = params[:reminder_type]
        type.enabled = params[:enabled]
        type
      end
    end

    module CreateGatewayGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGatewayGroupInput, context: context)
        type = Types::CreateGatewayGroupInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGatewayGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGatewayGroupOutput, context: context)
        type = Types::CreateGatewayGroupOutput.new
        type.gateway_group_arn = params[:gateway_group_arn]
        type
      end
    end

    module CreateInstantBooking
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstantBooking, context: context)
        type = Types::CreateInstantBooking.new
        type.duration_in_minutes = params[:duration_in_minutes]
        type.enabled = params[:enabled]
        type
      end
    end

    module CreateMeetingRoomConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingRoomConfiguration, context: context)
        type = Types::CreateMeetingRoomConfiguration.new
        type.room_utilization_metrics_enabled = params[:room_utilization_metrics_enabled]
        type.end_of_meeting_reminder = CreateEndOfMeetingReminder.build(params[:end_of_meeting_reminder], context: "#{context}[:end_of_meeting_reminder]") unless params[:end_of_meeting_reminder].nil?
        type.instant_booking = CreateInstantBooking.build(params[:instant_booking], context: "#{context}[:instant_booking]") unless params[:instant_booking].nil?
        type.require_check_in = CreateRequireCheckIn.build(params[:require_check_in], context: "#{context}[:require_check_in]") unless params[:require_check_in].nil?
        type
      end
    end

    module CreateNetworkProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkProfileInput, context: context)
        type = Types::CreateNetworkProfileInput.new
        type.network_profile_name = params[:network_profile_name]
        type.description = params[:description]
        type.ssid = params[:ssid]
        type.security_type = params[:security_type]
        type.eap_method = params[:eap_method]
        type.current_password = params[:current_password]
        type.next_password = params[:next_password]
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.trust_anchors = TrustAnchorList.build(params[:trust_anchors], context: "#{context}[:trust_anchors]") unless params[:trust_anchors].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateNetworkProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkProfileOutput, context: context)
        type = Types::CreateNetworkProfileOutput.new
        type.network_profile_arn = params[:network_profile_arn]
        type
      end
    end

    module CreateProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProfileInput, context: context)
        type = Types::CreateProfileInput.new
        type.profile_name = params[:profile_name]
        type.timezone = params[:timezone]
        type.address = params[:address]
        type.distance_unit = params[:distance_unit]
        type.temperature_unit = params[:temperature_unit]
        type.wake_word = params[:wake_word]
        type.locale = params[:locale]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.setup_mode_disabled = params[:setup_mode_disabled]
        type.max_volume_limit = params[:max_volume_limit]
        type.pstn_enabled = params[:pstn_enabled]
        type.data_retention_opt_in = params[:data_retention_opt_in]
        type.meeting_room_configuration = CreateMeetingRoomConfiguration.build(params[:meeting_room_configuration], context: "#{context}[:meeting_room_configuration]") unless params[:meeting_room_configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProfileOutput, context: context)
        type = Types::CreateProfileOutput.new
        type.profile_arn = params[:profile_arn]
        type
      end
    end

    module CreateRequireCheckIn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRequireCheckIn, context: context)
        type = Types::CreateRequireCheckIn.new
        type.release_after_minutes = params[:release_after_minutes]
        type.enabled = params[:enabled]
        type
      end
    end

    module CreateRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoomInput, context: context)
        type = Types::CreateRoomInput.new
        type.room_name = params[:room_name]
        type.description = params[:description]
        type.profile_arn = params[:profile_arn]
        type.provider_calendar_id = params[:provider_calendar_id]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoomOutput, context: context)
        type = Types::CreateRoomOutput.new
        type.room_arn = params[:room_arn]
        type
      end
    end

    module CreateSkillGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSkillGroupInput, context: context)
        type = Types::CreateSkillGroupInput.new
        type.skill_group_name = params[:skill_group_name]
        type.description = params[:description]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSkillGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSkillGroupOutput, context: context)
        type = Types::CreateSkillGroupOutput.new
        type.skill_group_arn = params[:skill_group_arn]
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.user_id = params[:user_id]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.email = params[:email]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type.user_arn = params[:user_arn]
        type
      end
    end

    module DeleteAddressBookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAddressBookInput, context: context)
        type = Types::DeleteAddressBookInput.new
        type.address_book_arn = params[:address_book_arn]
        type
      end
    end

    module DeleteAddressBookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAddressBookOutput, context: context)
        type = Types::DeleteAddressBookOutput.new
        type
      end
    end

    module DeleteBusinessReportScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBusinessReportScheduleInput, context: context)
        type = Types::DeleteBusinessReportScheduleInput.new
        type.schedule_arn = params[:schedule_arn]
        type
      end
    end

    module DeleteBusinessReportScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBusinessReportScheduleOutput, context: context)
        type = Types::DeleteBusinessReportScheduleOutput.new
        type
      end
    end

    module DeleteConferenceProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConferenceProviderInput, context: context)
        type = Types::DeleteConferenceProviderInput.new
        type.conference_provider_arn = params[:conference_provider_arn]
        type
      end
    end

    module DeleteConferenceProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConferenceProviderOutput, context: context)
        type = Types::DeleteConferenceProviderOutput.new
        type
      end
    end

    module DeleteContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactInput, context: context)
        type = Types::DeleteContactInput.new
        type.contact_arn = params[:contact_arn]
        type
      end
    end

    module DeleteContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContactOutput, context: context)
        type = Types::DeleteContactOutput.new
        type
      end
    end

    module DeleteDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceInput, context: context)
        type = Types::DeleteDeviceInput.new
        type.device_arn = params[:device_arn]
        type
      end
    end

    module DeleteDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceOutput, context: context)
        type = Types::DeleteDeviceOutput.new
        type
      end
    end

    module DeleteDeviceUsageDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceUsageDataInput, context: context)
        type = Types::DeleteDeviceUsageDataInput.new
        type.device_arn = params[:device_arn]
        type.device_usage_type = params[:device_usage_type]
        type
      end
    end

    module DeleteDeviceUsageDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceUsageDataOutput, context: context)
        type = Types::DeleteDeviceUsageDataOutput.new
        type
      end
    end

    module DeleteGatewayGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayGroupInput, context: context)
        type = Types::DeleteGatewayGroupInput.new
        type.gateway_group_arn = params[:gateway_group_arn]
        type
      end
    end

    module DeleteGatewayGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayGroupOutput, context: context)
        type = Types::DeleteGatewayGroupOutput.new
        type
      end
    end

    module DeleteNetworkProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkProfileInput, context: context)
        type = Types::DeleteNetworkProfileInput.new
        type.network_profile_arn = params[:network_profile_arn]
        type
      end
    end

    module DeleteNetworkProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkProfileOutput, context: context)
        type = Types::DeleteNetworkProfileOutput.new
        type
      end
    end

    module DeleteProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfileInput, context: context)
        type = Types::DeleteProfileInput.new
        type.profile_arn = params[:profile_arn]
        type
      end
    end

    module DeleteProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfileOutput, context: context)
        type = Types::DeleteProfileOutput.new
        type
      end
    end

    module DeleteRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoomInput, context: context)
        type = Types::DeleteRoomInput.new
        type.room_arn = params[:room_arn]
        type
      end
    end

    module DeleteRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoomOutput, context: context)
        type = Types::DeleteRoomOutput.new
        type
      end
    end

    module DeleteRoomSkillParameterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoomSkillParameterInput, context: context)
        type = Types::DeleteRoomSkillParameterInput.new
        type.room_arn = params[:room_arn]
        type.skill_id = params[:skill_id]
        type.parameter_key = params[:parameter_key]
        type
      end
    end

    module DeleteRoomSkillParameterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoomSkillParameterOutput, context: context)
        type = Types::DeleteRoomSkillParameterOutput.new
        type
      end
    end

    module DeleteSkillAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSkillAuthorizationInput, context: context)
        type = Types::DeleteSkillAuthorizationInput.new
        type.skill_id = params[:skill_id]
        type.room_arn = params[:room_arn]
        type
      end
    end

    module DeleteSkillAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSkillAuthorizationOutput, context: context)
        type = Types::DeleteSkillAuthorizationOutput.new
        type
      end
    end

    module DeleteSkillGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSkillGroupInput, context: context)
        type = Types::DeleteSkillGroupInput.new
        type.skill_group_arn = params[:skill_group_arn]
        type
      end
    end

    module DeleteSkillGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSkillGroupOutput, context: context)
        type = Types::DeleteSkillGroupOutput.new
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.user_arn = params[:user_arn]
        type.enrollment_id = params[:enrollment_id]
        type
      end
    end

    module DeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserOutput, context: context)
        type = Types::DeleteUserOutput.new
        type
      end
    end

    module DeveloperInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeveloperInfo, context: context)
        type = Types::DeveloperInfo.new
        type.developer_name = params[:developer_name]
        type.privacy_policy = params[:privacy_policy]
        type.email = params[:email]
        type.url = params[:url]
        type
      end
    end

    module Device
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Device, context: context)
        type = Types::Device.new
        type.device_arn = params[:device_arn]
        type.device_serial_number = params[:device_serial_number]
        type.device_type = params[:device_type]
        type.device_name = params[:device_name]
        type.software_version = params[:software_version]
        type.mac_address = params[:mac_address]
        type.room_arn = params[:room_arn]
        type.device_status = params[:device_status]
        type.device_status_info = DeviceStatusInfo.build(params[:device_status_info], context: "#{context}[:device_status_info]") unless params[:device_status_info].nil?
        type.network_profile_info = DeviceNetworkProfileInfo.build(params[:network_profile_info], context: "#{context}[:network_profile_info]") unless params[:network_profile_info].nil?
        type
      end
    end

    module DeviceData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceData, context: context)
        type = Types::DeviceData.new
        type.device_arn = params[:device_arn]
        type.device_serial_number = params[:device_serial_number]
        type.device_type = params[:device_type]
        type.device_name = params[:device_name]
        type.software_version = params[:software_version]
        type.mac_address = params[:mac_address]
        type.device_status = params[:device_status]
        type.network_profile_arn = params[:network_profile_arn]
        type.network_profile_name = params[:network_profile_name]
        type.room_arn = params[:room_arn]
        type.room_name = params[:room_name]
        type.device_status_info = DeviceStatusInfo.build(params[:device_status_info], context: "#{context}[:device_status_info]") unless params[:device_status_info].nil?
        type.created_time = params[:created_time]
        type
      end
    end

    module DeviceDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceEvent, context: context)
        type = Types::DeviceEvent.new
        type.type = params[:type]
        type.value = params[:value]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module DeviceEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceNetworkProfileInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceNetworkProfileInfo, context: context)
        type = Types::DeviceNetworkProfileInfo.new
        type.network_profile_arn = params[:network_profile_arn]
        type.certificate_arn = params[:certificate_arn]
        type.certificate_expiration_time = params[:certificate_expiration_time]
        type
      end
    end

    module DeviceNotRegisteredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceNotRegisteredException, context: context)
        type = Types::DeviceNotRegisteredException.new
        type.message = params[:message]
        type
      end
    end

    module DeviceStatusDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceStatusDetail, context: context)
        type = Types::DeviceStatusDetail.new
        type.feature = params[:feature]
        type.code = params[:code]
        type
      end
    end

    module DeviceStatusDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceStatusDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceStatusInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceStatusInfo, context: context)
        type = Types::DeviceStatusInfo.new
        type.device_status_details = DeviceStatusDetails.build(params[:device_status_details], context: "#{context}[:device_status_details]") unless params[:device_status_details].nil?
        type.connection_status = params[:connection_status]
        type.connection_status_updated_time = params[:connection_status_updated_time]
        type
      end
    end

    module DisassociateContactFromAddressBookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateContactFromAddressBookInput, context: context)
        type = Types::DisassociateContactFromAddressBookInput.new
        type.contact_arn = params[:contact_arn]
        type.address_book_arn = params[:address_book_arn]
        type
      end
    end

    module DisassociateContactFromAddressBookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateContactFromAddressBookOutput, context: context)
        type = Types::DisassociateContactFromAddressBookOutput.new
        type
      end
    end

    module DisassociateDeviceFromRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDeviceFromRoomInput, context: context)
        type = Types::DisassociateDeviceFromRoomInput.new
        type.device_arn = params[:device_arn]
        type
      end
    end

    module DisassociateDeviceFromRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDeviceFromRoomOutput, context: context)
        type = Types::DisassociateDeviceFromRoomOutput.new
        type
      end
    end

    module DisassociateSkillFromSkillGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSkillFromSkillGroupInput, context: context)
        type = Types::DisassociateSkillFromSkillGroupInput.new
        type.skill_group_arn = params[:skill_group_arn]
        type.skill_id = params[:skill_id]
        type
      end
    end

    module DisassociateSkillFromSkillGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSkillFromSkillGroupOutput, context: context)
        type = Types::DisassociateSkillFromSkillGroupOutput.new
        type
      end
    end

    module DisassociateSkillFromUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSkillFromUsersInput, context: context)
        type = Types::DisassociateSkillFromUsersInput.new
        type.skill_id = params[:skill_id]
        type
      end
    end

    module DisassociateSkillFromUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSkillFromUsersOutput, context: context)
        type = Types::DisassociateSkillFromUsersOutput.new
        type
      end
    end

    module DisassociateSkillGroupFromRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSkillGroupFromRoomInput, context: context)
        type = Types::DisassociateSkillGroupFromRoomInput.new
        type.skill_group_arn = params[:skill_group_arn]
        type.room_arn = params[:room_arn]
        type
      end
    end

    module DisassociateSkillGroupFromRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSkillGroupFromRoomOutput, context: context)
        type = Types::DisassociateSkillGroupFromRoomOutput.new
        type
      end
    end

    module EndOfMeetingReminder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndOfMeetingReminder, context: context)
        type = Types::EndOfMeetingReminder.new
        type.reminder_at_minutes = EndOfMeetingReminderMinutesList.build(params[:reminder_at_minutes], context: "#{context}[:reminder_at_minutes]") unless params[:reminder_at_minutes].nil?
        type.reminder_type = params[:reminder_type]
        type.enabled = params[:enabled]
        type
      end
    end

    module EndOfMeetingReminderMinutesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Features
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.key = params[:key]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ForgetSmartHomeAppliancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForgetSmartHomeAppliancesInput, context: context)
        type = Types::ForgetSmartHomeAppliancesInput.new
        type.room_arn = params[:room_arn]
        type
      end
    end

    module ForgetSmartHomeAppliancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForgetSmartHomeAppliancesOutput, context: context)
        type = Types::ForgetSmartHomeAppliancesOutput.new
        type
      end
    end

    module Gateway
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Gateway, context: context)
        type = Types::Gateway.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.gateway_group_arn = params[:gateway_group_arn]
        type.software_version = params[:software_version]
        type
      end
    end

    module GatewayGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayGroup, context: context)
        type = Types::GatewayGroup.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module GatewayGroupSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GatewayGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GatewayGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayGroupSummary, context: context)
        type = Types::GatewayGroupSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module GatewaySummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GatewaySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GatewaySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewaySummary, context: context)
        type = Types::GatewaySummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.gateway_group_arn = params[:gateway_group_arn]
        type.software_version = params[:software_version]
        type
      end
    end

    module GenericKeywords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetAddressBookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAddressBookInput, context: context)
        type = Types::GetAddressBookInput.new
        type.address_book_arn = params[:address_book_arn]
        type
      end
    end

    module GetAddressBookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAddressBookOutput, context: context)
        type = Types::GetAddressBookOutput.new
        type.address_book = AddressBook.build(params[:address_book], context: "#{context}[:address_book]") unless params[:address_book].nil?
        type
      end
    end

    module GetConferencePreferenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConferencePreferenceInput, context: context)
        type = Types::GetConferencePreferenceInput.new
        type
      end
    end

    module GetConferencePreferenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConferencePreferenceOutput, context: context)
        type = Types::GetConferencePreferenceOutput.new
        type.preference = ConferencePreference.build(params[:preference], context: "#{context}[:preference]") unless params[:preference].nil?
        type
      end
    end

    module GetConferenceProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConferenceProviderInput, context: context)
        type = Types::GetConferenceProviderInput.new
        type.conference_provider_arn = params[:conference_provider_arn]
        type
      end
    end

    module GetConferenceProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConferenceProviderOutput, context: context)
        type = Types::GetConferenceProviderOutput.new
        type.conference_provider = ConferenceProvider.build(params[:conference_provider], context: "#{context}[:conference_provider]") unless params[:conference_provider].nil?
        type
      end
    end

    module GetContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactInput, context: context)
        type = Types::GetContactInput.new
        type.contact_arn = params[:contact_arn]
        type
      end
    end

    module GetContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContactOutput, context: context)
        type = Types::GetContactOutput.new
        type.contact = Contact.build(params[:contact], context: "#{context}[:contact]") unless params[:contact].nil?
        type
      end
    end

    module GetDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceInput, context: context)
        type = Types::GetDeviceInput.new
        type.device_arn = params[:device_arn]
        type
      end
    end

    module GetDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceOutput, context: context)
        type = Types::GetDeviceOutput.new
        type.device = Device.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type
      end
    end

    module GetGatewayGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGatewayGroupInput, context: context)
        type = Types::GetGatewayGroupInput.new
        type.gateway_group_arn = params[:gateway_group_arn]
        type
      end
    end

    module GetGatewayGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGatewayGroupOutput, context: context)
        type = Types::GetGatewayGroupOutput.new
        type.gateway_group = GatewayGroup.build(params[:gateway_group], context: "#{context}[:gateway_group]") unless params[:gateway_group].nil?
        type
      end
    end

    module GetGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGatewayInput, context: context)
        type = Types::GetGatewayInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module GetGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGatewayOutput, context: context)
        type = Types::GetGatewayOutput.new
        type.gateway = Gateway.build(params[:gateway], context: "#{context}[:gateway]") unless params[:gateway].nil?
        type
      end
    end

    module GetInvitationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInvitationConfigurationInput, context: context)
        type = Types::GetInvitationConfigurationInput.new
        type
      end
    end

    module GetInvitationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInvitationConfigurationOutput, context: context)
        type = Types::GetInvitationConfigurationOutput.new
        type.organization_name = params[:organization_name]
        type.contact_email = params[:contact_email]
        type.private_skill_ids = ShortSkillIdList.build(params[:private_skill_ids], context: "#{context}[:private_skill_ids]") unless params[:private_skill_ids].nil?
        type
      end
    end

    module GetNetworkProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkProfileInput, context: context)
        type = Types::GetNetworkProfileInput.new
        type.network_profile_arn = params[:network_profile_arn]
        type
      end
    end

    module GetNetworkProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkProfileOutput, context: context)
        type = Types::GetNetworkProfileOutput.new
        type.network_profile = NetworkProfile.build(params[:network_profile], context: "#{context}[:network_profile]") unless params[:network_profile].nil?
        type
      end
    end

    module GetProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProfileInput, context: context)
        type = Types::GetProfileInput.new
        type.profile_arn = params[:profile_arn]
        type
      end
    end

    module GetProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProfileOutput, context: context)
        type = Types::GetProfileOutput.new
        type.profile = Profile.build(params[:profile], context: "#{context}[:profile]") unless params[:profile].nil?
        type
      end
    end

    module GetRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoomInput, context: context)
        type = Types::GetRoomInput.new
        type.room_arn = params[:room_arn]
        type
      end
    end

    module GetRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoomOutput, context: context)
        type = Types::GetRoomOutput.new
        type.room = Room.build(params[:room], context: "#{context}[:room]") unless params[:room].nil?
        type
      end
    end

    module GetRoomSkillParameterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoomSkillParameterInput, context: context)
        type = Types::GetRoomSkillParameterInput.new
        type.room_arn = params[:room_arn]
        type.skill_id = params[:skill_id]
        type.parameter_key = params[:parameter_key]
        type
      end
    end

    module GetRoomSkillParameterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoomSkillParameterOutput, context: context)
        type = Types::GetRoomSkillParameterOutput.new
        type.room_skill_parameter = RoomSkillParameter.build(params[:room_skill_parameter], context: "#{context}[:room_skill_parameter]") unless params[:room_skill_parameter].nil?
        type
      end
    end

    module GetSkillGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSkillGroupInput, context: context)
        type = Types::GetSkillGroupInput.new
        type.skill_group_arn = params[:skill_group_arn]
        type
      end
    end

    module GetSkillGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSkillGroupOutput, context: context)
        type = Types::GetSkillGroupOutput.new
        type.skill_group = SkillGroup.build(params[:skill_group], context: "#{context}[:skill_group]") unless params[:skill_group].nil?
        type
      end
    end

    module IPDialIn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IPDialIn, context: context)
        type = Types::IPDialIn.new
        type.endpoint = params[:endpoint]
        type.comms_protocol = params[:comms_protocol]
        type
      end
    end

    module InstantBooking
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstantBooking, context: context)
        type = Types::InstantBooking.new
        type.duration_in_minutes = params[:duration_in_minutes]
        type.enabled = params[:enabled]
        type
      end
    end

    module InvalidCertificateAuthorityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCertificateAuthorityException, context: context)
        type = Types::InvalidCertificateAuthorityException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeviceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeviceException, context: context)
        type = Types::InvalidDeviceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSecretsManagerResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSecretsManagerResourceException, context: context)
        type = Types::InvalidSecretsManagerResourceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidServiceLinkedRoleStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidServiceLinkedRoleStateException, context: context)
        type = Types::InvalidServiceLinkedRoleStateException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidUserStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUserStatusException, context: context)
        type = Types::InvalidUserStatusException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListBusinessReportSchedulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBusinessReportSchedulesInput, context: context)
        type = Types::ListBusinessReportSchedulesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBusinessReportSchedulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBusinessReportSchedulesOutput, context: context)
        type = Types::ListBusinessReportSchedulesOutput.new
        type.business_report_schedules = BusinessReportScheduleList.build(params[:business_report_schedules], context: "#{context}[:business_report_schedules]") unless params[:business_report_schedules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConferenceProvidersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConferenceProvidersInput, context: context)
        type = Types::ListConferenceProvidersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListConferenceProvidersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConferenceProvidersOutput, context: context)
        type = Types::ListConferenceProvidersOutput.new
        type.conference_providers = ConferenceProvidersList.build(params[:conference_providers], context: "#{context}[:conference_providers]") unless params[:conference_providers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeviceEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceEventsInput, context: context)
        type = Types::ListDeviceEventsInput.new
        type.device_arn = params[:device_arn]
        type.event_type = params[:event_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDeviceEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceEventsOutput, context: context)
        type = Types::ListDeviceEventsOutput.new
        type.device_events = DeviceEventList.build(params[:device_events], context: "#{context}[:device_events]") unless params[:device_events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGatewayGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewayGroupsInput, context: context)
        type = Types::ListGatewayGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListGatewayGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewayGroupsOutput, context: context)
        type = Types::ListGatewayGroupsOutput.new
        type.gateway_groups = GatewayGroupSummaries.build(params[:gateway_groups], context: "#{context}[:gateway_groups]") unless params[:gateway_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewaysInput, context: context)
        type = Types::ListGatewaysInput.new
        type.gateway_group_arn = params[:gateway_group_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListGatewaysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewaysOutput, context: context)
        type = Types::ListGatewaysOutput.new
        type.gateways = GatewaySummaries.build(params[:gateways], context: "#{context}[:gateways]") unless params[:gateways].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSkillsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSkillsInput, context: context)
        type = Types::ListSkillsInput.new
        type.skill_group_arn = params[:skill_group_arn]
        type.enablement_type = params[:enablement_type]
        type.skill_type = params[:skill_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSkillsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSkillsOutput, context: context)
        type = Types::ListSkillsOutput.new
        type.skill_summaries = SkillSummaryList.build(params[:skill_summaries], context: "#{context}[:skill_summaries]") unless params[:skill_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSkillsStoreCategoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSkillsStoreCategoriesInput, context: context)
        type = Types::ListSkillsStoreCategoriesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSkillsStoreCategoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSkillsStoreCategoriesOutput, context: context)
        type = Types::ListSkillsStoreCategoriesOutput.new
        type.category_list = CategoryList.build(params[:category_list], context: "#{context}[:category_list]") unless params[:category_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSkillsStoreSkillsByCategoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSkillsStoreSkillsByCategoryInput, context: context)
        type = Types::ListSkillsStoreSkillsByCategoryInput.new
        type.category_id = params[:category_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSkillsStoreSkillsByCategoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSkillsStoreSkillsByCategoryOutput, context: context)
        type = Types::ListSkillsStoreSkillsByCategoryOutput.new
        type.skills_store_skills = SkillsStoreSkillList.build(params[:skills_store_skills], context: "#{context}[:skills_store_skills]") unless params[:skills_store_skills].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSmartHomeAppliancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSmartHomeAppliancesInput, context: context)
        type = Types::ListSmartHomeAppliancesInput.new
        type.room_arn = params[:room_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSmartHomeAppliancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSmartHomeAppliancesOutput, context: context)
        type = Types::ListSmartHomeAppliancesOutput.new
        type.smart_home_appliances = SmartHomeApplianceList.build(params[:smart_home_appliances], context: "#{context}[:smart_home_appliances]") unless params[:smart_home_appliances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MeetingRoomConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeetingRoomConfiguration, context: context)
        type = Types::MeetingRoomConfiguration.new
        type.room_utilization_metrics_enabled = params[:room_utilization_metrics_enabled]
        type.end_of_meeting_reminder = EndOfMeetingReminder.build(params[:end_of_meeting_reminder], context: "#{context}[:end_of_meeting_reminder]") unless params[:end_of_meeting_reminder].nil?
        type.instant_booking = InstantBooking.build(params[:instant_booking], context: "#{context}[:instant_booking]") unless params[:instant_booking].nil?
        type.require_check_in = RequireCheckIn.build(params[:require_check_in], context: "#{context}[:require_check_in]") unless params[:require_check_in].nil?
        type
      end
    end

    module MeetingSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeetingSetting, context: context)
        type = Types::MeetingSetting.new
        type.require_pin = params[:require_pin]
        type
      end
    end

    module NameInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NameInUseException, context: context)
        type = Types::NameInUseException.new
        type.message = params[:message]
        type
      end
    end

    module NetworkProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkProfile, context: context)
        type = Types::NetworkProfile.new
        type.network_profile_arn = params[:network_profile_arn]
        type.network_profile_name = params[:network_profile_name]
        type.description = params[:description]
        type.ssid = params[:ssid]
        type.security_type = params[:security_type]
        type.eap_method = params[:eap_method]
        type.current_password = params[:current_password]
        type.next_password = params[:next_password]
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.trust_anchors = TrustAnchorList.build(params[:trust_anchors], context: "#{context}[:trust_anchors]") unless params[:trust_anchors].nil?
        type
      end
    end

    module NetworkProfileData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkProfileData, context: context)
        type = Types::NetworkProfileData.new
        type.network_profile_arn = params[:network_profile_arn]
        type.network_profile_name = params[:network_profile_name]
        type.description = params[:description]
        type.ssid = params[:ssid]
        type.security_type = params[:security_type]
        type.eap_method = params[:eap_method]
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type
      end
    end

    module NetworkProfileDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkProfileData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NewInThisVersionBulletPoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PSTNDialIn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PSTNDialIn, context: context)
        type = Types::PSTNDialIn.new
        type.country_code = params[:country_code]
        type.phone_number = params[:phone_number]
        type.one_click_id_delay = params[:one_click_id_delay]
        type.one_click_pin_delay = params[:one_click_pin_delay]
        type
      end
    end

    module PhoneNumber
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumber, context: context)
        type = Types::PhoneNumber.new
        type.number = params[:number]
        type.type = params[:type]
        type
      end
    end

    module PhoneNumberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhoneNumber.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Profile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Profile, context: context)
        type = Types::Profile.new
        type.profile_arn = params[:profile_arn]
        type.profile_name = params[:profile_name]
        type.is_default = params[:is_default]
        type.address = params[:address]
        type.timezone = params[:timezone]
        type.distance_unit = params[:distance_unit]
        type.temperature_unit = params[:temperature_unit]
        type.wake_word = params[:wake_word]
        type.locale = params[:locale]
        type.setup_mode_disabled = params[:setup_mode_disabled]
        type.max_volume_limit = params[:max_volume_limit]
        type.pstn_enabled = params[:pstn_enabled]
        type.data_retention_opt_in = params[:data_retention_opt_in]
        type.address_book_arn = params[:address_book_arn]
        type.meeting_room_configuration = MeetingRoomConfiguration.build(params[:meeting_room_configuration], context: "#{context}[:meeting_room_configuration]") unless params[:meeting_room_configuration].nil?
        type
      end
    end

    module ProfileData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProfileData, context: context)
        type = Types::ProfileData.new
        type.profile_arn = params[:profile_arn]
        type.profile_name = params[:profile_name]
        type.is_default = params[:is_default]
        type.address = params[:address]
        type.timezone = params[:timezone]
        type.distance_unit = params[:distance_unit]
        type.temperature_unit = params[:temperature_unit]
        type.wake_word = params[:wake_word]
        type.locale = params[:locale]
        type
      end
    end

    module ProfileDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProfileData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutConferencePreferenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConferencePreferenceInput, context: context)
        type = Types::PutConferencePreferenceInput.new
        type.conference_preference = ConferencePreference.build(params[:conference_preference], context: "#{context}[:conference_preference]") unless params[:conference_preference].nil?
        type
      end
    end

    module PutConferencePreferenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConferencePreferenceOutput, context: context)
        type = Types::PutConferencePreferenceOutput.new
        type
      end
    end

    module PutInvitationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInvitationConfigurationInput, context: context)
        type = Types::PutInvitationConfigurationInput.new
        type.organization_name = params[:organization_name]
        type.contact_email = params[:contact_email]
        type.private_skill_ids = ShortSkillIdList.build(params[:private_skill_ids], context: "#{context}[:private_skill_ids]") unless params[:private_skill_ids].nil?
        type
      end
    end

    module PutInvitationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInvitationConfigurationOutput, context: context)
        type = Types::PutInvitationConfigurationOutput.new
        type
      end
    end

    module PutRoomSkillParameterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRoomSkillParameterInput, context: context)
        type = Types::PutRoomSkillParameterInput.new
        type.room_arn = params[:room_arn]
        type.skill_id = params[:skill_id]
        type.room_skill_parameter = RoomSkillParameter.build(params[:room_skill_parameter], context: "#{context}[:room_skill_parameter]") unless params[:room_skill_parameter].nil?
        type
      end
    end

    module PutRoomSkillParameterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRoomSkillParameterOutput, context: context)
        type = Types::PutRoomSkillParameterOutput.new
        type
      end
    end

    module PutSkillAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSkillAuthorizationInput, context: context)
        type = Types::PutSkillAuthorizationInput.new
        type.authorization_result = AuthorizationResult.build(params[:authorization_result], context: "#{context}[:authorization_result]") unless params[:authorization_result].nil?
        type.skill_id = params[:skill_id]
        type.room_arn = params[:room_arn]
        type
      end
    end

    module PutSkillAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSkillAuthorizationOutput, context: context)
        type = Types::PutSkillAuthorizationOutput.new
        type
      end
    end

    module RegisterAVSDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterAVSDeviceInput, context: context)
        type = Types::RegisterAVSDeviceInput.new
        type.client_id = params[:client_id]
        type.user_code = params[:user_code]
        type.product_id = params[:product_id]
        type.device_serial_number = params[:device_serial_number]
        type.amazon_id = params[:amazon_id]
        type.room_arn = params[:room_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RegisterAVSDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterAVSDeviceOutput, context: context)
        type = Types::RegisterAVSDeviceOutput.new
        type.device_arn = params[:device_arn]
        type
      end
    end

    module RejectSkillInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectSkillInput, context: context)
        type = Types::RejectSkillInput.new
        type.skill_id = params[:skill_id]
        type
      end
    end

    module RejectSkillOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectSkillOutput, context: context)
        type = Types::RejectSkillOutput.new
        type
      end
    end

    module RequireCheckIn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequireCheckIn, context: context)
        type = Types::RequireCheckIn.new
        type.release_after_minutes = params[:release_after_minutes]
        type.enabled = params[:enabled]
        type
      end
    end

    module ResolveRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveRoomInput, context: context)
        type = Types::ResolveRoomInput.new
        type.user_id = params[:user_id]
        type.skill_id = params[:skill_id]
        type
      end
    end

    module ResolveRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveRoomOutput, context: context)
        type = Types::ResolveRoomOutput.new
        type.room_arn = params[:room_arn]
        type.room_name = params[:room_name]
        type.room_skill_parameters = RoomSkillParameters.build(params[:room_skill_parameters], context: "#{context}[:room_skill_parameters]") unless params[:room_skill_parameters].nil?
        type
      end
    end

    module ResourceAssociatedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAssociatedException, context: context)
        type = Types::ResourceAssociatedException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module Reviews
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RevokeInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeInvitationInput, context: context)
        type = Types::RevokeInvitationInput.new
        type.user_arn = params[:user_arn]
        type.enrollment_id = params[:enrollment_id]
        type
      end
    end

    module RevokeInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeInvitationOutput, context: context)
        type = Types::RevokeInvitationOutput.new
        type
      end
    end

    module Room
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Room, context: context)
        type = Types::Room.new
        type.room_arn = params[:room_arn]
        type.room_name = params[:room_name]
        type.description = params[:description]
        type.provider_calendar_id = params[:provider_calendar_id]
        type.profile_arn = params[:profile_arn]
        type
      end
    end

    module RoomData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoomData, context: context)
        type = Types::RoomData.new
        type.room_arn = params[:room_arn]
        type.room_name = params[:room_name]
        type.description = params[:description]
        type.provider_calendar_id = params[:provider_calendar_id]
        type.profile_arn = params[:profile_arn]
        type.profile_name = params[:profile_name]
        type
      end
    end

    module RoomDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoomData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RoomSkillParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoomSkillParameter, context: context)
        type = Types::RoomSkillParameter.new
        type.parameter_key = params[:parameter_key]
        type.parameter_value = params[:parameter_value]
        type
      end
    end

    module RoomSkillParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoomSkillParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SampleUtterances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SearchAddressBooksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchAddressBooksInput, context: context)
        type = Types::SearchAddressBooksInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_criteria = SortList.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module SearchAddressBooksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchAddressBooksOutput, context: context)
        type = Types::SearchAddressBooksOutput.new
        type.address_books = AddressBookDataList.build(params[:address_books], context: "#{context}[:address_books]") unless params[:address_books].nil?
        type.next_token = params[:next_token]
        type.total_count = params[:total_count]
        type
      end
    end

    module SearchContactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchContactsInput, context: context)
        type = Types::SearchContactsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_criteria = SortList.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module SearchContactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchContactsOutput, context: context)
        type = Types::SearchContactsOutput.new
        type.contacts = ContactDataList.build(params[:contacts], context: "#{context}[:contacts]") unless params[:contacts].nil?
        type.next_token = params[:next_token]
        type.total_count = params[:total_count]
        type
      end
    end

    module SearchDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchDevicesInput, context: context)
        type = Types::SearchDevicesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_criteria = SortList.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module SearchDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchDevicesOutput, context: context)
        type = Types::SearchDevicesOutput.new
        type.devices = DeviceDataList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.next_token = params[:next_token]
        type.total_count = params[:total_count]
        type
      end
    end

    module SearchNetworkProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchNetworkProfilesInput, context: context)
        type = Types::SearchNetworkProfilesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_criteria = SortList.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module SearchNetworkProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchNetworkProfilesOutput, context: context)
        type = Types::SearchNetworkProfilesOutput.new
        type.network_profiles = NetworkProfileDataList.build(params[:network_profiles], context: "#{context}[:network_profiles]") unless params[:network_profiles].nil?
        type.next_token = params[:next_token]
        type.total_count = params[:total_count]
        type
      end
    end

    module SearchProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchProfilesInput, context: context)
        type = Types::SearchProfilesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_criteria = SortList.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module SearchProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchProfilesOutput, context: context)
        type = Types::SearchProfilesOutput.new
        type.profiles = ProfileDataList.build(params[:profiles], context: "#{context}[:profiles]") unless params[:profiles].nil?
        type.next_token = params[:next_token]
        type.total_count = params[:total_count]
        type
      end
    end

    module SearchRoomsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchRoomsInput, context: context)
        type = Types::SearchRoomsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_criteria = SortList.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module SearchRoomsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchRoomsOutput, context: context)
        type = Types::SearchRoomsOutput.new
        type.rooms = RoomDataList.build(params[:rooms], context: "#{context}[:rooms]") unless params[:rooms].nil?
        type.next_token = params[:next_token]
        type.total_count = params[:total_count]
        type
      end
    end

    module SearchSkillGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSkillGroupsInput, context: context)
        type = Types::SearchSkillGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_criteria = SortList.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module SearchSkillGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSkillGroupsOutput, context: context)
        type = Types::SearchSkillGroupsOutput.new
        type.skill_groups = SkillGroupDataList.build(params[:skill_groups], context: "#{context}[:skill_groups]") unless params[:skill_groups].nil?
        type.next_token = params[:next_token]
        type.total_count = params[:total_count]
        type
      end
    end

    module SearchUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchUsersInput, context: context)
        type = Types::SearchUsersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_criteria = SortList.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type
      end
    end

    module SearchUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchUsersOutput, context: context)
        type = Types::SearchUsersOutput.new
        type.users = UserDataList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.next_token = params[:next_token]
        type.total_count = params[:total_count]
        type
      end
    end

    module SendAnnouncementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendAnnouncementInput, context: context)
        type = Types::SendAnnouncementInput.new
        type.room_filters = FilterList.build(params[:room_filters], context: "#{context}[:room_filters]") unless params[:room_filters].nil?
        type.content = Content.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.time_to_live_in_seconds = params[:time_to_live_in_seconds]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module SendAnnouncementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendAnnouncementOutput, context: context)
        type = Types::SendAnnouncementOutput.new
        type.announcement_arn = params[:announcement_arn]
        type
      end
    end

    module SendInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendInvitationInput, context: context)
        type = Types::SendInvitationInput.new
        type.user_arn = params[:user_arn]
        type
      end
    end

    module SendInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendInvitationOutput, context: context)
        type = Types::SendInvitationOutput.new
        type
      end
    end

    module ShortSkillIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SipAddress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SipAddress, context: context)
        type = Types::SipAddress.new
        type.uri = params[:uri]
        type.type = params[:type]
        type
      end
    end

    module SipAddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SipAddress.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SkillDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SkillDetails, context: context)
        type = Types::SkillDetails.new
        type.product_description = params[:product_description]
        type.invocation_phrase = params[:invocation_phrase]
        type.release_date = params[:release_date]
        type.end_user_license_agreement = params[:end_user_license_agreement]
        type.generic_keywords = GenericKeywords.build(params[:generic_keywords], context: "#{context}[:generic_keywords]") unless params[:generic_keywords].nil?
        type.bullet_points = BulletPoints.build(params[:bullet_points], context: "#{context}[:bullet_points]") unless params[:bullet_points].nil?
        type.new_in_this_version_bullet_points = NewInThisVersionBulletPoints.build(params[:new_in_this_version_bullet_points], context: "#{context}[:new_in_this_version_bullet_points]") unless params[:new_in_this_version_bullet_points].nil?
        type.skill_types = SkillTypes.build(params[:skill_types], context: "#{context}[:skill_types]") unless params[:skill_types].nil?
        type.reviews = Reviews.build(params[:reviews], context: "#{context}[:reviews]") unless params[:reviews].nil?
        type.developer_info = DeveloperInfo.build(params[:developer_info], context: "#{context}[:developer_info]") unless params[:developer_info].nil?
        type
      end
    end

    module SkillGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SkillGroup, context: context)
        type = Types::SkillGroup.new
        type.skill_group_arn = params[:skill_group_arn]
        type.skill_group_name = params[:skill_group_name]
        type.description = params[:description]
        type
      end
    end

    module SkillGroupData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SkillGroupData, context: context)
        type = Types::SkillGroupData.new
        type.skill_group_arn = params[:skill_group_arn]
        type.skill_group_name = params[:skill_group_name]
        type.description = params[:description]
        type
      end
    end

    module SkillGroupDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SkillGroupData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SkillNotLinkedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SkillNotLinkedException, context: context)
        type = Types::SkillNotLinkedException.new
        type.message = params[:message]
        type
      end
    end

    module SkillSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SkillSummary, context: context)
        type = Types::SkillSummary.new
        type.skill_id = params[:skill_id]
        type.skill_name = params[:skill_name]
        type.supports_linking = params[:supports_linking]
        type.enablement_type = params[:enablement_type]
        type.skill_type = params[:skill_type]
        type
      end
    end

    module SkillSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SkillSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SkillTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SkillsStoreSkill
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SkillsStoreSkill, context: context)
        type = Types::SkillsStoreSkill.new
        type.skill_id = params[:skill_id]
        type.skill_name = params[:skill_name]
        type.short_description = params[:short_description]
        type.icon_url = params[:icon_url]
        type.sample_utterances = SampleUtterances.build(params[:sample_utterances], context: "#{context}[:sample_utterances]") unless params[:sample_utterances].nil?
        type.skill_details = SkillDetails.build(params[:skill_details], context: "#{context}[:skill_details]") unless params[:skill_details].nil?
        type.supports_linking = params[:supports_linking]
        type
      end
    end

    module SkillsStoreSkillList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SkillsStoreSkill.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SmartHomeAppliance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SmartHomeAppliance, context: context)
        type = Types::SmartHomeAppliance.new
        type.friendly_name = params[:friendly_name]
        type.description = params[:description]
        type.manufacturer_name = params[:manufacturer_name]
        type
      end
    end

    module SmartHomeApplianceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SmartHomeAppliance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Sort
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Sort, context: context)
        type = Types::Sort.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module SortList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Sort.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Ssml
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ssml, context: context)
        type = Types::Ssml.new
        type.locale = params[:locale]
        type.value = params[:value]
        type
      end
    end

    module SsmlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ssml.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartDeviceSyncInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeviceSyncInput, context: context)
        type = Types::StartDeviceSyncInput.new
        type.room_arn = params[:room_arn]
        type.device_arn = params[:device_arn]
        type.features = Features.build(params[:features], context: "#{context}[:features]") unless params[:features].nil?
        type
      end
    end

    module StartDeviceSyncOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeviceSyncOutput, context: context)
        type = Types::StartDeviceSyncOutput.new
        type
      end
    end

    module StartSmartHomeApplianceDiscoveryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSmartHomeApplianceDiscoveryInput, context: context)
        type = Types::StartSmartHomeApplianceDiscoveryInput.new
        type.room_arn = params[:room_arn]
        type
      end
    end

    module StartSmartHomeApplianceDiscoveryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSmartHomeApplianceDiscoveryOutput, context: context)
        type = Types::StartSmartHomeApplianceDiscoveryOutput.new
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.arn = params[:arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Text
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Text, context: context)
        type = Types::Text.new
        type.locale = params[:locale]
        type.value = params[:value]
        type
      end
    end

    module TextList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Text.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrustAnchorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.arn = params[:arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAddressBookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAddressBookInput, context: context)
        type = Types::UpdateAddressBookInput.new
        type.address_book_arn = params[:address_book_arn]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateAddressBookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAddressBookOutput, context: context)
        type = Types::UpdateAddressBookOutput.new
        type
      end
    end

    module UpdateBusinessReportScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBusinessReportScheduleInput, context: context)
        type = Types::UpdateBusinessReportScheduleInput.new
        type.schedule_arn = params[:schedule_arn]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.format = params[:format]
        type.schedule_name = params[:schedule_name]
        type.recurrence = BusinessReportRecurrence.build(params[:recurrence], context: "#{context}[:recurrence]") unless params[:recurrence].nil?
        type
      end
    end

    module UpdateBusinessReportScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBusinessReportScheduleOutput, context: context)
        type = Types::UpdateBusinessReportScheduleOutput.new
        type
      end
    end

    module UpdateConferenceProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConferenceProviderInput, context: context)
        type = Types::UpdateConferenceProviderInput.new
        type.conference_provider_arn = params[:conference_provider_arn]
        type.conference_provider_type = params[:conference_provider_type]
        type.ip_dial_in = IPDialIn.build(params[:ip_dial_in], context: "#{context}[:ip_dial_in]") unless params[:ip_dial_in].nil?
        type.pstn_dial_in = PSTNDialIn.build(params[:pstn_dial_in], context: "#{context}[:pstn_dial_in]") unless params[:pstn_dial_in].nil?
        type.meeting_setting = MeetingSetting.build(params[:meeting_setting], context: "#{context}[:meeting_setting]") unless params[:meeting_setting].nil?
        type
      end
    end

    module UpdateConferenceProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConferenceProviderOutput, context: context)
        type = Types::UpdateConferenceProviderOutput.new
        type
      end
    end

    module UpdateContactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactInput, context: context)
        type = Types::UpdateContactInput.new
        type.contact_arn = params[:contact_arn]
        type.display_name = params[:display_name]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.phone_number = params[:phone_number]
        type.phone_numbers = PhoneNumberList.build(params[:phone_numbers], context: "#{context}[:phone_numbers]") unless params[:phone_numbers].nil?
        type.sip_addresses = SipAddressList.build(params[:sip_addresses], context: "#{context}[:sip_addresses]") unless params[:sip_addresses].nil?
        type
      end
    end

    module UpdateContactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContactOutput, context: context)
        type = Types::UpdateContactOutput.new
        type
      end
    end

    module UpdateDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceInput, context: context)
        type = Types::UpdateDeviceInput.new
        type.device_arn = params[:device_arn]
        type.device_name = params[:device_name]
        type
      end
    end

    module UpdateDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceOutput, context: context)
        type = Types::UpdateDeviceOutput.new
        type
      end
    end

    module UpdateEndOfMeetingReminder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndOfMeetingReminder, context: context)
        type = Types::UpdateEndOfMeetingReminder.new
        type.reminder_at_minutes = EndOfMeetingReminderMinutesList.build(params[:reminder_at_minutes], context: "#{context}[:reminder_at_minutes]") unless params[:reminder_at_minutes].nil?
        type.reminder_type = params[:reminder_type]
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateGatewayGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayGroupInput, context: context)
        type = Types::UpdateGatewayGroupInput.new
        type.gateway_group_arn = params[:gateway_group_arn]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateGatewayGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayGroupOutput, context: context)
        type = Types::UpdateGatewayGroupOutput.new
        type
      end
    end

    module UpdateGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayInput, context: context)
        type = Types::UpdateGatewayInput.new
        type.gateway_arn = params[:gateway_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.software_version = params[:software_version]
        type
      end
    end

    module UpdateGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayOutput, context: context)
        type = Types::UpdateGatewayOutput.new
        type
      end
    end

    module UpdateInstantBooking
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstantBooking, context: context)
        type = Types::UpdateInstantBooking.new
        type.duration_in_minutes = params[:duration_in_minutes]
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateMeetingRoomConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMeetingRoomConfiguration, context: context)
        type = Types::UpdateMeetingRoomConfiguration.new
        type.room_utilization_metrics_enabled = params[:room_utilization_metrics_enabled]
        type.end_of_meeting_reminder = UpdateEndOfMeetingReminder.build(params[:end_of_meeting_reminder], context: "#{context}[:end_of_meeting_reminder]") unless params[:end_of_meeting_reminder].nil?
        type.instant_booking = UpdateInstantBooking.build(params[:instant_booking], context: "#{context}[:instant_booking]") unless params[:instant_booking].nil?
        type.require_check_in = UpdateRequireCheckIn.build(params[:require_check_in], context: "#{context}[:require_check_in]") unless params[:require_check_in].nil?
        type
      end
    end

    module UpdateNetworkProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkProfileInput, context: context)
        type = Types::UpdateNetworkProfileInput.new
        type.network_profile_arn = params[:network_profile_arn]
        type.network_profile_name = params[:network_profile_name]
        type.description = params[:description]
        type.current_password = params[:current_password]
        type.next_password = params[:next_password]
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.trust_anchors = TrustAnchorList.build(params[:trust_anchors], context: "#{context}[:trust_anchors]") unless params[:trust_anchors].nil?
        type
      end
    end

    module UpdateNetworkProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkProfileOutput, context: context)
        type = Types::UpdateNetworkProfileOutput.new
        type
      end
    end

    module UpdateProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProfileInput, context: context)
        type = Types::UpdateProfileInput.new
        type.profile_arn = params[:profile_arn]
        type.profile_name = params[:profile_name]
        type.is_default = params[:is_default]
        type.timezone = params[:timezone]
        type.address = params[:address]
        type.distance_unit = params[:distance_unit]
        type.temperature_unit = params[:temperature_unit]
        type.wake_word = params[:wake_word]
        type.locale = params[:locale]
        type.setup_mode_disabled = params[:setup_mode_disabled]
        type.max_volume_limit = params[:max_volume_limit]
        type.pstn_enabled = params[:pstn_enabled]
        type.data_retention_opt_in = params[:data_retention_opt_in]
        type.meeting_room_configuration = UpdateMeetingRoomConfiguration.build(params[:meeting_room_configuration], context: "#{context}[:meeting_room_configuration]") unless params[:meeting_room_configuration].nil?
        type
      end
    end

    module UpdateProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProfileOutput, context: context)
        type = Types::UpdateProfileOutput.new
        type
      end
    end

    module UpdateRequireCheckIn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRequireCheckIn, context: context)
        type = Types::UpdateRequireCheckIn.new
        type.release_after_minutes = params[:release_after_minutes]
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoomInput, context: context)
        type = Types::UpdateRoomInput.new
        type.room_arn = params[:room_arn]
        type.room_name = params[:room_name]
        type.description = params[:description]
        type.provider_calendar_id = params[:provider_calendar_id]
        type.profile_arn = params[:profile_arn]
        type
      end
    end

    module UpdateRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoomOutput, context: context)
        type = Types::UpdateRoomOutput.new
        type
      end
    end

    module UpdateSkillGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSkillGroupInput, context: context)
        type = Types::UpdateSkillGroupInput.new
        type.skill_group_arn = params[:skill_group_arn]
        type.skill_group_name = params[:skill_group_name]
        type.description = params[:description]
        type
      end
    end

    module UpdateSkillGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSkillGroupOutput, context: context)
        type = Types::UpdateSkillGroupOutput.new
        type
      end
    end

    module UserData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserData, context: context)
        type = Types::UserData.new
        type.user_arn = params[:user_arn]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.email = params[:email]
        type.enrollment_status = params[:enrollment_status]
        type.enrollment_id = params[:enrollment_id]
        type
      end
    end

    module UserDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
