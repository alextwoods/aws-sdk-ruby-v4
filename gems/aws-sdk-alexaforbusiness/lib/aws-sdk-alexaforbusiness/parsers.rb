# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AlexaForBusiness
  module Parsers

    # Operation Parser for ApproveSkill
    class ApproveSkill
      def self.parse(http_resp)
        data = Types::ApproveSkillOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateContactWithAddressBook
    class AssociateContactWithAddressBook
      def self.parse(http_resp)
        data = Types::AssociateContactWithAddressBookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateDeviceWithNetworkProfile
    class AssociateDeviceWithNetworkProfile
      def self.parse(http_resp)
        data = Types::AssociateDeviceWithNetworkProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DeviceNotRegisteredException
    class DeviceNotRegisteredException
      def self.parse(http_resp)
        data = Types::DeviceNotRegisteredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateDeviceWithRoom
    class AssociateDeviceWithRoom
      def self.parse(http_resp)
        data = Types::AssociateDeviceWithRoomOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateSkillGroupWithRoom
    class AssociateSkillGroupWithRoom
      def self.parse(http_resp)
        data = Types::AssociateSkillGroupWithRoomOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateSkillWithSkillGroup
    class AssociateSkillWithSkillGroup
      def self.parse(http_resp)
        data = Types::AssociateSkillWithSkillGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for SkillNotLinkedException
    class SkillNotLinkedException
      def self.parse(http_resp)
        data = Types::SkillNotLinkedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateSkillWithUsers
    class AssociateSkillWithUsers
      def self.parse(http_resp)
        data = Types::AssociateSkillWithUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateAddressBook
    class CreateAddressBook
      def self.parse(http_resp)
        data = Types::CreateAddressBookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.address_book_arn = map['AddressBookArn']
        data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateBusinessReportSchedule
    class CreateBusinessReportSchedule
      def self.parse(http_resp)
        data = Types::CreateBusinessReportScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schedule_arn = map['ScheduleArn']
        data
      end
    end

    # Operation Parser for CreateConferenceProvider
    class CreateConferenceProvider
      def self.parse(http_resp)
        data = Types::CreateConferenceProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conference_provider_arn = map['ConferenceProviderArn']
        data
      end
    end

    # Operation Parser for CreateContact
    class CreateContact
      def self.parse(http_resp)
        data = Types::CreateContactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.contact_arn = map['ContactArn']
        data
      end
    end

    # Operation Parser for CreateGatewayGroup
    class CreateGatewayGroup
      def self.parse(http_resp)
        data = Types::CreateGatewayGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_group_arn = map['GatewayGroupArn']
        data
      end
    end

    # Operation Parser for CreateNetworkProfile
    class CreateNetworkProfile
      def self.parse(http_resp)
        data = Types::CreateNetworkProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.network_profile_arn = map['NetworkProfileArn']
        data
      end
    end

    # Error Parser for InvalidServiceLinkedRoleStateException
    class InvalidServiceLinkedRoleStateException
      def self.parse(http_resp)
        data = Types::InvalidServiceLinkedRoleStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidCertificateAuthorityException
    class InvalidCertificateAuthorityException
      def self.parse(http_resp)
        data = Types::InvalidCertificateAuthorityException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateProfile
    class CreateProfile
      def self.parse(http_resp)
        data = Types::CreateProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.profile_arn = map['ProfileArn']
        data
      end
    end

    # Operation Parser for CreateRoom
    class CreateRoom
      def self.parse(http_resp)
        data = Types::CreateRoomOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.room_arn = map['RoomArn']
        data
      end
    end

    # Operation Parser for CreateSkillGroup
    class CreateSkillGroup
      def self.parse(http_resp)
        data = Types::CreateSkillGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.skill_group_arn = map['SkillGroupArn']
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_arn = map['UserArn']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.client_request_token = map['ClientRequestToken']
        data
      end
    end

    # Operation Parser for DeleteAddressBook
    class DeleteAddressBook
      def self.parse(http_resp)
        data = Types::DeleteAddressBookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteBusinessReportSchedule
    class DeleteBusinessReportSchedule
      def self.parse(http_resp)
        data = Types::DeleteBusinessReportScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteConferenceProvider
    class DeleteConferenceProvider
      def self.parse(http_resp)
        data = Types::DeleteConferenceProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteContact
    class DeleteContact
      def self.parse(http_resp)
        data = Types::DeleteContactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDevice
    class DeleteDevice
      def self.parse(http_resp)
        data = Types::DeleteDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDeviceUsageData
    class DeleteDeviceUsageData
      def self.parse(http_resp)
        data = Types::DeleteDeviceUsageDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteGatewayGroup
    class DeleteGatewayGroup
      def self.parse(http_resp)
        data = Types::DeleteGatewayGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceAssociatedException
    class ResourceAssociatedException
      def self.parse(http_resp)
        data = Types::ResourceAssociatedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteNetworkProfile
    class DeleteNetworkProfile
      def self.parse(http_resp)
        data = Types::DeleteNetworkProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteProfile
    class DeleteProfile
      def self.parse(http_resp)
        data = Types::DeleteProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRoom
    class DeleteRoom
      def self.parse(http_resp)
        data = Types::DeleteRoomOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRoomSkillParameter
    class DeleteRoomSkillParameter
      def self.parse(http_resp)
        data = Types::DeleteRoomSkillParameterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSkillAuthorization
    class DeleteSkillAuthorization
      def self.parse(http_resp)
        data = Types::DeleteSkillAuthorizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSkillGroup
    class DeleteSkillGroup
      def self.parse(http_resp)
        data = Types::DeleteSkillGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateContactFromAddressBook
    class DisassociateContactFromAddressBook
      def self.parse(http_resp)
        data = Types::DisassociateContactFromAddressBookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateDeviceFromRoom
    class DisassociateDeviceFromRoom
      def self.parse(http_resp)
        data = Types::DisassociateDeviceFromRoomOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateSkillFromSkillGroup
    class DisassociateSkillFromSkillGroup
      def self.parse(http_resp)
        data = Types::DisassociateSkillFromSkillGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateSkillFromUsers
    class DisassociateSkillFromUsers
      def self.parse(http_resp)
        data = Types::DisassociateSkillFromUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateSkillGroupFromRoom
    class DisassociateSkillGroupFromRoom
      def self.parse(http_resp)
        data = Types::DisassociateSkillGroupFromRoomOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ForgetSmartHomeAppliances
    class ForgetSmartHomeAppliances
      def self.parse(http_resp)
        data = Types::ForgetSmartHomeAppliancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetAddressBook
    class GetAddressBook
      def self.parse(http_resp)
        data = Types::GetAddressBookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.address_book = (AddressBook.parse(map['AddressBook']) unless map['AddressBook'].nil?)
        data
      end
    end

    class AddressBook
      def self.parse(map)
        data = Types::AddressBook.new
        data.address_book_arn = map['AddressBookArn']
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for GetConferencePreference
    class GetConferencePreference
      def self.parse(http_resp)
        data = Types::GetConferencePreferenceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.preference = (ConferencePreference.parse(map['Preference']) unless map['Preference'].nil?)
        data
      end
    end

    class ConferencePreference
      def self.parse(map)
        data = Types::ConferencePreference.new
        data.default_conference_provider_arn = map['DefaultConferenceProviderArn']
        return data
      end
    end

    # Operation Parser for GetConferenceProvider
    class GetConferenceProvider
      def self.parse(http_resp)
        data = Types::GetConferenceProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conference_provider = (ConferenceProvider.parse(map['ConferenceProvider']) unless map['ConferenceProvider'].nil?)
        data
      end
    end

    class ConferenceProvider
      def self.parse(map)
        data = Types::ConferenceProvider.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.type = map['Type']
        data.ip_dial_in = (IPDialIn.parse(map['IPDialIn']) unless map['IPDialIn'].nil?)
        data.pstn_dial_in = (PSTNDialIn.parse(map['PSTNDialIn']) unless map['PSTNDialIn'].nil?)
        data.meeting_setting = (MeetingSetting.parse(map['MeetingSetting']) unless map['MeetingSetting'].nil?)
        return data
      end
    end

    class MeetingSetting
      def self.parse(map)
        data = Types::MeetingSetting.new
        data.require_pin = map['RequirePin']
        return data
      end
    end

    class PSTNDialIn
      def self.parse(map)
        data = Types::PSTNDialIn.new
        data.country_code = map['CountryCode']
        data.phone_number = map['PhoneNumber']
        data.one_click_id_delay = map['OneClickIdDelay']
        data.one_click_pin_delay = map['OneClickPinDelay']
        return data
      end
    end

    class IPDialIn
      def self.parse(map)
        data = Types::IPDialIn.new
        data.endpoint = map['Endpoint']
        data.comms_protocol = map['CommsProtocol']
        return data
      end
    end

    # Operation Parser for GetContact
    class GetContact
      def self.parse(http_resp)
        data = Types::GetContactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.contact = (Contact.parse(map['Contact']) unless map['Contact'].nil?)
        data
      end
    end

    class Contact
      def self.parse(map)
        data = Types::Contact.new
        data.contact_arn = map['ContactArn']
        data.display_name = map['DisplayName']
        data.first_name = map['FirstName']
        data.last_name = map['LastName']
        data.phone_number = map['PhoneNumber']
        data.phone_numbers = (PhoneNumberList.parse(map['PhoneNumbers']) unless map['PhoneNumbers'].nil?)
        data.sip_addresses = (SipAddressList.parse(map['SipAddresses']) unless map['SipAddresses'].nil?)
        return data
      end
    end

    class SipAddressList
      def self.parse(list)
        list.map do |value|
          SipAddress.parse(value) unless value.nil?
        end
      end
    end

    class SipAddress
      def self.parse(map)
        data = Types::SipAddress.new
        data.uri = map['Uri']
        data.type = map['Type']
        return data
      end
    end

    class PhoneNumberList
      def self.parse(list)
        list.map do |value|
          PhoneNumber.parse(value) unless value.nil?
        end
      end
    end

    class PhoneNumber
      def self.parse(map)
        data = Types::PhoneNumber.new
        data.number = map['Number']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for GetDevice
    class GetDevice
      def self.parse(http_resp)
        data = Types::GetDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device = (Device.parse(map['Device']) unless map['Device'].nil?)
        data
      end
    end

    class Device
      def self.parse(map)
        data = Types::Device.new
        data.device_arn = map['DeviceArn']
        data.device_serial_number = map['DeviceSerialNumber']
        data.device_type = map['DeviceType']
        data.device_name = map['DeviceName']
        data.software_version = map['SoftwareVersion']
        data.mac_address = map['MacAddress']
        data.room_arn = map['RoomArn']
        data.device_status = map['DeviceStatus']
        data.device_status_info = (DeviceStatusInfo.parse(map['DeviceStatusInfo']) unless map['DeviceStatusInfo'].nil?)
        data.network_profile_info = (DeviceNetworkProfileInfo.parse(map['NetworkProfileInfo']) unless map['NetworkProfileInfo'].nil?)
        return data
      end
    end

    class DeviceNetworkProfileInfo
      def self.parse(map)
        data = Types::DeviceNetworkProfileInfo.new
        data.network_profile_arn = map['NetworkProfileArn']
        data.certificate_arn = map['CertificateArn']
        data.certificate_expiration_time = Time.at(map['CertificateExpirationTime'].to_i) if map['CertificateExpirationTime']
        return data
      end
    end

    class DeviceStatusInfo
      def self.parse(map)
        data = Types::DeviceStatusInfo.new
        data.device_status_details = (DeviceStatusDetails.parse(map['DeviceStatusDetails']) unless map['DeviceStatusDetails'].nil?)
        data.connection_status = map['ConnectionStatus']
        data.connection_status_updated_time = Time.at(map['ConnectionStatusUpdatedTime'].to_i) if map['ConnectionStatusUpdatedTime']
        return data
      end
    end

    class DeviceStatusDetails
      def self.parse(list)
        list.map do |value|
          DeviceStatusDetail.parse(value) unless value.nil?
        end
      end
    end

    class DeviceStatusDetail
      def self.parse(map)
        data = Types::DeviceStatusDetail.new
        data.feature = map['Feature']
        data.code = map['Code']
        return data
      end
    end

    # Operation Parser for GetGateway
    class GetGateway
      def self.parse(http_resp)
        data = Types::GetGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway = (Gateway.parse(map['Gateway']) unless map['Gateway'].nil?)
        data
      end
    end

    class Gateway
      def self.parse(map)
        data = Types::Gateway.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.gateway_group_arn = map['GatewayGroupArn']
        data.software_version = map['SoftwareVersion']
        return data
      end
    end

    # Operation Parser for GetGatewayGroup
    class GetGatewayGroup
      def self.parse(http_resp)
        data = Types::GetGatewayGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_group = (GatewayGroup.parse(map['GatewayGroup']) unless map['GatewayGroup'].nil?)
        data
      end
    end

    class GatewayGroup
      def self.parse(map)
        data = Types::GatewayGroup.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for GetInvitationConfiguration
    class GetInvitationConfiguration
      def self.parse(http_resp)
        data = Types::GetInvitationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.organization_name = map['OrganizationName']
        data.contact_email = map['ContactEmail']
        data.private_skill_ids = (ShortSkillIdList.parse(map['PrivateSkillIds']) unless map['PrivateSkillIds'].nil?)
        data
      end
    end

    class ShortSkillIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetNetworkProfile
    class GetNetworkProfile
      def self.parse(http_resp)
        data = Types::GetNetworkProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.network_profile = (NetworkProfile.parse(map['NetworkProfile']) unless map['NetworkProfile'].nil?)
        data
      end
    end

    class NetworkProfile
      def self.parse(map)
        data = Types::NetworkProfile.new
        data.network_profile_arn = map['NetworkProfileArn']
        data.network_profile_name = map['NetworkProfileName']
        data.description = map['Description']
        data.ssid = map['Ssid']
        data.security_type = map['SecurityType']
        data.eap_method = map['EapMethod']
        data.current_password = map['CurrentPassword']
        data.next_password = map['NextPassword']
        data.certificate_authority_arn = map['CertificateAuthorityArn']
        data.trust_anchors = (TrustAnchorList.parse(map['TrustAnchors']) unless map['TrustAnchors'].nil?)
        return data
      end
    end

    class TrustAnchorList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidSecretsManagerResourceException
    class InvalidSecretsManagerResourceException
      def self.parse(http_resp)
        data = Types::InvalidSecretsManagerResourceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetProfile
    class GetProfile
      def self.parse(http_resp)
        data = Types::GetProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.profile = (Profile.parse(map['Profile']) unless map['Profile'].nil?)
        data
      end
    end

    class Profile
      def self.parse(map)
        data = Types::Profile.new
        data.profile_arn = map['ProfileArn']
        data.profile_name = map['ProfileName']
        data.is_default = map['IsDefault']
        data.address = map['Address']
        data.timezone = map['Timezone']
        data.distance_unit = map['DistanceUnit']
        data.temperature_unit = map['TemperatureUnit']
        data.wake_word = map['WakeWord']
        data.locale = map['Locale']
        data.setup_mode_disabled = map['SetupModeDisabled']
        data.max_volume_limit = map['MaxVolumeLimit']
        data.pstn_enabled = map['PSTNEnabled']
        data.data_retention_opt_in = map['DataRetentionOptIn']
        data.address_book_arn = map['AddressBookArn']
        data.meeting_room_configuration = (MeetingRoomConfiguration.parse(map['MeetingRoomConfiguration']) unless map['MeetingRoomConfiguration'].nil?)
        return data
      end
    end

    class MeetingRoomConfiguration
      def self.parse(map)
        data = Types::MeetingRoomConfiguration.new
        data.room_utilization_metrics_enabled = map['RoomUtilizationMetricsEnabled']
        data.end_of_meeting_reminder = (EndOfMeetingReminder.parse(map['EndOfMeetingReminder']) unless map['EndOfMeetingReminder'].nil?)
        data.instant_booking = (InstantBooking.parse(map['InstantBooking']) unless map['InstantBooking'].nil?)
        data.require_check_in = (RequireCheckIn.parse(map['RequireCheckIn']) unless map['RequireCheckIn'].nil?)
        return data
      end
    end

    class RequireCheckIn
      def self.parse(map)
        data = Types::RequireCheckIn.new
        data.release_after_minutes = map['ReleaseAfterMinutes']
        data.enabled = map['Enabled']
        return data
      end
    end

    class InstantBooking
      def self.parse(map)
        data = Types::InstantBooking.new
        data.duration_in_minutes = map['DurationInMinutes']
        data.enabled = map['Enabled']
        return data
      end
    end

    class EndOfMeetingReminder
      def self.parse(map)
        data = Types::EndOfMeetingReminder.new
        data.reminder_at_minutes = (EndOfMeetingReminderMinutesList.parse(map['ReminderAtMinutes']) unless map['ReminderAtMinutes'].nil?)
        data.reminder_type = map['ReminderType']
        data.enabled = map['Enabled']
        return data
      end
    end

    class EndOfMeetingReminderMinutesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetRoom
    class GetRoom
      def self.parse(http_resp)
        data = Types::GetRoomOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.room = (Room.parse(map['Room']) unless map['Room'].nil?)
        data
      end
    end

    class Room
      def self.parse(map)
        data = Types::Room.new
        data.room_arn = map['RoomArn']
        data.room_name = map['RoomName']
        data.description = map['Description']
        data.provider_calendar_id = map['ProviderCalendarId']
        data.profile_arn = map['ProfileArn']
        return data
      end
    end

    # Operation Parser for GetRoomSkillParameter
    class GetRoomSkillParameter
      def self.parse(http_resp)
        data = Types::GetRoomSkillParameterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.room_skill_parameter = (RoomSkillParameter.parse(map['RoomSkillParameter']) unless map['RoomSkillParameter'].nil?)
        data
      end
    end

    class RoomSkillParameter
      def self.parse(map)
        data = Types::RoomSkillParameter.new
        data.parameter_key = map['ParameterKey']
        data.parameter_value = map['ParameterValue']
        return data
      end
    end

    # Operation Parser for GetSkillGroup
    class GetSkillGroup
      def self.parse(http_resp)
        data = Types::GetSkillGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.skill_group = (SkillGroup.parse(map['SkillGroup']) unless map['SkillGroup'].nil?)
        data
      end
    end

    class SkillGroup
      def self.parse(map)
        data = Types::SkillGroup.new
        data.skill_group_arn = map['SkillGroupArn']
        data.skill_group_name = map['SkillGroupName']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListBusinessReportSchedules
    class ListBusinessReportSchedules
      def self.parse(http_resp)
        data = Types::ListBusinessReportSchedulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.business_report_schedules = (BusinessReportScheduleList.parse(map['BusinessReportSchedules']) unless map['BusinessReportSchedules'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BusinessReportScheduleList
      def self.parse(list)
        list.map do |value|
          BusinessReportSchedule.parse(value) unless value.nil?
        end
      end
    end

    class BusinessReportSchedule
      def self.parse(map)
        data = Types::BusinessReportSchedule.new
        data.schedule_arn = map['ScheduleArn']
        data.schedule_name = map['ScheduleName']
        data.s3_bucket_name = map['S3BucketName']
        data.s3_key_prefix = map['S3KeyPrefix']
        data.format = map['Format']
        data.content_range = (BusinessReportContentRange.parse(map['ContentRange']) unless map['ContentRange'].nil?)
        data.recurrence = (BusinessReportRecurrence.parse(map['Recurrence']) unless map['Recurrence'].nil?)
        data.last_business_report = (BusinessReport.parse(map['LastBusinessReport']) unless map['LastBusinessReport'].nil?)
        return data
      end
    end

    class BusinessReport
      def self.parse(map)
        data = Types::BusinessReport.new
        data.status = map['Status']
        data.failure_code = map['FailureCode']
        data.s3_location = (BusinessReportS3Location.parse(map['S3Location']) unless map['S3Location'].nil?)
        data.delivery_time = Time.at(map['DeliveryTime'].to_i) if map['DeliveryTime']
        data.download_url = map['DownloadUrl']
        return data
      end
    end

    class BusinessReportS3Location
      def self.parse(map)
        data = Types::BusinessReportS3Location.new
        data.path = map['Path']
        data.bucket_name = map['BucketName']
        return data
      end
    end

    class BusinessReportRecurrence
      def self.parse(map)
        data = Types::BusinessReportRecurrence.new
        data.start_date = map['StartDate']
        return data
      end
    end

    class BusinessReportContentRange
      def self.parse(map)
        data = Types::BusinessReportContentRange.new
        data.interval = map['Interval']
        return data
      end
    end

    # Operation Parser for ListConferenceProviders
    class ListConferenceProviders
      def self.parse(http_resp)
        data = Types::ListConferenceProvidersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conference_providers = (ConferenceProvidersList.parse(map['ConferenceProviders']) unless map['ConferenceProviders'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConferenceProvidersList
      def self.parse(list)
        list.map do |value|
          ConferenceProvider.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListDeviceEvents
    class ListDeviceEvents
      def self.parse(http_resp)
        data = Types::ListDeviceEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_events = (DeviceEventList.parse(map['DeviceEvents']) unless map['DeviceEvents'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeviceEventList
      def self.parse(list)
        list.map do |value|
          DeviceEvent.parse(value) unless value.nil?
        end
      end
    end

    class DeviceEvent
      def self.parse(map)
        data = Types::DeviceEvent.new
        data.type = map['Type']
        data.value = map['Value']
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        return data
      end
    end

    # Operation Parser for ListGatewayGroups
    class ListGatewayGroups
      def self.parse(http_resp)
        data = Types::ListGatewayGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_groups = (GatewayGroupSummaries.parse(map['GatewayGroups']) unless map['GatewayGroups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GatewayGroupSummaries
      def self.parse(list)
        list.map do |value|
          GatewayGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class GatewayGroupSummary
      def self.parse(map)
        data = Types::GatewayGroupSummary.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for ListGateways
    class ListGateways
      def self.parse(http_resp)
        data = Types::ListGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateways = (GatewaySummaries.parse(map['Gateways']) unless map['Gateways'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GatewaySummaries
      def self.parse(list)
        list.map do |value|
          GatewaySummary.parse(value) unless value.nil?
        end
      end
    end

    class GatewaySummary
      def self.parse(map)
        data = Types::GatewaySummary.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.gateway_group_arn = map['GatewayGroupArn']
        data.software_version = map['SoftwareVersion']
        return data
      end
    end

    # Operation Parser for ListSkills
    class ListSkills
      def self.parse(http_resp)
        data = Types::ListSkillsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.skill_summaries = (SkillSummaryList.parse(map['SkillSummaries']) unless map['SkillSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SkillSummaryList
      def self.parse(list)
        list.map do |value|
          SkillSummary.parse(value) unless value.nil?
        end
      end
    end

    class SkillSummary
      def self.parse(map)
        data = Types::SkillSummary.new
        data.skill_id = map['SkillId']
        data.skill_name = map['SkillName']
        data.supports_linking = map['SupportsLinking']
        data.enablement_type = map['EnablementType']
        data.skill_type = map['SkillType']
        return data
      end
    end

    # Operation Parser for ListSkillsStoreCategories
    class ListSkillsStoreCategories
      def self.parse(http_resp)
        data = Types::ListSkillsStoreCategoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.category_list = (CategoryList.parse(map['CategoryList']) unless map['CategoryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CategoryList
      def self.parse(list)
        list.map do |value|
          Category.parse(value) unless value.nil?
        end
      end
    end

    class Category
      def self.parse(map)
        data = Types::Category.new
        data.category_id = map['CategoryId']
        data.category_name = map['CategoryName']
        return data
      end
    end

    # Operation Parser for ListSkillsStoreSkillsByCategory
    class ListSkillsStoreSkillsByCategory
      def self.parse(http_resp)
        data = Types::ListSkillsStoreSkillsByCategoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.skills_store_skills = (SkillsStoreSkillList.parse(map['SkillsStoreSkills']) unless map['SkillsStoreSkills'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SkillsStoreSkillList
      def self.parse(list)
        list.map do |value|
          SkillsStoreSkill.parse(value) unless value.nil?
        end
      end
    end

    class SkillsStoreSkill
      def self.parse(map)
        data = Types::SkillsStoreSkill.new
        data.skill_id = map['SkillId']
        data.skill_name = map['SkillName']
        data.short_description = map['ShortDescription']
        data.icon_url = map['IconUrl']
        data.sample_utterances = (SampleUtterances.parse(map['SampleUtterances']) unless map['SampleUtterances'].nil?)
        data.skill_details = (SkillDetails.parse(map['SkillDetails']) unless map['SkillDetails'].nil?)
        data.supports_linking = map['SupportsLinking']
        return data
      end
    end

    class SkillDetails
      def self.parse(map)
        data = Types::SkillDetails.new
        data.product_description = map['ProductDescription']
        data.invocation_phrase = map['InvocationPhrase']
        data.release_date = map['ReleaseDate']
        data.end_user_license_agreement = map['EndUserLicenseAgreement']
        data.generic_keywords = (GenericKeywords.parse(map['GenericKeywords']) unless map['GenericKeywords'].nil?)
        data.bullet_points = (BulletPoints.parse(map['BulletPoints']) unless map['BulletPoints'].nil?)
        data.new_in_this_version_bullet_points = (NewInThisVersionBulletPoints.parse(map['NewInThisVersionBulletPoints']) unless map['NewInThisVersionBulletPoints'].nil?)
        data.skill_types = (SkillTypes.parse(map['SkillTypes']) unless map['SkillTypes'].nil?)
        data.reviews = (Reviews.parse(map['Reviews']) unless map['Reviews'].nil?)
        data.developer_info = (DeveloperInfo.parse(map['DeveloperInfo']) unless map['DeveloperInfo'].nil?)
        return data
      end
    end

    class DeveloperInfo
      def self.parse(map)
        data = Types::DeveloperInfo.new
        data.developer_name = map['DeveloperName']
        data.privacy_policy = map['PrivacyPolicy']
        data.email = map['Email']
        data.url = map['Url']
        return data
      end
    end

    class Reviews
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SkillTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class NewInThisVersionBulletPoints
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class BulletPoints
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class GenericKeywords
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SampleUtterances
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListSmartHomeAppliances
    class ListSmartHomeAppliances
      def self.parse(http_resp)
        data = Types::ListSmartHomeAppliancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.smart_home_appliances = (SmartHomeApplianceList.parse(map['SmartHomeAppliances']) unless map['SmartHomeAppliances'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SmartHomeApplianceList
      def self.parse(list)
        list.map do |value|
          SmartHomeAppliance.parse(value) unless value.nil?
        end
      end
    end

    class SmartHomeAppliance
      def self.parse(map)
        data = Types::SmartHomeAppliance.new
        data.friendly_name = map['FriendlyName']
        data.description = map['Description']
        data.manufacturer_name = map['ManufacturerName']
        return data
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for PutConferencePreference
    class PutConferencePreference
      def self.parse(http_resp)
        data = Types::PutConferencePreferenceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutInvitationConfiguration
    class PutInvitationConfiguration
      def self.parse(http_resp)
        data = Types::PutInvitationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutRoomSkillParameter
    class PutRoomSkillParameter
      def self.parse(http_resp)
        data = Types::PutRoomSkillParameterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutSkillAuthorization
    class PutSkillAuthorization
      def self.parse(http_resp)
        data = Types::PutSkillAuthorizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RegisterAVSDevice
    class RegisterAVSDevice
      def self.parse(http_resp)
        data = Types::RegisterAVSDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_arn = map['DeviceArn']
        data
      end
    end

    # Error Parser for InvalidDeviceException
    class InvalidDeviceException
      def self.parse(http_resp)
        data = Types::InvalidDeviceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RejectSkill
    class RejectSkill
      def self.parse(http_resp)
        data = Types::RejectSkillOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ResolveRoom
    class ResolveRoom
      def self.parse(http_resp)
        data = Types::ResolveRoomOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.room_arn = map['RoomArn']
        data.room_name = map['RoomName']
        data.room_skill_parameters = (RoomSkillParameters.parse(map['RoomSkillParameters']) unless map['RoomSkillParameters'].nil?)
        data
      end
    end

    class RoomSkillParameters
      def self.parse(list)
        list.map do |value|
          RoomSkillParameter.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for RevokeInvitation
    class RevokeInvitation
      def self.parse(http_resp)
        data = Types::RevokeInvitationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SearchAddressBooks
    class SearchAddressBooks
      def self.parse(http_resp)
        data = Types::SearchAddressBooksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.address_books = (AddressBookDataList.parse(map['AddressBooks']) unless map['AddressBooks'].nil?)
        data.next_token = map['NextToken']
        data.total_count = map['TotalCount']
        data
      end
    end

    class AddressBookDataList
      def self.parse(list)
        list.map do |value|
          AddressBookData.parse(value) unless value.nil?
        end
      end
    end

    class AddressBookData
      def self.parse(map)
        data = Types::AddressBookData.new
        data.address_book_arn = map['AddressBookArn']
        data.name = map['Name']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for SearchContacts
    class SearchContacts
      def self.parse(http_resp)
        data = Types::SearchContactsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.contacts = (ContactDataList.parse(map['Contacts']) unless map['Contacts'].nil?)
        data.next_token = map['NextToken']
        data.total_count = map['TotalCount']
        data
      end
    end

    class ContactDataList
      def self.parse(list)
        list.map do |value|
          ContactData.parse(value) unless value.nil?
        end
      end
    end

    class ContactData
      def self.parse(map)
        data = Types::ContactData.new
        data.contact_arn = map['ContactArn']
        data.display_name = map['DisplayName']
        data.first_name = map['FirstName']
        data.last_name = map['LastName']
        data.phone_number = map['PhoneNumber']
        data.phone_numbers = (PhoneNumberList.parse(map['PhoneNumbers']) unless map['PhoneNumbers'].nil?)
        data.sip_addresses = (SipAddressList.parse(map['SipAddresses']) unless map['SipAddresses'].nil?)
        return data
      end
    end

    # Operation Parser for SearchDevices
    class SearchDevices
      def self.parse(http_resp)
        data = Types::SearchDevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.devices = (DeviceDataList.parse(map['Devices']) unless map['Devices'].nil?)
        data.next_token = map['NextToken']
        data.total_count = map['TotalCount']
        data
      end
    end

    class DeviceDataList
      def self.parse(list)
        list.map do |value|
          DeviceData.parse(value) unless value.nil?
        end
      end
    end

    class DeviceData
      def self.parse(map)
        data = Types::DeviceData.new
        data.device_arn = map['DeviceArn']
        data.device_serial_number = map['DeviceSerialNumber']
        data.device_type = map['DeviceType']
        data.device_name = map['DeviceName']
        data.software_version = map['SoftwareVersion']
        data.mac_address = map['MacAddress']
        data.device_status = map['DeviceStatus']
        data.network_profile_arn = map['NetworkProfileArn']
        data.network_profile_name = map['NetworkProfileName']
        data.room_arn = map['RoomArn']
        data.room_name = map['RoomName']
        data.device_status_info = (DeviceStatusInfo.parse(map['DeviceStatusInfo']) unless map['DeviceStatusInfo'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    # Operation Parser for SearchNetworkProfiles
    class SearchNetworkProfiles
      def self.parse(http_resp)
        data = Types::SearchNetworkProfilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.network_profiles = (NetworkProfileDataList.parse(map['NetworkProfiles']) unless map['NetworkProfiles'].nil?)
        data.next_token = map['NextToken']
        data.total_count = map['TotalCount']
        data
      end
    end

    class NetworkProfileDataList
      def self.parse(list)
        list.map do |value|
          NetworkProfileData.parse(value) unless value.nil?
        end
      end
    end

    class NetworkProfileData
      def self.parse(map)
        data = Types::NetworkProfileData.new
        data.network_profile_arn = map['NetworkProfileArn']
        data.network_profile_name = map['NetworkProfileName']
        data.description = map['Description']
        data.ssid = map['Ssid']
        data.security_type = map['SecurityType']
        data.eap_method = map['EapMethod']
        data.certificate_authority_arn = map['CertificateAuthorityArn']
        return data
      end
    end

    # Operation Parser for SearchProfiles
    class SearchProfiles
      def self.parse(http_resp)
        data = Types::SearchProfilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.profiles = (ProfileDataList.parse(map['Profiles']) unless map['Profiles'].nil?)
        data.next_token = map['NextToken']
        data.total_count = map['TotalCount']
        data
      end
    end

    class ProfileDataList
      def self.parse(list)
        list.map do |value|
          ProfileData.parse(value) unless value.nil?
        end
      end
    end

    class ProfileData
      def self.parse(map)
        data = Types::ProfileData.new
        data.profile_arn = map['ProfileArn']
        data.profile_name = map['ProfileName']
        data.is_default = map['IsDefault']
        data.address = map['Address']
        data.timezone = map['Timezone']
        data.distance_unit = map['DistanceUnit']
        data.temperature_unit = map['TemperatureUnit']
        data.wake_word = map['WakeWord']
        data.locale = map['Locale']
        return data
      end
    end

    # Operation Parser for SearchRooms
    class SearchRooms
      def self.parse(http_resp)
        data = Types::SearchRoomsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rooms = (RoomDataList.parse(map['Rooms']) unless map['Rooms'].nil?)
        data.next_token = map['NextToken']
        data.total_count = map['TotalCount']
        data
      end
    end

    class RoomDataList
      def self.parse(list)
        list.map do |value|
          RoomData.parse(value) unless value.nil?
        end
      end
    end

    class RoomData
      def self.parse(map)
        data = Types::RoomData.new
        data.room_arn = map['RoomArn']
        data.room_name = map['RoomName']
        data.description = map['Description']
        data.provider_calendar_id = map['ProviderCalendarId']
        data.profile_arn = map['ProfileArn']
        data.profile_name = map['ProfileName']
        return data
      end
    end

    # Operation Parser for SearchSkillGroups
    class SearchSkillGroups
      def self.parse(http_resp)
        data = Types::SearchSkillGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.skill_groups = (SkillGroupDataList.parse(map['SkillGroups']) unless map['SkillGroups'].nil?)
        data.next_token = map['NextToken']
        data.total_count = map['TotalCount']
        data
      end
    end

    class SkillGroupDataList
      def self.parse(list)
        list.map do |value|
          SkillGroupData.parse(value) unless value.nil?
        end
      end
    end

    class SkillGroupData
      def self.parse(map)
        data = Types::SkillGroupData.new
        data.skill_group_arn = map['SkillGroupArn']
        data.skill_group_name = map['SkillGroupName']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for SearchUsers
    class SearchUsers
      def self.parse(http_resp)
        data = Types::SearchUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.users = (UserDataList.parse(map['Users']) unless map['Users'].nil?)
        data.next_token = map['NextToken']
        data.total_count = map['TotalCount']
        data
      end
    end

    class UserDataList
      def self.parse(list)
        list.map do |value|
          UserData.parse(value) unless value.nil?
        end
      end
    end

    class UserData
      def self.parse(map)
        data = Types::UserData.new
        data.user_arn = map['UserArn']
        data.first_name = map['FirstName']
        data.last_name = map['LastName']
        data.email = map['Email']
        data.enrollment_status = map['EnrollmentStatus']
        data.enrollment_id = map['EnrollmentId']
        return data
      end
    end

    # Operation Parser for SendAnnouncement
    class SendAnnouncement
      def self.parse(http_resp)
        data = Types::SendAnnouncementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.announcement_arn = map['AnnouncementArn']
        data
      end
    end

    # Operation Parser for SendInvitation
    class SendInvitation
      def self.parse(http_resp)
        data = Types::SendInvitationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidUserStatusException
    class InvalidUserStatusException
      def self.parse(http_resp)
        data = Types::InvalidUserStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartDeviceSync
    class StartDeviceSync
      def self.parse(http_resp)
        data = Types::StartDeviceSyncOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartSmartHomeApplianceDiscovery
    class StartSmartHomeApplianceDiscovery
      def self.parse(http_resp)
        data = Types::StartSmartHomeApplianceDiscoveryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateAddressBook
    class UpdateAddressBook
      def self.parse(http_resp)
        data = Types::UpdateAddressBookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NameInUseException
    class NameInUseException
      def self.parse(http_resp)
        data = Types::NameInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateBusinessReportSchedule
    class UpdateBusinessReportSchedule
      def self.parse(http_resp)
        data = Types::UpdateBusinessReportScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateConferenceProvider
    class UpdateConferenceProvider
      def self.parse(http_resp)
        data = Types::UpdateConferenceProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateContact
    class UpdateContact
      def self.parse(http_resp)
        data = Types::UpdateContactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDevice
    class UpdateDevice
      def self.parse(http_resp)
        data = Types::UpdateDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateGateway
    class UpdateGateway
      def self.parse(http_resp)
        data = Types::UpdateGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateGatewayGroup
    class UpdateGatewayGroup
      def self.parse(http_resp)
        data = Types::UpdateGatewayGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateNetworkProfile
    class UpdateNetworkProfile
      def self.parse(http_resp)
        data = Types::UpdateNetworkProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateProfile
    class UpdateProfile
      def self.parse(http_resp)
        data = Types::UpdateProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateRoom
    class UpdateRoom
      def self.parse(http_resp)
        data = Types::UpdateRoomOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateSkillGroup
    class UpdateSkillGroup
      def self.parse(http_resp)
        data = Types::UpdateSkillGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
