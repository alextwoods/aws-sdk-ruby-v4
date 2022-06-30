# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::DAX
  module Params

    module AvailabilityZoneList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Cluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cluster, context: context)
        type = Types::Cluster.new
        type.cluster_name = params[:cluster_name]
        type.description = params[:description]
        type.cluster_arn = params[:cluster_arn]
        type.total_nodes = params[:total_nodes]
        type.active_nodes = params[:active_nodes]
        type.node_type = params[:node_type]
        type.status = params[:status]
        type.cluster_discovery_endpoint = Endpoint.build(params[:cluster_discovery_endpoint], context: "#{context}[:cluster_discovery_endpoint]") unless params[:cluster_discovery_endpoint].nil?
        type.node_ids_to_remove = NodeIdentifierList.build(params[:node_ids_to_remove], context: "#{context}[:node_ids_to_remove]") unless params[:node_ids_to_remove].nil?
        type.nodes = NodeList.build(params[:nodes], context: "#{context}[:nodes]") unless params[:nodes].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type.subnet_group = params[:subnet_group]
        type.security_groups = SecurityGroupMembershipList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.iam_role_arn = params[:iam_role_arn]
        type.parameter_group = ParameterGroupStatus.build(params[:parameter_group], context: "#{context}[:parameter_group]") unless params[:parameter_group].nil?
        type.sse_description = SSEDescription.build(params[:sse_description], context: "#{context}[:sse_description]") unless params[:sse_description].nil?
        type.cluster_endpoint_encryption_type = params[:cluster_endpoint_encryption_type]
        type
      end
    end

    module ClusterAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterAlreadyExistsFault, context: context)
        type = Types::ClusterAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClusterNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterNotFoundFault, context: context)
        type = Types::ClusterNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ClusterQuotaForCustomerExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterQuotaForCustomerExceededFault, context: context)
        type = Types::ClusterQuotaForCustomerExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module CreateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterInput, context: context)
        type = Types::CreateClusterInput.new
        type.cluster_name = params[:cluster_name]
        type.node_type = params[:node_type]
        type.description = params[:description]
        type.replication_factor = params[:replication_factor]
        type.availability_zones = AvailabilityZoneList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.subnet_group_name = params[:subnet_group_name]
        type.security_group_ids = SecurityGroupIdentifierList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.notification_topic_arn = params[:notification_topic_arn]
        type.iam_role_arn = params[:iam_role_arn]
        type.parameter_group_name = params[:parameter_group_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.sse_specification = SSESpecification.build(params[:sse_specification], context: "#{context}[:sse_specification]") unless params[:sse_specification].nil?
        type.cluster_endpoint_encryption_type = params[:cluster_endpoint_encryption_type]
        type
      end
    end

    module CreateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterOutput, context: context)
        type = Types::CreateClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module CreateParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateParameterGroupInput, context: context)
        type = Types::CreateParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.description = params[:description]
        type
      end
    end

    module CreateParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateParameterGroupOutput, context: context)
        type = Types::CreateParameterGroupOutput.new
        type.parameter_group = ParameterGroup.build(params[:parameter_group], context: "#{context}[:parameter_group]") unless params[:parameter_group].nil?
        type
      end
    end

    module CreateSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubnetGroupInput, context: context)
        type = Types::CreateSubnetGroupInput.new
        type.subnet_group_name = params[:subnet_group_name]
        type.description = params[:description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module CreateSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubnetGroupOutput, context: context)
        type = Types::CreateSubnetGroupOutput.new
        type.subnet_group = SubnetGroup.build(params[:subnet_group], context: "#{context}[:subnet_group]") unless params[:subnet_group].nil?
        type
      end
    end

    module DecreaseReplicationFactorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecreaseReplicationFactorInput, context: context)
        type = Types::DecreaseReplicationFactorInput.new
        type.cluster_name = params[:cluster_name]
        type.new_replication_factor = params[:new_replication_factor]
        type.availability_zones = AvailabilityZoneList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.node_ids_to_remove = NodeIdentifierList.build(params[:node_ids_to_remove], context: "#{context}[:node_ids_to_remove]") unless params[:node_ids_to_remove].nil?
        type
      end
    end

    module DecreaseReplicationFactorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecreaseReplicationFactorOutput, context: context)
        type = Types::DecreaseReplicationFactorOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DeleteClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterInput, context: context)
        type = Types::DeleteClusterInput.new
        type.cluster_name = params[:cluster_name]
        type
      end
    end

    module DeleteClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterOutput, context: context)
        type = Types::DeleteClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DeleteParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteParameterGroupInput, context: context)
        type = Types::DeleteParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type
      end
    end

    module DeleteParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteParameterGroupOutput, context: context)
        type = Types::DeleteParameterGroupOutput.new
        type.deletion_message = params[:deletion_message]
        type
      end
    end

    module DeleteSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubnetGroupInput, context: context)
        type = Types::DeleteSubnetGroupInput.new
        type.subnet_group_name = params[:subnet_group_name]
        type
      end
    end

    module DeleteSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubnetGroupOutput, context: context)
        type = Types::DeleteSubnetGroupOutput.new
        type.deletion_message = params[:deletion_message]
        type
      end
    end

    module DescribeClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClustersInput, context: context)
        type = Types::DescribeClustersInput.new
        type.cluster_names = ClusterNameList.build(params[:cluster_names], context: "#{context}[:cluster_names]") unless params[:cluster_names].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClustersOutput, context: context)
        type = Types::DescribeClustersOutput.new
        type.next_token = params[:next_token]
        type.clusters = ClusterList.build(params[:clusters], context: "#{context}[:clusters]") unless params[:clusters].nil?
        type
      end
    end

    module DescribeDefaultParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDefaultParametersInput, context: context)
        type = Types::DescribeDefaultParametersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDefaultParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDefaultParametersOutput, context: context)
        type = Types::DescribeDefaultParametersOutput.new
        type.next_token = params[:next_token]
        type.parameters = ParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module DescribeEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsInput, context: context)
        type = Types::DescribeEventsInput.new
        type.source_name = params[:source_name]
        type.source_type = params[:source_type]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.duration = params[:duration]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsOutput, context: context)
        type = Types::DescribeEventsOutput.new
        type.next_token = params[:next_token]
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module DescribeParameterGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeParameterGroupsInput, context: context)
        type = Types::DescribeParameterGroupsInput.new
        type.parameter_group_names = ParameterGroupNameList.build(params[:parameter_group_names], context: "#{context}[:parameter_group_names]") unless params[:parameter_group_names].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeParameterGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeParameterGroupsOutput, context: context)
        type = Types::DescribeParameterGroupsOutput.new
        type.next_token = params[:next_token]
        type.parameter_groups = ParameterGroupList.build(params[:parameter_groups], context: "#{context}[:parameter_groups]") unless params[:parameter_groups].nil?
        type
      end
    end

    module DescribeParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeParametersInput, context: context)
        type = Types::DescribeParametersInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.source = params[:source]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeParametersOutput, context: context)
        type = Types::DescribeParametersOutput.new
        type.next_token = params[:next_token]
        type.parameters = ParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module DescribeSubnetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubnetGroupsInput, context: context)
        type = Types::DescribeSubnetGroupsInput.new
        type.subnet_group_names = SubnetGroupNameList.build(params[:subnet_group_names], context: "#{context}[:subnet_group_names]") unless params[:subnet_group_names].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSubnetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubnetGroupsOutput, context: context)
        type = Types::DescribeSubnetGroupsOutput.new
        type.next_token = params[:next_token]
        type.subnet_groups = SubnetGroupList.build(params[:subnet_groups], context: "#{context}[:subnet_groups]") unless params[:subnet_groups].nil?
        type
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.address = params[:address]
        type.port = params[:port]
        type.url = params[:url]
        type
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.source_name = params[:source_name]
        type.source_type = params[:source_type]
        type.message = params[:message]
        type.date = params[:date]
        type
      end
    end

    module EventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IncreaseReplicationFactorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncreaseReplicationFactorInput, context: context)
        type = Types::IncreaseReplicationFactorInput.new
        type.cluster_name = params[:cluster_name]
        type.new_replication_factor = params[:new_replication_factor]
        type.availability_zones = AvailabilityZoneList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type
      end
    end

    module IncreaseReplicationFactorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncreaseReplicationFactorOutput, context: context)
        type = Types::IncreaseReplicationFactorOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module InsufficientClusterCapacityFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientClusterCapacityFault, context: context)
        type = Types::InsufficientClusterCapacityFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidARNFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidARNFault, context: context)
        type = Types::InvalidARNFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClusterStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClusterStateFault, context: context)
        type = Types::InvalidClusterStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterCombinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterCombinationException, context: context)
        type = Types::InvalidParameterCombinationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterGroupStateFault, context: context)
        type = Types::InvalidParameterGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSubnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSubnet, context: context)
        type = Types::InvalidSubnet.new
        type.message = params[:message]
        type
      end
    end

    module InvalidVPCNetworkStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidVPCNetworkStateFault, context: context)
        type = Types::InvalidVPCNetworkStateFault.new
        type.message = params[:message]
        type
      end
    end

    module KeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.resource_name = params[:resource_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Node
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Node, context: context)
        type = Types::Node.new
        type.node_id = params[:node_id]
        type.endpoint = Endpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type.node_create_time = params[:node_create_time]
        type.availability_zone = params[:availability_zone]
        type.node_status = params[:node_status]
        type.parameter_group_status = params[:parameter_group_status]
        type
      end
    end

    module NodeIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Node.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeNotFoundFault, context: context)
        type = Types::NodeNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module NodeQuotaForClusterExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeQuotaForClusterExceededFault, context: context)
        type = Types::NodeQuotaForClusterExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module NodeQuotaForCustomerExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeQuotaForCustomerExceededFault, context: context)
        type = Types::NodeQuotaForCustomerExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module NodeTypeSpecificValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeTypeSpecificValue, context: context)
        type = Types::NodeTypeSpecificValue.new
        type.node_type = params[:node_type]
        type.value = params[:value]
        type
      end
    end

    module NodeTypeSpecificValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeTypeSpecificValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotificationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationConfiguration, context: context)
        type = Types::NotificationConfiguration.new
        type.topic_arn = params[:topic_arn]
        type.topic_status = params[:topic_status]
        type
      end
    end

    module Parameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parameter, context: context)
        type = Types::Parameter.new
        type.parameter_name = params[:parameter_name]
        type.parameter_type = params[:parameter_type]
        type.parameter_value = params[:parameter_value]
        type.node_type_specific_values = NodeTypeSpecificValueList.build(params[:node_type_specific_values], context: "#{context}[:node_type_specific_values]") unless params[:node_type_specific_values].nil?
        type.description = params[:description]
        type.source = params[:source]
        type.data_type = params[:data_type]
        type.allowed_values = params[:allowed_values]
        type.is_modifiable = params[:is_modifiable]
        type.change_type = params[:change_type]
        type
      end
    end

    module ParameterGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterGroup, context: context)
        type = Types::ParameterGroup.new
        type.parameter_group_name = params[:parameter_group_name]
        type.description = params[:description]
        type
      end
    end

    module ParameterGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterGroupAlreadyExistsFault, context: context)
        type = Types::ParameterGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ParameterGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterGroupNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ParameterGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterGroupNotFoundFault, context: context)
        type = Types::ParameterGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ParameterGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterGroupQuotaExceededFault, context: context)
        type = Types::ParameterGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ParameterGroupStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterGroupStatus, context: context)
        type = Types::ParameterGroupStatus.new
        type.parameter_group_name = params[:parameter_group_name]
        type.parameter_apply_status = params[:parameter_apply_status]
        type.node_ids_to_reboot = NodeIdentifierList.build(params[:node_ids_to_reboot], context: "#{context}[:node_ids_to_reboot]") unless params[:node_ids_to_reboot].nil?
        type
      end
    end

    module ParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterNameValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterNameValue, context: context)
        type = Types::ParameterNameValue.new
        type.parameter_name = params[:parameter_name]
        type.parameter_value = params[:parameter_value]
        type
      end
    end

    module ParameterNameValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterNameValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RebootNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootNodeInput, context: context)
        type = Types::RebootNodeInput.new
        type.cluster_name = params[:cluster_name]
        type.node_id = params[:node_id]
        type
      end
    end

    module RebootNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootNodeOutput, context: context)
        type = Types::RebootNodeOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module SSEDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSEDescription, context: context)
        type = Types::SSEDescription.new
        type.status = params[:status]
        type
      end
    end

    module SSESpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSESpecification, context: context)
        type = Types::SSESpecification.new
        type.enabled = params[:enabled]
        type
      end
    end

    module SecurityGroupIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SecurityGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroupMembership, context: context)
        type = Types::SecurityGroupMembership.new
        type.security_group_identifier = params[:security_group_identifier]
        type.status = params[:status]
        type
      end
    end

    module SecurityGroupMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceLinkedRoleNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLinkedRoleNotFoundFault, context: context)
        type = Types::ServiceLinkedRoleNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type
      end
    end

    module Subnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subnet, context: context)
        type = Types::Subnet.new
        type.subnet_identifier = params[:subnet_identifier]
        type.subnet_availability_zone = params[:subnet_availability_zone]
        type
      end
    end

    module SubnetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetGroup, context: context)
        type = Types::SubnetGroup.new
        type.subnet_group_name = params[:subnet_group_name]
        type.description = params[:description]
        type.vpc_id = params[:vpc_id]
        type.subnets = SubnetList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module SubnetGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetGroupAlreadyExistsFault, context: context)
        type = Types::SubnetGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module SubnetGroupInUseFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetGroupInUseFault, context: context)
        type = Types::SubnetGroupInUseFault.new
        type.message = params[:message]
        type
      end
    end

    module SubnetGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubnetGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubnetGroupNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetGroupNotFoundFault, context: context)
        type = Types::SubnetGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SubnetGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetGroupQuotaExceededFault, context: context)
        type = Types::SubnetGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module SubnetIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetInUse, context: context)
        type = Types::SubnetInUse.new
        type.message = params[:message]
        type
      end
    end

    module SubnetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subnet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubnetQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetQuotaExceededFault, context: context)
        type = Types::SubnetQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagNotFoundFault, context: context)
        type = Types::TagNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module TagQuotaPerResourceExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagQuotaPerResourceExceeded, context: context)
        type = Types::TagQuotaPerResourceExceeded.new
        type.message = params[:message]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_name = params[:resource_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_name = params[:resource_name]
        type.tag_keys = KeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterInput, context: context)
        type = Types::UpdateClusterInput.new
        type.cluster_name = params[:cluster_name]
        type.description = params[:description]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.notification_topic_arn = params[:notification_topic_arn]
        type.notification_topic_status = params[:notification_topic_status]
        type.parameter_group_name = params[:parameter_group_name]
        type.security_group_ids = SecurityGroupIdentifierList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module UpdateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterOutput, context: context)
        type = Types::UpdateClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module UpdateParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateParameterGroupInput, context: context)
        type = Types::UpdateParameterGroupInput.new
        type.parameter_group_name = params[:parameter_group_name]
        type.parameter_name_values = ParameterNameValueList.build(params[:parameter_name_values], context: "#{context}[:parameter_name_values]") unless params[:parameter_name_values].nil?
        type
      end
    end

    module UpdateParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateParameterGroupOutput, context: context)
        type = Types::UpdateParameterGroupOutput.new
        type.parameter_group = ParameterGroup.build(params[:parameter_group], context: "#{context}[:parameter_group]") unless params[:parameter_group].nil?
        type
      end
    end

    module UpdateSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubnetGroupInput, context: context)
        type = Types::UpdateSubnetGroupInput.new
        type.subnet_group_name = params[:subnet_group_name]
        type.description = params[:description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module UpdateSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubnetGroupOutput, context: context)
        type = Types::UpdateSubnetGroupOutput.new
        type.subnet_group = SubnetGroup.build(params[:subnet_group], context: "#{context}[:subnet_group]") unless params[:subnet_group].nil?
        type
      end
    end

  end
end
