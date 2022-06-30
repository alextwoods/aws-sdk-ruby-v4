# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DAX
  module Parsers

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
        data.cluster_name = map['ClusterName']
        data.description = map['Description']
        data.cluster_arn = map['ClusterArn']
        data.total_nodes = map['TotalNodes']
        data.active_nodes = map['ActiveNodes']
        data.node_type = map['NodeType']
        data.status = map['Status']
        data.cluster_discovery_endpoint = (Parsers::Endpoint.parse(map['ClusterDiscoveryEndpoint']) unless map['ClusterDiscoveryEndpoint'].nil?)
        data.node_ids_to_remove = (Parsers::NodeIdentifierList.parse(map['NodeIdsToRemove']) unless map['NodeIdsToRemove'].nil?)
        data.nodes = (Parsers::NodeList.parse(map['Nodes']) unless map['Nodes'].nil?)
        data.preferred_maintenance_window = map['PreferredMaintenanceWindow']
        data.notification_configuration = (Parsers::NotificationConfiguration.parse(map['NotificationConfiguration']) unless map['NotificationConfiguration'].nil?)
        data.subnet_group = map['SubnetGroup']
        data.security_groups = (Parsers::SecurityGroupMembershipList.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.iam_role_arn = map['IamRoleArn']
        data.parameter_group = (Parsers::ParameterGroupStatus.parse(map['ParameterGroup']) unless map['ParameterGroup'].nil?)
        data.sse_description = (Parsers::SSEDescription.parse(map['SSEDescription']) unless map['SSEDescription'].nil?)
        data.cluster_endpoint_encryption_type = map['ClusterEndpointEncryptionType']
        return data
      end
    end

    class SSEDescription
      def self.parse(map)
        data = Types::SSEDescription.new
        data.status = map['Status']
        return data
      end
    end

    class ParameterGroupStatus
      def self.parse(map)
        data = Types::ParameterGroupStatus.new
        data.parameter_group_name = map['ParameterGroupName']
        data.parameter_apply_status = map['ParameterApplyStatus']
        data.node_ids_to_reboot = (Parsers::NodeIdentifierList.parse(map['NodeIdsToReboot']) unless map['NodeIdsToReboot'].nil?)
        return data
      end
    end

    class NodeIdentifierList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SecurityGroupMembershipList
      def self.parse(list)
        list.map do |value|
          Parsers::SecurityGroupMembership.parse(value) unless value.nil?
        end
      end
    end

    class SecurityGroupMembership
      def self.parse(map)
        data = Types::SecurityGroupMembership.new
        data.security_group_identifier = map['SecurityGroupIdentifier']
        data.status = map['Status']
        return data
      end
    end

    class NotificationConfiguration
      def self.parse(map)
        data = Types::NotificationConfiguration.new
        data.topic_arn = map['TopicArn']
        data.topic_status = map['TopicStatus']
        return data
      end
    end

    class NodeList
      def self.parse(list)
        list.map do |value|
          Parsers::Node.parse(value) unless value.nil?
        end
      end
    end

    class Node
      def self.parse(map)
        data = Types::Node.new
        data.node_id = map['NodeId']
        data.endpoint = (Parsers::Endpoint.parse(map['Endpoint']) unless map['Endpoint'].nil?)
        data.node_create_time = Time.at(map['NodeCreateTime'].to_i) if map['NodeCreateTime']
        data.availability_zone = map['AvailabilityZone']
        data.node_status = map['NodeStatus']
        data.parameter_group_status = map['ParameterGroupStatus']
        return data
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.address = map['Address']
        data.port = map['Port']
        data.url = map['URL']
        return data
      end
    end

    # Error Parser for ParameterGroupNotFoundFault
    class ParameterGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::ParameterGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NodeQuotaForCustomerExceededFault
    class NodeQuotaForCustomerExceededFault
      def self.parse(http_resp)
        data = Types::NodeQuotaForCustomerExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ClusterAlreadyExistsFault
    class ClusterAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ClusterAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InsufficientClusterCapacityFault
    class InsufficientClusterCapacityFault
      def self.parse(http_resp)
        data = Types::InsufficientClusterCapacityFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidVPCNetworkStateFault
    class InvalidVPCNetworkStateFault
      def self.parse(http_resp)
        data = Types::InvalidVPCNetworkStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ClusterQuotaForCustomerExceededFault
    class ClusterQuotaForCustomerExceededFault
      def self.parse(http_resp)
        data = Types::ClusterQuotaForCustomerExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidClusterStateFault
    class InvalidClusterStateFault
      def self.parse(http_resp)
        data = Types::InvalidClusterStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NodeQuotaForClusterExceededFault
    class NodeQuotaForClusterExceededFault
      def self.parse(http_resp)
        data = Types::NodeQuotaForClusterExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ServiceLinkedRoleNotFoundFault
    class ServiceLinkedRoleNotFoundFault
      def self.parse(http_resp)
        data = Types::ServiceLinkedRoleNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterGroupStateFault
    class InvalidParameterGroupStateFault
      def self.parse(http_resp)
        data = Types::InvalidParameterGroupStateFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterCombinationException
    class InvalidParameterCombinationException
      def self.parse(http_resp)
        data = Types::InvalidParameterCombinationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SubnetGroupNotFoundFault
    class SubnetGroupNotFoundFault
      def self.parse(http_resp)
        data = Types::SubnetGroupNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TagQuotaPerResourceExceeded
    class TagQuotaPerResourceExceeded
      def self.parse(http_resp)
        data = Types::TagQuotaPerResourceExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateParameterGroup
    class CreateParameterGroup
      def self.parse(http_resp)
        data = Types::CreateParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameter_group = (Parsers::ParameterGroup.parse(map['ParameterGroup']) unless map['ParameterGroup'].nil?)
        data
      end
    end

    class ParameterGroup
      def self.parse(map)
        data = Types::ParameterGroup.new
        data.parameter_group_name = map['ParameterGroupName']
        data.description = map['Description']
        return data
      end
    end

    # Error Parser for ParameterGroupQuotaExceededFault
    class ParameterGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::ParameterGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParameterGroupAlreadyExistsFault
    class ParameterGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::ParameterGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateSubnetGroup
    class CreateSubnetGroup
      def self.parse(http_resp)
        data = Types::CreateSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subnet_group = (Parsers::SubnetGroup.parse(map['SubnetGroup']) unless map['SubnetGroup'].nil?)
        data
      end
    end

    class SubnetGroup
      def self.parse(map)
        data = Types::SubnetGroup.new
        data.subnet_group_name = map['SubnetGroupName']
        data.description = map['Description']
        data.vpc_id = map['VpcId']
        data.subnets = (Parsers::SubnetList.parse(map['Subnets']) unless map['Subnets'].nil?)
        return data
      end
    end

    class SubnetList
      def self.parse(list)
        list.map do |value|
          Parsers::Subnet.parse(value) unless value.nil?
        end
      end
    end

    class Subnet
      def self.parse(map)
        data = Types::Subnet.new
        data.subnet_identifier = map['SubnetIdentifier']
        data.subnet_availability_zone = map['SubnetAvailabilityZone']
        return data
      end
    end

    # Error Parser for SubnetGroupQuotaExceededFault
    class SubnetGroupQuotaExceededFault
      def self.parse(http_resp)
        data = Types::SubnetGroupQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SubnetGroupAlreadyExistsFault
    class SubnetGroupAlreadyExistsFault
      def self.parse(http_resp)
        data = Types::SubnetGroupAlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSubnet
    class InvalidSubnet
      def self.parse(http_resp)
        data = Types::InvalidSubnet.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SubnetQuotaExceededFault
    class SubnetQuotaExceededFault
      def self.parse(http_resp)
        data = Types::SubnetQuotaExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DecreaseReplicationFactor
    class DecreaseReplicationFactor
      def self.parse(http_resp)
        data = Types::DecreaseReplicationFactorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    # Error Parser for NodeNotFoundFault
    class NodeNotFoundFault
      def self.parse(http_resp)
        data = Types::NodeNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ClusterNotFoundFault
    class ClusterNotFoundFault
      def self.parse(http_resp)
        data = Types::ClusterNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
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

    # Operation Parser for DeleteParameterGroup
    class DeleteParameterGroup
      def self.parse(http_resp)
        data = Types::DeleteParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deletion_message = map['DeletionMessage']
        data
      end
    end

    # Operation Parser for DeleteSubnetGroup
    class DeleteSubnetGroup
      def self.parse(http_resp)
        data = Types::DeleteSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deletion_message = map['DeletionMessage']
        data
      end
    end

    # Error Parser for SubnetGroupInUseFault
    class SubnetGroupInUseFault
      def self.parse(http_resp)
        data = Types::SubnetGroupInUseFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeClusters
    class DescribeClusters
      def self.parse(http_resp)
        data = Types::DescribeClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.clusters = (Parsers::ClusterList.parse(map['Clusters']) unless map['Clusters'].nil?)
        data
      end
    end

    class ClusterList
      def self.parse(list)
        list.map do |value|
          Parsers::Cluster.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeDefaultParameters
    class DescribeDefaultParameters
      def self.parse(http_resp)
        data = Types::DescribeDefaultParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.parameters = (Parsers::ParameterList.parse(map['Parameters']) unless map['Parameters'].nil?)
        data
      end
    end

    class ParameterList
      def self.parse(list)
        list.map do |value|
          Parsers::Parameter.parse(value) unless value.nil?
        end
      end
    end

    class Parameter
      def self.parse(map)
        data = Types::Parameter.new
        data.parameter_name = map['ParameterName']
        data.parameter_type = map['ParameterType']
        data.parameter_value = map['ParameterValue']
        data.node_type_specific_values = (Parsers::NodeTypeSpecificValueList.parse(map['NodeTypeSpecificValues']) unless map['NodeTypeSpecificValues'].nil?)
        data.description = map['Description']
        data.source = map['Source']
        data.data_type = map['DataType']
        data.allowed_values = map['AllowedValues']
        data.is_modifiable = map['IsModifiable']
        data.change_type = map['ChangeType']
        return data
      end
    end

    class NodeTypeSpecificValueList
      def self.parse(list)
        list.map do |value|
          Parsers::NodeTypeSpecificValue.parse(value) unless value.nil?
        end
      end
    end

    class NodeTypeSpecificValue
      def self.parse(map)
        data = Types::NodeTypeSpecificValue.new
        data.node_type = map['NodeType']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for DescribeEvents
    class DescribeEvents
      def self.parse(http_resp)
        data = Types::DescribeEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.events = (Parsers::EventList.parse(map['Events']) unless map['Events'].nil?)
        data
      end
    end

    class EventList
      def self.parse(list)
        list.map do |value|
          Parsers::Event.parse(value) unless value.nil?
        end
      end
    end

    class Event
      def self.parse(map)
        data = Types::Event.new
        data.source_name = map['SourceName']
        data.source_type = map['SourceType']
        data.message = map['Message']
        data.date = Time.at(map['Date'].to_i) if map['Date']
        return data
      end
    end

    # Operation Parser for DescribeParameterGroups
    class DescribeParameterGroups
      def self.parse(http_resp)
        data = Types::DescribeParameterGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.parameter_groups = (Parsers::ParameterGroupList.parse(map['ParameterGroups']) unless map['ParameterGroups'].nil?)
        data
      end
    end

    class ParameterGroupList
      def self.parse(list)
        list.map do |value|
          Parsers::ParameterGroup.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeParameters
    class DescribeParameters
      def self.parse(http_resp)
        data = Types::DescribeParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.parameters = (Parsers::ParameterList.parse(map['Parameters']) unless map['Parameters'].nil?)
        data
      end
    end

    # Operation Parser for DescribeSubnetGroups
    class DescribeSubnetGroups
      def self.parse(http_resp)
        data = Types::DescribeSubnetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.subnet_groups = (Parsers::SubnetGroupList.parse(map['SubnetGroups']) unless map['SubnetGroups'].nil?)
        data
      end
    end

    class SubnetGroupList
      def self.parse(list)
        list.map do |value|
          Parsers::SubnetGroup.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for IncreaseReplicationFactor
    class IncreaseReplicationFactor
      def self.parse(http_resp)
        data = Types::IncreaseReplicationFactorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
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
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
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

    # Error Parser for InvalidARNFault
    class InvalidARNFault
      def self.parse(http_resp)
        data = Types::InvalidARNFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RebootNode
    class RebootNode
      def self.parse(http_resp)
        data = Types::RebootNodeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
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
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
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
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Error Parser for TagNotFoundFault
    class TagNotFoundFault
      def self.parse(http_resp)
        data = Types::TagNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateCluster
    class UpdateCluster
      def self.parse(http_resp)
        data = Types::UpdateClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    # Operation Parser for UpdateParameterGroup
    class UpdateParameterGroup
      def self.parse(http_resp)
        data = Types::UpdateParameterGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parameter_group = (Parsers::ParameterGroup.parse(map['ParameterGroup']) unless map['ParameterGroup'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSubnetGroup
    class UpdateSubnetGroup
      def self.parse(http_resp)
        data = Types::UpdateSubnetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subnet_group = (Parsers::SubnetGroup.parse(map['SubnetGroup']) unless map['SubnetGroup'].nil?)
        data
      end
    end

    # Error Parser for SubnetInUse
    class SubnetInUse
      def self.parse(http_resp)
        data = Types::SubnetInUse.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end
  end
end
