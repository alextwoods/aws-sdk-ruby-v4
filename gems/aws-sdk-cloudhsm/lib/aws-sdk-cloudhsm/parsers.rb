# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudHSM
  module Parsers

    # Operation Parser for AddTagsToResource
    class AddTagsToResource
      def self.parse(http_resp)
        data = Types::AddTagsToResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end

    # Error Parser for CloudHsmServiceException
    class CloudHsmServiceException
      def self.parse(http_resp)
        data = Types::CloudHsmServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.retryable = map['retryable']
        data
      end
    end

    # Error Parser for CloudHsmInternalException
    class CloudHsmInternalException
      def self.parse(http_resp)
        data = Types::CloudHsmInternalException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.retryable = map['retryable']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.retryable = map['retryable']
        data
      end
    end

    # Operation Parser for CreateHapg
    class CreateHapg
      def self.parse(http_resp)
        data = Types::CreateHapgOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hapg_arn = map['HapgArn']
        data
      end
    end

    # Operation Parser for CreateHsm
    class CreateHsm
      def self.parse(http_resp)
        data = Types::CreateHsmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hsm_arn = map['HsmArn']
        data
      end
    end

    # Operation Parser for CreateLunaClient
    class CreateLunaClient
      def self.parse(http_resp)
        data = Types::CreateLunaClientOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.client_arn = map['ClientArn']
        data
      end
    end

    # Operation Parser for DeleteHapg
    class DeleteHapg
      def self.parse(http_resp)
        data = Types::DeleteHapgOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for DeleteHsm
    class DeleteHsm
      def self.parse(http_resp)
        data = Types::DeleteHsmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for DeleteLunaClient
    class DeleteLunaClient
      def self.parse(http_resp)
        data = Types::DeleteLunaClientOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for DescribeHapg
    class DescribeHapg
      def self.parse(http_resp)
        data = Types::DescribeHapgOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hapg_arn = map['HapgArn']
        data.hapg_serial = map['HapgSerial']
        data.hsms_last_action_failed = (Parsers::HsmList.parse(map['HsmsLastActionFailed']) unless map['HsmsLastActionFailed'].nil?)
        data.hsms_pending_deletion = (Parsers::HsmList.parse(map['HsmsPendingDeletion']) unless map['HsmsPendingDeletion'].nil?)
        data.hsms_pending_registration = (Parsers::HsmList.parse(map['HsmsPendingRegistration']) unless map['HsmsPendingRegistration'].nil?)
        data.label = map['Label']
        data.last_modified_timestamp = map['LastModifiedTimestamp']
        data.partition_serial_list = (Parsers::PartitionSerialList.parse(map['PartitionSerialList']) unless map['PartitionSerialList'].nil?)
        data.state = map['State']
        data
      end
    end

    class PartitionSerialList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class HsmList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeHsm
    class DescribeHsm
      def self.parse(http_resp)
        data = Types::DescribeHsmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hsm_arn = map['HsmArn']
        data.status = map['Status']
        data.status_details = map['StatusDetails']
        data.availability_zone = map['AvailabilityZone']
        data.eni_id = map['EniId']
        data.eni_ip = map['EniIp']
        data.subscription_type = map['SubscriptionType']
        data.subscription_start_date = map['SubscriptionStartDate']
        data.subscription_end_date = map['SubscriptionEndDate']
        data.vpc_id = map['VpcId']
        data.subnet_id = map['SubnetId']
        data.iam_role_arn = map['IamRoleArn']
        data.serial_number = map['SerialNumber']
        data.vendor_name = map['VendorName']
        data.hsm_type = map['HsmType']
        data.software_version = map['SoftwareVersion']
        data.ssh_public_key = map['SshPublicKey']
        data.ssh_key_last_updated = map['SshKeyLastUpdated']
        data.server_cert_uri = map['ServerCertUri']
        data.server_cert_last_updated = map['ServerCertLastUpdated']
        data.partitions = (Parsers::PartitionList.parse(map['Partitions']) unless map['Partitions'].nil?)
        data
      end
    end

    class PartitionList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeLunaClient
    class DescribeLunaClient
      def self.parse(http_resp)
        data = Types::DescribeLunaClientOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.client_arn = map['ClientArn']
        data.certificate = map['Certificate']
        data.certificate_fingerprint = map['CertificateFingerprint']
        data.last_modified_timestamp = map['LastModifiedTimestamp']
        data.label = map['Label']
        data
      end
    end

    # Operation Parser for GetConfig
    class GetConfig
      def self.parse(http_resp)
        data = Types::GetConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.config_type = map['ConfigType']
        data.config_file = map['ConfigFile']
        data.config_cred = map['ConfigCred']
        data
      end
    end

    # Operation Parser for ListAvailableZones
    class ListAvailableZones
      def self.parse(http_resp)
        data = Types::ListAvailableZonesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.az_list = (Parsers::AZList.parse(map['AZList']) unless map['AZList'].nil?)
        data
      end
    end

    class AZList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListHapgs
    class ListHapgs
      def self.parse(http_resp)
        data = Types::ListHapgsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hapg_list = (Parsers::HapgList.parse(map['HapgList']) unless map['HapgList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class HapgList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListHsms
    class ListHsms
      def self.parse(http_resp)
        data = Types::ListHsmsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hsm_list = (Parsers::HsmList.parse(map['HsmList']) unless map['HsmList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListLunaClients
    class ListLunaClients
      def self.parse(http_resp)
        data = Types::ListLunaClientsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.client_list = (Parsers::ClientList.parse(map['ClientList']) unless map['ClientList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ClientList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
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

    # Operation Parser for ModifyHapg
    class ModifyHapg
      def self.parse(http_resp)
        data = Types::ModifyHapgOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hapg_arn = map['HapgArn']
        data
      end
    end

    # Operation Parser for ModifyHsm
    class ModifyHsm
      def self.parse(http_resp)
        data = Types::ModifyHsmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hsm_arn = map['HsmArn']
        data
      end
    end

    # Operation Parser for ModifyLunaClient
    class ModifyLunaClient
      def self.parse(http_resp)
        data = Types::ModifyLunaClientOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.client_arn = map['ClientArn']
        data
      end
    end

    # Operation Parser for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.parse(http_resp)
        data = Types::RemoveTagsFromResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end
  end
end
