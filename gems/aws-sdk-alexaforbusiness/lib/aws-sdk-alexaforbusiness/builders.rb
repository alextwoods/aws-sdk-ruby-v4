# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AlexaForBusiness
  module Builders

    # Operation Builder for ApproveSkill
    class ApproveSkill
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ApproveSkill'
        data = {}
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateContactWithAddressBook
    class AssociateContactWithAddressBook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.AssociateContactWithAddressBook'
        data = {}
        data['ContactArn'] = input[:contact_arn] unless input[:contact_arn].nil?
        data['AddressBookArn'] = input[:address_book_arn] unless input[:address_book_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateDeviceWithNetworkProfile
    class AssociateDeviceWithNetworkProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.AssociateDeviceWithNetworkProfile'
        data = {}
        data['DeviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        data['NetworkProfileArn'] = input[:network_profile_arn] unless input[:network_profile_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateDeviceWithRoom
    class AssociateDeviceWithRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.AssociateDeviceWithRoom'
        data = {}
        data['DeviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateSkillGroupWithRoom
    class AssociateSkillGroupWithRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.AssociateSkillGroupWithRoom'
        data = {}
        data['SkillGroupArn'] = input[:skill_group_arn] unless input[:skill_group_arn].nil?
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateSkillWithSkillGroup
    class AssociateSkillWithSkillGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.AssociateSkillWithSkillGroup'
        data = {}
        data['SkillGroupArn'] = input[:skill_group_arn] unless input[:skill_group_arn].nil?
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateSkillWithUsers
    class AssociateSkillWithUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.AssociateSkillWithUsers'
        data = {}
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAddressBook
    class CreateAddressBook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.CreateAddressBook'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateBusinessReportSchedule
    class CreateBusinessReportSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.CreateBusinessReportSchedule'
        data = {}
        data['ScheduleName'] = input[:schedule_name] unless input[:schedule_name].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['ContentRange'] = BusinessReportContentRange.build(input[:content_range]) unless input[:content_range].nil?
        data['Recurrence'] = BusinessReportRecurrence.build(input[:recurrence]) unless input[:recurrence].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BusinessReportRecurrence
    class BusinessReportRecurrence
      def self.build(input)
        data = {}
        data['StartDate'] = input[:start_date] unless input[:start_date].nil?
        data
      end
    end

    # Structure Builder for BusinessReportContentRange
    class BusinessReportContentRange
      def self.build(input)
        data = {}
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data
      end
    end

    # Operation Builder for CreateConferenceProvider
    class CreateConferenceProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.CreateConferenceProvider'
        data = {}
        data['ConferenceProviderName'] = input[:conference_provider_name] unless input[:conference_provider_name].nil?
        data['ConferenceProviderType'] = input[:conference_provider_type] unless input[:conference_provider_type].nil?
        data['IPDialIn'] = IPDialIn.build(input[:ip_dial_in]) unless input[:ip_dial_in].nil?
        data['PSTNDialIn'] = PSTNDialIn.build(input[:pstn_dial_in]) unless input[:pstn_dial_in].nil?
        data['MeetingSetting'] = MeetingSetting.build(input[:meeting_setting]) unless input[:meeting_setting].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MeetingSetting
    class MeetingSetting
      def self.build(input)
        data = {}
        data['RequirePin'] = input[:require_pin] unless input[:require_pin].nil?
        data
      end
    end

    # Structure Builder for PSTNDialIn
    class PSTNDialIn
      def self.build(input)
        data = {}
        data['CountryCode'] = input[:country_code] unless input[:country_code].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['OneClickIdDelay'] = input[:one_click_id_delay] unless input[:one_click_id_delay].nil?
        data['OneClickPinDelay'] = input[:one_click_pin_delay] unless input[:one_click_pin_delay].nil?
        data
      end
    end

    # Structure Builder for IPDialIn
    class IPDialIn
      def self.build(input)
        data = {}
        data['Endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['CommsProtocol'] = input[:comms_protocol] unless input[:comms_protocol].nil?
        data
      end
    end

    # Operation Builder for CreateContact
    class CreateContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.CreateContact'
        data = {}
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['FirstName'] = input[:first_name] unless input[:first_name].nil?
        data['LastName'] = input[:last_name] unless input[:last_name].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['PhoneNumbers'] = PhoneNumberList.build(input[:phone_numbers]) unless input[:phone_numbers].nil?
        data['SipAddresses'] = SipAddressList.build(input[:sip_addresses]) unless input[:sip_addresses].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SipAddressList
    class SipAddressList
      def self.build(input)
        data = []
        input.each do |element|
          data << SipAddress.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SipAddress
    class SipAddress
      def self.build(input)
        data = {}
        data['Uri'] = input[:uri] unless input[:uri].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for PhoneNumberList
    class PhoneNumberList
      def self.build(input)
        data = []
        input.each do |element|
          data << PhoneNumber.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PhoneNumber
    class PhoneNumber
      def self.build(input)
        data = {}
        data['Number'] = input[:number] unless input[:number].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for CreateGatewayGroup
    class CreateGatewayGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.CreateGatewayGroup'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateNetworkProfile
    class CreateNetworkProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.CreateNetworkProfile'
        data = {}
        data['NetworkProfileName'] = input[:network_profile_name] unless input[:network_profile_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Ssid'] = input[:ssid] unless input[:ssid].nil?
        data['SecurityType'] = input[:security_type] unless input[:security_type].nil?
        data['EapMethod'] = input[:eap_method] unless input[:eap_method].nil?
        data['CurrentPassword'] = input[:current_password] unless input[:current_password].nil?
        data['NextPassword'] = input[:next_password] unless input[:next_password].nil?
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['TrustAnchors'] = TrustAnchorList.build(input[:trust_anchors]) unless input[:trust_anchors].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TrustAnchorList
    class TrustAnchorList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateProfile
    class CreateProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.CreateProfile'
        data = {}
        data['ProfileName'] = input[:profile_name] unless input[:profile_name].nil?
        data['Timezone'] = input[:timezone] unless input[:timezone].nil?
        data['Address'] = input[:address] unless input[:address].nil?
        data['DistanceUnit'] = input[:distance_unit] unless input[:distance_unit].nil?
        data['TemperatureUnit'] = input[:temperature_unit] unless input[:temperature_unit].nil?
        data['WakeWord'] = input[:wake_word] unless input[:wake_word].nil?
        data['Locale'] = input[:locale] unless input[:locale].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['SetupModeDisabled'] = input[:setup_mode_disabled] unless input[:setup_mode_disabled].nil?
        data['MaxVolumeLimit'] = input[:max_volume_limit] unless input[:max_volume_limit].nil?
        data['PSTNEnabled'] = input[:pstn_enabled] unless input[:pstn_enabled].nil?
        data['DataRetentionOptIn'] = input[:data_retention_opt_in] unless input[:data_retention_opt_in].nil?
        data['MeetingRoomConfiguration'] = CreateMeetingRoomConfiguration.build(input[:meeting_room_configuration]) unless input[:meeting_room_configuration].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateMeetingRoomConfiguration
    class CreateMeetingRoomConfiguration
      def self.build(input)
        data = {}
        data['RoomUtilizationMetricsEnabled'] = input[:room_utilization_metrics_enabled] unless input[:room_utilization_metrics_enabled].nil?
        data['EndOfMeetingReminder'] = CreateEndOfMeetingReminder.build(input[:end_of_meeting_reminder]) unless input[:end_of_meeting_reminder].nil?
        data['InstantBooking'] = CreateInstantBooking.build(input[:instant_booking]) unless input[:instant_booking].nil?
        data['RequireCheckIn'] = CreateRequireCheckIn.build(input[:require_check_in]) unless input[:require_check_in].nil?
        data
      end
    end

    # Structure Builder for CreateRequireCheckIn
    class CreateRequireCheckIn
      def self.build(input)
        data = {}
        data['ReleaseAfterMinutes'] = input[:release_after_minutes] unless input[:release_after_minutes].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for CreateInstantBooking
    class CreateInstantBooking
      def self.build(input)
        data = {}
        data['DurationInMinutes'] = input[:duration_in_minutes] unless input[:duration_in_minutes].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for CreateEndOfMeetingReminder
    class CreateEndOfMeetingReminder
      def self.build(input)
        data = {}
        data['ReminderAtMinutes'] = EndOfMeetingReminderMinutesList.build(input[:reminder_at_minutes]) unless input[:reminder_at_minutes].nil?
        data['ReminderType'] = input[:reminder_type] unless input[:reminder_type].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # List Builder for EndOfMeetingReminderMinutesList
    class EndOfMeetingReminderMinutesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateRoom
    class CreateRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.CreateRoom'
        data = {}
        data['RoomName'] = input[:room_name] unless input[:room_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ProfileArn'] = input[:profile_arn] unless input[:profile_arn].nil?
        data['ProviderCalendarId'] = input[:provider_calendar_id] unless input[:provider_calendar_id].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSkillGroup
    class CreateSkillGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.CreateSkillGroup'
        data = {}
        data['SkillGroupName'] = input[:skill_group_name] unless input[:skill_group_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.CreateUser'
        data = {}
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['FirstName'] = input[:first_name] unless input[:first_name].nil?
        data['LastName'] = input[:last_name] unless input[:last_name].nil?
        data['Email'] = input[:email] unless input[:email].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAddressBook
    class DeleteAddressBook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteAddressBook'
        data = {}
        data['AddressBookArn'] = input[:address_book_arn] unless input[:address_book_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBusinessReportSchedule
    class DeleteBusinessReportSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteBusinessReportSchedule'
        data = {}
        data['ScheduleArn'] = input[:schedule_arn] unless input[:schedule_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConferenceProvider
    class DeleteConferenceProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteConferenceProvider'
        data = {}
        data['ConferenceProviderArn'] = input[:conference_provider_arn] unless input[:conference_provider_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteContact
    class DeleteContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteContact'
        data = {}
        data['ContactArn'] = input[:contact_arn] unless input[:contact_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDevice
    class DeleteDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteDevice'
        data = {}
        data['DeviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDeviceUsageData
    class DeleteDeviceUsageData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteDeviceUsageData'
        data = {}
        data['DeviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        data['DeviceUsageType'] = input[:device_usage_type] unless input[:device_usage_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteGatewayGroup
    class DeleteGatewayGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteGatewayGroup'
        data = {}
        data['GatewayGroupArn'] = input[:gateway_group_arn] unless input[:gateway_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteNetworkProfile
    class DeleteNetworkProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteNetworkProfile'
        data = {}
        data['NetworkProfileArn'] = input[:network_profile_arn] unless input[:network_profile_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProfile
    class DeleteProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteProfile'
        data = {}
        data['ProfileArn'] = input[:profile_arn] unless input[:profile_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRoom
    class DeleteRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteRoom'
        data = {}
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRoomSkillParameter
    class DeleteRoomSkillParameter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteRoomSkillParameter'
        data = {}
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        data['ParameterKey'] = input[:parameter_key] unless input[:parameter_key].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSkillAuthorization
    class DeleteSkillAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteSkillAuthorization'
        data = {}
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSkillGroup
    class DeleteSkillGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteSkillGroup'
        data = {}
        data['SkillGroupArn'] = input[:skill_group_arn] unless input[:skill_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DeleteUser'
        data = {}
        data['UserArn'] = input[:user_arn] unless input[:user_arn].nil?
        data['EnrollmentId'] = input[:enrollment_id] unless input[:enrollment_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateContactFromAddressBook
    class DisassociateContactFromAddressBook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DisassociateContactFromAddressBook'
        data = {}
        data['ContactArn'] = input[:contact_arn] unless input[:contact_arn].nil?
        data['AddressBookArn'] = input[:address_book_arn] unless input[:address_book_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateDeviceFromRoom
    class DisassociateDeviceFromRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DisassociateDeviceFromRoom'
        data = {}
        data['DeviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateSkillFromSkillGroup
    class DisassociateSkillFromSkillGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DisassociateSkillFromSkillGroup'
        data = {}
        data['SkillGroupArn'] = input[:skill_group_arn] unless input[:skill_group_arn].nil?
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateSkillFromUsers
    class DisassociateSkillFromUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DisassociateSkillFromUsers'
        data = {}
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateSkillGroupFromRoom
    class DisassociateSkillGroupFromRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.DisassociateSkillGroupFromRoom'
        data = {}
        data['SkillGroupArn'] = input[:skill_group_arn] unless input[:skill_group_arn].nil?
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ForgetSmartHomeAppliances
    class ForgetSmartHomeAppliances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ForgetSmartHomeAppliances'
        data = {}
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAddressBook
    class GetAddressBook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetAddressBook'
        data = {}
        data['AddressBookArn'] = input[:address_book_arn] unless input[:address_book_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetConferencePreference
    class GetConferencePreference
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetConferencePreference'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetConferenceProvider
    class GetConferenceProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetConferenceProvider'
        data = {}
        data['ConferenceProviderArn'] = input[:conference_provider_arn] unless input[:conference_provider_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetContact
    class GetContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetContact'
        data = {}
        data['ContactArn'] = input[:contact_arn] unless input[:contact_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDevice
    class GetDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetDevice'
        data = {}
        data['DeviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGateway
    class GetGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetGateway'
        data = {}
        data['GatewayArn'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGatewayGroup
    class GetGatewayGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetGatewayGroup'
        data = {}
        data['GatewayGroupArn'] = input[:gateway_group_arn] unless input[:gateway_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInvitationConfiguration
    class GetInvitationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetInvitationConfiguration'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetNetworkProfile
    class GetNetworkProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetNetworkProfile'
        data = {}
        data['NetworkProfileArn'] = input[:network_profile_arn] unless input[:network_profile_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetProfile
    class GetProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetProfile'
        data = {}
        data['ProfileArn'] = input[:profile_arn] unless input[:profile_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRoom
    class GetRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetRoom'
        data = {}
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRoomSkillParameter
    class GetRoomSkillParameter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetRoomSkillParameter'
        data = {}
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        data['ParameterKey'] = input[:parameter_key] unless input[:parameter_key].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSkillGroup
    class GetSkillGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.GetSkillGroup'
        data = {}
        data['SkillGroupArn'] = input[:skill_group_arn] unless input[:skill_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBusinessReportSchedules
    class ListBusinessReportSchedules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ListBusinessReportSchedules'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListConferenceProviders
    class ListConferenceProviders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ListConferenceProviders'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDeviceEvents
    class ListDeviceEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ListDeviceEvents'
        data = {}
        data['DeviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        data['EventType'] = input[:event_type] unless input[:event_type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGatewayGroups
    class ListGatewayGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ListGatewayGroups'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGateways
    class ListGateways
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ListGateways'
        data = {}
        data['GatewayGroupArn'] = input[:gateway_group_arn] unless input[:gateway_group_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSkills
    class ListSkills
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ListSkills'
        data = {}
        data['SkillGroupArn'] = input[:skill_group_arn] unless input[:skill_group_arn].nil?
        data['EnablementType'] = input[:enablement_type] unless input[:enablement_type].nil?
        data['SkillType'] = input[:skill_type] unless input[:skill_type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSkillsStoreCategories
    class ListSkillsStoreCategories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ListSkillsStoreCategories'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSkillsStoreSkillsByCategory
    class ListSkillsStoreSkillsByCategory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ListSkillsStoreSkillsByCategory'
        data = {}
        data['CategoryId'] = input[:category_id] unless input[:category_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSmartHomeAppliances
    class ListSmartHomeAppliances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ListSmartHomeAppliances'
        data = {}
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ListTags'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutConferencePreference
    class PutConferencePreference
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.PutConferencePreference'
        data = {}
        data['ConferencePreference'] = ConferencePreference.build(input[:conference_preference]) unless input[:conference_preference].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConferencePreference
    class ConferencePreference
      def self.build(input)
        data = {}
        data['DefaultConferenceProviderArn'] = input[:default_conference_provider_arn] unless input[:default_conference_provider_arn].nil?
        data
      end
    end

    # Operation Builder for PutInvitationConfiguration
    class PutInvitationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.PutInvitationConfiguration'
        data = {}
        data['OrganizationName'] = input[:organization_name] unless input[:organization_name].nil?
        data['ContactEmail'] = input[:contact_email] unless input[:contact_email].nil?
        data['PrivateSkillIds'] = ShortSkillIdList.build(input[:private_skill_ids]) unless input[:private_skill_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ShortSkillIdList
    class ShortSkillIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutRoomSkillParameter
    class PutRoomSkillParameter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.PutRoomSkillParameter'
        data = {}
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        data['RoomSkillParameter'] = RoomSkillParameter.build(input[:room_skill_parameter]) unless input[:room_skill_parameter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RoomSkillParameter
    class RoomSkillParameter
      def self.build(input)
        data = {}
        data['ParameterKey'] = input[:parameter_key] unless input[:parameter_key].nil?
        data['ParameterValue'] = input[:parameter_value] unless input[:parameter_value].nil?
        data
      end
    end

    # Operation Builder for PutSkillAuthorization
    class PutSkillAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.PutSkillAuthorization'
        data = {}
        data['AuthorizationResult'] = AuthorizationResult.build(input[:authorization_result]) unless input[:authorization_result].nil?
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for AuthorizationResult
    class AuthorizationResult
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for RegisterAVSDevice
    class RegisterAVSDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.RegisterAVSDevice'
        data = {}
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['UserCode'] = input[:user_code] unless input[:user_code].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['DeviceSerialNumber'] = input[:device_serial_number] unless input[:device_serial_number].nil?
        data['AmazonId'] = input[:amazon_id] unless input[:amazon_id].nil?
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RejectSkill
    class RejectSkill
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.RejectSkill'
        data = {}
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResolveRoom
    class ResolveRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.ResolveRoom'
        data = {}
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['SkillId'] = input[:skill_id] unless input[:skill_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RevokeInvitation
    class RevokeInvitation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.RevokeInvitation'
        data = {}
        data['UserArn'] = input[:user_arn] unless input[:user_arn].nil?
        data['EnrollmentId'] = input[:enrollment_id] unless input[:enrollment_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchAddressBooks
    class SearchAddressBooks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.SearchAddressBooks'
        data = {}
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data['SortCriteria'] = SortList.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SortList
    class SortList
      def self.build(input)
        data = []
        input.each do |element|
          data << Sort.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Sort
    class Sort
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = FilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValueList
    class FilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchContacts
    class SearchContacts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.SearchContacts'
        data = {}
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data['SortCriteria'] = SortList.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchDevices
    class SearchDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.SearchDevices'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data['SortCriteria'] = SortList.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchNetworkProfiles
    class SearchNetworkProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.SearchNetworkProfiles'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data['SortCriteria'] = SortList.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchProfiles
    class SearchProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.SearchProfiles'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data['SortCriteria'] = SortList.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchRooms
    class SearchRooms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.SearchRooms'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data['SortCriteria'] = SortList.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchSkillGroups
    class SearchSkillGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.SearchSkillGroups'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data['SortCriteria'] = SortList.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchUsers
    class SearchUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.SearchUsers'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data['SortCriteria'] = SortList.build(input[:sort_criteria]) unless input[:sort_criteria].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendAnnouncement
    class SendAnnouncement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.SendAnnouncement'
        data = {}
        data['RoomFilters'] = FilterList.build(input[:room_filters]) unless input[:room_filters].nil?
        data['Content'] = Content.build(input[:content]) unless input[:content].nil?
        data['TimeToLiveInSeconds'] = input[:time_to_live_in_seconds] unless input[:time_to_live_in_seconds].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Content
    class Content
      def self.build(input)
        data = {}
        data['TextList'] = TextList.build(input[:text_list]) unless input[:text_list].nil?
        data['SsmlList'] = SsmlList.build(input[:ssml_list]) unless input[:ssml_list].nil?
        data['AudioList'] = AudioList.build(input[:audio_list]) unless input[:audio_list].nil?
        data
      end
    end

    # List Builder for AudioList
    class AudioList
      def self.build(input)
        data = []
        input.each do |element|
          data << Audio.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Audio
    class Audio
      def self.build(input)
        data = {}
        data['Locale'] = input[:locale] unless input[:locale].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        data
      end
    end

    # List Builder for SsmlList
    class SsmlList
      def self.build(input)
        data = []
        input.each do |element|
          data << Ssml.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Ssml
    class Ssml
      def self.build(input)
        data = {}
        data['Locale'] = input[:locale] unless input[:locale].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for TextList
    class TextList
      def self.build(input)
        data = []
        input.each do |element|
          data << Text.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Text
    class Text
      def self.build(input)
        data = {}
        data['Locale'] = input[:locale] unless input[:locale].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for SendInvitation
    class SendInvitation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.SendInvitation'
        data = {}
        data['UserArn'] = input[:user_arn] unless input[:user_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartDeviceSync
    class StartDeviceSync
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.StartDeviceSync'
        data = {}
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        data['DeviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        data['Features'] = Features.build(input[:features]) unless input[:features].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Features
    class Features
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartSmartHomeApplianceDiscovery
    class StartSmartHomeApplianceDiscovery
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.StartSmartHomeApplianceDiscovery'
        data = {}
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.TagResource'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UntagResource'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAddressBook
    class UpdateAddressBook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateAddressBook'
        data = {}
        data['AddressBookArn'] = input[:address_book_arn] unless input[:address_book_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBusinessReportSchedule
    class UpdateBusinessReportSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateBusinessReportSchedule'
        data = {}
        data['ScheduleArn'] = input[:schedule_arn] unless input[:schedule_arn].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['ScheduleName'] = input[:schedule_name] unless input[:schedule_name].nil?
        data['Recurrence'] = BusinessReportRecurrence.build(input[:recurrence]) unless input[:recurrence].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateConferenceProvider
    class UpdateConferenceProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateConferenceProvider'
        data = {}
        data['ConferenceProviderArn'] = input[:conference_provider_arn] unless input[:conference_provider_arn].nil?
        data['ConferenceProviderType'] = input[:conference_provider_type] unless input[:conference_provider_type].nil?
        data['IPDialIn'] = IPDialIn.build(input[:ip_dial_in]) unless input[:ip_dial_in].nil?
        data['PSTNDialIn'] = PSTNDialIn.build(input[:pstn_dial_in]) unless input[:pstn_dial_in].nil?
        data['MeetingSetting'] = MeetingSetting.build(input[:meeting_setting]) unless input[:meeting_setting].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContact
    class UpdateContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateContact'
        data = {}
        data['ContactArn'] = input[:contact_arn] unless input[:contact_arn].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['FirstName'] = input[:first_name] unless input[:first_name].nil?
        data['LastName'] = input[:last_name] unless input[:last_name].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['PhoneNumbers'] = PhoneNumberList.build(input[:phone_numbers]) unless input[:phone_numbers].nil?
        data['SipAddresses'] = SipAddressList.build(input[:sip_addresses]) unless input[:sip_addresses].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDevice
    class UpdateDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateDevice'
        data = {}
        data['DeviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGateway
    class UpdateGateway
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateGateway'
        data = {}
        data['GatewayArn'] = input[:gateway_arn] unless input[:gateway_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SoftwareVersion'] = input[:software_version] unless input[:software_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGatewayGroup
    class UpdateGatewayGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateGatewayGroup'
        data = {}
        data['GatewayGroupArn'] = input[:gateway_group_arn] unless input[:gateway_group_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNetworkProfile
    class UpdateNetworkProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateNetworkProfile'
        data = {}
        data['NetworkProfileArn'] = input[:network_profile_arn] unless input[:network_profile_arn].nil?
        data['NetworkProfileName'] = input[:network_profile_name] unless input[:network_profile_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['CurrentPassword'] = input[:current_password] unless input[:current_password].nil?
        data['NextPassword'] = input[:next_password] unless input[:next_password].nil?
        data['CertificateAuthorityArn'] = input[:certificate_authority_arn] unless input[:certificate_authority_arn].nil?
        data['TrustAnchors'] = TrustAnchorList.build(input[:trust_anchors]) unless input[:trust_anchors].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProfile
    class UpdateProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateProfile'
        data = {}
        data['ProfileArn'] = input[:profile_arn] unless input[:profile_arn].nil?
        data['ProfileName'] = input[:profile_name] unless input[:profile_name].nil?
        data['IsDefault'] = input[:is_default] unless input[:is_default].nil?
        data['Timezone'] = input[:timezone] unless input[:timezone].nil?
        data['Address'] = input[:address] unless input[:address].nil?
        data['DistanceUnit'] = input[:distance_unit] unless input[:distance_unit].nil?
        data['TemperatureUnit'] = input[:temperature_unit] unless input[:temperature_unit].nil?
        data['WakeWord'] = input[:wake_word] unless input[:wake_word].nil?
        data['Locale'] = input[:locale] unless input[:locale].nil?
        data['SetupModeDisabled'] = input[:setup_mode_disabled] unless input[:setup_mode_disabled].nil?
        data['MaxVolumeLimit'] = input[:max_volume_limit] unless input[:max_volume_limit].nil?
        data['PSTNEnabled'] = input[:pstn_enabled] unless input[:pstn_enabled].nil?
        data['DataRetentionOptIn'] = input[:data_retention_opt_in] unless input[:data_retention_opt_in].nil?
        data['MeetingRoomConfiguration'] = UpdateMeetingRoomConfiguration.build(input[:meeting_room_configuration]) unless input[:meeting_room_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateMeetingRoomConfiguration
    class UpdateMeetingRoomConfiguration
      def self.build(input)
        data = {}
        data['RoomUtilizationMetricsEnabled'] = input[:room_utilization_metrics_enabled] unless input[:room_utilization_metrics_enabled].nil?
        data['EndOfMeetingReminder'] = UpdateEndOfMeetingReminder.build(input[:end_of_meeting_reminder]) unless input[:end_of_meeting_reminder].nil?
        data['InstantBooking'] = UpdateInstantBooking.build(input[:instant_booking]) unless input[:instant_booking].nil?
        data['RequireCheckIn'] = UpdateRequireCheckIn.build(input[:require_check_in]) unless input[:require_check_in].nil?
        data
      end
    end

    # Structure Builder for UpdateRequireCheckIn
    class UpdateRequireCheckIn
      def self.build(input)
        data = {}
        data['ReleaseAfterMinutes'] = input[:release_after_minutes] unless input[:release_after_minutes].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for UpdateInstantBooking
    class UpdateInstantBooking
      def self.build(input)
        data = {}
        data['DurationInMinutes'] = input[:duration_in_minutes] unless input[:duration_in_minutes].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for UpdateEndOfMeetingReminder
    class UpdateEndOfMeetingReminder
      def self.build(input)
        data = {}
        data['ReminderAtMinutes'] = EndOfMeetingReminderMinutesList.build(input[:reminder_at_minutes]) unless input[:reminder_at_minutes].nil?
        data['ReminderType'] = input[:reminder_type] unless input[:reminder_type].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Operation Builder for UpdateRoom
    class UpdateRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateRoom'
        data = {}
        data['RoomArn'] = input[:room_arn] unless input[:room_arn].nil?
        data['RoomName'] = input[:room_name] unless input[:room_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ProviderCalendarId'] = input[:provider_calendar_id] unless input[:provider_calendar_id].nil?
        data['ProfileArn'] = input[:profile_arn] unless input[:profile_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSkillGroup
    class UpdateSkillGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AlexaForBusiness.UpdateSkillGroup'
        data = {}
        data['SkillGroupArn'] = input[:skill_group_arn] unless input[:skill_group_arn].nil?
        data['SkillGroupName'] = input[:skill_group_name] unless input[:skill_group_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
