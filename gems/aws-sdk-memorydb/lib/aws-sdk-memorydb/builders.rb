# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MemoryDB
  module Builders

    # Operation Builder for BatchUpdateCluster
    class BatchUpdateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.BatchUpdateCluster'
        data = {}
        data['ClusterNames'] = Builders::ClusterNameList.build(input[:cluster_names]) unless input[:cluster_names].nil?
        data['ServiceUpdate'] = Builders::ServiceUpdateRequest.build(input[:service_update]) unless input[:service_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ServiceUpdateRequest
    class ServiceUpdateRequest
      def self.build(input)
        data = {}
        data['ServiceUpdateNameToApply'] = input[:service_update_name_to_apply] unless input[:service_update_name_to_apply].nil?
        data
      end
    end

    # List Builder for ClusterNameList
    class ClusterNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CopySnapshot
    class CopySnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.CopySnapshot'
        data = {}
        data['SourceSnapshotName'] = input[:source_snapshot_name] unless input[:source_snapshot_name].nil?
        data['TargetSnapshotName'] = input[:target_snapshot_name] unless input[:target_snapshot_name].nil?
        data['TargetBucket'] = input[:target_bucket] unless input[:target_bucket].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
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

    # Operation Builder for CreateACL
    class CreateACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.CreateACL'
        data = {}
        data['ACLName'] = input[:acl_name] unless input[:acl_name].nil?
        data['UserNames'] = Builders::UserNameListInput.build(input[:user_names]) unless input[:user_names].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UserNameListInput
    class UserNameListInput
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateCluster
    class CreateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.CreateCluster'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['NodeType'] = input[:node_type] unless input[:node_type].nil?
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['NumShards'] = input[:num_shards] unless input[:num_shards].nil?
        data['NumReplicasPerShard'] = input[:num_replicas_per_shard] unless input[:num_replicas_per_shard].nil?
        data['SubnetGroupName'] = input[:subnet_group_name] unless input[:subnet_group_name].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupIdsList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['MaintenanceWindow'] = input[:maintenance_window] unless input[:maintenance_window].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['TLSEnabled'] = input[:tls_enabled] unless input[:tls_enabled].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['SnapshotArns'] = Builders::SnapshotArnsList.build(input[:snapshot_arns]) unless input[:snapshot_arns].nil?
        data['SnapshotName'] = input[:snapshot_name] unless input[:snapshot_name].nil?
        data['SnapshotRetentionLimit'] = input[:snapshot_retention_limit] unless input[:snapshot_retention_limit].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['SnapshotWindow'] = input[:snapshot_window] unless input[:snapshot_window].nil?
        data['ACLName'] = input[:acl_name] unless input[:acl_name].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['AutoMinorVersionUpgrade'] = input[:auto_minor_version_upgrade] unless input[:auto_minor_version_upgrade].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SnapshotArnsList
    class SnapshotArnsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SecurityGroupIdsList
    class SecurityGroupIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateParameterGroup
    class CreateParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.CreateParameterGroup'
        data = {}
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['Family'] = input[:family] unless input[:family].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSnapshot
    class CreateSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.CreateSnapshot'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['SnapshotName'] = input[:snapshot_name] unless input[:snapshot_name].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSubnetGroup
    class CreateSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.CreateSubnetGroup'
        data = {}
        data['SubnetGroupName'] = input[:subnet_group_name] unless input[:subnet_group_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SubnetIds'] = Builders::SubnetIdentifierList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SubnetIdentifierList
    class SubnetIdentifierList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.CreateUser'
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['AuthenticationMode'] = Builders::AuthenticationMode.build(input[:authentication_mode]) unless input[:authentication_mode].nil?
        data['AccessString'] = input[:access_string] unless input[:access_string].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AuthenticationMode
    class AuthenticationMode
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Passwords'] = Builders::PasswordListInput.build(input[:passwords]) unless input[:passwords].nil?
        data
      end
    end

    # List Builder for PasswordListInput
    class PasswordListInput
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteACL
    class DeleteACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DeleteACL'
        data = {}
        data['ACLName'] = input[:acl_name] unless input[:acl_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCluster
    class DeleteCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DeleteCluster'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['FinalSnapshotName'] = input[:final_snapshot_name] unless input[:final_snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteParameterGroup
    class DeleteParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DeleteParameterGroup'
        data = {}
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSnapshot
    class DeleteSnapshot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DeleteSnapshot'
        data = {}
        data['SnapshotName'] = input[:snapshot_name] unless input[:snapshot_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSubnetGroup
    class DeleteSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DeleteSubnetGroup'
        data = {}
        data['SubnetGroupName'] = input[:subnet_group_name] unless input[:subnet_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DeleteUser'
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeACLs
    class DescribeACLs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DescribeACLs'
        data = {}
        data['ACLName'] = input[:acl_name] unless input[:acl_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeClusters
    class DescribeClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DescribeClusters'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ShowShardDetails'] = input[:show_shard_details] unless input[:show_shard_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEngineVersions
    class DescribeEngineVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DescribeEngineVersions'
        data = {}
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['ParameterGroupFamily'] = input[:parameter_group_family] unless input[:parameter_group_family].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['DefaultOnly'] = input[:default_only] unless input[:default_only].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEvents
    class DescribeEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DescribeEvents'
        data = {}
        data['SourceName'] = input[:source_name] unless input[:source_name].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['Duration'] = input[:duration] unless input[:duration].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeParameterGroups
    class DescribeParameterGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DescribeParameterGroups'
        data = {}
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeParameters
    class DescribeParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DescribeParameters'
        data = {}
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeServiceUpdates
    class DescribeServiceUpdates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DescribeServiceUpdates'
        data = {}
        data['ServiceUpdateName'] = input[:service_update_name] unless input[:service_update_name].nil?
        data['ClusterNames'] = Builders::ClusterNameList.build(input[:cluster_names]) unless input[:cluster_names].nil?
        data['Status'] = Builders::ServiceUpdateStatusList.build(input[:status]) unless input[:status].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ServiceUpdateStatusList
    class ServiceUpdateStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeSnapshots
    class DescribeSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DescribeSnapshots'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['SnapshotName'] = input[:snapshot_name] unless input[:snapshot_name].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ShowDetail'] = input[:show_detail] unless input[:show_detail].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSubnetGroups
    class DescribeSubnetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DescribeSubnetGroups'
        data = {}
        data['SubnetGroupName'] = input[:subnet_group_name] unless input[:subnet_group_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUsers
    class DescribeUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.DescribeUsers'
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::FilterValueList.build(input[:values]) unless input[:values].nil?
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

    # Operation Builder for FailoverShard
    class FailoverShard
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.FailoverShard'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['ShardName'] = input[:shard_name] unless input[:shard_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAllowedNodeTypeUpdates
    class ListAllowedNodeTypeUpdates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.ListAllowedNodeTypeUpdates'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.ListTags'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResetParameterGroup
    class ResetParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.ResetParameterGroup'
        data = {}
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['AllParameters'] = input[:all_parameters] unless input[:all_parameters].nil?
        data['ParameterNames'] = Builders::ParameterNameList.build(input[:parameter_names]) unless input[:parameter_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterNameList
    class ParameterNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::KeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for KeyList
    class KeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateACL
    class UpdateACL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.UpdateACL'
        data = {}
        data['ACLName'] = input[:acl_name] unless input[:acl_name].nil?
        data['UserNamesToAdd'] = Builders::UserNameListInput.build(input[:user_names_to_add]) unless input[:user_names_to_add].nil?
        data['UserNamesToRemove'] = Builders::UserNameListInput.build(input[:user_names_to_remove]) unless input[:user_names_to_remove].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCluster
    class UpdateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.UpdateCluster'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupIdsList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['MaintenanceWindow'] = input[:maintenance_window] unless input[:maintenance_window].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['SnsTopicStatus'] = input[:sns_topic_status] unless input[:sns_topic_status].nil?
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['SnapshotWindow'] = input[:snapshot_window] unless input[:snapshot_window].nil?
        data['SnapshotRetentionLimit'] = input[:snapshot_retention_limit] unless input[:snapshot_retention_limit].nil?
        data['NodeType'] = input[:node_type] unless input[:node_type].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['ReplicaConfiguration'] = Builders::ReplicaConfigurationRequest.build(input[:replica_configuration]) unless input[:replica_configuration].nil?
        data['ShardConfiguration'] = Builders::ShardConfigurationRequest.build(input[:shard_configuration]) unless input[:shard_configuration].nil?
        data['ACLName'] = input[:acl_name] unless input[:acl_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ShardConfigurationRequest
    class ShardConfigurationRequest
      def self.build(input)
        data = {}
        data['ShardCount'] = input[:shard_count] unless input[:shard_count].nil?
        data
      end
    end

    # Structure Builder for ReplicaConfigurationRequest
    class ReplicaConfigurationRequest
      def self.build(input)
        data = {}
        data['ReplicaCount'] = input[:replica_count] unless input[:replica_count].nil?
        data
      end
    end

    # Operation Builder for UpdateParameterGroup
    class UpdateParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.UpdateParameterGroup'
        data = {}
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['ParameterNameValues'] = Builders::ParameterNameValueList.build(input[:parameter_name_values]) unless input[:parameter_name_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterNameValueList
    class ParameterNameValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ParameterNameValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParameterNameValue
    class ParameterNameValue
      def self.build(input)
        data = {}
        data['ParameterName'] = input[:parameter_name] unless input[:parameter_name].nil?
        data['ParameterValue'] = input[:parameter_value] unless input[:parameter_value].nil?
        data
      end
    end

    # Operation Builder for UpdateSubnetGroup
    class UpdateSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.UpdateSubnetGroup'
        data = {}
        data['SubnetGroupName'] = input[:subnet_group_name] unless input[:subnet_group_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SubnetIds'] = Builders::SubnetIdentifierList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUser
    class UpdateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonMemoryDB.UpdateUser'
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['AuthenticationMode'] = Builders::AuthenticationMode.build(input[:authentication_mode]) unless input[:authentication_mode].nil?
        data['AccessString'] = input[:access_string] unless input[:access_string].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
