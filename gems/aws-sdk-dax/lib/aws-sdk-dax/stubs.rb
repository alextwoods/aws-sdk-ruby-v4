# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::DAX
  module Stubs

    # Operation Stubber for CreateCluster
    class CreateCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Cluster
    class Cluster
      def self.default(visited=[])
        return nil if visited.include?('Cluster')
        visited = visited + ['Cluster']
        {
          cluster_name: 'cluster_name',
          description: 'description',
          cluster_arn: 'cluster_arn',
          total_nodes: 1,
          active_nodes: 1,
          node_type: 'node_type',
          status: 'status',
          cluster_discovery_endpoint: Endpoint.default(visited),
          node_ids_to_remove: NodeIdentifierList.default(visited),
          nodes: NodeList.default(visited),
          preferred_maintenance_window: 'preferred_maintenance_window',
          notification_configuration: NotificationConfiguration.default(visited),
          subnet_group: 'subnet_group',
          security_groups: SecurityGroupMembershipList.default(visited),
          iam_role_arn: 'iam_role_arn',
          parameter_group: ParameterGroupStatus.default(visited),
          sse_description: SSEDescription.default(visited),
          cluster_endpoint_encryption_type: 'cluster_endpoint_encryption_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Cluster.new
        data = {}
        data['ClusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ClusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['TotalNodes'] = stub[:total_nodes] unless stub[:total_nodes].nil?
        data['ActiveNodes'] = stub[:active_nodes] unless stub[:active_nodes].nil?
        data['NodeType'] = stub[:node_type] unless stub[:node_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ClusterDiscoveryEndpoint'] = Endpoint.stub(stub[:cluster_discovery_endpoint]) unless stub[:cluster_discovery_endpoint].nil?
        data['NodeIdsToRemove'] = NodeIdentifierList.stub(stub[:node_ids_to_remove]) unless stub[:node_ids_to_remove].nil?
        data['Nodes'] = NodeList.stub(stub[:nodes]) unless stub[:nodes].nil?
        data['PreferredMaintenanceWindow'] = stub[:preferred_maintenance_window] unless stub[:preferred_maintenance_window].nil?
        data['NotificationConfiguration'] = NotificationConfiguration.stub(stub[:notification_configuration]) unless stub[:notification_configuration].nil?
        data['SubnetGroup'] = stub[:subnet_group] unless stub[:subnet_group].nil?
        data['SecurityGroups'] = SecurityGroupMembershipList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['ParameterGroup'] = ParameterGroupStatus.stub(stub[:parameter_group]) unless stub[:parameter_group].nil?
        data['SSEDescription'] = SSEDescription.stub(stub[:sse_description]) unless stub[:sse_description].nil?
        data['ClusterEndpointEncryptionType'] = stub[:cluster_endpoint_encryption_type] unless stub[:cluster_endpoint_encryption_type].nil?
        data
      end
    end

    # Structure Stubber for SSEDescription
    class SSEDescription
      def self.default(visited=[])
        return nil if visited.include?('SSEDescription')
        visited = visited + ['SSEDescription']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::SSEDescription.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ParameterGroupStatus
    class ParameterGroupStatus
      def self.default(visited=[])
        return nil if visited.include?('ParameterGroupStatus')
        visited = visited + ['ParameterGroupStatus']
        {
          parameter_group_name: 'parameter_group_name',
          parameter_apply_status: 'parameter_apply_status',
          node_ids_to_reboot: NodeIdentifierList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterGroupStatus.new
        data = {}
        data['ParameterGroupName'] = stub[:parameter_group_name] unless stub[:parameter_group_name].nil?
        data['ParameterApplyStatus'] = stub[:parameter_apply_status] unless stub[:parameter_apply_status].nil?
        data['NodeIdsToReboot'] = NodeIdentifierList.stub(stub[:node_ids_to_reboot]) unless stub[:node_ids_to_reboot].nil?
        data
      end
    end

    # List Stubber for NodeIdentifierList
    class NodeIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('NodeIdentifierList')
        visited = visited + ['NodeIdentifierList']
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

    # List Stubber for SecurityGroupMembershipList
    class SecurityGroupMembershipList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupMembershipList')
        visited = visited + ['SecurityGroupMembershipList']
        [
          SecurityGroupMembership.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecurityGroupMembership.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecurityGroupMembership
    class SecurityGroupMembership
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupMembership')
        visited = visited + ['SecurityGroupMembership']
        {
          security_group_identifier: 'security_group_identifier',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityGroupMembership.new
        data = {}
        data['SecurityGroupIdentifier'] = stub[:security_group_identifier] unless stub[:security_group_identifier].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for NotificationConfiguration
    class NotificationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NotificationConfiguration')
        visited = visited + ['NotificationConfiguration']
        {
          topic_arn: 'topic_arn',
          topic_status: 'topic_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationConfiguration.new
        data = {}
        data['TopicArn'] = stub[:topic_arn] unless stub[:topic_arn].nil?
        data['TopicStatus'] = stub[:topic_status] unless stub[:topic_status].nil?
        data
      end
    end

    # List Stubber for NodeList
    class NodeList
      def self.default(visited=[])
        return nil if visited.include?('NodeList')
        visited = visited + ['NodeList']
        [
          Node.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Node.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Node
    class Node
      def self.default(visited=[])
        return nil if visited.include?('Node')
        visited = visited + ['Node']
        {
          node_id: 'node_id',
          endpoint: Endpoint.default(visited),
          node_create_time: Time.now,
          availability_zone: 'availability_zone',
          node_status: 'node_status',
          parameter_group_status: 'parameter_group_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Node.new
        data = {}
        data['NodeId'] = stub[:node_id] unless stub[:node_id].nil?
        data['Endpoint'] = Endpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        data['NodeCreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:node_create_time]).to_i unless stub[:node_create_time].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['NodeStatus'] = stub[:node_status] unless stub[:node_status].nil?
        data['ParameterGroupStatus'] = stub[:parameter_group_status] unless stub[:parameter_group_status].nil?
        data
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          address: 'address',
          port: 1,
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Endpoint.new
        data = {}
        data['Address'] = stub[:address] unless stub[:address].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['URL'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for CreateParameterGroup
    class CreateParameterGroup
      def self.default(visited=[])
        {
          parameter_group: ParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ParameterGroup'] = ParameterGroup.stub(stub[:parameter_group]) unless stub[:parameter_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ParameterGroup
    class ParameterGroup
      def self.default(visited=[])
        return nil if visited.include?('ParameterGroup')
        visited = visited + ['ParameterGroup']
        {
          parameter_group_name: 'parameter_group_name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterGroup.new
        data = {}
        data['ParameterGroupName'] = stub[:parameter_group_name] unless stub[:parameter_group_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for CreateSubnetGroup
    class CreateSubnetGroup
      def self.default(visited=[])
        {
          subnet_group: SubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SubnetGroup'] = SubnetGroup.stub(stub[:subnet_group]) unless stub[:subnet_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SubnetGroup
    class SubnetGroup
      def self.default(visited=[])
        return nil if visited.include?('SubnetGroup')
        visited = visited + ['SubnetGroup']
        {
          subnet_group_name: 'subnet_group_name',
          description: 'description',
          vpc_id: 'vpc_id',
          subnets: SubnetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SubnetGroup.new
        data = {}
        data['SubnetGroupName'] = stub[:subnet_group_name] unless stub[:subnet_group_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['Subnets'] = SubnetList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data
      end
    end

    # List Stubber for SubnetList
    class SubnetList
      def self.default(visited=[])
        return nil if visited.include?('SubnetList')
        visited = visited + ['SubnetList']
        [
          Subnet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Subnet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Subnet
    class Subnet
      def self.default(visited=[])
        return nil if visited.include?('Subnet')
        visited = visited + ['Subnet']
        {
          subnet_identifier: 'subnet_identifier',
          subnet_availability_zone: 'subnet_availability_zone',
        }
      end

      def self.stub(stub)
        stub ||= Types::Subnet.new
        data = {}
        data['SubnetIdentifier'] = stub[:subnet_identifier] unless stub[:subnet_identifier].nil?
        data['SubnetAvailabilityZone'] = stub[:subnet_availability_zone] unless stub[:subnet_availability_zone].nil?
        data
      end
    end

    # Operation Stubber for DecreaseReplicationFactor
    class DecreaseReplicationFactor
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        data['Cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteParameterGroup
    class DeleteParameterGroup
      def self.default(visited=[])
        {
          deletion_message: 'deletion_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeletionMessage'] = stub[:deletion_message] unless stub[:deletion_message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSubnetGroup
    class DeleteSubnetGroup
      def self.default(visited=[])
        {
          deletion_message: 'deletion_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeletionMessage'] = stub[:deletion_message] unless stub[:deletion_message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeClusters
    class DescribeClusters
      def self.default(visited=[])
        {
          next_token: 'next_token',
          clusters: ClusterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Clusters'] = ClusterList.stub(stub[:clusters]) unless stub[:clusters].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ClusterList
    class ClusterList
      def self.default(visited=[])
        return nil if visited.include?('ClusterList')
        visited = visited + ['ClusterList']
        [
          Cluster.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Cluster.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDefaultParameters
    class DescribeDefaultParameters
      def self.default(visited=[])
        {
          next_token: 'next_token',
          parameters: ParameterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Parameters'] = ParameterList.stub(stub[:parameters]) unless stub[:parameters].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterList
    class ParameterList
      def self.default(visited=[])
        return nil if visited.include?('ParameterList')
        visited = visited + ['ParameterList']
        [
          Parameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Parameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Parameter
    class Parameter
      def self.default(visited=[])
        return nil if visited.include?('Parameter')
        visited = visited + ['Parameter']
        {
          parameter_name: 'parameter_name',
          parameter_type: 'parameter_type',
          parameter_value: 'parameter_value',
          node_type_specific_values: NodeTypeSpecificValueList.default(visited),
          description: 'description',
          source: 'source',
          data_type: 'data_type',
          allowed_values: 'allowed_values',
          is_modifiable: 'is_modifiable',
          change_type: 'change_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Parameter.new
        data = {}
        data['ParameterName'] = stub[:parameter_name] unless stub[:parameter_name].nil?
        data['ParameterType'] = stub[:parameter_type] unless stub[:parameter_type].nil?
        data['ParameterValue'] = stub[:parameter_value] unless stub[:parameter_value].nil?
        data['NodeTypeSpecificValues'] = NodeTypeSpecificValueList.stub(stub[:node_type_specific_values]) unless stub[:node_type_specific_values].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['DataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['AllowedValues'] = stub[:allowed_values] unless stub[:allowed_values].nil?
        data['IsModifiable'] = stub[:is_modifiable] unless stub[:is_modifiable].nil?
        data['ChangeType'] = stub[:change_type] unless stub[:change_type].nil?
        data
      end
    end

    # List Stubber for NodeTypeSpecificValueList
    class NodeTypeSpecificValueList
      def self.default(visited=[])
        return nil if visited.include?('NodeTypeSpecificValueList')
        visited = visited + ['NodeTypeSpecificValueList']
        [
          NodeTypeSpecificValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NodeTypeSpecificValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NodeTypeSpecificValue
    class NodeTypeSpecificValue
      def self.default(visited=[])
        return nil if visited.include?('NodeTypeSpecificValue')
        visited = visited + ['NodeTypeSpecificValue']
        {
          node_type: 'node_type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeTypeSpecificValue.new
        data = {}
        data['NodeType'] = stub[:node_type] unless stub[:node_type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeEvents
    class DescribeEvents
      def self.default(visited=[])
        {
          next_token: 'next_token',
          events: EventList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Events'] = EventList.stub(stub[:events]) unless stub[:events].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventList
    class EventList
      def self.default(visited=[])
        return nil if visited.include?('EventList')
        visited = visited + ['EventList']
        [
          Event.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Event.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          source_name: 'source_name',
          source_type: 'source_type',
          message: 'message',
          date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Event.new
        data = {}
        data['SourceName'] = stub[:source_name] unless stub[:source_name].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Date'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date]).to_i unless stub[:date].nil?
        data
      end
    end

    # Operation Stubber for DescribeParameterGroups
    class DescribeParameterGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          parameter_groups: ParameterGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ParameterGroups'] = ParameterGroupList.stub(stub[:parameter_groups]) unless stub[:parameter_groups].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterGroupList
    class ParameterGroupList
      def self.default(visited=[])
        return nil if visited.include?('ParameterGroupList')
        visited = visited + ['ParameterGroupList']
        [
          ParameterGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ParameterGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeParameters
    class DescribeParameters
      def self.default(visited=[])
        {
          next_token: 'next_token',
          parameters: ParameterList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Parameters'] = ParameterList.stub(stub[:parameters]) unless stub[:parameters].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeSubnetGroups
    class DescribeSubnetGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          subnet_groups: SubnetGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['SubnetGroups'] = SubnetGroupList.stub(stub[:subnet_groups]) unless stub[:subnet_groups].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SubnetGroupList
    class SubnetGroupList
      def self.default(visited=[])
        return nil if visited.include?('SubnetGroupList')
        visited = visited + ['SubnetGroupList']
        [
          SubnetGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SubnetGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for IncreaseReplicationFactor
    class IncreaseReplicationFactor
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTags
    class ListTags
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
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

    # Operation Stubber for RebootNode
    class RebootNode
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCluster
    class UpdateCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Cluster'] = Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateParameterGroup
    class UpdateParameterGroup
      def self.default(visited=[])
        {
          parameter_group: ParameterGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ParameterGroup'] = ParameterGroup.stub(stub[:parameter_group]) unless stub[:parameter_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSubnetGroup
    class UpdateSubnetGroup
      def self.default(visited=[])
        {
          subnet_group: SubnetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SubnetGroup'] = SubnetGroup.stub(stub[:subnet_group]) unless stub[:subnet_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
