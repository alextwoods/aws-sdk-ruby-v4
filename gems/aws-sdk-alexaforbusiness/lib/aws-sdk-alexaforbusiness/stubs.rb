# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AlexaForBusiness
  module Stubs

    # Operation Stubber for ApproveSkill
    class ApproveSkill
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateContactWithAddressBook
    class AssociateContactWithAddressBook
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateDeviceWithNetworkProfile
    class AssociateDeviceWithNetworkProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateDeviceWithRoom
    class AssociateDeviceWithRoom
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateSkillGroupWithRoom
    class AssociateSkillGroupWithRoom
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateSkillWithSkillGroup
    class AssociateSkillWithSkillGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateSkillWithUsers
    class AssociateSkillWithUsers
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAddressBook
    class CreateAddressBook
      def self.default(visited=[])
        {
          address_book_arn: 'address_book_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AddressBookArn'] = stub[:address_book_arn] unless stub[:address_book_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateBusinessReportSchedule
    class CreateBusinessReportSchedule
      def self.default(visited=[])
        {
          schedule_arn: 'schedule_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScheduleArn'] = stub[:schedule_arn] unless stub[:schedule_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConferenceProvider
    class CreateConferenceProvider
      def self.default(visited=[])
        {
          conference_provider_arn: 'conference_provider_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConferenceProviderArn'] = stub[:conference_provider_arn] unless stub[:conference_provider_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateContact
    class CreateContact
      def self.default(visited=[])
        {
          contact_arn: 'contact_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateGatewayGroup
    class CreateGatewayGroup
      def self.default(visited=[])
        {
          gateway_group_arn: 'gateway_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayGroupArn'] = stub[:gateway_group_arn] unless stub[:gateway_group_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateNetworkProfile
    class CreateNetworkProfile
      def self.default(visited=[])
        {
          network_profile_arn: 'network_profile_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NetworkProfileArn'] = stub[:network_profile_arn] unless stub[:network_profile_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProfile
    class CreateProfile
      def self.default(visited=[])
        {
          profile_arn: 'profile_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProfileArn'] = stub[:profile_arn] unless stub[:profile_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateRoom
    class CreateRoom
      def self.default(visited=[])
        {
          room_arn: 'room_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RoomArn'] = stub[:room_arn] unless stub[:room_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSkillGroup
    class CreateSkillGroup
      def self.default(visited=[])
        {
          skill_group_arn: 'skill_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SkillGroupArn'] = stub[:skill_group_arn] unless stub[:skill_group_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
      def self.default(visited=[])
        {
          user_arn: 'user_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAddressBook
    class DeleteAddressBook
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBusinessReportSchedule
    class DeleteBusinessReportSchedule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConferenceProvider
    class DeleteConferenceProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteContact
    class DeleteContact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDevice
    class DeleteDevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDeviceUsageData
    class DeleteDeviceUsageData
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGatewayGroup
    class DeleteGatewayGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteNetworkProfile
    class DeleteNetworkProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProfile
    class DeleteProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRoom
    class DeleteRoom
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRoomSkillParameter
    class DeleteRoomSkillParameter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSkillAuthorization
    class DeleteSkillAuthorization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSkillGroup
    class DeleteSkillGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUser
    class DeleteUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateContactFromAddressBook
    class DisassociateContactFromAddressBook
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateDeviceFromRoom
    class DisassociateDeviceFromRoom
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateSkillFromSkillGroup
    class DisassociateSkillFromSkillGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateSkillFromUsers
    class DisassociateSkillFromUsers
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateSkillGroupFromRoom
    class DisassociateSkillGroupFromRoom
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ForgetSmartHomeAppliances
    class ForgetSmartHomeAppliances
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAddressBook
    class GetAddressBook
      def self.default(visited=[])
        {
          address_book: Stubs::AddressBook.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AddressBook'] = Stubs::AddressBook.stub(stub[:address_book]) unless stub[:address_book].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AddressBook
    class AddressBook
      def self.default(visited=[])
        return nil if visited.include?('AddressBook')
        visited = visited + ['AddressBook']
        {
          address_book_arn: 'address_book_arn',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::AddressBook.new
        data = {}
        data['AddressBookArn'] = stub[:address_book_arn] unless stub[:address_book_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for GetConferencePreference
    class GetConferencePreference
      def self.default(visited=[])
        {
          preference: Stubs::ConferencePreference.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Preference'] = Stubs::ConferencePreference.stub(stub[:preference]) unless stub[:preference].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ConferencePreference
    class ConferencePreference
      def self.default(visited=[])
        return nil if visited.include?('ConferencePreference')
        visited = visited + ['ConferencePreference']
        {
          default_conference_provider_arn: 'default_conference_provider_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConferencePreference.new
        data = {}
        data['DefaultConferenceProviderArn'] = stub[:default_conference_provider_arn] unless stub[:default_conference_provider_arn].nil?
        data
      end
    end

    # Operation Stubber for GetConferenceProvider
    class GetConferenceProvider
      def self.default(visited=[])
        {
          conference_provider: Stubs::ConferenceProvider.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConferenceProvider'] = Stubs::ConferenceProvider.stub(stub[:conference_provider]) unless stub[:conference_provider].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ConferenceProvider
    class ConferenceProvider
      def self.default(visited=[])
        return nil if visited.include?('ConferenceProvider')
        visited = visited + ['ConferenceProvider']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          ip_dial_in: Stubs::IPDialIn.default(visited),
          pstn_dial_in: Stubs::PSTNDialIn.default(visited),
          meeting_setting: Stubs::MeetingSetting.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConferenceProvider.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['IPDialIn'] = Stubs::IPDialIn.stub(stub[:ip_dial_in]) unless stub[:ip_dial_in].nil?
        data['PSTNDialIn'] = Stubs::PSTNDialIn.stub(stub[:pstn_dial_in]) unless stub[:pstn_dial_in].nil?
        data['MeetingSetting'] = Stubs::MeetingSetting.stub(stub[:meeting_setting]) unless stub[:meeting_setting].nil?
        data
      end
    end

    # Structure Stubber for MeetingSetting
    class MeetingSetting
      def self.default(visited=[])
        return nil if visited.include?('MeetingSetting')
        visited = visited + ['MeetingSetting']
        {
          require_pin: 'require_pin',
        }
      end

      def self.stub(stub)
        stub ||= Types::MeetingSetting.new
        data = {}
        data['RequirePin'] = stub[:require_pin] unless stub[:require_pin].nil?
        data
      end
    end

    # Structure Stubber for PSTNDialIn
    class PSTNDialIn
      def self.default(visited=[])
        return nil if visited.include?('PSTNDialIn')
        visited = visited + ['PSTNDialIn']
        {
          country_code: 'country_code',
          phone_number: 'phone_number',
          one_click_id_delay: 'one_click_id_delay',
          one_click_pin_delay: 'one_click_pin_delay',
        }
      end

      def self.stub(stub)
        stub ||= Types::PSTNDialIn.new
        data = {}
        data['CountryCode'] = stub[:country_code] unless stub[:country_code].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['OneClickIdDelay'] = stub[:one_click_id_delay] unless stub[:one_click_id_delay].nil?
        data['OneClickPinDelay'] = stub[:one_click_pin_delay] unless stub[:one_click_pin_delay].nil?
        data
      end
    end

    # Structure Stubber for IPDialIn
    class IPDialIn
      def self.default(visited=[])
        return nil if visited.include?('IPDialIn')
        visited = visited + ['IPDialIn']
        {
          endpoint: 'endpoint',
          comms_protocol: 'comms_protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::IPDialIn.new
        data = {}
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['CommsProtocol'] = stub[:comms_protocol] unless stub[:comms_protocol].nil?
        data
      end
    end

    # Operation Stubber for GetContact
    class GetContact
      def self.default(visited=[])
        {
          contact: Stubs::Contact.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Contact'] = Stubs::Contact.stub(stub[:contact]) unless stub[:contact].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Contact
    class Contact
      def self.default(visited=[])
        return nil if visited.include?('Contact')
        visited = visited + ['Contact']
        {
          contact_arn: 'contact_arn',
          display_name: 'display_name',
          first_name: 'first_name',
          last_name: 'last_name',
          phone_number: 'phone_number',
          phone_numbers: Stubs::PhoneNumberList.default(visited),
          sip_addresses: Stubs::SipAddressList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Contact.new
        data = {}
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['FirstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['LastName'] = stub[:last_name] unless stub[:last_name].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['PhoneNumbers'] = Stubs::PhoneNumberList.stub(stub[:phone_numbers]) unless stub[:phone_numbers].nil?
        data['SipAddresses'] = Stubs::SipAddressList.stub(stub[:sip_addresses]) unless stub[:sip_addresses].nil?
        data
      end
    end

    # List Stubber for SipAddressList
    class SipAddressList
      def self.default(visited=[])
        return nil if visited.include?('SipAddressList')
        visited = visited + ['SipAddressList']
        [
          Stubs::SipAddress.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SipAddress.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SipAddress
    class SipAddress
      def self.default(visited=[])
        return nil if visited.include?('SipAddress')
        visited = visited + ['SipAddress']
        {
          uri: 'uri',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SipAddress.new
        data = {}
        data['Uri'] = stub[:uri] unless stub[:uri].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for PhoneNumberList
    class PhoneNumberList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberList')
        visited = visited + ['PhoneNumberList']
        [
          Stubs::PhoneNumber.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PhoneNumber.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PhoneNumber
    class PhoneNumber
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumber')
        visited = visited + ['PhoneNumber']
        {
          number: 'number',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumber.new
        data = {}
        data['Number'] = stub[:number] unless stub[:number].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for GetDevice
    class GetDevice
      def self.default(visited=[])
        {
          device: Stubs::Device.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Device'] = Stubs::Device.stub(stub[:device]) unless stub[:device].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Device
    class Device
      def self.default(visited=[])
        return nil if visited.include?('Device')
        visited = visited + ['Device']
        {
          device_arn: 'device_arn',
          device_serial_number: 'device_serial_number',
          device_type: 'device_type',
          device_name: 'device_name',
          software_version: 'software_version',
          mac_address: 'mac_address',
          room_arn: 'room_arn',
          device_status: 'device_status',
          device_status_info: Stubs::DeviceStatusInfo.default(visited),
          network_profile_info: Stubs::DeviceNetworkProfileInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Device.new
        data = {}
        data['DeviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['DeviceSerialNumber'] = stub[:device_serial_number] unless stub[:device_serial_number].nil?
        data['DeviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['SoftwareVersion'] = stub[:software_version] unless stub[:software_version].nil?
        data['MacAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data['RoomArn'] = stub[:room_arn] unless stub[:room_arn].nil?
        data['DeviceStatus'] = stub[:device_status] unless stub[:device_status].nil?
        data['DeviceStatusInfo'] = Stubs::DeviceStatusInfo.stub(stub[:device_status_info]) unless stub[:device_status_info].nil?
        data['NetworkProfileInfo'] = Stubs::DeviceNetworkProfileInfo.stub(stub[:network_profile_info]) unless stub[:network_profile_info].nil?
        data
      end
    end

    # Structure Stubber for DeviceNetworkProfileInfo
    class DeviceNetworkProfileInfo
      def self.default(visited=[])
        return nil if visited.include?('DeviceNetworkProfileInfo')
        visited = visited + ['DeviceNetworkProfileInfo']
        {
          network_profile_arn: 'network_profile_arn',
          certificate_arn: 'certificate_arn',
          certificate_expiration_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceNetworkProfileInfo.new
        data = {}
        data['NetworkProfileArn'] = stub[:network_profile_arn] unless stub[:network_profile_arn].nil?
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['CertificateExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:certificate_expiration_time]).to_i unless stub[:certificate_expiration_time].nil?
        data
      end
    end

    # Structure Stubber for DeviceStatusInfo
    class DeviceStatusInfo
      def self.default(visited=[])
        return nil if visited.include?('DeviceStatusInfo')
        visited = visited + ['DeviceStatusInfo']
        {
          device_status_details: Stubs::DeviceStatusDetails.default(visited),
          connection_status: 'connection_status',
          connection_status_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceStatusInfo.new
        data = {}
        data['DeviceStatusDetails'] = Stubs::DeviceStatusDetails.stub(stub[:device_status_details]) unless stub[:device_status_details].nil?
        data['ConnectionStatus'] = stub[:connection_status] unless stub[:connection_status].nil?
        data['ConnectionStatusUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:connection_status_updated_time]).to_i unless stub[:connection_status_updated_time].nil?
        data
      end
    end

    # List Stubber for DeviceStatusDetails
    class DeviceStatusDetails
      def self.default(visited=[])
        return nil if visited.include?('DeviceStatusDetails')
        visited = visited + ['DeviceStatusDetails']
        [
          Stubs::DeviceStatusDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeviceStatusDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceStatusDetail
    class DeviceStatusDetail
      def self.default(visited=[])
        return nil if visited.include?('DeviceStatusDetail')
        visited = visited + ['DeviceStatusDetail']
        {
          feature: 'feature',
          code: 'code',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceStatusDetail.new
        data = {}
        data['Feature'] = stub[:feature] unless stub[:feature].nil?
        data['Code'] = stub[:code] unless stub[:code].nil?
        data
      end
    end

    # Operation Stubber for GetGateway
    class GetGateway
      def self.default(visited=[])
        {
          gateway: Stubs::Gateway.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Gateway'] = Stubs::Gateway.stub(stub[:gateway]) unless stub[:gateway].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Gateway
    class Gateway
      def self.default(visited=[])
        return nil if visited.include?('Gateway')
        visited = visited + ['Gateway']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          gateway_group_arn: 'gateway_group_arn',
          software_version: 'software_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Gateway.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['GatewayGroupArn'] = stub[:gateway_group_arn] unless stub[:gateway_group_arn].nil?
        data['SoftwareVersion'] = stub[:software_version] unless stub[:software_version].nil?
        data
      end
    end

    # Operation Stubber for GetGatewayGroup
    class GetGatewayGroup
      def self.default(visited=[])
        {
          gateway_group: Stubs::GatewayGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayGroup'] = Stubs::GatewayGroup.stub(stub[:gateway_group]) unless stub[:gateway_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for GatewayGroup
    class GatewayGroup
      def self.default(visited=[])
        return nil if visited.include?('GatewayGroup')
        visited = visited + ['GatewayGroup']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayGroup.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for GetInvitationConfiguration
    class GetInvitationConfiguration
      def self.default(visited=[])
        {
          organization_name: 'organization_name',
          contact_email: 'contact_email',
          private_skill_ids: Stubs::ShortSkillIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OrganizationName'] = stub[:organization_name] unless stub[:organization_name].nil?
        data['ContactEmail'] = stub[:contact_email] unless stub[:contact_email].nil?
        data['PrivateSkillIds'] = Stubs::ShortSkillIdList.stub(stub[:private_skill_ids]) unless stub[:private_skill_ids].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ShortSkillIdList
    class ShortSkillIdList
      def self.default(visited=[])
        return nil if visited.include?('ShortSkillIdList')
        visited = visited + ['ShortSkillIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetNetworkProfile
    class GetNetworkProfile
      def self.default(visited=[])
        {
          network_profile: Stubs::NetworkProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NetworkProfile'] = Stubs::NetworkProfile.stub(stub[:network_profile]) unless stub[:network_profile].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for NetworkProfile
    class NetworkProfile
      def self.default(visited=[])
        return nil if visited.include?('NetworkProfile')
        visited = visited + ['NetworkProfile']
        {
          network_profile_arn: 'network_profile_arn',
          network_profile_name: 'network_profile_name',
          description: 'description',
          ssid: 'ssid',
          security_type: 'security_type',
          eap_method: 'eap_method',
          current_password: 'current_password',
          next_password: 'next_password',
          certificate_authority_arn: 'certificate_authority_arn',
          trust_anchors: Stubs::TrustAnchorList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkProfile.new
        data = {}
        data['NetworkProfileArn'] = stub[:network_profile_arn] unless stub[:network_profile_arn].nil?
        data['NetworkProfileName'] = stub[:network_profile_name] unless stub[:network_profile_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Ssid'] = stub[:ssid] unless stub[:ssid].nil?
        data['SecurityType'] = stub[:security_type] unless stub[:security_type].nil?
        data['EapMethod'] = stub[:eap_method] unless stub[:eap_method].nil?
        data['CurrentPassword'] = stub[:current_password] unless stub[:current_password].nil?
        data['NextPassword'] = stub[:next_password] unless stub[:next_password].nil?
        data['CertificateAuthorityArn'] = stub[:certificate_authority_arn] unless stub[:certificate_authority_arn].nil?
        data['TrustAnchors'] = Stubs::TrustAnchorList.stub(stub[:trust_anchors]) unless stub[:trust_anchors].nil?
        data
      end
    end

    # List Stubber for TrustAnchorList
    class TrustAnchorList
      def self.default(visited=[])
        return nil if visited.include?('TrustAnchorList')
        visited = visited + ['TrustAnchorList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetProfile
    class GetProfile
      def self.default(visited=[])
        {
          profile: Stubs::Profile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Profile'] = Stubs::Profile.stub(stub[:profile]) unless stub[:profile].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Profile
    class Profile
      def self.default(visited=[])
        return nil if visited.include?('Profile')
        visited = visited + ['Profile']
        {
          profile_arn: 'profile_arn',
          profile_name: 'profile_name',
          is_default: false,
          address: 'address',
          timezone: 'timezone',
          distance_unit: 'distance_unit',
          temperature_unit: 'temperature_unit',
          wake_word: 'wake_word',
          locale: 'locale',
          setup_mode_disabled: false,
          max_volume_limit: 1,
          pstn_enabled: false,
          data_retention_opt_in: false,
          address_book_arn: 'address_book_arn',
          meeting_room_configuration: Stubs::MeetingRoomConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Profile.new
        data = {}
        data['ProfileArn'] = stub[:profile_arn] unless stub[:profile_arn].nil?
        data['ProfileName'] = stub[:profile_name] unless stub[:profile_name].nil?
        data['IsDefault'] = stub[:is_default] unless stub[:is_default].nil?
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['DistanceUnit'] = stub[:distance_unit] unless stub[:distance_unit].nil?
        data['TemperatureUnit'] = stub[:temperature_unit] unless stub[:temperature_unit].nil?
        data['WakeWord'] = stub[:wake_word] unless stub[:wake_word].nil?
        data['Locale'] = stub[:locale] unless stub[:locale].nil?
        data['SetupModeDisabled'] = stub[:setup_mode_disabled] unless stub[:setup_mode_disabled].nil?
        data['MaxVolumeLimit'] = stub[:max_volume_limit] unless stub[:max_volume_limit].nil?
        data['PSTNEnabled'] = stub[:pstn_enabled] unless stub[:pstn_enabled].nil?
        data['DataRetentionOptIn'] = stub[:data_retention_opt_in] unless stub[:data_retention_opt_in].nil?
        data['AddressBookArn'] = stub[:address_book_arn] unless stub[:address_book_arn].nil?
        data['MeetingRoomConfiguration'] = Stubs::MeetingRoomConfiguration.stub(stub[:meeting_room_configuration]) unless stub[:meeting_room_configuration].nil?
        data
      end
    end

    # Structure Stubber for MeetingRoomConfiguration
    class MeetingRoomConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MeetingRoomConfiguration')
        visited = visited + ['MeetingRoomConfiguration']
        {
          room_utilization_metrics_enabled: false,
          end_of_meeting_reminder: Stubs::EndOfMeetingReminder.default(visited),
          instant_booking: Stubs::InstantBooking.default(visited),
          require_check_in: Stubs::RequireCheckIn.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MeetingRoomConfiguration.new
        data = {}
        data['RoomUtilizationMetricsEnabled'] = stub[:room_utilization_metrics_enabled] unless stub[:room_utilization_metrics_enabled].nil?
        data['EndOfMeetingReminder'] = Stubs::EndOfMeetingReminder.stub(stub[:end_of_meeting_reminder]) unless stub[:end_of_meeting_reminder].nil?
        data['InstantBooking'] = Stubs::InstantBooking.stub(stub[:instant_booking]) unless stub[:instant_booking].nil?
        data['RequireCheckIn'] = Stubs::RequireCheckIn.stub(stub[:require_check_in]) unless stub[:require_check_in].nil?
        data
      end
    end

    # Structure Stubber for RequireCheckIn
    class RequireCheckIn
      def self.default(visited=[])
        return nil if visited.include?('RequireCheckIn')
        visited = visited + ['RequireCheckIn']
        {
          release_after_minutes: 1,
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RequireCheckIn.new
        data = {}
        data['ReleaseAfterMinutes'] = stub[:release_after_minutes] unless stub[:release_after_minutes].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for InstantBooking
    class InstantBooking
      def self.default(visited=[])
        return nil if visited.include?('InstantBooking')
        visited = visited + ['InstantBooking']
        {
          duration_in_minutes: 1,
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstantBooking.new
        data = {}
        data['DurationInMinutes'] = stub[:duration_in_minutes] unless stub[:duration_in_minutes].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for EndOfMeetingReminder
    class EndOfMeetingReminder
      def self.default(visited=[])
        return nil if visited.include?('EndOfMeetingReminder')
        visited = visited + ['EndOfMeetingReminder']
        {
          reminder_at_minutes: Stubs::EndOfMeetingReminderMinutesList.default(visited),
          reminder_type: 'reminder_type',
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EndOfMeetingReminder.new
        data = {}
        data['ReminderAtMinutes'] = Stubs::EndOfMeetingReminderMinutesList.stub(stub[:reminder_at_minutes]) unless stub[:reminder_at_minutes].nil?
        data['ReminderType'] = stub[:reminder_type] unless stub[:reminder_type].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # List Stubber for EndOfMeetingReminderMinutesList
    class EndOfMeetingReminderMinutesList
      def self.default(visited=[])
        return nil if visited.include?('EndOfMeetingReminderMinutesList')
        visited = visited + ['EndOfMeetingReminderMinutesList']
        [
          1
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetRoom
    class GetRoom
      def self.default(visited=[])
        {
          room: Stubs::Room.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Room'] = Stubs::Room.stub(stub[:room]) unless stub[:room].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Room
    class Room
      def self.default(visited=[])
        return nil if visited.include?('Room')
        visited = visited + ['Room']
        {
          room_arn: 'room_arn',
          room_name: 'room_name',
          description: 'description',
          provider_calendar_id: 'provider_calendar_id',
          profile_arn: 'profile_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Room.new
        data = {}
        data['RoomArn'] = stub[:room_arn] unless stub[:room_arn].nil?
        data['RoomName'] = stub[:room_name] unless stub[:room_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ProviderCalendarId'] = stub[:provider_calendar_id] unless stub[:provider_calendar_id].nil?
        data['ProfileArn'] = stub[:profile_arn] unless stub[:profile_arn].nil?
        data
      end
    end

    # Operation Stubber for GetRoomSkillParameter
    class GetRoomSkillParameter
      def self.default(visited=[])
        {
          room_skill_parameter: Stubs::RoomSkillParameter.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RoomSkillParameter'] = Stubs::RoomSkillParameter.stub(stub[:room_skill_parameter]) unless stub[:room_skill_parameter].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RoomSkillParameter
    class RoomSkillParameter
      def self.default(visited=[])
        return nil if visited.include?('RoomSkillParameter')
        visited = visited + ['RoomSkillParameter']
        {
          parameter_key: 'parameter_key',
          parameter_value: 'parameter_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::RoomSkillParameter.new
        data = {}
        data['ParameterKey'] = stub[:parameter_key] unless stub[:parameter_key].nil?
        data['ParameterValue'] = stub[:parameter_value] unless stub[:parameter_value].nil?
        data
      end
    end

    # Operation Stubber for GetSkillGroup
    class GetSkillGroup
      def self.default(visited=[])
        {
          skill_group: Stubs::SkillGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SkillGroup'] = Stubs::SkillGroup.stub(stub[:skill_group]) unless stub[:skill_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SkillGroup
    class SkillGroup
      def self.default(visited=[])
        return nil if visited.include?('SkillGroup')
        visited = visited + ['SkillGroup']
        {
          skill_group_arn: 'skill_group_arn',
          skill_group_name: 'skill_group_name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::SkillGroup.new
        data = {}
        data['SkillGroupArn'] = stub[:skill_group_arn] unless stub[:skill_group_arn].nil?
        data['SkillGroupName'] = stub[:skill_group_name] unless stub[:skill_group_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListBusinessReportSchedules
    class ListBusinessReportSchedules
      def self.default(visited=[])
        {
          business_report_schedules: Stubs::BusinessReportScheduleList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BusinessReportSchedules'] = Stubs::BusinessReportScheduleList.stub(stub[:business_report_schedules]) unless stub[:business_report_schedules].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BusinessReportScheduleList
    class BusinessReportScheduleList
      def self.default(visited=[])
        return nil if visited.include?('BusinessReportScheduleList')
        visited = visited + ['BusinessReportScheduleList']
        [
          Stubs::BusinessReportSchedule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BusinessReportSchedule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BusinessReportSchedule
    class BusinessReportSchedule
      def self.default(visited=[])
        return nil if visited.include?('BusinessReportSchedule')
        visited = visited + ['BusinessReportSchedule']
        {
          schedule_arn: 'schedule_arn',
          schedule_name: 'schedule_name',
          s3_bucket_name: 's3_bucket_name',
          s3_key_prefix: 's3_key_prefix',
          format: 'format',
          content_range: Stubs::BusinessReportContentRange.default(visited),
          recurrence: Stubs::BusinessReportRecurrence.default(visited),
          last_business_report: Stubs::BusinessReport.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BusinessReportSchedule.new
        data = {}
        data['ScheduleArn'] = stub[:schedule_arn] unless stub[:schedule_arn].nil?
        data['ScheduleName'] = stub[:schedule_name] unless stub[:schedule_name].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['ContentRange'] = Stubs::BusinessReportContentRange.stub(stub[:content_range]) unless stub[:content_range].nil?
        data['Recurrence'] = Stubs::BusinessReportRecurrence.stub(stub[:recurrence]) unless stub[:recurrence].nil?
        data['LastBusinessReport'] = Stubs::BusinessReport.stub(stub[:last_business_report]) unless stub[:last_business_report].nil?
        data
      end
    end

    # Structure Stubber for BusinessReport
    class BusinessReport
      def self.default(visited=[])
        return nil if visited.include?('BusinessReport')
        visited = visited + ['BusinessReport']
        {
          status: 'status',
          failure_code: 'failure_code',
          s3_location: Stubs::BusinessReportS3Location.default(visited),
          delivery_time: Time.now,
          download_url: 'download_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::BusinessReport.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FailureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['S3Location'] = Stubs::BusinessReportS3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data['DeliveryTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:delivery_time]).to_i unless stub[:delivery_time].nil?
        data['DownloadUrl'] = stub[:download_url] unless stub[:download_url].nil?
        data
      end
    end

    # Structure Stubber for BusinessReportS3Location
    class BusinessReportS3Location
      def self.default(visited=[])
        return nil if visited.include?('BusinessReportS3Location')
        visited = visited + ['BusinessReportS3Location']
        {
          path: 'path',
          bucket_name: 'bucket_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::BusinessReportS3Location.new
        data = {}
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data
      end
    end

    # Structure Stubber for BusinessReportRecurrence
    class BusinessReportRecurrence
      def self.default(visited=[])
        return nil if visited.include?('BusinessReportRecurrence')
        visited = visited + ['BusinessReportRecurrence']
        {
          start_date: 'start_date',
        }
      end

      def self.stub(stub)
        stub ||= Types::BusinessReportRecurrence.new
        data = {}
        data['StartDate'] = stub[:start_date] unless stub[:start_date].nil?
        data
      end
    end

    # Structure Stubber for BusinessReportContentRange
    class BusinessReportContentRange
      def self.default(visited=[])
        return nil if visited.include?('BusinessReportContentRange')
        visited = visited + ['BusinessReportContentRange']
        {
          interval: 'interval',
        }
      end

      def self.stub(stub)
        stub ||= Types::BusinessReportContentRange.new
        data = {}
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data
      end
    end

    # Operation Stubber for ListConferenceProviders
    class ListConferenceProviders
      def self.default(visited=[])
        {
          conference_providers: Stubs::ConferenceProvidersList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConferenceProviders'] = Stubs::ConferenceProvidersList.stub(stub[:conference_providers]) unless stub[:conference_providers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConferenceProvidersList
    class ConferenceProvidersList
      def self.default(visited=[])
        return nil if visited.include?('ConferenceProvidersList')
        visited = visited + ['ConferenceProvidersList']
        [
          Stubs::ConferenceProvider.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConferenceProvider.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDeviceEvents
    class ListDeviceEvents
      def self.default(visited=[])
        {
          device_events: Stubs::DeviceEventList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeviceEvents'] = Stubs::DeviceEventList.stub(stub[:device_events]) unless stub[:device_events].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeviceEventList
    class DeviceEventList
      def self.default(visited=[])
        return nil if visited.include?('DeviceEventList')
        visited = visited + ['DeviceEventList']
        [
          Stubs::DeviceEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeviceEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceEvent
    class DeviceEvent
      def self.default(visited=[])
        return nil if visited.include?('DeviceEvent')
        visited = visited + ['DeviceEvent']
        {
          type: 'type',
          value: 'value',
          timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceEvent.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data
      end
    end

    # Operation Stubber for ListGatewayGroups
    class ListGatewayGroups
      def self.default(visited=[])
        {
          gateway_groups: Stubs::GatewayGroupSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayGroups'] = Stubs::GatewayGroupSummaries.stub(stub[:gateway_groups]) unless stub[:gateway_groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GatewayGroupSummaries
    class GatewayGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('GatewayGroupSummaries')
        visited = visited + ['GatewayGroupSummaries']
        [
          Stubs::GatewayGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GatewayGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GatewayGroupSummary
    class GatewayGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('GatewayGroupSummary')
        visited = visited + ['GatewayGroupSummary']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayGroupSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListGateways
    class ListGateways
      def self.default(visited=[])
        {
          gateways: Stubs::GatewaySummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Gateways'] = Stubs::GatewaySummaries.stub(stub[:gateways]) unless stub[:gateways].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GatewaySummaries
    class GatewaySummaries
      def self.default(visited=[])
        return nil if visited.include?('GatewaySummaries')
        visited = visited + ['GatewaySummaries']
        [
          Stubs::GatewaySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GatewaySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GatewaySummary
    class GatewaySummary
      def self.default(visited=[])
        return nil if visited.include?('GatewaySummary')
        visited = visited + ['GatewaySummary']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          gateway_group_arn: 'gateway_group_arn',
          software_version: 'software_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewaySummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['GatewayGroupArn'] = stub[:gateway_group_arn] unless stub[:gateway_group_arn].nil?
        data['SoftwareVersion'] = stub[:software_version] unless stub[:software_version].nil?
        data
      end
    end

    # Operation Stubber for ListSkills
    class ListSkills
      def self.default(visited=[])
        {
          skill_summaries: Stubs::SkillSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SkillSummaries'] = Stubs::SkillSummaryList.stub(stub[:skill_summaries]) unless stub[:skill_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SkillSummaryList
    class SkillSummaryList
      def self.default(visited=[])
        return nil if visited.include?('SkillSummaryList')
        visited = visited + ['SkillSummaryList']
        [
          Stubs::SkillSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SkillSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SkillSummary
    class SkillSummary
      def self.default(visited=[])
        return nil if visited.include?('SkillSummary')
        visited = visited + ['SkillSummary']
        {
          skill_id: 'skill_id',
          skill_name: 'skill_name',
          supports_linking: false,
          enablement_type: 'enablement_type',
          skill_type: 'skill_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SkillSummary.new
        data = {}
        data['SkillId'] = stub[:skill_id] unless stub[:skill_id].nil?
        data['SkillName'] = stub[:skill_name] unless stub[:skill_name].nil?
        data['SupportsLinking'] = stub[:supports_linking] unless stub[:supports_linking].nil?
        data['EnablementType'] = stub[:enablement_type] unless stub[:enablement_type].nil?
        data['SkillType'] = stub[:skill_type] unless stub[:skill_type].nil?
        data
      end
    end

    # Operation Stubber for ListSkillsStoreCategories
    class ListSkillsStoreCategories
      def self.default(visited=[])
        {
          category_list: Stubs::CategoryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CategoryList'] = Stubs::CategoryList.stub(stub[:category_list]) unless stub[:category_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CategoryList
    class CategoryList
      def self.default(visited=[])
        return nil if visited.include?('CategoryList')
        visited = visited + ['CategoryList']
        [
          Stubs::Category.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Category.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Category
    class Category
      def self.default(visited=[])
        return nil if visited.include?('Category')
        visited = visited + ['Category']
        {
          category_id: 1,
          category_name: 'category_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Category.new
        data = {}
        data['CategoryId'] = stub[:category_id] unless stub[:category_id].nil?
        data['CategoryName'] = stub[:category_name] unless stub[:category_name].nil?
        data
      end
    end

    # Operation Stubber for ListSkillsStoreSkillsByCategory
    class ListSkillsStoreSkillsByCategory
      def self.default(visited=[])
        {
          skills_store_skills: Stubs::SkillsStoreSkillList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SkillsStoreSkills'] = Stubs::SkillsStoreSkillList.stub(stub[:skills_store_skills]) unless stub[:skills_store_skills].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SkillsStoreSkillList
    class SkillsStoreSkillList
      def self.default(visited=[])
        return nil if visited.include?('SkillsStoreSkillList')
        visited = visited + ['SkillsStoreSkillList']
        [
          Stubs::SkillsStoreSkill.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SkillsStoreSkill.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SkillsStoreSkill
    class SkillsStoreSkill
      def self.default(visited=[])
        return nil if visited.include?('SkillsStoreSkill')
        visited = visited + ['SkillsStoreSkill']
        {
          skill_id: 'skill_id',
          skill_name: 'skill_name',
          short_description: 'short_description',
          icon_url: 'icon_url',
          sample_utterances: Stubs::SampleUtterances.default(visited),
          skill_details: Stubs::SkillDetails.default(visited),
          supports_linking: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SkillsStoreSkill.new
        data = {}
        data['SkillId'] = stub[:skill_id] unless stub[:skill_id].nil?
        data['SkillName'] = stub[:skill_name] unless stub[:skill_name].nil?
        data['ShortDescription'] = stub[:short_description] unless stub[:short_description].nil?
        data['IconUrl'] = stub[:icon_url] unless stub[:icon_url].nil?
        data['SampleUtterances'] = Stubs::SampleUtterances.stub(stub[:sample_utterances]) unless stub[:sample_utterances].nil?
        data['SkillDetails'] = Stubs::SkillDetails.stub(stub[:skill_details]) unless stub[:skill_details].nil?
        data['SupportsLinking'] = stub[:supports_linking] unless stub[:supports_linking].nil?
        data
      end
    end

    # Structure Stubber for SkillDetails
    class SkillDetails
      def self.default(visited=[])
        return nil if visited.include?('SkillDetails')
        visited = visited + ['SkillDetails']
        {
          product_description: 'product_description',
          invocation_phrase: 'invocation_phrase',
          release_date: 'release_date',
          end_user_license_agreement: 'end_user_license_agreement',
          generic_keywords: Stubs::GenericKeywords.default(visited),
          bullet_points: Stubs::BulletPoints.default(visited),
          new_in_this_version_bullet_points: Stubs::NewInThisVersionBulletPoints.default(visited),
          skill_types: Stubs::SkillTypes.default(visited),
          reviews: Stubs::Reviews.default(visited),
          developer_info: Stubs::DeveloperInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SkillDetails.new
        data = {}
        data['ProductDescription'] = stub[:product_description] unless stub[:product_description].nil?
        data['InvocationPhrase'] = stub[:invocation_phrase] unless stub[:invocation_phrase].nil?
        data['ReleaseDate'] = stub[:release_date] unless stub[:release_date].nil?
        data['EndUserLicenseAgreement'] = stub[:end_user_license_agreement] unless stub[:end_user_license_agreement].nil?
        data['GenericKeywords'] = Stubs::GenericKeywords.stub(stub[:generic_keywords]) unless stub[:generic_keywords].nil?
        data['BulletPoints'] = Stubs::BulletPoints.stub(stub[:bullet_points]) unless stub[:bullet_points].nil?
        data['NewInThisVersionBulletPoints'] = Stubs::NewInThisVersionBulletPoints.stub(stub[:new_in_this_version_bullet_points]) unless stub[:new_in_this_version_bullet_points].nil?
        data['SkillTypes'] = Stubs::SkillTypes.stub(stub[:skill_types]) unless stub[:skill_types].nil?
        data['Reviews'] = Stubs::Reviews.stub(stub[:reviews]) unless stub[:reviews].nil?
        data['DeveloperInfo'] = Stubs::DeveloperInfo.stub(stub[:developer_info]) unless stub[:developer_info].nil?
        data
      end
    end

    # Structure Stubber for DeveloperInfo
    class DeveloperInfo
      def self.default(visited=[])
        return nil if visited.include?('DeveloperInfo')
        visited = visited + ['DeveloperInfo']
        {
          developer_name: 'developer_name',
          privacy_policy: 'privacy_policy',
          email: 'email',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeveloperInfo.new
        data = {}
        data['DeveloperName'] = stub[:developer_name] unless stub[:developer_name].nil?
        data['PrivacyPolicy'] = stub[:privacy_policy] unless stub[:privacy_policy].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Map Stubber for Reviews
    class Reviews
      def self.default(visited=[])
        return nil if visited.include?('Reviews')
        visited = visited + ['Reviews']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for SkillTypes
    class SkillTypes
      def self.default(visited=[])
        return nil if visited.include?('SkillTypes')
        visited = visited + ['SkillTypes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for NewInThisVersionBulletPoints
    class NewInThisVersionBulletPoints
      def self.default(visited=[])
        return nil if visited.include?('NewInThisVersionBulletPoints')
        visited = visited + ['NewInThisVersionBulletPoints']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for BulletPoints
    class BulletPoints
      def self.default(visited=[])
        return nil if visited.include?('BulletPoints')
        visited = visited + ['BulletPoints']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for GenericKeywords
    class GenericKeywords
      def self.default(visited=[])
        return nil if visited.include?('GenericKeywords')
        visited = visited + ['GenericKeywords']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SampleUtterances
    class SampleUtterances
      def self.default(visited=[])
        return nil if visited.include?('SampleUtterances')
        visited = visited + ['SampleUtterances']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSmartHomeAppliances
    class ListSmartHomeAppliances
      def self.default(visited=[])
        {
          smart_home_appliances: Stubs::SmartHomeApplianceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SmartHomeAppliances'] = Stubs::SmartHomeApplianceList.stub(stub[:smart_home_appliances]) unless stub[:smart_home_appliances].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SmartHomeApplianceList
    class SmartHomeApplianceList
      def self.default(visited=[])
        return nil if visited.include?('SmartHomeApplianceList')
        visited = visited + ['SmartHomeApplianceList']
        [
          Stubs::SmartHomeAppliance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SmartHomeAppliance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SmartHomeAppliance
    class SmartHomeAppliance
      def self.default(visited=[])
        return nil if visited.include?('SmartHomeAppliance')
        visited = visited + ['SmartHomeAppliance']
        {
          friendly_name: 'friendly_name',
          description: 'description',
          manufacturer_name: 'manufacturer_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SmartHomeAppliance.new
        data = {}
        data['FriendlyName'] = stub[:friendly_name] unless stub[:friendly_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ManufacturerName'] = stub[:manufacturer_name] unless stub[:manufacturer_name].nil?
        data
      end
    end

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutConferencePreference
    class PutConferencePreference
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutInvitationConfiguration
    class PutInvitationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRoomSkillParameter
    class PutRoomSkillParameter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutSkillAuthorization
    class PutSkillAuthorization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterAVSDevice
    class RegisterAVSDevice
      def self.default(visited=[])
        {
          device_arn: 'device_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RejectSkill
    class RejectSkill
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResolveRoom
    class ResolveRoom
      def self.default(visited=[])
        {
          room_arn: 'room_arn',
          room_name: 'room_name',
          room_skill_parameters: Stubs::RoomSkillParameters.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RoomArn'] = stub[:room_arn] unless stub[:room_arn].nil?
        data['RoomName'] = stub[:room_name] unless stub[:room_name].nil?
        data['RoomSkillParameters'] = Stubs::RoomSkillParameters.stub(stub[:room_skill_parameters]) unless stub[:room_skill_parameters].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RoomSkillParameters
    class RoomSkillParameters
      def self.default(visited=[])
        return nil if visited.include?('RoomSkillParameters')
        visited = visited + ['RoomSkillParameters']
        [
          Stubs::RoomSkillParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RoomSkillParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for RevokeInvitation
    class RevokeInvitation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchAddressBooks
    class SearchAddressBooks
      def self.default(visited=[])
        {
          address_books: Stubs::AddressBookDataList.default(visited),
          next_token: 'next_token',
          total_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AddressBooks'] = Stubs::AddressBookDataList.stub(stub[:address_books]) unless stub[:address_books].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AddressBookDataList
    class AddressBookDataList
      def self.default(visited=[])
        return nil if visited.include?('AddressBookDataList')
        visited = visited + ['AddressBookDataList']
        [
          Stubs::AddressBookData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AddressBookData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AddressBookData
    class AddressBookData
      def self.default(visited=[])
        return nil if visited.include?('AddressBookData')
        visited = visited + ['AddressBookData']
        {
          address_book_arn: 'address_book_arn',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::AddressBookData.new
        data = {}
        data['AddressBookArn'] = stub[:address_book_arn] unless stub[:address_book_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for SearchContacts
    class SearchContacts
      def self.default(visited=[])
        {
          contacts: Stubs::ContactDataList.default(visited),
          next_token: 'next_token',
          total_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Contacts'] = Stubs::ContactDataList.stub(stub[:contacts]) unless stub[:contacts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContactDataList
    class ContactDataList
      def self.default(visited=[])
        return nil if visited.include?('ContactDataList')
        visited = visited + ['ContactDataList']
        [
          Stubs::ContactData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContactData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContactData
    class ContactData
      def self.default(visited=[])
        return nil if visited.include?('ContactData')
        visited = visited + ['ContactData']
        {
          contact_arn: 'contact_arn',
          display_name: 'display_name',
          first_name: 'first_name',
          last_name: 'last_name',
          phone_number: 'phone_number',
          phone_numbers: Stubs::PhoneNumberList.default(visited),
          sip_addresses: Stubs::SipAddressList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactData.new
        data = {}
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['FirstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['LastName'] = stub[:last_name] unless stub[:last_name].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['PhoneNumbers'] = Stubs::PhoneNumberList.stub(stub[:phone_numbers]) unless stub[:phone_numbers].nil?
        data['SipAddresses'] = Stubs::SipAddressList.stub(stub[:sip_addresses]) unless stub[:sip_addresses].nil?
        data
      end
    end

    # Operation Stubber for SearchDevices
    class SearchDevices
      def self.default(visited=[])
        {
          devices: Stubs::DeviceDataList.default(visited),
          next_token: 'next_token',
          total_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Devices'] = Stubs::DeviceDataList.stub(stub[:devices]) unless stub[:devices].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeviceDataList
    class DeviceDataList
      def self.default(visited=[])
        return nil if visited.include?('DeviceDataList')
        visited = visited + ['DeviceDataList']
        [
          Stubs::DeviceData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeviceData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceData
    class DeviceData
      def self.default(visited=[])
        return nil if visited.include?('DeviceData')
        visited = visited + ['DeviceData']
        {
          device_arn: 'device_arn',
          device_serial_number: 'device_serial_number',
          device_type: 'device_type',
          device_name: 'device_name',
          software_version: 'software_version',
          mac_address: 'mac_address',
          device_status: 'device_status',
          network_profile_arn: 'network_profile_arn',
          network_profile_name: 'network_profile_name',
          room_arn: 'room_arn',
          room_name: 'room_name',
          device_status_info: Stubs::DeviceStatusInfo.default(visited),
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceData.new
        data = {}
        data['DeviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['DeviceSerialNumber'] = stub[:device_serial_number] unless stub[:device_serial_number].nil?
        data['DeviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['SoftwareVersion'] = stub[:software_version] unless stub[:software_version].nil?
        data['MacAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data['DeviceStatus'] = stub[:device_status] unless stub[:device_status].nil?
        data['NetworkProfileArn'] = stub[:network_profile_arn] unless stub[:network_profile_arn].nil?
        data['NetworkProfileName'] = stub[:network_profile_name] unless stub[:network_profile_name].nil?
        data['RoomArn'] = stub[:room_arn] unless stub[:room_arn].nil?
        data['RoomName'] = stub[:room_name] unless stub[:room_name].nil?
        data['DeviceStatusInfo'] = Stubs::DeviceStatusInfo.stub(stub[:device_status_info]) unless stub[:device_status_info].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for SearchNetworkProfiles
    class SearchNetworkProfiles
      def self.default(visited=[])
        {
          network_profiles: Stubs::NetworkProfileDataList.default(visited),
          next_token: 'next_token',
          total_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NetworkProfiles'] = Stubs::NetworkProfileDataList.stub(stub[:network_profiles]) unless stub[:network_profiles].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NetworkProfileDataList
    class NetworkProfileDataList
      def self.default(visited=[])
        return nil if visited.include?('NetworkProfileDataList')
        visited = visited + ['NetworkProfileDataList']
        [
          Stubs::NetworkProfileData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkProfileData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkProfileData
    class NetworkProfileData
      def self.default(visited=[])
        return nil if visited.include?('NetworkProfileData')
        visited = visited + ['NetworkProfileData']
        {
          network_profile_arn: 'network_profile_arn',
          network_profile_name: 'network_profile_name',
          description: 'description',
          ssid: 'ssid',
          security_type: 'security_type',
          eap_method: 'eap_method',
          certificate_authority_arn: 'certificate_authority_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkProfileData.new
        data = {}
        data['NetworkProfileArn'] = stub[:network_profile_arn] unless stub[:network_profile_arn].nil?
        data['NetworkProfileName'] = stub[:network_profile_name] unless stub[:network_profile_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Ssid'] = stub[:ssid] unless stub[:ssid].nil?
        data['SecurityType'] = stub[:security_type] unless stub[:security_type].nil?
        data['EapMethod'] = stub[:eap_method] unless stub[:eap_method].nil?
        data['CertificateAuthorityArn'] = stub[:certificate_authority_arn] unless stub[:certificate_authority_arn].nil?
        data
      end
    end

    # Operation Stubber for SearchProfiles
    class SearchProfiles
      def self.default(visited=[])
        {
          profiles: Stubs::ProfileDataList.default(visited),
          next_token: 'next_token',
          total_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Profiles'] = Stubs::ProfileDataList.stub(stub[:profiles]) unless stub[:profiles].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProfileDataList
    class ProfileDataList
      def self.default(visited=[])
        return nil if visited.include?('ProfileDataList')
        visited = visited + ['ProfileDataList']
        [
          Stubs::ProfileData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProfileData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProfileData
    class ProfileData
      def self.default(visited=[])
        return nil if visited.include?('ProfileData')
        visited = visited + ['ProfileData']
        {
          profile_arn: 'profile_arn',
          profile_name: 'profile_name',
          is_default: false,
          address: 'address',
          timezone: 'timezone',
          distance_unit: 'distance_unit',
          temperature_unit: 'temperature_unit',
          wake_word: 'wake_word',
          locale: 'locale',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProfileData.new
        data = {}
        data['ProfileArn'] = stub[:profile_arn] unless stub[:profile_arn].nil?
        data['ProfileName'] = stub[:profile_name] unless stub[:profile_name].nil?
        data['IsDefault'] = stub[:is_default] unless stub[:is_default].nil?
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['DistanceUnit'] = stub[:distance_unit] unless stub[:distance_unit].nil?
        data['TemperatureUnit'] = stub[:temperature_unit] unless stub[:temperature_unit].nil?
        data['WakeWord'] = stub[:wake_word] unless stub[:wake_word].nil?
        data['Locale'] = stub[:locale] unless stub[:locale].nil?
        data
      end
    end

    # Operation Stubber for SearchRooms
    class SearchRooms
      def self.default(visited=[])
        {
          rooms: Stubs::RoomDataList.default(visited),
          next_token: 'next_token',
          total_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Rooms'] = Stubs::RoomDataList.stub(stub[:rooms]) unless stub[:rooms].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RoomDataList
    class RoomDataList
      def self.default(visited=[])
        return nil if visited.include?('RoomDataList')
        visited = visited + ['RoomDataList']
        [
          Stubs::RoomData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RoomData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RoomData
    class RoomData
      def self.default(visited=[])
        return nil if visited.include?('RoomData')
        visited = visited + ['RoomData']
        {
          room_arn: 'room_arn',
          room_name: 'room_name',
          description: 'description',
          provider_calendar_id: 'provider_calendar_id',
          profile_arn: 'profile_arn',
          profile_name: 'profile_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RoomData.new
        data = {}
        data['RoomArn'] = stub[:room_arn] unless stub[:room_arn].nil?
        data['RoomName'] = stub[:room_name] unless stub[:room_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ProviderCalendarId'] = stub[:provider_calendar_id] unless stub[:provider_calendar_id].nil?
        data['ProfileArn'] = stub[:profile_arn] unless stub[:profile_arn].nil?
        data['ProfileName'] = stub[:profile_name] unless stub[:profile_name].nil?
        data
      end
    end

    # Operation Stubber for SearchSkillGroups
    class SearchSkillGroups
      def self.default(visited=[])
        {
          skill_groups: Stubs::SkillGroupDataList.default(visited),
          next_token: 'next_token',
          total_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SkillGroups'] = Stubs::SkillGroupDataList.stub(stub[:skill_groups]) unless stub[:skill_groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SkillGroupDataList
    class SkillGroupDataList
      def self.default(visited=[])
        return nil if visited.include?('SkillGroupDataList')
        visited = visited + ['SkillGroupDataList']
        [
          Stubs::SkillGroupData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SkillGroupData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SkillGroupData
    class SkillGroupData
      def self.default(visited=[])
        return nil if visited.include?('SkillGroupData')
        visited = visited + ['SkillGroupData']
        {
          skill_group_arn: 'skill_group_arn',
          skill_group_name: 'skill_group_name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::SkillGroupData.new
        data = {}
        data['SkillGroupArn'] = stub[:skill_group_arn] unless stub[:skill_group_arn].nil?
        data['SkillGroupName'] = stub[:skill_group_name] unless stub[:skill_group_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for SearchUsers
    class SearchUsers
      def self.default(visited=[])
        {
          users: Stubs::UserDataList.default(visited),
          next_token: 'next_token',
          total_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Users'] = Stubs::UserDataList.stub(stub[:users]) unless stub[:users].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserDataList
    class UserDataList
      def self.default(visited=[])
        return nil if visited.include?('UserDataList')
        visited = visited + ['UserDataList']
        [
          Stubs::UserData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UserData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserData
    class UserData
      def self.default(visited=[])
        return nil if visited.include?('UserData')
        visited = visited + ['UserData']
        {
          user_arn: 'user_arn',
          first_name: 'first_name',
          last_name: 'last_name',
          email: 'email',
          enrollment_status: 'enrollment_status',
          enrollment_id: 'enrollment_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserData.new
        data = {}
        data['UserArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data['FirstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['LastName'] = stub[:last_name] unless stub[:last_name].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['EnrollmentStatus'] = stub[:enrollment_status] unless stub[:enrollment_status].nil?
        data['EnrollmentId'] = stub[:enrollment_id] unless stub[:enrollment_id].nil?
        data
      end
    end

    # Operation Stubber for SendAnnouncement
    class SendAnnouncement
      def self.default(visited=[])
        {
          announcement_arn: 'announcement_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AnnouncementArn'] = stub[:announcement_arn] unless stub[:announcement_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendInvitation
    class SendInvitation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDeviceSync
    class StartDeviceSync
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSmartHomeApplianceDiscovery
    class StartSmartHomeApplianceDiscovery
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAddressBook
    class UpdateAddressBook
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateBusinessReportSchedule
    class UpdateBusinessReportSchedule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConferenceProvider
    class UpdateConferenceProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContact
    class UpdateContact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDevice
    class UpdateDevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGateway
    class UpdateGateway
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGatewayGroup
    class UpdateGatewayGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNetworkProfile
    class UpdateNetworkProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProfile
    class UpdateProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRoom
    class UpdateRoom
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSkillGroup
    class UpdateSkillGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
