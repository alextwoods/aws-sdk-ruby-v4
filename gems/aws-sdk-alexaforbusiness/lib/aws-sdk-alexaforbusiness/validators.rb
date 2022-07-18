# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::AlexaForBusiness
  module Validators

    class AddressBook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddressBook, context: context)
        Hearth::Validator.validate!(input[:address_book_arn], ::String, context: "#{context}[:address_book_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class AddressBookData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddressBookData, context: context)
        Hearth::Validator.validate!(input[:address_book_arn], ::String, context: "#{context}[:address_book_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class AddressBookDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AddressBookData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApproveSkillInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApproveSkillInput, context: context)
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
      end
    end

    class ApproveSkillOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApproveSkillOutput, context: context)
      end
    end

    class AssociateContactWithAddressBookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateContactWithAddressBookInput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:address_book_arn], ::String, context: "#{context}[:address_book_arn]")
      end
    end

    class AssociateContactWithAddressBookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateContactWithAddressBookOutput, context: context)
      end
    end

    class AssociateDeviceWithNetworkProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDeviceWithNetworkProfileInput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:network_profile_arn], ::String, context: "#{context}[:network_profile_arn]")
      end
    end

    class AssociateDeviceWithNetworkProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDeviceWithNetworkProfileOutput, context: context)
      end
    end

    class AssociateDeviceWithRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDeviceWithRoomInput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
      end
    end

    class AssociateDeviceWithRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDeviceWithRoomOutput, context: context)
      end
    end

    class AssociateSkillGroupWithRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSkillGroupWithRoomInput, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
      end
    end

    class AssociateSkillGroupWithRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSkillGroupWithRoomOutput, context: context)
      end
    end

    class AssociateSkillWithSkillGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSkillWithSkillGroupInput, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
      end
    end

    class AssociateSkillWithSkillGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSkillWithSkillGroupOutput, context: context)
      end
    end

    class AssociateSkillWithUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSkillWithUsersInput, context: context)
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
      end
    end

    class AssociateSkillWithUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSkillWithUsersOutput, context: context)
      end
    end

    class Audio
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Audio, context: context)
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class AudioList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Audio.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuthorizationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class BulletPoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BusinessReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BusinessReport, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        BusinessReportS3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
        Hearth::Validator.validate!(input[:delivery_time], ::Time, context: "#{context}[:delivery_time]")
        Hearth::Validator.validate!(input[:download_url], ::String, context: "#{context}[:download_url]")
      end
    end

    class BusinessReportContentRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BusinessReportContentRange, context: context)
        Hearth::Validator.validate!(input[:interval], ::String, context: "#{context}[:interval]")
      end
    end

    class BusinessReportRecurrence
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BusinessReportRecurrence, context: context)
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
      end
    end

    class BusinessReportS3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BusinessReportS3Location, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
      end
    end

    class BusinessReportSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BusinessReportSchedule, context: context)
        Hearth::Validator.validate!(input[:schedule_arn], ::String, context: "#{context}[:schedule_arn]")
        Hearth::Validator.validate!(input[:schedule_name], ::String, context: "#{context}[:schedule_name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        BusinessReportContentRange.validate!(input[:content_range], context: "#{context}[:content_range]") unless input[:content_range].nil?
        BusinessReportRecurrence.validate!(input[:recurrence], context: "#{context}[:recurrence]") unless input[:recurrence].nil?
        BusinessReport.validate!(input[:last_business_report], context: "#{context}[:last_business_report]") unless input[:last_business_report].nil?
      end
    end

    class BusinessReportScheduleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BusinessReportSchedule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Category
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Category, context: context)
        Hearth::Validator.validate!(input[:category_id], ::Integer, context: "#{context}[:category_id]")
        Hearth::Validator.validate!(input[:category_name], ::String, context: "#{context}[:category_name]")
      end
    end

    class CategoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Category.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConferencePreference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConferencePreference, context: context)
        Hearth::Validator.validate!(input[:default_conference_provider_arn], ::String, context: "#{context}[:default_conference_provider_arn]")
      end
    end

    class ConferenceProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConferenceProvider, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        IPDialIn.validate!(input[:ip_dial_in], context: "#{context}[:ip_dial_in]") unless input[:ip_dial_in].nil?
        PSTNDialIn.validate!(input[:pstn_dial_in], context: "#{context}[:pstn_dial_in]") unless input[:pstn_dial_in].nil?
        MeetingSetting.validate!(input[:meeting_setting], context: "#{context}[:meeting_setting]") unless input[:meeting_setting].nil?
      end
    end

    class ConferenceProvidersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConferenceProvider.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Contact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Contact, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        PhoneNumberList.validate!(input[:phone_numbers], context: "#{context}[:phone_numbers]") unless input[:phone_numbers].nil?
        SipAddressList.validate!(input[:sip_addresses], context: "#{context}[:sip_addresses]") unless input[:sip_addresses].nil?
      end
    end

    class ContactData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContactData, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        PhoneNumberList.validate!(input[:phone_numbers], context: "#{context}[:phone_numbers]") unless input[:phone_numbers].nil?
        SipAddressList.validate!(input[:sip_addresses], context: "#{context}[:sip_addresses]") unless input[:sip_addresses].nil?
      end
    end

    class ContactDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContactData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Content
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Content, context: context)
        TextList.validate!(input[:text_list], context: "#{context}[:text_list]") unless input[:text_list].nil?
        SsmlList.validate!(input[:ssml_list], context: "#{context}[:ssml_list]") unless input[:ssml_list].nil?
        AudioList.validate!(input[:audio_list], context: "#{context}[:audio_list]") unless input[:audio_list].nil?
      end
    end

    class CreateAddressBookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAddressBookInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAddressBookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAddressBookOutput, context: context)
        Hearth::Validator.validate!(input[:address_book_arn], ::String, context: "#{context}[:address_book_arn]")
      end
    end

    class CreateBusinessReportScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBusinessReportScheduleInput, context: context)
        Hearth::Validator.validate!(input[:schedule_name], ::String, context: "#{context}[:schedule_name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        BusinessReportContentRange.validate!(input[:content_range], context: "#{context}[:content_range]") unless input[:content_range].nil?
        BusinessReportRecurrence.validate!(input[:recurrence], context: "#{context}[:recurrence]") unless input[:recurrence].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBusinessReportScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBusinessReportScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:schedule_arn], ::String, context: "#{context}[:schedule_arn]")
      end
    end

    class CreateConferenceProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConferenceProviderInput, context: context)
        Hearth::Validator.validate!(input[:conference_provider_name], ::String, context: "#{context}[:conference_provider_name]")
        Hearth::Validator.validate!(input[:conference_provider_type], ::String, context: "#{context}[:conference_provider_type]")
        IPDialIn.validate!(input[:ip_dial_in], context: "#{context}[:ip_dial_in]") unless input[:ip_dial_in].nil?
        PSTNDialIn.validate!(input[:pstn_dial_in], context: "#{context}[:pstn_dial_in]") unless input[:pstn_dial_in].nil?
        MeetingSetting.validate!(input[:meeting_setting], context: "#{context}[:meeting_setting]") unless input[:meeting_setting].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateConferenceProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConferenceProviderOutput, context: context)
        Hearth::Validator.validate!(input[:conference_provider_arn], ::String, context: "#{context}[:conference_provider_arn]")
      end
    end

    class CreateContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactInput, context: context)
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        PhoneNumberList.validate!(input[:phone_numbers], context: "#{context}[:phone_numbers]") unless input[:phone_numbers].nil?
        SipAddressList.validate!(input[:sip_addresses], context: "#{context}[:sip_addresses]") unless input[:sip_addresses].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContactOutput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
      end
    end

    class CreateEndOfMeetingReminder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndOfMeetingReminder, context: context)
        EndOfMeetingReminderMinutesList.validate!(input[:reminder_at_minutes], context: "#{context}[:reminder_at_minutes]") unless input[:reminder_at_minutes].nil?
        Hearth::Validator.validate!(input[:reminder_type], ::String, context: "#{context}[:reminder_type]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class CreateGatewayGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGatewayGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGatewayGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGatewayGroupOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_group_arn], ::String, context: "#{context}[:gateway_group_arn]")
      end
    end

    class CreateInstantBooking
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstantBooking, context: context)
        Hearth::Validator.validate!(input[:duration_in_minutes], ::Integer, context: "#{context}[:duration_in_minutes]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class CreateMeetingRoomConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingRoomConfiguration, context: context)
        Hearth::Validator.validate!(input[:room_utilization_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:room_utilization_metrics_enabled]")
        CreateEndOfMeetingReminder.validate!(input[:end_of_meeting_reminder], context: "#{context}[:end_of_meeting_reminder]") unless input[:end_of_meeting_reminder].nil?
        CreateInstantBooking.validate!(input[:instant_booking], context: "#{context}[:instant_booking]") unless input[:instant_booking].nil?
        CreateRequireCheckIn.validate!(input[:require_check_in], context: "#{context}[:require_check_in]") unless input[:require_check_in].nil?
      end
    end

    class CreateNetworkProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkProfileInput, context: context)
        Hearth::Validator.validate!(input[:network_profile_name], ::String, context: "#{context}[:network_profile_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:ssid], ::String, context: "#{context}[:ssid]")
        Hearth::Validator.validate!(input[:security_type], ::String, context: "#{context}[:security_type]")
        Hearth::Validator.validate!(input[:eap_method], ::String, context: "#{context}[:eap_method]")
        Hearth::Validator.validate!(input[:current_password], ::String, context: "#{context}[:current_password]")
        Hearth::Validator.validate!(input[:next_password], ::String, context: "#{context}[:next_password]")
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        TrustAnchorList.validate!(input[:trust_anchors], context: "#{context}[:trust_anchors]") unless input[:trust_anchors].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateNetworkProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkProfileOutput, context: context)
        Hearth::Validator.validate!(input[:network_profile_arn], ::String, context: "#{context}[:network_profile_arn]")
      end
    end

    class CreateProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProfileInput, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:distance_unit], ::String, context: "#{context}[:distance_unit]")
        Hearth::Validator.validate!(input[:temperature_unit], ::String, context: "#{context}[:temperature_unit]")
        Hearth::Validator.validate!(input[:wake_word], ::String, context: "#{context}[:wake_word]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:setup_mode_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:setup_mode_disabled]")
        Hearth::Validator.validate!(input[:max_volume_limit], ::Integer, context: "#{context}[:max_volume_limit]")
        Hearth::Validator.validate!(input[:pstn_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:pstn_enabled]")
        Hearth::Validator.validate!(input[:data_retention_opt_in], ::TrueClass, ::FalseClass, context: "#{context}[:data_retention_opt_in]")
        CreateMeetingRoomConfiguration.validate!(input[:meeting_room_configuration], context: "#{context}[:meeting_room_configuration]") unless input[:meeting_room_configuration].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProfileOutput, context: context)
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
      end
    end

    class CreateRequireCheckIn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRequireCheckIn, context: context)
        Hearth::Validator.validate!(input[:release_after_minutes], ::Integer, context: "#{context}[:release_after_minutes]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class CreateRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoomInput, context: context)
        Hearth::Validator.validate!(input[:room_name], ::String, context: "#{context}[:room_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
        Hearth::Validator.validate!(input[:provider_calendar_id], ::String, context: "#{context}[:provider_calendar_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoomOutput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
      end
    end

    class CreateSkillGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSkillGroupInput, context: context)
        Hearth::Validator.validate!(input[:skill_group_name], ::String, context: "#{context}[:skill_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSkillGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSkillGroupOutput, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class DeleteAddressBookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAddressBookInput, context: context)
        Hearth::Validator.validate!(input[:address_book_arn], ::String, context: "#{context}[:address_book_arn]")
      end
    end

    class DeleteAddressBookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAddressBookOutput, context: context)
      end
    end

    class DeleteBusinessReportScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBusinessReportScheduleInput, context: context)
        Hearth::Validator.validate!(input[:schedule_arn], ::String, context: "#{context}[:schedule_arn]")
      end
    end

    class DeleteBusinessReportScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBusinessReportScheduleOutput, context: context)
      end
    end

    class DeleteConferenceProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConferenceProviderInput, context: context)
        Hearth::Validator.validate!(input[:conference_provider_arn], ::String, context: "#{context}[:conference_provider_arn]")
      end
    end

    class DeleteConferenceProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConferenceProviderOutput, context: context)
      end
    end

    class DeleteContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
      end
    end

    class DeleteContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContactOutput, context: context)
      end
    end

    class DeleteDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceInput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
      end
    end

    class DeleteDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceOutput, context: context)
      end
    end

    class DeleteDeviceUsageDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceUsageDataInput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:device_usage_type], ::String, context: "#{context}[:device_usage_type]")
      end
    end

    class DeleteDeviceUsageDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceUsageDataOutput, context: context)
      end
    end

    class DeleteGatewayGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayGroupInput, context: context)
        Hearth::Validator.validate!(input[:gateway_group_arn], ::String, context: "#{context}[:gateway_group_arn]")
      end
    end

    class DeleteGatewayGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayGroupOutput, context: context)
      end
    end

    class DeleteNetworkProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkProfileInput, context: context)
        Hearth::Validator.validate!(input[:network_profile_arn], ::String, context: "#{context}[:network_profile_arn]")
      end
    end

    class DeleteNetworkProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkProfileOutput, context: context)
      end
    end

    class DeleteProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfileInput, context: context)
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
      end
    end

    class DeleteProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfileOutput, context: context)
      end
    end

    class DeleteRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoomInput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
      end
    end

    class DeleteRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoomOutput, context: context)
      end
    end

    class DeleteRoomSkillParameterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoomSkillParameterInput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
        Hearth::Validator.validate!(input[:parameter_key], ::String, context: "#{context}[:parameter_key]")
      end
    end

    class DeleteRoomSkillParameterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoomSkillParameterOutput, context: context)
      end
    end

    class DeleteSkillAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSkillAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
      end
    end

    class DeleteSkillAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSkillAuthorizationOutput, context: context)
      end
    end

    class DeleteSkillGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSkillGroupInput, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
      end
    end

    class DeleteSkillGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSkillGroupOutput, context: context)
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:enrollment_id], ::String, context: "#{context}[:enrollment_id]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
      end
    end

    class DeveloperInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeveloperInfo, context: context)
        Hearth::Validator.validate!(input[:developer_name], ::String, context: "#{context}[:developer_name]")
        Hearth::Validator.validate!(input[:privacy_policy], ::String, context: "#{context}[:privacy_policy]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class Device
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Device, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:device_serial_number], ::String, context: "#{context}[:device_serial_number]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:software_version], ::String, context: "#{context}[:software_version]")
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:device_status], ::String, context: "#{context}[:device_status]")
        DeviceStatusInfo.validate!(input[:device_status_info], context: "#{context}[:device_status_info]") unless input[:device_status_info].nil?
        DeviceNetworkProfileInfo.validate!(input[:network_profile_info], context: "#{context}[:network_profile_info]") unless input[:network_profile_info].nil?
      end
    end

    class DeviceData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceData, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:device_serial_number], ::String, context: "#{context}[:device_serial_number]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:software_version], ::String, context: "#{context}[:software_version]")
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
        Hearth::Validator.validate!(input[:device_status], ::String, context: "#{context}[:device_status]")
        Hearth::Validator.validate!(input[:network_profile_arn], ::String, context: "#{context}[:network_profile_arn]")
        Hearth::Validator.validate!(input[:network_profile_name], ::String, context: "#{context}[:network_profile_name]")
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:room_name], ::String, context: "#{context}[:room_name]")
        DeviceStatusInfo.validate!(input[:device_status_info], context: "#{context}[:device_status_info]") unless input[:device_status_info].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class DeviceDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceEvent, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class DeviceEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceNetworkProfileInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceNetworkProfileInfo, context: context)
        Hearth::Validator.validate!(input[:network_profile_arn], ::String, context: "#{context}[:network_profile_arn]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_expiration_time], ::Time, context: "#{context}[:certificate_expiration_time]")
      end
    end

    class DeviceNotRegisteredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceNotRegisteredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeviceStatusDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceStatusDetail, context: context)
        Hearth::Validator.validate!(input[:feature], ::String, context: "#{context}[:feature]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class DeviceStatusDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceStatusDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceStatusInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceStatusInfo, context: context)
        DeviceStatusDetails.validate!(input[:device_status_details], context: "#{context}[:device_status_details]") unless input[:device_status_details].nil?
        Hearth::Validator.validate!(input[:connection_status], ::String, context: "#{context}[:connection_status]")
        Hearth::Validator.validate!(input[:connection_status_updated_time], ::Time, context: "#{context}[:connection_status_updated_time]")
      end
    end

    class DisassociateContactFromAddressBookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateContactFromAddressBookInput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:address_book_arn], ::String, context: "#{context}[:address_book_arn]")
      end
    end

    class DisassociateContactFromAddressBookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateContactFromAddressBookOutput, context: context)
      end
    end

    class DisassociateDeviceFromRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDeviceFromRoomInput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
      end
    end

    class DisassociateDeviceFromRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDeviceFromRoomOutput, context: context)
      end
    end

    class DisassociateSkillFromSkillGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSkillFromSkillGroupInput, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
      end
    end

    class DisassociateSkillFromSkillGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSkillFromSkillGroupOutput, context: context)
      end
    end

    class DisassociateSkillFromUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSkillFromUsersInput, context: context)
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
      end
    end

    class DisassociateSkillFromUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSkillFromUsersOutput, context: context)
      end
    end

    class DisassociateSkillGroupFromRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSkillGroupFromRoomInput, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
      end
    end

    class DisassociateSkillGroupFromRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSkillGroupFromRoomOutput, context: context)
      end
    end

    class EndOfMeetingReminder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndOfMeetingReminder, context: context)
        EndOfMeetingReminderMinutesList.validate!(input[:reminder_at_minutes], context: "#{context}[:reminder_at_minutes]") unless input[:reminder_at_minutes].nil?
        Hearth::Validator.validate!(input[:reminder_type], ::String, context: "#{context}[:reminder_type]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class EndOfMeetingReminderMinutesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class Features
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ForgetSmartHomeAppliancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForgetSmartHomeAppliancesInput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
      end
    end

    class ForgetSmartHomeAppliancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForgetSmartHomeAppliancesOutput, context: context)
      end
    end

    class Gateway
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Gateway, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:gateway_group_arn], ::String, context: "#{context}[:gateway_group_arn]")
        Hearth::Validator.validate!(input[:software_version], ::String, context: "#{context}[:software_version]")
      end
    end

    class GatewayGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayGroup, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class GatewayGroupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GatewayGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GatewayGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayGroupSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class GatewaySummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GatewaySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GatewaySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewaySummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:gateway_group_arn], ::String, context: "#{context}[:gateway_group_arn]")
        Hearth::Validator.validate!(input[:software_version], ::String, context: "#{context}[:software_version]")
      end
    end

    class GenericKeywords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetAddressBookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAddressBookInput, context: context)
        Hearth::Validator.validate!(input[:address_book_arn], ::String, context: "#{context}[:address_book_arn]")
      end
    end

    class GetAddressBookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAddressBookOutput, context: context)
        AddressBook.validate!(input[:address_book], context: "#{context}[:address_book]") unless input[:address_book].nil?
      end
    end

    class GetConferencePreferenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConferencePreferenceInput, context: context)
      end
    end

    class GetConferencePreferenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConferencePreferenceOutput, context: context)
        ConferencePreference.validate!(input[:preference], context: "#{context}[:preference]") unless input[:preference].nil?
      end
    end

    class GetConferenceProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConferenceProviderInput, context: context)
        Hearth::Validator.validate!(input[:conference_provider_arn], ::String, context: "#{context}[:conference_provider_arn]")
      end
    end

    class GetConferenceProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConferenceProviderOutput, context: context)
        ConferenceProvider.validate!(input[:conference_provider], context: "#{context}[:conference_provider]") unless input[:conference_provider].nil?
      end
    end

    class GetContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
      end
    end

    class GetContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContactOutput, context: context)
        Contact.validate!(input[:contact], context: "#{context}[:contact]") unless input[:contact].nil?
      end
    end

    class GetDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceInput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
      end
    end

    class GetDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceOutput, context: context)
        Device.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
      end
    end

    class GetGatewayGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGatewayGroupInput, context: context)
        Hearth::Validator.validate!(input[:gateway_group_arn], ::String, context: "#{context}[:gateway_group_arn]")
      end
    end

    class GetGatewayGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGatewayGroupOutput, context: context)
        GatewayGroup.validate!(input[:gateway_group], context: "#{context}[:gateway_group]") unless input[:gateway_group].nil?
      end
    end

    class GetGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class GetGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGatewayOutput, context: context)
        Gateway.validate!(input[:gateway], context: "#{context}[:gateway]") unless input[:gateway].nil?
      end
    end

    class GetInvitationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvitationConfigurationInput, context: context)
      end
    end

    class GetInvitationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvitationConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:organization_name], ::String, context: "#{context}[:organization_name]")
        Hearth::Validator.validate!(input[:contact_email], ::String, context: "#{context}[:contact_email]")
        ShortSkillIdList.validate!(input[:private_skill_ids], context: "#{context}[:private_skill_ids]") unless input[:private_skill_ids].nil?
      end
    end

    class GetNetworkProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkProfileInput, context: context)
        Hearth::Validator.validate!(input[:network_profile_arn], ::String, context: "#{context}[:network_profile_arn]")
      end
    end

    class GetNetworkProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkProfileOutput, context: context)
        NetworkProfile.validate!(input[:network_profile], context: "#{context}[:network_profile]") unless input[:network_profile].nil?
      end
    end

    class GetProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProfileInput, context: context)
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
      end
    end

    class GetProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProfileOutput, context: context)
        Profile.validate!(input[:profile], context: "#{context}[:profile]") unless input[:profile].nil?
      end
    end

    class GetRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoomInput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
      end
    end

    class GetRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoomOutput, context: context)
        Room.validate!(input[:room], context: "#{context}[:room]") unless input[:room].nil?
      end
    end

    class GetRoomSkillParameterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoomSkillParameterInput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
        Hearth::Validator.validate!(input[:parameter_key], ::String, context: "#{context}[:parameter_key]")
      end
    end

    class GetRoomSkillParameterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoomSkillParameterOutput, context: context)
        RoomSkillParameter.validate!(input[:room_skill_parameter], context: "#{context}[:room_skill_parameter]") unless input[:room_skill_parameter].nil?
      end
    end

    class GetSkillGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSkillGroupInput, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
      end
    end

    class GetSkillGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSkillGroupOutput, context: context)
        SkillGroup.validate!(input[:skill_group], context: "#{context}[:skill_group]") unless input[:skill_group].nil?
      end
    end

    class IPDialIn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IPDialIn, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:comms_protocol], ::String, context: "#{context}[:comms_protocol]")
      end
    end

    class InstantBooking
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstantBooking, context: context)
        Hearth::Validator.validate!(input[:duration_in_minutes], ::Integer, context: "#{context}[:duration_in_minutes]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class InvalidCertificateAuthorityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCertificateAuthorityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeviceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeviceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSecretsManagerResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSecretsManagerResourceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidServiceLinkedRoleStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidServiceLinkedRoleStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUserStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUserStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListBusinessReportSchedulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBusinessReportSchedulesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBusinessReportSchedulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBusinessReportSchedulesOutput, context: context)
        BusinessReportScheduleList.validate!(input[:business_report_schedules], context: "#{context}[:business_report_schedules]") unless input[:business_report_schedules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConferenceProvidersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConferenceProvidersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListConferenceProvidersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConferenceProvidersOutput, context: context)
        ConferenceProvidersList.validate!(input[:conference_providers], context: "#{context}[:conference_providers]") unless input[:conference_providers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeviceEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceEventsInput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDeviceEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceEventsOutput, context: context)
        DeviceEventList.validate!(input[:device_events], context: "#{context}[:device_events]") unless input[:device_events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGatewayGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewayGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListGatewayGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewayGroupsOutput, context: context)
        GatewayGroupSummaries.validate!(input[:gateway_groups], context: "#{context}[:gateway_groups]") unless input[:gateway_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewaysInput, context: context)
        Hearth::Validator.validate!(input[:gateway_group_arn], ::String, context: "#{context}[:gateway_group_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListGatewaysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewaysOutput, context: context)
        GatewaySummaries.validate!(input[:gateways], context: "#{context}[:gateways]") unless input[:gateways].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSkillsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSkillsInput, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
        Hearth::Validator.validate!(input[:enablement_type], ::String, context: "#{context}[:enablement_type]")
        Hearth::Validator.validate!(input[:skill_type], ::String, context: "#{context}[:skill_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSkillsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSkillsOutput, context: context)
        SkillSummaryList.validate!(input[:skill_summaries], context: "#{context}[:skill_summaries]") unless input[:skill_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSkillsStoreCategoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSkillsStoreCategoriesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSkillsStoreCategoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSkillsStoreCategoriesOutput, context: context)
        CategoryList.validate!(input[:category_list], context: "#{context}[:category_list]") unless input[:category_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSkillsStoreSkillsByCategoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSkillsStoreSkillsByCategoryInput, context: context)
        Hearth::Validator.validate!(input[:category_id], ::Integer, context: "#{context}[:category_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSkillsStoreSkillsByCategoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSkillsStoreSkillsByCategoryOutput, context: context)
        SkillsStoreSkillList.validate!(input[:skills_store_skills], context: "#{context}[:skills_store_skills]") unless input[:skills_store_skills].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSmartHomeAppliancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSmartHomeAppliancesInput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSmartHomeAppliancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSmartHomeAppliancesOutput, context: context)
        SmartHomeApplianceList.validate!(input[:smart_home_appliances], context: "#{context}[:smart_home_appliances]") unless input[:smart_home_appliances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MeetingRoomConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeetingRoomConfiguration, context: context)
        Hearth::Validator.validate!(input[:room_utilization_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:room_utilization_metrics_enabled]")
        EndOfMeetingReminder.validate!(input[:end_of_meeting_reminder], context: "#{context}[:end_of_meeting_reminder]") unless input[:end_of_meeting_reminder].nil?
        InstantBooking.validate!(input[:instant_booking], context: "#{context}[:instant_booking]") unless input[:instant_booking].nil?
        RequireCheckIn.validate!(input[:require_check_in], context: "#{context}[:require_check_in]") unless input[:require_check_in].nil?
      end
    end

    class MeetingSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeetingSetting, context: context)
        Hearth::Validator.validate!(input[:require_pin], ::String, context: "#{context}[:require_pin]")
      end
    end

    class NameInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NameInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NetworkProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkProfile, context: context)
        Hearth::Validator.validate!(input[:network_profile_arn], ::String, context: "#{context}[:network_profile_arn]")
        Hearth::Validator.validate!(input[:network_profile_name], ::String, context: "#{context}[:network_profile_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:ssid], ::String, context: "#{context}[:ssid]")
        Hearth::Validator.validate!(input[:security_type], ::String, context: "#{context}[:security_type]")
        Hearth::Validator.validate!(input[:eap_method], ::String, context: "#{context}[:eap_method]")
        Hearth::Validator.validate!(input[:current_password], ::String, context: "#{context}[:current_password]")
        Hearth::Validator.validate!(input[:next_password], ::String, context: "#{context}[:next_password]")
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        TrustAnchorList.validate!(input[:trust_anchors], context: "#{context}[:trust_anchors]") unless input[:trust_anchors].nil?
      end
    end

    class NetworkProfileData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkProfileData, context: context)
        Hearth::Validator.validate!(input[:network_profile_arn], ::String, context: "#{context}[:network_profile_arn]")
        Hearth::Validator.validate!(input[:network_profile_name], ::String, context: "#{context}[:network_profile_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:ssid], ::String, context: "#{context}[:ssid]")
        Hearth::Validator.validate!(input[:security_type], ::String, context: "#{context}[:security_type]")
        Hearth::Validator.validate!(input[:eap_method], ::String, context: "#{context}[:eap_method]")
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
      end
    end

    class NetworkProfileDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkProfileData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NewInThisVersionBulletPoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PSTNDialIn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PSTNDialIn, context: context)
        Hearth::Validator.validate!(input[:country_code], ::String, context: "#{context}[:country_code]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:one_click_id_delay], ::String, context: "#{context}[:one_click_id_delay]")
        Hearth::Validator.validate!(input[:one_click_pin_delay], ::String, context: "#{context}[:one_click_pin_delay]")
      end
    end

    class PhoneNumber
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumber, context: context)
        Hearth::Validator.validate!(input[:number], ::String, context: "#{context}[:number]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class PhoneNumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhoneNumber.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Profile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Profile, context: context)
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:distance_unit], ::String, context: "#{context}[:distance_unit]")
        Hearth::Validator.validate!(input[:temperature_unit], ::String, context: "#{context}[:temperature_unit]")
        Hearth::Validator.validate!(input[:wake_word], ::String, context: "#{context}[:wake_word]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:setup_mode_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:setup_mode_disabled]")
        Hearth::Validator.validate!(input[:max_volume_limit], ::Integer, context: "#{context}[:max_volume_limit]")
        Hearth::Validator.validate!(input[:pstn_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:pstn_enabled]")
        Hearth::Validator.validate!(input[:data_retention_opt_in], ::TrueClass, ::FalseClass, context: "#{context}[:data_retention_opt_in]")
        Hearth::Validator.validate!(input[:address_book_arn], ::String, context: "#{context}[:address_book_arn]")
        MeetingRoomConfiguration.validate!(input[:meeting_room_configuration], context: "#{context}[:meeting_room_configuration]") unless input[:meeting_room_configuration].nil?
      end
    end

    class ProfileData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProfileData, context: context)
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:distance_unit], ::String, context: "#{context}[:distance_unit]")
        Hearth::Validator.validate!(input[:temperature_unit], ::String, context: "#{context}[:temperature_unit]")
        Hearth::Validator.validate!(input[:wake_word], ::String, context: "#{context}[:wake_word]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
      end
    end

    class ProfileDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProfileData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutConferencePreferenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConferencePreferenceInput, context: context)
        ConferencePreference.validate!(input[:conference_preference], context: "#{context}[:conference_preference]") unless input[:conference_preference].nil?
      end
    end

    class PutConferencePreferenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConferencePreferenceOutput, context: context)
      end
    end

    class PutInvitationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInvitationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:organization_name], ::String, context: "#{context}[:organization_name]")
        Hearth::Validator.validate!(input[:contact_email], ::String, context: "#{context}[:contact_email]")
        ShortSkillIdList.validate!(input[:private_skill_ids], context: "#{context}[:private_skill_ids]") unless input[:private_skill_ids].nil?
      end
    end

    class PutInvitationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInvitationConfigurationOutput, context: context)
      end
    end

    class PutRoomSkillParameterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRoomSkillParameterInput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
        RoomSkillParameter.validate!(input[:room_skill_parameter], context: "#{context}[:room_skill_parameter]") unless input[:room_skill_parameter].nil?
      end
    end

    class PutRoomSkillParameterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRoomSkillParameterOutput, context: context)
      end
    end

    class PutSkillAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSkillAuthorizationInput, context: context)
        AuthorizationResult.validate!(input[:authorization_result], context: "#{context}[:authorization_result]") unless input[:authorization_result].nil?
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
      end
    end

    class PutSkillAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSkillAuthorizationOutput, context: context)
      end
    end

    class RegisterAVSDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterAVSDeviceInput, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:user_code], ::String, context: "#{context}[:user_code]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:device_serial_number], ::String, context: "#{context}[:device_serial_number]")
        Hearth::Validator.validate!(input[:amazon_id], ::String, context: "#{context}[:amazon_id]")
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RegisterAVSDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterAVSDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
      end
    end

    class RejectSkillInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectSkillInput, context: context)
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
      end
    end

    class RejectSkillOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectSkillOutput, context: context)
      end
    end

    class RequireCheckIn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequireCheckIn, context: context)
        Hearth::Validator.validate!(input[:release_after_minutes], ::Integer, context: "#{context}[:release_after_minutes]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ResolveRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveRoomInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
      end
    end

    class ResolveRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveRoomOutput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:room_name], ::String, context: "#{context}[:room_name]")
        RoomSkillParameters.validate!(input[:room_skill_parameters], context: "#{context}[:room_skill_parameters]") unless input[:room_skill_parameters].nil?
      end
    end

    class ResourceAssociatedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAssociatedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class Reviews
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RevokeInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeInvitationInput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:enrollment_id], ::String, context: "#{context}[:enrollment_id]")
      end
    end

    class RevokeInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeInvitationOutput, context: context)
      end
    end

    class Room
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Room, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:room_name], ::String, context: "#{context}[:room_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:provider_calendar_id], ::String, context: "#{context}[:provider_calendar_id]")
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
      end
    end

    class RoomData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoomData, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:room_name], ::String, context: "#{context}[:room_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:provider_calendar_id], ::String, context: "#{context}[:provider_calendar_id]")
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
      end
    end

    class RoomDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoomData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RoomSkillParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoomSkillParameter, context: context)
        Hearth::Validator.validate!(input[:parameter_key], ::String, context: "#{context}[:parameter_key]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
      end
    end

    class RoomSkillParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoomSkillParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SampleUtterances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SearchAddressBooksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchAddressBooksInput, context: context)
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        SortList.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class SearchAddressBooksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchAddressBooksOutput, context: context)
        AddressBookDataList.validate!(input[:address_books], context: "#{context}[:address_books]") unless input[:address_books].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class SearchContactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchContactsInput, context: context)
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        SortList.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class SearchContactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchContactsOutput, context: context)
        ContactDataList.validate!(input[:contacts], context: "#{context}[:contacts]") unless input[:contacts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class SearchDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchDevicesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        SortList.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class SearchDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchDevicesOutput, context: context)
        DeviceDataList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class SearchNetworkProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchNetworkProfilesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        SortList.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class SearchNetworkProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchNetworkProfilesOutput, context: context)
        NetworkProfileDataList.validate!(input[:network_profiles], context: "#{context}[:network_profiles]") unless input[:network_profiles].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class SearchProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchProfilesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        SortList.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class SearchProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchProfilesOutput, context: context)
        ProfileDataList.validate!(input[:profiles], context: "#{context}[:profiles]") unless input[:profiles].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class SearchRoomsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchRoomsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        SortList.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class SearchRoomsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchRoomsOutput, context: context)
        RoomDataList.validate!(input[:rooms], context: "#{context}[:rooms]") unless input[:rooms].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class SearchSkillGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSkillGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        SortList.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class SearchSkillGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSkillGroupsOutput, context: context)
        SkillGroupDataList.validate!(input[:skill_groups], context: "#{context}[:skill_groups]") unless input[:skill_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class SearchUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchUsersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        SortList.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
      end
    end

    class SearchUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchUsersOutput, context: context)
        UserDataList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class SendAnnouncementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendAnnouncementInput, context: context)
        FilterList.validate!(input[:room_filters], context: "#{context}[:room_filters]") unless input[:room_filters].nil?
        Content.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Hearth::Validator.validate!(input[:time_to_live_in_seconds], ::Integer, context: "#{context}[:time_to_live_in_seconds]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class SendAnnouncementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendAnnouncementOutput, context: context)
        Hearth::Validator.validate!(input[:announcement_arn], ::String, context: "#{context}[:announcement_arn]")
      end
    end

    class SendInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendInvitationInput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class SendInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendInvitationOutput, context: context)
      end
    end

    class ShortSkillIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SipAddress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SipAddress, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class SipAddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SipAddress.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SkillDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SkillDetails, context: context)
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Hearth::Validator.validate!(input[:invocation_phrase], ::String, context: "#{context}[:invocation_phrase]")
        Hearth::Validator.validate!(input[:release_date], ::String, context: "#{context}[:release_date]")
        Hearth::Validator.validate!(input[:end_user_license_agreement], ::String, context: "#{context}[:end_user_license_agreement]")
        GenericKeywords.validate!(input[:generic_keywords], context: "#{context}[:generic_keywords]") unless input[:generic_keywords].nil?
        BulletPoints.validate!(input[:bullet_points], context: "#{context}[:bullet_points]") unless input[:bullet_points].nil?
        NewInThisVersionBulletPoints.validate!(input[:new_in_this_version_bullet_points], context: "#{context}[:new_in_this_version_bullet_points]") unless input[:new_in_this_version_bullet_points].nil?
        SkillTypes.validate!(input[:skill_types], context: "#{context}[:skill_types]") unless input[:skill_types].nil?
        Reviews.validate!(input[:reviews], context: "#{context}[:reviews]") unless input[:reviews].nil?
        DeveloperInfo.validate!(input[:developer_info], context: "#{context}[:developer_info]") unless input[:developer_info].nil?
      end
    end

    class SkillGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SkillGroup, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
        Hearth::Validator.validate!(input[:skill_group_name], ::String, context: "#{context}[:skill_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class SkillGroupData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SkillGroupData, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
        Hearth::Validator.validate!(input[:skill_group_name], ::String, context: "#{context}[:skill_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class SkillGroupDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SkillGroupData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SkillNotLinkedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SkillNotLinkedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SkillSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SkillSummary, context: context)
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
        Hearth::Validator.validate!(input[:skill_name], ::String, context: "#{context}[:skill_name]")
        Hearth::Validator.validate!(input[:supports_linking], ::TrueClass, ::FalseClass, context: "#{context}[:supports_linking]")
        Hearth::Validator.validate!(input[:enablement_type], ::String, context: "#{context}[:enablement_type]")
        Hearth::Validator.validate!(input[:skill_type], ::String, context: "#{context}[:skill_type]")
      end
    end

    class SkillSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SkillSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SkillTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SkillsStoreSkill
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SkillsStoreSkill, context: context)
        Hearth::Validator.validate!(input[:skill_id], ::String, context: "#{context}[:skill_id]")
        Hearth::Validator.validate!(input[:skill_name], ::String, context: "#{context}[:skill_name]")
        Hearth::Validator.validate!(input[:short_description], ::String, context: "#{context}[:short_description]")
        Hearth::Validator.validate!(input[:icon_url], ::String, context: "#{context}[:icon_url]")
        SampleUtterances.validate!(input[:sample_utterances], context: "#{context}[:sample_utterances]") unless input[:sample_utterances].nil?
        SkillDetails.validate!(input[:skill_details], context: "#{context}[:skill_details]") unless input[:skill_details].nil?
        Hearth::Validator.validate!(input[:supports_linking], ::TrueClass, ::FalseClass, context: "#{context}[:supports_linking]")
      end
    end

    class SkillsStoreSkillList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SkillsStoreSkill.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SmartHomeAppliance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SmartHomeAppliance, context: context)
        Hearth::Validator.validate!(input[:friendly_name], ::String, context: "#{context}[:friendly_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:manufacturer_name], ::String, context: "#{context}[:manufacturer_name]")
      end
    end

    class SmartHomeApplianceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SmartHomeAppliance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Sort
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Sort, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SortList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Sort.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Ssml
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ssml, context: context)
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SsmlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Ssml.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartDeviceSyncInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeviceSyncInput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Features.validate!(input[:features], context: "#{context}[:features]") unless input[:features].nil?
      end
    end

    class StartDeviceSyncOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeviceSyncOutput, context: context)
      end
    end

    class StartSmartHomeApplianceDiscoveryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSmartHomeApplianceDiscoveryInput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
      end
    end

    class StartSmartHomeApplianceDiscoveryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSmartHomeApplianceDiscoveryOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Text
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Text, context: context)
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TextList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Text.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrustAnchorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAddressBookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAddressBookInput, context: context)
        Hearth::Validator.validate!(input[:address_book_arn], ::String, context: "#{context}[:address_book_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateAddressBookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAddressBookOutput, context: context)
      end
    end

    class UpdateBusinessReportScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBusinessReportScheduleInput, context: context)
        Hearth::Validator.validate!(input[:schedule_arn], ::String, context: "#{context}[:schedule_arn]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:schedule_name], ::String, context: "#{context}[:schedule_name]")
        BusinessReportRecurrence.validate!(input[:recurrence], context: "#{context}[:recurrence]") unless input[:recurrence].nil?
      end
    end

    class UpdateBusinessReportScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBusinessReportScheduleOutput, context: context)
      end
    end

    class UpdateConferenceProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConferenceProviderInput, context: context)
        Hearth::Validator.validate!(input[:conference_provider_arn], ::String, context: "#{context}[:conference_provider_arn]")
        Hearth::Validator.validate!(input[:conference_provider_type], ::String, context: "#{context}[:conference_provider_type]")
        IPDialIn.validate!(input[:ip_dial_in], context: "#{context}[:ip_dial_in]") unless input[:ip_dial_in].nil?
        PSTNDialIn.validate!(input[:pstn_dial_in], context: "#{context}[:pstn_dial_in]") unless input[:pstn_dial_in].nil?
        MeetingSetting.validate!(input[:meeting_setting], context: "#{context}[:meeting_setting]") unless input[:meeting_setting].nil?
      end
    end

    class UpdateConferenceProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConferenceProviderOutput, context: context)
      end
    end

    class UpdateContactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactInput, context: context)
        Hearth::Validator.validate!(input[:contact_arn], ::String, context: "#{context}[:contact_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        PhoneNumberList.validate!(input[:phone_numbers], context: "#{context}[:phone_numbers]") unless input[:phone_numbers].nil?
        SipAddressList.validate!(input[:sip_addresses], context: "#{context}[:sip_addresses]") unless input[:sip_addresses].nil?
      end
    end

    class UpdateContactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContactOutput, context: context)
      end
    end

    class UpdateDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceInput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
      end
    end

    class UpdateDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceOutput, context: context)
      end
    end

    class UpdateEndOfMeetingReminder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndOfMeetingReminder, context: context)
        EndOfMeetingReminderMinutesList.validate!(input[:reminder_at_minutes], context: "#{context}[:reminder_at_minutes]") unless input[:reminder_at_minutes].nil?
        Hearth::Validator.validate!(input[:reminder_type], ::String, context: "#{context}[:reminder_type]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateGatewayGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayGroupInput, context: context)
        Hearth::Validator.validate!(input[:gateway_group_arn], ::String, context: "#{context}[:gateway_group_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateGatewayGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayGroupOutput, context: context)
      end
    end

    class UpdateGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:software_version], ::String, context: "#{context}[:software_version]")
      end
    end

    class UpdateGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayOutput, context: context)
      end
    end

    class UpdateInstantBooking
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstantBooking, context: context)
        Hearth::Validator.validate!(input[:duration_in_minutes], ::Integer, context: "#{context}[:duration_in_minutes]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateMeetingRoomConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMeetingRoomConfiguration, context: context)
        Hearth::Validator.validate!(input[:room_utilization_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:room_utilization_metrics_enabled]")
        UpdateEndOfMeetingReminder.validate!(input[:end_of_meeting_reminder], context: "#{context}[:end_of_meeting_reminder]") unless input[:end_of_meeting_reminder].nil?
        UpdateInstantBooking.validate!(input[:instant_booking], context: "#{context}[:instant_booking]") unless input[:instant_booking].nil?
        UpdateRequireCheckIn.validate!(input[:require_check_in], context: "#{context}[:require_check_in]") unless input[:require_check_in].nil?
      end
    end

    class UpdateNetworkProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkProfileInput, context: context)
        Hearth::Validator.validate!(input[:network_profile_arn], ::String, context: "#{context}[:network_profile_arn]")
        Hearth::Validator.validate!(input[:network_profile_name], ::String, context: "#{context}[:network_profile_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:current_password], ::String, context: "#{context}[:current_password]")
        Hearth::Validator.validate!(input[:next_password], ::String, context: "#{context}[:next_password]")
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        TrustAnchorList.validate!(input[:trust_anchors], context: "#{context}[:trust_anchors]") unless input[:trust_anchors].nil?
      end
    end

    class UpdateNetworkProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkProfileOutput, context: context)
      end
    end

    class UpdateProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProfileInput, context: context)
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:distance_unit], ::String, context: "#{context}[:distance_unit]")
        Hearth::Validator.validate!(input[:temperature_unit], ::String, context: "#{context}[:temperature_unit]")
        Hearth::Validator.validate!(input[:wake_word], ::String, context: "#{context}[:wake_word]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:setup_mode_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:setup_mode_disabled]")
        Hearth::Validator.validate!(input[:max_volume_limit], ::Integer, context: "#{context}[:max_volume_limit]")
        Hearth::Validator.validate!(input[:pstn_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:pstn_enabled]")
        Hearth::Validator.validate!(input[:data_retention_opt_in], ::TrueClass, ::FalseClass, context: "#{context}[:data_retention_opt_in]")
        UpdateMeetingRoomConfiguration.validate!(input[:meeting_room_configuration], context: "#{context}[:meeting_room_configuration]") unless input[:meeting_room_configuration].nil?
      end
    end

    class UpdateProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProfileOutput, context: context)
      end
    end

    class UpdateRequireCheckIn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRequireCheckIn, context: context)
        Hearth::Validator.validate!(input[:release_after_minutes], ::Integer, context: "#{context}[:release_after_minutes]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoomInput, context: context)
        Hearth::Validator.validate!(input[:room_arn], ::String, context: "#{context}[:room_arn]")
        Hearth::Validator.validate!(input[:room_name], ::String, context: "#{context}[:room_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:provider_calendar_id], ::String, context: "#{context}[:provider_calendar_id]")
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
      end
    end

    class UpdateRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoomOutput, context: context)
      end
    end

    class UpdateSkillGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSkillGroupInput, context: context)
        Hearth::Validator.validate!(input[:skill_group_arn], ::String, context: "#{context}[:skill_group_arn]")
        Hearth::Validator.validate!(input[:skill_group_name], ::String, context: "#{context}[:skill_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateSkillGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSkillGroupOutput, context: context)
      end
    end

    class UserData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserData, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:enrollment_status], ::String, context: "#{context}[:enrollment_status]")
        Hearth::Validator.validate!(input[:enrollment_id], ::String, context: "#{context}[:enrollment_id]")
      end
    end

    class UserDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
