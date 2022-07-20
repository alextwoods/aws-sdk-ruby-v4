# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CloudHSMV2
  module Builders

    # Operation Builder for CopyBackupToRegion
    class CopyBackupToRegion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.CopyBackupToRegion'
        data = {}
        data['DestinationRegion'] = input[:destination_region] unless input[:destination_region].nil?
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        data['TagList'] = TagList.build(input[:tag_list]) unless input[:tag_list].nil?
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

    # Operation Builder for CreateCluster
    class CreateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.CreateCluster'
        data = {}
        data['BackupRetentionPolicy'] = BackupRetentionPolicy.build(input[:backup_retention_policy]) unless input[:backup_retention_policy].nil?
        data['HsmType'] = input[:hsm_type] unless input[:hsm_type].nil?
        data['SourceBackupId'] = input[:source_backup_id] unless input[:source_backup_id].nil?
        data['SubnetIds'] = SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['TagList'] = TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BackupRetentionPolicy
    class BackupRetentionPolicy
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateHsm
    class CreateHsm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.CreateHsm'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['IpAddress'] = input[:ip_address] unless input[:ip_address].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBackup
    class DeleteBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.DeleteBackup'
        data = {}
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCluster
    class DeleteCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.DeleteCluster'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteHsm
    class DeleteHsm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.DeleteHsm'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['HsmId'] = input[:hsm_id] unless input[:hsm_id].nil?
        data['EniId'] = input[:eni_id] unless input[:eni_id].nil?
        data['EniIp'] = input[:eni_ip] unless input[:eni_ip].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBackups
    class DescribeBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.DescribeBackups'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        data['SortAscending'] = input[:sort_ascending] unless input[:sort_ascending].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Filters
    class Filters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Strings.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for Strings
    class Strings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeClusters
    class DescribeClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.DescribeClusters'
        data = {}
        data['Filters'] = Filters.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InitializeCluster
    class InitializeCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.InitializeCluster'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['SignedCert'] = input[:signed_cert] unless input[:signed_cert].nil?
        data['TrustAnchor'] = input[:trust_anchor] unless input[:trust_anchor].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.ListTags'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyBackupAttributes
    class ModifyBackupAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.ModifyBackupAttributes'
        data = {}
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        data['NeverExpires'] = input[:never_expires] unless input[:never_expires].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyCluster
    class ModifyCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.ModifyCluster'
        data = {}
        data['BackupRetentionPolicy'] = BackupRetentionPolicy.build(input[:backup_retention_policy]) unless input[:backup_retention_policy].nil?
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreBackup
    class RestoreBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.RestoreBackup'
        data = {}
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.TagResource'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagList'] = TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'BaldrApiService.UntagResource'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagKeyList'] = TagKeyList.build(input[:tag_key_list]) unless input[:tag_key_list].nil?
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
  end
end
