# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::DAX
  module Builders

    # Operation Builder for CreateCluster
    class CreateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.CreateCluster'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['NodeType'] = input[:node_type] unless input[:node_type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ReplicationFactor'] = input[:replication_factor] unless input[:replication_factor].nil?
        data['AvailabilityZones'] = AvailabilityZoneList.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['SubnetGroupName'] = input[:subnet_group_name] unless input[:subnet_group_name].nil?
        data['SecurityGroupIds'] = SecurityGroupIdentifierList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['PreferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['NotificationTopicArn'] = input[:notification_topic_arn] unless input[:notification_topic_arn].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['SSESpecification'] = SSESpecification.build(input[:sse_specification]) unless input[:sse_specification].nil?
        data['ClusterEndpointEncryptionType'] = input[:cluster_endpoint_encryption_type] unless input[:cluster_endpoint_encryption_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SSESpecification
    class SSESpecification
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
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

    # List Builder for SecurityGroupIdentifierList
    class SecurityGroupIdentifierList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AvailabilityZoneList
    class AvailabilityZoneList
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
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.CreateParameterGroup'
        data = {}
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSubnetGroup
    class CreateSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.CreateSubnetGroup'
        data = {}
        data['SubnetGroupName'] = input[:subnet_group_name] unless input[:subnet_group_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SubnetIds'] = SubnetIdentifierList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for DecreaseReplicationFactor
    class DecreaseReplicationFactor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.DecreaseReplicationFactor'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['NewReplicationFactor'] = input[:new_replication_factor] unless input[:new_replication_factor].nil?
        data['AvailabilityZones'] = AvailabilityZoneList.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data['NodeIdsToRemove'] = NodeIdentifierList.build(input[:node_ids_to_remove]) unless input[:node_ids_to_remove].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NodeIdentifierList
    class NodeIdentifierList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteCluster
    class DeleteCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.DeleteCluster'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteParameterGroup
    class DeleteParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.DeleteParameterGroup'
        data = {}
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSubnetGroup
    class DeleteSubnetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.DeleteSubnetGroup'
        data = {}
        data['SubnetGroupName'] = input[:subnet_group_name] unless input[:subnet_group_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeClusters
    class DescribeClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.DescribeClusters'
        data = {}
        data['ClusterNames'] = ClusterNameList.build(input[:cluster_names]) unless input[:cluster_names].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for DescribeDefaultParameters
    class DescribeDefaultParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.DescribeDefaultParameters'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEvents
    class DescribeEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.DescribeEvents'
        data = {}
        data['SourceName'] = input[:source_name] unless input[:source_name].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['Duration'] = input[:duration] unless input[:duration].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeParameterGroups
    class DescribeParameterGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.DescribeParameterGroups'
        data = {}
        data['ParameterGroupNames'] = ParameterGroupNameList.build(input[:parameter_group_names]) unless input[:parameter_group_names].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterGroupNameList
    class ParameterGroupNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeParameters
    class DescribeParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.DescribeParameters'
        data = {}
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['Source'] = input[:source] unless input[:source].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSubnetGroups
    class DescribeSubnetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.DescribeSubnetGroups'
        data = {}
        data['SubnetGroupNames'] = SubnetGroupNameList.build(input[:subnet_group_names]) unless input[:subnet_group_names].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SubnetGroupNameList
    class SubnetGroupNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for IncreaseReplicationFactor
    class IncreaseReplicationFactor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.IncreaseReplicationFactor'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['NewReplicationFactor'] = input[:new_replication_factor] unless input[:new_replication_factor].nil?
        data['AvailabilityZones'] = AvailabilityZoneList.build(input[:availability_zones]) unless input[:availability_zones].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.ListTags'
        data = {}
        data['ResourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RebootNode
    class RebootNode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.RebootNode'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['NodeId'] = input[:node_id] unless input[:node_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.TagResource'
        data = {}
        data['ResourceName'] = input[:resource_name] unless input[:resource_name].nil?
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
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.UntagResource'
        data = {}
        data['ResourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['TagKeys'] = KeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateCluster
    class UpdateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.UpdateCluster'
        data = {}
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['PreferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['NotificationTopicArn'] = input[:notification_topic_arn] unless input[:notification_topic_arn].nil?
        data['NotificationTopicStatus'] = input[:notification_topic_status] unless input[:notification_topic_status].nil?
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['SecurityGroupIds'] = SecurityGroupIdentifierList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateParameterGroup
    class UpdateParameterGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.UpdateParameterGroup'
        data = {}
        data['ParameterGroupName'] = input[:parameter_group_name] unless input[:parameter_group_name].nil?
        data['ParameterNameValues'] = ParameterNameValueList.build(input[:parameter_name_values]) unless input[:parameter_name_values].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterNameValueList
    class ParameterNameValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << ParameterNameValue.build(element) unless element.nil?
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
        http_req.headers['X-Amz-Target'] = 'AmazonDAXV3.UpdateSubnetGroup'
        data = {}
        data['SubnetGroupName'] = input[:subnet_group_name] unless input[:subnet_group_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SubnetIds'] = SubnetIdentifierList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
