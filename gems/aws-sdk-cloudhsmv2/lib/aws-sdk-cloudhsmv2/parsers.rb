# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudHSMV2
  module Parsers

    # Operation Parser for CopyBackupToRegion
    class CopyBackupToRegion
      def self.parse(http_resp)
        data = Types::CopyBackupToRegionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.destination_backup = (Parsers::DestinationBackup.parse(map['DestinationBackup']) unless map['DestinationBackup'].nil?)
        data
      end
    end

    class DestinationBackup
      def self.parse(map)
        data = Types::DestinationBackup.new
        data.create_timestamp = Time.at(map['CreateTimestamp'].to_i) if map['CreateTimestamp']
        data.source_region = map['SourceRegion']
        data.source_backup = map['SourceBackup']
        data.source_cluster = map['SourceCluster']
        return data
      end
    end

    # Error Parser for CloudHsmAccessDeniedException
    class CloudHsmAccessDeniedException
      def self.parse(http_resp)
        data = Types::CloudHsmAccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CloudHsmInvalidRequestException
    class CloudHsmInvalidRequestException
      def self.parse(http_resp)
        data = Types::CloudHsmInvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CloudHsmResourceNotFoundException
    class CloudHsmResourceNotFoundException
      def self.parse(http_resp)
        data = Types::CloudHsmResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CloudHsmTagException
    class CloudHsmTagException
      def self.parse(http_resp)
        data = Types::CloudHsmTagException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CloudHsmInternalFailureException
    class CloudHsmInternalFailureException
      def self.parse(http_resp)
        data = Types::CloudHsmInternalFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateCluster
    class CreateCluster
      def self.parse(http_resp)
        data = Types::CreateClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    class Cluster
      def self.parse(map)
        data = Types::Cluster.new
        data.backup_policy = map['BackupPolicy']
        data.backup_retention_policy = (Parsers::BackupRetentionPolicy.parse(map['BackupRetentionPolicy']) unless map['BackupRetentionPolicy'].nil?)
        data.cluster_id = map['ClusterId']
        data.create_timestamp = Time.at(map['CreateTimestamp'].to_i) if map['CreateTimestamp']
        data.hsms = (Parsers::Hsms.parse(map['Hsms']) unless map['Hsms'].nil?)
        data.hsm_type = map['HsmType']
        data.pre_co_password = map['PreCoPassword']
        data.security_group = map['SecurityGroup']
        data.source_backup_id = map['SourceBackupId']
        data.state = map['State']
        data.state_message = map['StateMessage']
        data.subnet_mapping = (Parsers::ExternalSubnetMapping.parse(map['SubnetMapping']) unless map['SubnetMapping'].nil?)
        data.vpc_id = map['VpcId']
        data.certificates = (Parsers::Certificates.parse(map['Certificates']) unless map['Certificates'].nil?)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        return data
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

    class Certificates
      def self.parse(map)
        data = Types::Certificates.new
        data.cluster_csr = map['ClusterCsr']
        data.hsm_certificate = map['HsmCertificate']
        data.aws_hardware_certificate = map['AwsHardwareCertificate']
        data.manufacturer_hardware_certificate = map['ManufacturerHardwareCertificate']
        data.cluster_certificate = map['ClusterCertificate']
        return data
      end
    end

    class ExternalSubnetMapping
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Hsms
      def self.parse(list)
        list.map do |value|
          Parsers::Hsm.parse(value) unless value.nil?
        end
      end
    end

    class Hsm
      def self.parse(map)
        data = Types::Hsm.new
        data.availability_zone = map['AvailabilityZone']
        data.cluster_id = map['ClusterId']
        data.subnet_id = map['SubnetId']
        data.eni_id = map['EniId']
        data.eni_ip = map['EniIp']
        data.hsm_id = map['HsmId']
        data.state = map['State']
        data.state_message = map['StateMessage']
        return data
      end
    end

    class BackupRetentionPolicy
      def self.parse(map)
        data = Types::BackupRetentionPolicy.new
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for CreateHsm
    class CreateHsm
      def self.parse(http_resp)
        data = Types::CreateHsmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hsm = (Parsers::Hsm.parse(map['Hsm']) unless map['Hsm'].nil?)
        data
      end
    end

    # Operation Parser for DeleteBackup
    class DeleteBackup
      def self.parse(http_resp)
        data = Types::DeleteBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.backup = (Parsers::Backup.parse(map['Backup']) unless map['Backup'].nil?)
        data
      end
    end

    class Backup
      def self.parse(map)
        data = Types::Backup.new
        data.backup_id = map['BackupId']
        data.backup_state = map['BackupState']
        data.cluster_id = map['ClusterId']
        data.create_timestamp = Time.at(map['CreateTimestamp'].to_i) if map['CreateTimestamp']
        data.copy_timestamp = Time.at(map['CopyTimestamp'].to_i) if map['CopyTimestamp']
        data.never_expires = map['NeverExpires']
        data.source_region = map['SourceRegion']
        data.source_backup = map['SourceBackup']
        data.source_cluster = map['SourceCluster']
        data.delete_timestamp = Time.at(map['DeleteTimestamp'].to_i) if map['DeleteTimestamp']
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        return data
      end
    end

    # Operation Parser for DeleteCluster
    class DeleteCluster
      def self.parse(http_resp)
        data = Types::DeleteClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
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
        data.hsm_id = map['HsmId']
        data
      end
    end

    # Operation Parser for DescribeBackups
    class DescribeBackups
      def self.parse(http_resp)
        data = Types::DescribeBackupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.backups = (Parsers::Backups.parse(map['Backups']) unless map['Backups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Backups
      def self.parse(list)
        list.map do |value|
          Parsers::Backup.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeClusters
    class DescribeClusters
      def self.parse(http_resp)
        data = Types::DescribeClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.clusters = (Parsers::Clusters.parse(map['Clusters']) unless map['Clusters'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Clusters
      def self.parse(list)
        list.map do |value|
          Parsers::Cluster.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for InitializeCluster
    class InitializeCluster
      def self.parse(http_resp)
        data = Types::InitializeClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.state = map['State']
        data.state_message = map['StateMessage']
        data
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ModifyBackupAttributes
    class ModifyBackupAttributes
      def self.parse(http_resp)
        data = Types::ModifyBackupAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.backup = (Parsers::Backup.parse(map['Backup']) unless map['Backup'].nil?)
        data
      end
    end

    # Operation Parser for ModifyCluster
    class ModifyCluster
      def self.parse(http_resp)
        data = Types::ModifyClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    # Operation Parser for RestoreBackup
    class RestoreBackup
      def self.parse(http_resp)
        data = Types::RestoreBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.backup = (Parsers::Backup.parse(map['Backup']) unless map['Backup'].nil?)
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
  end
end
