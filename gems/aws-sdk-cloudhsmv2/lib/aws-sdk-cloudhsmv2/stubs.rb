# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudHSMV2
  module Stubs

    # Operation Stubber for CopyBackupToRegion
    class CopyBackupToRegion
      def self.default(visited=[])
        {
          destination_backup: DestinationBackup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DestinationBackup'] = Stubs::DestinationBackup.stub(stub[:destination_backup]) unless stub[:destination_backup].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DestinationBackup
    class DestinationBackup
      def self.default(visited=[])
        return nil if visited.include?('DestinationBackup')
        visited = visited + ['DestinationBackup']
        {
          create_timestamp: Time.now,
          source_region: 'source_region',
          source_backup: 'source_backup',
          source_cluster: 'source_cluster',
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationBackup.new
        data = {}
        data['CreateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_timestamp]).to_i unless stub[:create_timestamp].nil?
        data['SourceRegion'] = stub[:source_region] unless stub[:source_region].nil?
        data['SourceBackup'] = stub[:source_backup] unless stub[:source_backup].nil?
        data['SourceCluster'] = stub[:source_cluster] unless stub[:source_cluster].nil?
        data
      end
    end

    # Operation Stubber for CreateCluster
    class CreateCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Cluster
    class Cluster
      def self.default(visited=[])
        return nil if visited.include?('Cluster')
        visited = visited + ['Cluster']
        {
          backup_policy: 'backup_policy',
          backup_retention_policy: BackupRetentionPolicy.default(visited),
          cluster_id: 'cluster_id',
          create_timestamp: Time.now,
          hsms: Hsms.default(visited),
          hsm_type: 'hsm_type',
          pre_co_password: 'pre_co_password',
          security_group: 'security_group',
          source_backup_id: 'source_backup_id',
          state: 'state',
          state_message: 'state_message',
          subnet_mapping: ExternalSubnetMapping.default(visited),
          vpc_id: 'vpc_id',
          certificates: Certificates.default(visited),
          tag_list: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Cluster.new
        data = {}
        data['BackupPolicy'] = stub[:backup_policy] unless stub[:backup_policy].nil?
        data['BackupRetentionPolicy'] = Stubs::BackupRetentionPolicy.stub(stub[:backup_retention_policy]) unless stub[:backup_retention_policy].nil?
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data['CreateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_timestamp]).to_i unless stub[:create_timestamp].nil?
        data['Hsms'] = Stubs::Hsms.stub(stub[:hsms]) unless stub[:hsms].nil?
        data['HsmType'] = stub[:hsm_type] unless stub[:hsm_type].nil?
        data['PreCoPassword'] = stub[:pre_co_password] unless stub[:pre_co_password].nil?
        data['SecurityGroup'] = stub[:security_group] unless stub[:security_group].nil?
        data['SourceBackupId'] = stub[:source_backup_id] unless stub[:source_backup_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateMessage'] = stub[:state_message] unless stub[:state_message].nil?
        data['SubnetMapping'] = Stubs::ExternalSubnetMapping.stub(stub[:subnet_mapping]) unless stub[:subnet_mapping].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['Certificates'] = Stubs::Certificates.stub(stub[:certificates]) unless stub[:certificates].nil?
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        data
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

    # Structure Stubber for Certificates
    class Certificates
      def self.default(visited=[])
        return nil if visited.include?('Certificates')
        visited = visited + ['Certificates']
        {
          cluster_csr: 'cluster_csr',
          hsm_certificate: 'hsm_certificate',
          aws_hardware_certificate: 'aws_hardware_certificate',
          manufacturer_hardware_certificate: 'manufacturer_hardware_certificate',
          cluster_certificate: 'cluster_certificate',
        }
      end

      def self.stub(stub)
        stub ||= Types::Certificates.new
        data = {}
        data['ClusterCsr'] = stub[:cluster_csr] unless stub[:cluster_csr].nil?
        data['HsmCertificate'] = stub[:hsm_certificate] unless stub[:hsm_certificate].nil?
        data['AwsHardwareCertificate'] = stub[:aws_hardware_certificate] unless stub[:aws_hardware_certificate].nil?
        data['ManufacturerHardwareCertificate'] = stub[:manufacturer_hardware_certificate] unless stub[:manufacturer_hardware_certificate].nil?
        data['ClusterCertificate'] = stub[:cluster_certificate] unless stub[:cluster_certificate].nil?
        data
      end
    end

    # Map Stubber for ExternalSubnetMapping
    class ExternalSubnetMapping
      def self.default(visited=[])
        return nil if visited.include?('ExternalSubnetMapping')
        visited = visited + ['ExternalSubnetMapping']
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

    # List Stubber for Hsms
    class Hsms
      def self.default(visited=[])
        return nil if visited.include?('Hsms')
        visited = visited + ['Hsms']
        [
          Hsm.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Hsm.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Hsm
    class Hsm
      def self.default(visited=[])
        return nil if visited.include?('Hsm')
        visited = visited + ['Hsm']
        {
          availability_zone: 'availability_zone',
          cluster_id: 'cluster_id',
          subnet_id: 'subnet_id',
          eni_id: 'eni_id',
          eni_ip: 'eni_ip',
          hsm_id: 'hsm_id',
          state: 'state',
          state_message: 'state_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::Hsm.new
        data = {}
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['EniId'] = stub[:eni_id] unless stub[:eni_id].nil?
        data['EniIp'] = stub[:eni_ip] unless stub[:eni_ip].nil?
        data['HsmId'] = stub[:hsm_id] unless stub[:hsm_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateMessage'] = stub[:state_message] unless stub[:state_message].nil?
        data
      end
    end

    # Structure Stubber for BackupRetentionPolicy
    class BackupRetentionPolicy
      def self.default(visited=[])
        return nil if visited.include?('BackupRetentionPolicy')
        visited = visited + ['BackupRetentionPolicy']
        {
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupRetentionPolicy.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateHsm
    class CreateHsm
      def self.default(visited=[])
        {
          hsm: Hsm.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Hsm'] = Stubs::Hsm.stub(stub[:hsm]) unless stub[:hsm].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBackup
    class DeleteBackup
      def self.default(visited=[])
        {
          backup: Backup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Backup'] = Stubs::Backup.stub(stub[:backup]) unless stub[:backup].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Backup
    class Backup
      def self.default(visited=[])
        return nil if visited.include?('Backup')
        visited = visited + ['Backup']
        {
          backup_id: 'backup_id',
          backup_state: 'backup_state',
          cluster_id: 'cluster_id',
          create_timestamp: Time.now,
          copy_timestamp: Time.now,
          never_expires: false,
          source_region: 'source_region',
          source_backup: 'source_backup',
          source_cluster: 'source_cluster',
          delete_timestamp: Time.now,
          tag_list: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Backup.new
        data = {}
        data['BackupId'] = stub[:backup_id] unless stub[:backup_id].nil?
        data['BackupState'] = stub[:backup_state] unless stub[:backup_state].nil?
        data['ClusterId'] = stub[:cluster_id] unless stub[:cluster_id].nil?
        data['CreateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_timestamp]).to_i unless stub[:create_timestamp].nil?
        data['CopyTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:copy_timestamp]).to_i unless stub[:copy_timestamp].nil?
        data['NeverExpires'] = stub[:never_expires] unless stub[:never_expires].nil?
        data['SourceRegion'] = stub[:source_region] unless stub[:source_region].nil?
        data['SourceBackup'] = stub[:source_backup] unless stub[:source_backup].nil?
        data['SourceCluster'] = stub[:source_cluster] unless stub[:source_cluster].nil?
        data['DeleteTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:delete_timestamp]).to_i unless stub[:delete_timestamp].nil?
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        data
      end
    end

    # Operation Stubber for DeleteCluster
    class DeleteCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHsm
    class DeleteHsm
      def self.default(visited=[])
        {
          hsm_id: 'hsm_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HsmId'] = stub[:hsm_id] unless stub[:hsm_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBackups
    class DescribeBackups
      def self.default(visited=[])
        {
          backups: Backups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Backups'] = Stubs::Backups.stub(stub[:backups]) unless stub[:backups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Backups
    class Backups
      def self.default(visited=[])
        return nil if visited.include?('Backups')
        visited = visited + ['Backups']
        [
          Backup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Backup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeClusters
    class DescribeClusters
      def self.default(visited=[])
        {
          clusters: Clusters.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Clusters'] = Stubs::Clusters.stub(stub[:clusters]) unless stub[:clusters].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Clusters
    class Clusters
      def self.default(visited=[])
        return nil if visited.include?('Clusters')
        visited = visited + ['Clusters']
        [
          Cluster.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Cluster.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for InitializeCluster
    class InitializeCluster
      def self.default(visited=[])
        {
          state: 'state',
          state_message: 'state_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateMessage'] = stub[:state_message] unless stub[:state_message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          tag_list: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyBackupAttributes
    class ModifyBackupAttributes
      def self.default(visited=[])
        {
          backup: Backup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Backup'] = Stubs::Backup.stub(stub[:backup]) unless stub[:backup].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyCluster
    class ModifyCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestoreBackup
    class RestoreBackup
      def self.default(visited=[])
        {
          backup: Backup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Backup'] = Stubs::Backup.stub(stub[:backup]) unless stub[:backup].nil?
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
  end
end
