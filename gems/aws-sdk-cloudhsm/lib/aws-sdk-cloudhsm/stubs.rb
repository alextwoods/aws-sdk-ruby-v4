# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CloudHSM
  module Stubs

    # Operation Stubber for AddTagsToResource
    class AddTagsToResource
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateHapg
    class CreateHapg
      def self.default(visited=[])
        {
          hapg_arn: 'hapg_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HapgArn'] = stub[:hapg_arn] unless stub[:hapg_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateHsm
    class CreateHsm
      def self.default(visited=[])
        {
          hsm_arn: 'hsm_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HsmArn'] = stub[:hsm_arn] unless stub[:hsm_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLunaClient
    class CreateLunaClient
      def self.default(visited=[])
        {
          client_arn: 'client_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClientArn'] = stub[:client_arn] unless stub[:client_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHapg
    class DeleteHapg
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHsm
    class DeleteHsm
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLunaClient
    class DeleteLunaClient
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeHapg
    class DescribeHapg
      def self.default(visited=[])
        {
          hapg_arn: 'hapg_arn',
          hapg_serial: 'hapg_serial',
          hsms_last_action_failed: HsmList.default(visited),
          hsms_pending_deletion: HsmList.default(visited),
          hsms_pending_registration: HsmList.default(visited),
          label: 'label',
          last_modified_timestamp: 'last_modified_timestamp',
          partition_serial_list: PartitionSerialList.default(visited),
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HapgArn'] = stub[:hapg_arn] unless stub[:hapg_arn].nil?
        data['HapgSerial'] = stub[:hapg_serial] unless stub[:hapg_serial].nil?
        data['HsmsLastActionFailed'] = HsmList.stub(stub[:hsms_last_action_failed]) unless stub[:hsms_last_action_failed].nil?
        data['HsmsPendingDeletion'] = HsmList.stub(stub[:hsms_pending_deletion]) unless stub[:hsms_pending_deletion].nil?
        data['HsmsPendingRegistration'] = HsmList.stub(stub[:hsms_pending_registration]) unless stub[:hsms_pending_registration].nil?
        data['Label'] = stub[:label] unless stub[:label].nil?
        data['LastModifiedTimestamp'] = stub[:last_modified_timestamp] unless stub[:last_modified_timestamp].nil?
        data['PartitionSerialList'] = PartitionSerialList.stub(stub[:partition_serial_list]) unless stub[:partition_serial_list].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PartitionSerialList
    class PartitionSerialList
      def self.default(visited=[])
        return nil if visited.include?('PartitionSerialList')
        visited = visited + ['PartitionSerialList']
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

    # List Stubber for HsmList
    class HsmList
      def self.default(visited=[])
        return nil if visited.include?('HsmList')
        visited = visited + ['HsmList']
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

    # Operation Stubber for DescribeHsm
    class DescribeHsm
      def self.default(visited=[])
        {
          hsm_arn: 'hsm_arn',
          status: 'status',
          status_details: 'status_details',
          availability_zone: 'availability_zone',
          eni_id: 'eni_id',
          eni_ip: 'eni_ip',
          subscription_type: 'subscription_type',
          subscription_start_date: 'subscription_start_date',
          subscription_end_date: 'subscription_end_date',
          vpc_id: 'vpc_id',
          subnet_id: 'subnet_id',
          iam_role_arn: 'iam_role_arn',
          serial_number: 'serial_number',
          vendor_name: 'vendor_name',
          hsm_type: 'hsm_type',
          software_version: 'software_version',
          ssh_public_key: 'ssh_public_key',
          ssh_key_last_updated: 'ssh_key_last_updated',
          server_cert_uri: 'server_cert_uri',
          server_cert_last_updated: 'server_cert_last_updated',
          partitions: PartitionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HsmArn'] = stub[:hsm_arn] unless stub[:hsm_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['EniId'] = stub[:eni_id] unless stub[:eni_id].nil?
        data['EniIp'] = stub[:eni_ip] unless stub[:eni_ip].nil?
        data['SubscriptionType'] = stub[:subscription_type] unless stub[:subscription_type].nil?
        data['SubscriptionStartDate'] = stub[:subscription_start_date] unless stub[:subscription_start_date].nil?
        data['SubscriptionEndDate'] = stub[:subscription_end_date] unless stub[:subscription_end_date].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['SerialNumber'] = stub[:serial_number] unless stub[:serial_number].nil?
        data['VendorName'] = stub[:vendor_name] unless stub[:vendor_name].nil?
        data['HsmType'] = stub[:hsm_type] unless stub[:hsm_type].nil?
        data['SoftwareVersion'] = stub[:software_version] unless stub[:software_version].nil?
        data['SshPublicKey'] = stub[:ssh_public_key] unless stub[:ssh_public_key].nil?
        data['SshKeyLastUpdated'] = stub[:ssh_key_last_updated] unless stub[:ssh_key_last_updated].nil?
        data['ServerCertUri'] = stub[:server_cert_uri] unless stub[:server_cert_uri].nil?
        data['ServerCertLastUpdated'] = stub[:server_cert_last_updated] unless stub[:server_cert_last_updated].nil?
        data['Partitions'] = PartitionList.stub(stub[:partitions]) unless stub[:partitions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PartitionList
    class PartitionList
      def self.default(visited=[])
        return nil if visited.include?('PartitionList')
        visited = visited + ['PartitionList']
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

    # Operation Stubber for DescribeLunaClient
    class DescribeLunaClient
      def self.default(visited=[])
        {
          client_arn: 'client_arn',
          certificate: 'certificate',
          certificate_fingerprint: 'certificate_fingerprint',
          last_modified_timestamp: 'last_modified_timestamp',
          label: 'label',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClientArn'] = stub[:client_arn] unless stub[:client_arn].nil?
        data['Certificate'] = stub[:certificate] unless stub[:certificate].nil?
        data['CertificateFingerprint'] = stub[:certificate_fingerprint] unless stub[:certificate_fingerprint].nil?
        data['LastModifiedTimestamp'] = stub[:last_modified_timestamp] unless stub[:last_modified_timestamp].nil?
        data['Label'] = stub[:label] unless stub[:label].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetConfig
    class GetConfig
      def self.default(visited=[])
        {
          config_type: 'config_type',
          config_file: 'config_file',
          config_cred: 'config_cred',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigType'] = stub[:config_type] unless stub[:config_type].nil?
        data['ConfigFile'] = stub[:config_file] unless stub[:config_file].nil?
        data['ConfigCred'] = stub[:config_cred] unless stub[:config_cred].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAvailableZones
    class ListAvailableZones
      def self.default(visited=[])
        {
          az_list: AZList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AZList'] = AZList.stub(stub[:az_list]) unless stub[:az_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AZList
    class AZList
      def self.default(visited=[])
        return nil if visited.include?('AZList')
        visited = visited + ['AZList']
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

    # Operation Stubber for ListHapgs
    class ListHapgs
      def self.default(visited=[])
        {
          hapg_list: HapgList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HapgList'] = HapgList.stub(stub[:hapg_list]) unless stub[:hapg_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for HapgList
    class HapgList
      def self.default(visited=[])
        return nil if visited.include?('HapgList')
        visited = visited + ['HapgList']
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

    # Operation Stubber for ListHsms
    class ListHsms
      def self.default(visited=[])
        {
          hsm_list: HsmList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HsmList'] = HsmList.stub(stub[:hsm_list]) unless stub[:hsm_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListLunaClients
    class ListLunaClients
      def self.default(visited=[])
        {
          client_list: ClientList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClientList'] = ClientList.stub(stub[:client_list]) unless stub[:client_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ClientList
    class ClientList
      def self.default(visited=[])
        return nil if visited.include?('ClientList')
        visited = visited + ['ClientList']
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

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tag_list: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagList'] = TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
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

    # Operation Stubber for ModifyHapg
    class ModifyHapg
      def self.default(visited=[])
        {
          hapg_arn: 'hapg_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HapgArn'] = stub[:hapg_arn] unless stub[:hapg_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyHsm
    class ModifyHsm
      def self.default(visited=[])
        {
          hsm_arn: 'hsm_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HsmArn'] = stub[:hsm_arn] unless stub[:hsm_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyLunaClient
    class ModifyLunaClient
      def self.default(visited=[])
        {
          client_arn: 'client_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClientArn'] = stub[:client_arn] unless stub[:client_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
