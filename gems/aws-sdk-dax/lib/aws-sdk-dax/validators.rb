# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DAX
  module Validators

    class AvailabilityZoneList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Cluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cluster, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:total_nodes], ::Integer, context: "#{context}[:total_nodes]")
        Hearth::Validator.validate!(input[:active_nodes], ::Integer, context: "#{context}[:active_nodes]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::Endpoint.validate!(input[:cluster_discovery_endpoint], context: "#{context}[:cluster_discovery_endpoint]") unless input[:cluster_discovery_endpoint].nil?
        Validators::NodeIdentifierList.validate!(input[:node_ids_to_remove], context: "#{context}[:node_ids_to_remove]") unless input[:node_ids_to_remove].nil?
        Validators::NodeList.validate!(input[:nodes], context: "#{context}[:nodes]") unless input[:nodes].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
        Hearth::Validator.validate!(input[:subnet_group], ::String, context: "#{context}[:subnet_group]")
        Validators::SecurityGroupMembershipList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Validators::ParameterGroupStatus.validate!(input[:parameter_group], context: "#{context}[:parameter_group]") unless input[:parameter_group].nil?
        Validators::SSEDescription.validate!(input[:sse_description], context: "#{context}[:sse_description]") unless input[:sse_description].nil?
        Hearth::Validator.validate!(input[:cluster_endpoint_encryption_type], ::String, context: "#{context}[:cluster_endpoint_encryption_type]")
      end
    end

    class ClusterAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Cluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClusterNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterQuotaForCustomerExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterQuotaForCustomerExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:replication_factor], ::Integer, context: "#{context}[:replication_factor]")
        Validators::AvailabilityZoneList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Validators::SecurityGroupIdentifierList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:notification_topic_arn], ::String, context: "#{context}[:notification_topic_arn]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::SSESpecification.validate!(input[:sse_specification], context: "#{context}[:sse_specification]") unless input[:sse_specification].nil?
        Hearth::Validator.validate!(input[:cluster_endpoint_encryption_type], ::String, context: "#{context}[:cluster_endpoint_encryption_type]")
      end
    end

    class CreateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class CreateParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreateParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateParameterGroupOutput, context: context)
        Validators::ParameterGroup.validate!(input[:parameter_group], context: "#{context}[:parameter_group]") unless input[:parameter_group].nil?
      end
    end

    class CreateSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class CreateSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubnetGroupOutput, context: context)
        Validators::SubnetGroup.validate!(input[:subnet_group], context: "#{context}[:subnet_group]") unless input[:subnet_group].nil?
      end
    end

    class DecreaseReplicationFactorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecreaseReplicationFactorInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:new_replication_factor], ::Integer, context: "#{context}[:new_replication_factor]")
        Validators::AvailabilityZoneList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::NodeIdentifierList.validate!(input[:node_ids_to_remove], context: "#{context}[:node_ids_to_remove]") unless input[:node_ids_to_remove].nil?
      end
    end

    class DecreaseReplicationFactorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecreaseReplicationFactorOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DeleteClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
      end
    end

    class DeleteClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DeleteParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
      end
    end

    class DeleteParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteParameterGroupOutput, context: context)
        Hearth::Validator.validate!(input[:deletion_message], ::String, context: "#{context}[:deletion_message]")
      end
    end

    class DeleteSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
      end
    end

    class DeleteSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubnetGroupOutput, context: context)
        Hearth::Validator.validate!(input[:deletion_message], ::String, context: "#{context}[:deletion_message]")
      end
    end

    class DescribeClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClustersInput, context: context)
        Validators::ClusterNameList.validate!(input[:cluster_names], context: "#{context}[:cluster_names]") unless input[:cluster_names].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClustersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ClusterList.validate!(input[:clusters], context: "#{context}[:clusters]") unless input[:clusters].nil?
      end
    end

    class DescribeDefaultParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDefaultParametersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDefaultParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDefaultParametersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class DescribeEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsInput, context: context)
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class DescribeParameterGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeParameterGroupsInput, context: context)
        Validators::ParameterGroupNameList.validate!(input[:parameter_group_names], context: "#{context}[:parameter_group_names]") unless input[:parameter_group_names].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeParameterGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeParameterGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ParameterGroupList.validate!(input[:parameter_groups], context: "#{context}[:parameter_groups]") unless input[:parameter_groups].nil?
      end
    end

    class DescribeParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeParametersInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeParametersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class DescribeSubnetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubnetGroupsInput, context: context)
        Validators::SubnetGroupNameList.validate!(input[:subnet_group_names], context: "#{context}[:subnet_group_names]") unless input[:subnet_group_names].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSubnetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubnetGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::SubnetGroupList.validate!(input[:subnet_groups], context: "#{context}[:subnet_groups]") unless input[:subnet_groups].nil?
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IncreaseReplicationFactorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncreaseReplicationFactorInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:new_replication_factor], ::Integer, context: "#{context}[:new_replication_factor]")
        Validators::AvailabilityZoneList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
      end
    end

    class IncreaseReplicationFactorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncreaseReplicationFactorOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class InsufficientClusterCapacityFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientClusterCapacityFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidARNFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidARNFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClusterStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClusterStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterCombinationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSubnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSubnet, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidVPCNetworkStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidVPCNetworkStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Node
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Node, context: context)
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
        Validators::Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
        Hearth::Validator.validate!(input[:node_create_time], ::Time, context: "#{context}[:node_create_time]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:node_status], ::String, context: "#{context}[:node_status]")
        Hearth::Validator.validate!(input[:parameter_group_status], ::String, context: "#{context}[:parameter_group_status]")
      end
    end

    class NodeIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Node.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NodeQuotaForClusterExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeQuotaForClusterExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NodeQuotaForCustomerExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeQuotaForCustomerExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NodeTypeSpecificValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeTypeSpecificValue, context: context)
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class NodeTypeSpecificValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NodeTypeSpecificValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationConfiguration, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:topic_status], ::String, context: "#{context}[:topic_status]")
      end
    end

    class Parameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parameter, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_type], ::String, context: "#{context}[:parameter_type]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
        Validators::NodeTypeSpecificValueList.validate!(input[:node_type_specific_values], context: "#{context}[:node_type_specific_values]") unless input[:node_type_specific_values].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:allowed_values], ::String, context: "#{context}[:allowed_values]")
        Hearth::Validator.validate!(input[:is_modifiable], ::String, context: "#{context}[:is_modifiable]")
        Hearth::Validator.validate!(input[:change_type], ::String, context: "#{context}[:change_type]")
      end
    end

    class ParameterGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterGroup, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ParameterGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ParameterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterGroupNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ParameterGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterGroupStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterGroupStatus, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Hearth::Validator.validate!(input[:parameter_apply_status], ::String, context: "#{context}[:parameter_apply_status]")
        Validators::NodeIdentifierList.validate!(input[:node_ids_to_reboot], context: "#{context}[:node_ids_to_reboot]") unless input[:node_ids_to_reboot].nil?
      end
    end

    class ParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Parameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterNameValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterNameValue, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
      end
    end

    class ParameterNameValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ParameterNameValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RebootNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootNodeInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
      end
    end

    class RebootNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootNodeOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class SSEDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSEDescription, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SSESpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSESpecification, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class SecurityGroupIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroupMembership, context: context)
        Hearth::Validator.validate!(input[:security_group_identifier], ::String, context: "#{context}[:security_group_identifier]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SecurityGroupMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceLinkedRoleNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLinkedRoleNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
      end
    end

    class Subnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subnet, context: context)
        Hearth::Validator.validate!(input[:subnet_identifier], ::String, context: "#{context}[:subnet_identifier]")
        Hearth::Validator.validate!(input[:subnet_availability_zone], ::String, context: "#{context}[:subnet_availability_zone]")
      end
    end

    class SubnetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetGroup, context: context)
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::SubnetList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class SubnetGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetGroupInUseFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetGroupInUseFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SubnetGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubnetGroupNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Subnet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubnetQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagQuotaPerResourceExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagQuotaPerResourceExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Validators::KeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:notification_topic_arn], ::String, context: "#{context}[:notification_topic_arn]")
        Hearth::Validator.validate!(input[:notification_topic_status], ::String, context: "#{context}[:notification_topic_status]")
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Validators::SecurityGroupIdentifierList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class UpdateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterOutput, context: context)
        Validators::Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class UpdateParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
        Validators::ParameterNameValueList.validate!(input[:parameter_name_values], context: "#{context}[:parameter_name_values]") unless input[:parameter_name_values].nil?
      end
    end

    class UpdateParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateParameterGroupOutput, context: context)
        Validators::ParameterGroup.validate!(input[:parameter_group], context: "#{context}[:parameter_group]") unless input[:parameter_group].nil?
      end
    end

    class UpdateSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:subnet_group_name], ::String, context: "#{context}[:subnet_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class UpdateSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubnetGroupOutput, context: context)
        Validators::SubnetGroup.validate!(input[:subnet_group], context: "#{context}[:subnet_group]") unless input[:subnet_group].nil?
      end
    end

  end
end
