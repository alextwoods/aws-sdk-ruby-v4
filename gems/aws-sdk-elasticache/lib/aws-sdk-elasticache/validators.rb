# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ElastiCache
  module Validators

    class APICallRateForCustomerExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::APICallRateForCustomerExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddTagsToResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsToResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class Authentication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Authentication, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:password_count], ::Integer, context: "#{context}[:password_count]")
      end
    end

    class AuthorizationAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthorizationNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthorizeCacheSecurityGroupIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeCacheSecurityGroupIngressInput, context: context)
        Hearth::Validator.validate!(input[:cache_security_group_name], ::String, context: "#{context}[:cache_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_name], ::String, context: "#{context}[:ec2_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_owner_id], ::String, context: "#{context}[:ec2_security_group_owner_id]")
      end
    end

    class AuthorizeCacheSecurityGroupIngressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeCacheSecurityGroupIngressOutput, context: context)
        CacheSecurityGroup.validate!(input[:cache_security_group], context: "#{context}[:cache_security_group]") unless input[:cache_security_group].nil?
      end
    end

    class AvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AvailabilityZonesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchApplyUpdateActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchApplyUpdateActionInput, context: context)
        ReplicationGroupIdList.validate!(input[:replication_group_ids], context: "#{context}[:replication_group_ids]") unless input[:replication_group_ids].nil?
        CacheClusterIdList.validate!(input[:cache_cluster_ids], context: "#{context}[:cache_cluster_ids]") unless input[:cache_cluster_ids].nil?
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
      end
    end

    class BatchApplyUpdateActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchApplyUpdateActionOutput, context: context)
        ProcessedUpdateActionList.validate!(input[:processed_update_actions], context: "#{context}[:processed_update_actions]") unless input[:processed_update_actions].nil?
        UnprocessedUpdateActionList.validate!(input[:unprocessed_update_actions], context: "#{context}[:unprocessed_update_actions]") unless input[:unprocessed_update_actions].nil?
      end
    end

    class BatchStopUpdateActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStopUpdateActionInput, context: context)
        ReplicationGroupIdList.validate!(input[:replication_group_ids], context: "#{context}[:replication_group_ids]") unless input[:replication_group_ids].nil?
        CacheClusterIdList.validate!(input[:cache_cluster_ids], context: "#{context}[:cache_cluster_ids]") unless input[:cache_cluster_ids].nil?
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
      end
    end

    class BatchStopUpdateActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStopUpdateActionOutput, context: context)
        ProcessedUpdateActionList.validate!(input[:processed_update_actions], context: "#{context}[:processed_update_actions]") unless input[:processed_update_actions].nil?
        UnprocessedUpdateActionList.validate!(input[:unprocessed_update_actions], context: "#{context}[:unprocessed_update_actions]") unless input[:unprocessed_update_actions].nil?
      end
    end

    class CacheCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheCluster, context: context)
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Endpoint.validate!(input[:configuration_endpoint], context: "#{context}[:configuration_endpoint]") unless input[:configuration_endpoint].nil?
        Hearth::Validator.validate!(input[:client_download_landing_page], ::String, context: "#{context}[:client_download_landing_page]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:cache_cluster_status], ::String, context: "#{context}[:cache_cluster_status]")
        Hearth::Validator.validate!(input[:num_cache_nodes], ::Integer, context: "#{context}[:num_cache_nodes]")
        Hearth::Validator.validate!(input[:preferred_availability_zone], ::String, context: "#{context}[:preferred_availability_zone]")
        Hearth::Validator.validate!(input[:preferred_outpost_arn], ::String, context: "#{context}[:preferred_outpost_arn]")
        Hearth::Validator.validate!(input[:cache_cluster_create_time], ::Time, context: "#{context}[:cache_cluster_create_time]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        PendingModifiedValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
        CacheSecurityGroupMembershipList.validate!(input[:cache_security_groups], context: "#{context}[:cache_security_groups]") unless input[:cache_security_groups].nil?
        CacheParameterGroupStatus.validate!(input[:cache_parameter_group], context: "#{context}[:cache_parameter_group]") unless input[:cache_parameter_group].nil?
        Hearth::Validator.validate!(input[:cache_subnet_group_name], ::String, context: "#{context}[:cache_subnet_group_name]")
        CacheNodeList.validate!(input[:cache_nodes], context: "#{context}[:cache_nodes]") unless input[:cache_nodes].nil?
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        SecurityGroupMembershipList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:auth_token_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auth_token_enabled]")
        Hearth::Validator.validate!(input[:auth_token_last_modified_date], ::Time, context: "#{context}[:auth_token_last_modified_date]")
        Hearth::Validator.validate!(input[:transit_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:transit_encryption_enabled]")
        Hearth::Validator.validate!(input[:at_rest_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:at_rest_encryption_enabled]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:replication_group_log_delivery_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:replication_group_log_delivery_enabled]")
        LogDeliveryConfigurationList.validate!(input[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless input[:log_delivery_configurations].nil?
      end
    end

    class CacheClusterAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheClusterAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheClusterIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CacheClusterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheCluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheClusterNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheClusterNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheEngineVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheEngineVersion, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:cache_parameter_group_family], ::String, context: "#{context}[:cache_parameter_group_family]")
        Hearth::Validator.validate!(input[:cache_engine_description], ::String, context: "#{context}[:cache_engine_description]")
        Hearth::Validator.validate!(input[:cache_engine_version_description], ::String, context: "#{context}[:cache_engine_version_description]")
      end
    end

    class CacheEngineVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheEngineVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheNode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheNode, context: context)
        Hearth::Validator.validate!(input[:cache_node_id], ::String, context: "#{context}[:cache_node_id]")
        Hearth::Validator.validate!(input[:cache_node_status], ::String, context: "#{context}[:cache_node_status]")
        Hearth::Validator.validate!(input[:cache_node_create_time], ::Time, context: "#{context}[:cache_node_create_time]")
        Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
        Hearth::Validator.validate!(input[:parameter_group_status], ::String, context: "#{context}[:parameter_group_status]")
        Hearth::Validator.validate!(input[:source_cache_node_id], ::String, context: "#{context}[:source_cache_node_id]")
        Hearth::Validator.validate!(input[:customer_availability_zone], ::String, context: "#{context}[:customer_availability_zone]")
        Hearth::Validator.validate!(input[:customer_outpost_arn], ::String, context: "#{context}[:customer_outpost_arn]")
      end
    end

    class CacheNodeIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CacheNodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheNode.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheNodeTypeSpecificParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheNodeTypeSpecificParameter, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:allowed_values], ::String, context: "#{context}[:allowed_values]")
        Hearth::Validator.validate!(input[:is_modifiable], ::TrueClass, ::FalseClass, context: "#{context}[:is_modifiable]")
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        CacheNodeTypeSpecificValueList.validate!(input[:cache_node_type_specific_values], context: "#{context}[:cache_node_type_specific_values]") unless input[:cache_node_type_specific_values].nil?
        Hearth::Validator.validate!(input[:change_type], ::String, context: "#{context}[:change_type]")
      end
    end

    class CacheNodeTypeSpecificParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheNodeTypeSpecificParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheNodeTypeSpecificValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheNodeTypeSpecificValue, context: context)
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class CacheNodeTypeSpecificValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheNodeTypeSpecificValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheNodeUpdateStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheNodeUpdateStatus, context: context)
        Hearth::Validator.validate!(input[:cache_node_id], ::String, context: "#{context}[:cache_node_id]")
        Hearth::Validator.validate!(input[:node_update_status], ::String, context: "#{context}[:node_update_status]")
        Hearth::Validator.validate!(input[:node_deletion_date], ::Time, context: "#{context}[:node_deletion_date]")
        Hearth::Validator.validate!(input[:node_update_start_date], ::Time, context: "#{context}[:node_update_start_date]")
        Hearth::Validator.validate!(input[:node_update_end_date], ::Time, context: "#{context}[:node_update_end_date]")
        Hearth::Validator.validate!(input[:node_update_initiated_by], ::String, context: "#{context}[:node_update_initiated_by]")
        Hearth::Validator.validate!(input[:node_update_initiated_date], ::Time, context: "#{context}[:node_update_initiated_date]")
        Hearth::Validator.validate!(input[:node_update_status_modified_date], ::Time, context: "#{context}[:node_update_status_modified_date]")
      end
    end

    class CacheNodeUpdateStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheNodeUpdateStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheParameterGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheParameterGroup, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:cache_parameter_group_family], ::String, context: "#{context}[:cache_parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:is_global], ::TrueClass, ::FalseClass, context: "#{context}[:is_global]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CacheParameterGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheParameterGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheParameterGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheParameterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheParameterGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheParameterGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheParameterGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheParameterGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheParameterGroupStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheParameterGroupStatus, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:parameter_apply_status], ::String, context: "#{context}[:parameter_apply_status]")
        CacheNodeIdsList.validate!(input[:cache_node_ids_to_reboot], context: "#{context}[:cache_node_ids_to_reboot]") unless input[:cache_node_ids_to_reboot].nil?
      end
    end

    class CacheSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSecurityGroup, context: context)
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:cache_security_group_name], ::String, context: "#{context}[:cache_security_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        EC2SecurityGroupList.validate!(input[:ec2_security_groups], context: "#{context}[:ec2_security_groups]") unless input[:ec2_security_groups].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CacheSecurityGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSecurityGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheSecurityGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSecurityGroupMembership, context: context)
        Hearth::Validator.validate!(input[:cache_security_group_name], ::String, context: "#{context}[:cache_security_group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CacheSecurityGroupMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheSecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheSecurityGroupNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CacheSecurityGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSecurityGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheSecurityGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSecurityGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheSecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheSecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheSubnetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSubnetGroup, context: context)
        Hearth::Validator.validate!(input[:cache_subnet_group_name], ::String, context: "#{context}[:cache_subnet_group_name]")
        Hearth::Validator.validate!(input[:cache_subnet_group_description], ::String, context: "#{context}[:cache_subnet_group_description]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CacheSubnetGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSubnetGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheSubnetGroupInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSubnetGroupInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheSubnetGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSubnetGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheSubnetGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSubnetGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CacheSubnetGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CacheSubnetGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CacheSubnetQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheSubnetQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudWatchLogsDestinationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsDestinationDetails, context: context)
        Hearth::Validator.validate!(input[:log_group], ::String, context: "#{context}[:log_group]")
      end
    end

    class ClusterIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClusterQuotaForCustomerExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterQuotaForCustomerExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CompleteMigrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteMigrationInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class CompleteMigrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteMigrationOutput, context: context)
        ReplicationGroup.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class ConfigureShard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureShard, context: context)
        Hearth::Validator.validate!(input[:node_group_id], ::String, context: "#{context}[:node_group_id]")
        Hearth::Validator.validate!(input[:new_replica_count], ::Integer, context: "#{context}[:new_replica_count]")
        PreferredAvailabilityZoneList.validate!(input[:preferred_availability_zones], context: "#{context}[:preferred_availability_zones]") unless input[:preferred_availability_zones].nil?
        PreferredOutpostArnList.validate!(input[:preferred_outpost_arns], context: "#{context}[:preferred_outpost_arns]") unless input[:preferred_outpost_arns].nil?
      end
    end

    class CopySnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopySnapshotInput, context: context)
        Hearth::Validator.validate!(input[:source_snapshot_name], ::String, context: "#{context}[:source_snapshot_name]")
        Hearth::Validator.validate!(input[:target_snapshot_name], ::String, context: "#{context}[:target_snapshot_name]")
        Hearth::Validator.validate!(input[:target_bucket], ::String, context: "#{context}[:target_bucket]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopySnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopySnapshotOutput, context: context)
        Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class CreateCacheClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCacheClusterInput, context: context)
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:az_mode], ::String, context: "#{context}[:az_mode]")
        Hearth::Validator.validate!(input[:preferred_availability_zone], ::String, context: "#{context}[:preferred_availability_zone]")
        PreferredAvailabilityZoneList.validate!(input[:preferred_availability_zones], context: "#{context}[:preferred_availability_zones]") unless input[:preferred_availability_zones].nil?
        Hearth::Validator.validate!(input[:num_cache_nodes], ::Integer, context: "#{context}[:num_cache_nodes]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:cache_subnet_group_name], ::String, context: "#{context}[:cache_subnet_group_name]")
        CacheSecurityGroupNameList.validate!(input[:cache_security_group_names], context: "#{context}[:cache_security_group_names]") unless input[:cache_security_group_names].nil?
        SecurityGroupIdsList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        SnapshotArnsList.validate!(input[:snapshot_arns], context: "#{context}[:snapshot_arns]") unless input[:snapshot_arns].nil?
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:notification_topic_arn], ::String, context: "#{context}[:notification_topic_arn]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:auth_token], ::String, context: "#{context}[:auth_token]")
        Hearth::Validator.validate!(input[:outpost_mode], ::String, context: "#{context}[:outpost_mode]")
        Hearth::Validator.validate!(input[:preferred_outpost_arn], ::String, context: "#{context}[:preferred_outpost_arn]")
        PreferredOutpostArnList.validate!(input[:preferred_outpost_arns], context: "#{context}[:preferred_outpost_arns]") unless input[:preferred_outpost_arns].nil?
        LogDeliveryConfigurationRequestList.validate!(input[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless input[:log_delivery_configurations].nil?
        Hearth::Validator.validate!(input[:transit_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:transit_encryption_enabled]")
      end
    end

    class CreateCacheClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCacheClusterOutput, context: context)
        CacheCluster.validate!(input[:cache_cluster], context: "#{context}[:cache_cluster]") unless input[:cache_cluster].nil?
      end
    end

    class CreateCacheParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCacheParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:cache_parameter_group_family], ::String, context: "#{context}[:cache_parameter_group_family]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCacheParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCacheParameterGroupOutput, context: context)
        CacheParameterGroup.validate!(input[:cache_parameter_group], context: "#{context}[:cache_parameter_group]") unless input[:cache_parameter_group].nil?
      end
    end

    class CreateCacheSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCacheSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:cache_security_group_name], ::String, context: "#{context}[:cache_security_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCacheSecurityGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCacheSecurityGroupOutput, context: context)
        CacheSecurityGroup.validate!(input[:cache_security_group], context: "#{context}[:cache_security_group]") unless input[:cache_security_group].nil?
      end
    end

    class CreateCacheSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCacheSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:cache_subnet_group_name], ::String, context: "#{context}[:cache_subnet_group_name]")
        Hearth::Validator.validate!(input[:cache_subnet_group_description], ::String, context: "#{context}[:cache_subnet_group_description]")
        SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCacheSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCacheSubnetGroupOutput, context: context)
        CacheSubnetGroup.validate!(input[:cache_subnet_group], context: "#{context}[:cache_subnet_group]") unless input[:cache_subnet_group].nil?
      end
    end

    class CreateGlobalReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGlobalReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id_suffix], ::String, context: "#{context}[:global_replication_group_id_suffix]")
        Hearth::Validator.validate!(input[:global_replication_group_description], ::String, context: "#{context}[:global_replication_group_description]")
        Hearth::Validator.validate!(input[:primary_replication_group_id], ::String, context: "#{context}[:primary_replication_group_id]")
      end
    end

    class CreateGlobalReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGlobalReplicationGroupOutput, context: context)
        GlobalReplicationGroup.validate!(input[:global_replication_group], context: "#{context}[:global_replication_group]") unless input[:global_replication_group].nil?
      end
    end

    class CreateReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:replication_group_description], ::String, context: "#{context}[:replication_group_description]")
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:primary_cluster_id], ::String, context: "#{context}[:primary_cluster_id]")
        Hearth::Validator.validate!(input[:automatic_failover_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:automatic_failover_enabled]")
        Hearth::Validator.validate!(input[:multi_az_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az_enabled]")
        Hearth::Validator.validate!(input[:num_cache_clusters], ::Integer, context: "#{context}[:num_cache_clusters]")
        AvailabilityZonesList.validate!(input[:preferred_cache_cluster_a_zs], context: "#{context}[:preferred_cache_cluster_a_zs]") unless input[:preferred_cache_cluster_a_zs].nil?
        Hearth::Validator.validate!(input[:num_node_groups], ::Integer, context: "#{context}[:num_node_groups]")
        Hearth::Validator.validate!(input[:replicas_per_node_group], ::Integer, context: "#{context}[:replicas_per_node_group]")
        NodeGroupConfigurationList.validate!(input[:node_group_configuration], context: "#{context}[:node_group_configuration]") unless input[:node_group_configuration].nil?
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:cache_subnet_group_name], ::String, context: "#{context}[:cache_subnet_group_name]")
        CacheSecurityGroupNameList.validate!(input[:cache_security_group_names], context: "#{context}[:cache_security_group_names]") unless input[:cache_security_group_names].nil?
        SecurityGroupIdsList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        SnapshotArnsList.validate!(input[:snapshot_arns], context: "#{context}[:snapshot_arns]") unless input[:snapshot_arns].nil?
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:notification_topic_arn], ::String, context: "#{context}[:notification_topic_arn]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:auth_token], ::String, context: "#{context}[:auth_token]")
        Hearth::Validator.validate!(input[:transit_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:transit_encryption_enabled]")
        Hearth::Validator.validate!(input[:at_rest_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:at_rest_encryption_enabled]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        UserGroupIdListInput.validate!(input[:user_group_ids], context: "#{context}[:user_group_ids]") unless input[:user_group_ids].nil?
        LogDeliveryConfigurationRequestList.validate!(input[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless input[:log_delivery_configurations].nil?
        Hearth::Validator.validate!(input[:data_tiering_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:data_tiering_enabled]")
      end
    end

    class CreateReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationGroupOutput, context: context)
        ReplicationGroup.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class CreateSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSnapshotOutput, context: context)
        Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class CreateUserGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserGroupInput, context: context)
        Hearth::Validator.validate!(input[:user_group_id], ::String, context: "#{context}[:user_group_id]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        UserIdListInput.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUserGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserGroupOutput, context: context)
        Hearth::Validator.validate!(input[:user_group_id], ::String, context: "#{context}[:user_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        UserIdList.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        UserGroupPendingChanges.validate!(input[:pending_changes], context: "#{context}[:pending_changes]") unless input[:pending_changes].nil?
        UGReplicationGroupIdList.validate!(input[:replication_groups], context: "#{context}[:replication_groups]") unless input[:replication_groups].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        PasswordListInput.validate!(input[:passwords], context: "#{context}[:passwords]") unless input[:passwords].nil?
        Hearth::Validator.validate!(input[:access_string], ::String, context: "#{context}[:access_string]")
        Hearth::Validator.validate!(input[:no_password_required], ::TrueClass, ::FalseClass, context: "#{context}[:no_password_required]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        Hearth::Validator.validate!(input[:access_string], ::String, context: "#{context}[:access_string]")
        UserGroupIdList.validate!(input[:user_group_ids], context: "#{context}[:user_group_ids]") unless input[:user_group_ids].nil?
        Authentication.validate!(input[:authentication], context: "#{context}[:authentication]") unless input[:authentication].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CustomerNodeEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerNodeEndpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class CustomerNodeEndpointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomerNodeEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DecreaseNodeGroupsInGlobalReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecreaseNodeGroupsInGlobalReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:node_group_count], ::Integer, context: "#{context}[:node_group_count]")
        GlobalNodeGroupIdList.validate!(input[:global_node_groups_to_remove], context: "#{context}[:global_node_groups_to_remove]") unless input[:global_node_groups_to_remove].nil?
        GlobalNodeGroupIdList.validate!(input[:global_node_groups_to_retain], context: "#{context}[:global_node_groups_to_retain]") unless input[:global_node_groups_to_retain].nil?
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
      end
    end

    class DecreaseNodeGroupsInGlobalReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecreaseNodeGroupsInGlobalReplicationGroupOutput, context: context)
        GlobalReplicationGroup.validate!(input[:global_replication_group], context: "#{context}[:global_replication_group]") unless input[:global_replication_group].nil?
      end
    end

    class DecreaseReplicaCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecreaseReplicaCountInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:new_replica_count], ::Integer, context: "#{context}[:new_replica_count]")
        ReplicaConfigurationList.validate!(input[:replica_configuration], context: "#{context}[:replica_configuration]") unless input[:replica_configuration].nil?
        RemoveReplicasList.validate!(input[:replicas_to_remove], context: "#{context}[:replicas_to_remove]") unless input[:replicas_to_remove].nil?
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
      end
    end

    class DecreaseReplicaCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecreaseReplicaCountOutput, context: context)
        ReplicationGroup.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class DefaultUserAssociatedToUserGroupFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultUserAssociatedToUserGroupFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DefaultUserRequired
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultUserRequired, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteCacheClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCacheClusterInput, context: context)
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:final_snapshot_identifier], ::String, context: "#{context}[:final_snapshot_identifier]")
      end
    end

    class DeleteCacheClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCacheClusterOutput, context: context)
        CacheCluster.validate!(input[:cache_cluster], context: "#{context}[:cache_cluster]") unless input[:cache_cluster].nil?
      end
    end

    class DeleteCacheParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCacheParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
      end
    end

    class DeleteCacheParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCacheParameterGroupOutput, context: context)
      end
    end

    class DeleteCacheSecurityGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCacheSecurityGroupInput, context: context)
        Hearth::Validator.validate!(input[:cache_security_group_name], ::String, context: "#{context}[:cache_security_group_name]")
      end
    end

    class DeleteCacheSecurityGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCacheSecurityGroupOutput, context: context)
      end
    end

    class DeleteCacheSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCacheSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:cache_subnet_group_name], ::String, context: "#{context}[:cache_subnet_group_name]")
      end
    end

    class DeleteCacheSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCacheSubnetGroupOutput, context: context)
      end
    end

    class DeleteGlobalReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGlobalReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:retain_primary_replication_group], ::TrueClass, ::FalseClass, context: "#{context}[:retain_primary_replication_group]")
      end
    end

    class DeleteGlobalReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGlobalReplicationGroupOutput, context: context)
        GlobalReplicationGroup.validate!(input[:global_replication_group], context: "#{context}[:global_replication_group]") unless input[:global_replication_group].nil?
      end
    end

    class DeleteReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:retain_primary_cluster], ::TrueClass, ::FalseClass, context: "#{context}[:retain_primary_cluster]")
        Hearth::Validator.validate!(input[:final_snapshot_identifier], ::String, context: "#{context}[:final_snapshot_identifier]")
      end
    end

    class DeleteReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationGroupOutput, context: context)
        ReplicationGroup.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class DeleteSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
      end
    end

    class DeleteSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSnapshotOutput, context: context)
        Snapshot.validate!(input[:snapshot], context: "#{context}[:snapshot]") unless input[:snapshot].nil?
      end
    end

    class DeleteUserGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserGroupInput, context: context)
        Hearth::Validator.validate!(input[:user_group_id], ::String, context: "#{context}[:user_group_id]")
      end
    end

    class DeleteUserGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserGroupOutput, context: context)
        Hearth::Validator.validate!(input[:user_group_id], ::String, context: "#{context}[:user_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        UserIdList.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        UserGroupPendingChanges.validate!(input[:pending_changes], context: "#{context}[:pending_changes]") unless input[:pending_changes].nil?
        UGReplicationGroupIdList.validate!(input[:replication_groups], context: "#{context}[:replication_groups]") unless input[:replication_groups].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        Hearth::Validator.validate!(input[:access_string], ::String, context: "#{context}[:access_string]")
        UserGroupIdList.validate!(input[:user_group_ids], context: "#{context}[:user_group_ids]") unless input[:user_group_ids].nil?
        Authentication.validate!(input[:authentication], context: "#{context}[:authentication]") unless input[:authentication].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DescribeCacheClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheClustersInput, context: context)
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:show_cache_node_info], ::TrueClass, ::FalseClass, context: "#{context}[:show_cache_node_info]")
        Hearth::Validator.validate!(input[:show_cache_clusters_not_in_replication_groups], ::TrueClass, ::FalseClass, context: "#{context}[:show_cache_clusters_not_in_replication_groups]")
      end
    end

    class DescribeCacheClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheClustersOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        CacheClusterList.validate!(input[:cache_clusters], context: "#{context}[:cache_clusters]") unless input[:cache_clusters].nil?
      end
    end

    class DescribeCacheEngineVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheEngineVersionsInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:cache_parameter_group_family], ::String, context: "#{context}[:cache_parameter_group_family]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:default_only], ::TrueClass, ::FalseClass, context: "#{context}[:default_only]")
      end
    end

    class DescribeCacheEngineVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheEngineVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        CacheEngineVersionList.validate!(input[:cache_engine_versions], context: "#{context}[:cache_engine_versions]") unless input[:cache_engine_versions].nil?
      end
    end

    class DescribeCacheParameterGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheParameterGroupsInput, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCacheParameterGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheParameterGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        CacheParameterGroupList.validate!(input[:cache_parameter_groups], context: "#{context}[:cache_parameter_groups]") unless input[:cache_parameter_groups].nil?
      end
    end

    class DescribeCacheParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheParametersInput, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCacheParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheParametersOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        CacheNodeTypeSpecificParametersList.validate!(input[:cache_node_type_specific_parameters], context: "#{context}[:cache_node_type_specific_parameters]") unless input[:cache_node_type_specific_parameters].nil?
      end
    end

    class DescribeCacheSecurityGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheSecurityGroupsInput, context: context)
        Hearth::Validator.validate!(input[:cache_security_group_name], ::String, context: "#{context}[:cache_security_group_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCacheSecurityGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheSecurityGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        CacheSecurityGroups.validate!(input[:cache_security_groups], context: "#{context}[:cache_security_groups]") unless input[:cache_security_groups].nil?
      end
    end

    class DescribeCacheSubnetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheSubnetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:cache_subnet_group_name], ::String, context: "#{context}[:cache_subnet_group_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCacheSubnetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCacheSubnetGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        CacheSubnetGroups.validate!(input[:cache_subnet_groups], context: "#{context}[:cache_subnet_groups]") unless input[:cache_subnet_groups].nil?
      end
    end

    class DescribeEngineDefaultParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineDefaultParametersInput, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_family], ::String, context: "#{context}[:cache_parameter_group_family]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEngineDefaultParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEngineDefaultParametersOutput, context: context)
        EngineDefaults.validate!(input[:engine_defaults], context: "#{context}[:engine_defaults]") unless input[:engine_defaults].nil?
      end
    end

    class DescribeEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsInput, context: context)
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class DescribeGlobalReplicationGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalReplicationGroupsInput, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:show_member_info], ::TrueClass, ::FalseClass, context: "#{context}[:show_member_info]")
      end
    end

    class DescribeGlobalReplicationGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGlobalReplicationGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        GlobalReplicationGroupList.validate!(input[:global_replication_groups], context: "#{context}[:global_replication_groups]") unless input[:global_replication_groups].nil?
      end
    end

    class DescribeReplicationGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationGroupsInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReplicationGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        ReplicationGroupList.validate!(input[:replication_groups], context: "#{context}[:replication_groups]") unless input[:replication_groups].nil?
      end
    end

    class DescribeReservedCacheNodesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedCacheNodesInput, context: context)
        Hearth::Validator.validate!(input[:reserved_cache_node_id], ::String, context: "#{context}[:reserved_cache_node_id]")
        Hearth::Validator.validate!(input[:reserved_cache_nodes_offering_id], ::String, context: "#{context}[:reserved_cache_nodes_offering_id]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:duration], ::String, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReservedCacheNodesOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedCacheNodesOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:reserved_cache_nodes_offering_id], ::String, context: "#{context}[:reserved_cache_nodes_offering_id]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:duration], ::String, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeReservedCacheNodesOfferingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedCacheNodesOfferingsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        ReservedCacheNodesOfferingList.validate!(input[:reserved_cache_nodes_offerings], context: "#{context}[:reserved_cache_nodes_offerings]") unless input[:reserved_cache_nodes_offerings].nil?
      end
    end

    class DescribeReservedCacheNodesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedCacheNodesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        ReservedCacheNodeList.validate!(input[:reserved_cache_nodes], context: "#{context}[:reserved_cache_nodes]") unless input[:reserved_cache_nodes].nil?
      end
    end

    class DescribeServiceUpdatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceUpdatesInput, context: context)
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
        ServiceUpdateStatusList.validate!(input[:service_update_status], context: "#{context}[:service_update_status]") unless input[:service_update_status].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeServiceUpdatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceUpdatesOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        ServiceUpdateList.validate!(input[:service_updates], context: "#{context}[:service_updates]") unless input[:service_updates].nil?
      end
    end

    class DescribeSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
        Hearth::Validator.validate!(input[:snapshot_source], ::String, context: "#{context}[:snapshot_source]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:show_node_group_config], ::TrueClass, ::FalseClass, context: "#{context}[:show_node_group_config]")
      end
    end

    class DescribeSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSnapshotsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        SnapshotList.validate!(input[:snapshots], context: "#{context}[:snapshots]") unless input[:snapshots].nil?
      end
    end

    class DescribeUpdateActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUpdateActionsInput, context: context)
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
        ReplicationGroupIdList.validate!(input[:replication_group_ids], context: "#{context}[:replication_group_ids]") unless input[:replication_group_ids].nil?
        CacheClusterIdList.validate!(input[:cache_cluster_ids], context: "#{context}[:cache_cluster_ids]") unless input[:cache_cluster_ids].nil?
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        ServiceUpdateStatusList.validate!(input[:service_update_status], context: "#{context}[:service_update_status]") unless input[:service_update_status].nil?
        TimeRangeFilter.validate!(input[:service_update_time_range], context: "#{context}[:service_update_time_range]") unless input[:service_update_time_range].nil?
        UpdateActionStatusList.validate!(input[:update_action_status], context: "#{context}[:update_action_status]") unless input[:update_action_status].nil?
        Hearth::Validator.validate!(input[:show_node_level_update_status], ::TrueClass, ::FalseClass, context: "#{context}[:show_node_level_update_status]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeUpdateActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUpdateActionsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        UpdateActionList.validate!(input[:update_actions], context: "#{context}[:update_actions]") unless input[:update_actions].nil?
      end
    end

    class DescribeUserGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserGroupsInput, context: context)
        Hearth::Validator.validate!(input[:user_group_id], ::String, context: "#{context}[:user_group_id]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeUserGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserGroupsOutput, context: context)
        UserGroupList.validate!(input[:user_groups], context: "#{context}[:user_groups]") unless input[:user_groups].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsersInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsersOutput, context: context)
        UserList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DestinationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationDetails, context: context)
        CloudWatchLogsDestinationDetails.validate!(input[:cloud_watch_logs_details], context: "#{context}[:cloud_watch_logs_details]") unless input[:cloud_watch_logs_details].nil?
        KinesisFirehoseDestinationDetails.validate!(input[:kinesis_firehose_details], context: "#{context}[:kinesis_firehose_details]") unless input[:kinesis_firehose_details].nil?
      end
    end

    class DisassociateGlobalReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateGlobalReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:replication_group_region], ::String, context: "#{context}[:replication_group_region]")
      end
    end

    class DisassociateGlobalReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateGlobalReplicationGroupOutput, context: context)
        GlobalReplicationGroup.validate!(input[:global_replication_group], context: "#{context}[:global_replication_group]") unless input[:global_replication_group].nil?
      end
    end

    class DuplicateUserNameFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateUserNameFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EC2SecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2SecurityGroup, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:ec2_security_group_name], ::String, context: "#{context}[:ec2_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_owner_id], ::String, context: "#{context}[:ec2_security_group_owner_id]")
      end
    end

    class EC2SecurityGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EC2SecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class EngineDefaults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineDefaults, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_family], ::String, context: "#{context}[:cache_parameter_group_family]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        ParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        CacheNodeTypeSpecificParametersList.validate!(input[:cache_node_type_specific_parameters], context: "#{context}[:cache_node_type_specific_parameters]") unless input[:cache_node_type_specific_parameters].nil?
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailoverGlobalReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverGlobalReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:primary_region], ::String, context: "#{context}[:primary_region]")
        Hearth::Validator.validate!(input[:primary_replication_group_id], ::String, context: "#{context}[:primary_replication_group_id]")
      end
    end

    class FailoverGlobalReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailoverGlobalReplicationGroupOutput, context: context)
        GlobalReplicationGroup.validate!(input[:global_replication_group], context: "#{context}[:global_replication_group]") unless input[:global_replication_group].nil?
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GlobalNodeGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalNodeGroup, context: context)
        Hearth::Validator.validate!(input[:global_node_group_id], ::String, context: "#{context}[:global_node_group_id]")
        Hearth::Validator.validate!(input[:slots], ::String, context: "#{context}[:slots]")
      end
    end

    class GlobalNodeGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GlobalNodeGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalNodeGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalReplicationGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalReplicationGroup, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:global_replication_group_description], ::String, context: "#{context}[:global_replication_group_description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        GlobalReplicationGroupMemberList.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:cluster_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cluster_enabled]")
        GlobalNodeGroupList.validate!(input[:global_node_groups], context: "#{context}[:global_node_groups]") unless input[:global_node_groups].nil?
        Hearth::Validator.validate!(input[:auth_token_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auth_token_enabled]")
        Hearth::Validator.validate!(input[:transit_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:transit_encryption_enabled]")
        Hearth::Validator.validate!(input[:at_rest_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:at_rest_encryption_enabled]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GlobalReplicationGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalReplicationGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GlobalReplicationGroupInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalReplicationGroupInfo, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:global_replication_group_member_role], ::String, context: "#{context}[:global_replication_group_member_role]")
      end
    end

    class GlobalReplicationGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalReplicationGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalReplicationGroupMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalReplicationGroupMember, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:replication_group_region], ::String, context: "#{context}[:replication_group_region]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:automatic_failover], ::String, context: "#{context}[:automatic_failover]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GlobalReplicationGroupMemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlobalReplicationGroupMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlobalReplicationGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalReplicationGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncreaseNodeGroupsInGlobalReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncreaseNodeGroupsInGlobalReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:node_group_count], ::Integer, context: "#{context}[:node_group_count]")
        RegionalConfigurationList.validate!(input[:regional_configurations], context: "#{context}[:regional_configurations]") unless input[:regional_configurations].nil?
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
      end
    end

    class IncreaseNodeGroupsInGlobalReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncreaseNodeGroupsInGlobalReplicationGroupOutput, context: context)
        GlobalReplicationGroup.validate!(input[:global_replication_group], context: "#{context}[:global_replication_group]") unless input[:global_replication_group].nil?
      end
    end

    class IncreaseReplicaCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncreaseReplicaCountInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:new_replica_count], ::Integer, context: "#{context}[:new_replica_count]")
        ReplicaConfigurationList.validate!(input[:replica_configuration], context: "#{context}[:replica_configuration]") unless input[:replica_configuration].nil?
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
      end
    end

    class IncreaseReplicaCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncreaseReplicaCountOutput, context: context)
        ReplicationGroup.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class InsufficientCacheClusterCapacityFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientCacheClusterCapacityFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidARNFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidARNFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCacheClusterStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCacheClusterStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCacheParameterGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCacheParameterGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCacheSecurityGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCacheSecurityGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidGlobalReplicationGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGlobalReplicationGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKMSKeyFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKMSKeyFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterCombinationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidReplicationGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidReplicationGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSnapshotStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSnapshotStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSubnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSubnet, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUserGroupStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUserGroupStateFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUserStateFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUserStateFault, context: context)
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

    class KinesisFirehoseDestinationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseDestinationDetails, context: context)
        Hearth::Validator.validate!(input[:delivery_stream], ::String, context: "#{context}[:delivery_stream]")
      end
    end

    class ListAllowedNodeTypeModificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAllowedNodeTypeModificationsInput, context: context)
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
      end
    end

    class ListAllowedNodeTypeModificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAllowedNodeTypeModificationsOutput, context: context)
        NodeTypeList.validate!(input[:scale_up_modifications], context: "#{context}[:scale_up_modifications]") unless input[:scale_up_modifications].nil?
        NodeTypeList.validate!(input[:scale_down_modifications], context: "#{context}[:scale_down_modifications]") unless input[:scale_down_modifications].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class LogDeliveryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogDeliveryConfiguration, context: context)
        Hearth::Validator.validate!(input[:log_type], ::String, context: "#{context}[:log_type]")
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        DestinationDetails.validate!(input[:destination_details], context: "#{context}[:destination_details]") unless input[:destination_details].nil?
        Hearth::Validator.validate!(input[:log_format], ::String, context: "#{context}[:log_format]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LogDeliveryConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LogDeliveryConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LogDeliveryConfigurationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogDeliveryConfigurationRequest, context: context)
        Hearth::Validator.validate!(input[:log_type], ::String, context: "#{context}[:log_type]")
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        DestinationDetails.validate!(input[:destination_details], context: "#{context}[:destination_details]") unless input[:destination_details].nil?
        Hearth::Validator.validate!(input[:log_format], ::String, context: "#{context}[:log_format]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class LogDeliveryConfigurationRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LogDeliveryConfigurationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModifyCacheClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCacheClusterInput, context: context)
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:num_cache_nodes], ::Integer, context: "#{context}[:num_cache_nodes]")
        CacheNodeIdsList.validate!(input[:cache_node_ids_to_remove], context: "#{context}[:cache_node_ids_to_remove]") unless input[:cache_node_ids_to_remove].nil?
        Hearth::Validator.validate!(input[:az_mode], ::String, context: "#{context}[:az_mode]")
        PreferredAvailabilityZoneList.validate!(input[:new_availability_zones], context: "#{context}[:new_availability_zones]") unless input[:new_availability_zones].nil?
        CacheSecurityGroupNameList.validate!(input[:cache_security_group_names], context: "#{context}[:cache_security_group_names]") unless input[:cache_security_group_names].nil?
        SecurityGroupIdsList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:notification_topic_arn], ::String, context: "#{context}[:notification_topic_arn]")
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:notification_topic_status], ::String, context: "#{context}[:notification_topic_status]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:auth_token], ::String, context: "#{context}[:auth_token]")
        Hearth::Validator.validate!(input[:auth_token_update_strategy], ::String, context: "#{context}[:auth_token_update_strategy]")
        LogDeliveryConfigurationRequestList.validate!(input[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless input[:log_delivery_configurations].nil?
      end
    end

    class ModifyCacheClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCacheClusterOutput, context: context)
        CacheCluster.validate!(input[:cache_cluster], context: "#{context}[:cache_cluster]") unless input[:cache_cluster].nil?
      end
    end

    class ModifyCacheParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCacheParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        ParameterNameValueList.validate!(input[:parameter_name_values], context: "#{context}[:parameter_name_values]") unless input[:parameter_name_values].nil?
      end
    end

    class ModifyCacheParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCacheParameterGroupOutput, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
      end
    end

    class ModifyCacheSubnetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCacheSubnetGroupInput, context: context)
        Hearth::Validator.validate!(input[:cache_subnet_group_name], ::String, context: "#{context}[:cache_subnet_group_name]")
        Hearth::Validator.validate!(input[:cache_subnet_group_description], ::String, context: "#{context}[:cache_subnet_group_description]")
        SubnetIdentifierList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class ModifyCacheSubnetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyCacheSubnetGroupOutput, context: context)
        CacheSubnetGroup.validate!(input[:cache_subnet_group], context: "#{context}[:cache_subnet_group]") unless input[:cache_subnet_group].nil?
      end
    end

    class ModifyGlobalReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyGlobalReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:global_replication_group_description], ::String, context: "#{context}[:global_replication_group_description]")
        Hearth::Validator.validate!(input[:automatic_failover_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:automatic_failover_enabled]")
      end
    end

    class ModifyGlobalReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyGlobalReplicationGroupOutput, context: context)
        GlobalReplicationGroup.validate!(input[:global_replication_group], context: "#{context}[:global_replication_group]") unless input[:global_replication_group].nil?
      end
    end

    class ModifyReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:replication_group_description], ::String, context: "#{context}[:replication_group_description]")
        Hearth::Validator.validate!(input[:primary_cluster_id], ::String, context: "#{context}[:primary_cluster_id]")
        Hearth::Validator.validate!(input[:snapshotting_cluster_id], ::String, context: "#{context}[:snapshotting_cluster_id]")
        Hearth::Validator.validate!(input[:automatic_failover_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:automatic_failover_enabled]")
        Hearth::Validator.validate!(input[:multi_az_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az_enabled]")
        Hearth::Validator.validate!(input[:node_group_id], ::String, context: "#{context}[:node_group_id]")
        CacheSecurityGroupNameList.validate!(input[:cache_security_group_names], context: "#{context}[:cache_security_group_names]") unless input[:cache_security_group_names].nil?
        SecurityGroupIdsList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:notification_topic_arn], ::String, context: "#{context}[:notification_topic_arn]")
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:notification_topic_status], ::String, context: "#{context}[:notification_topic_status]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:auth_token], ::String, context: "#{context}[:auth_token]")
        Hearth::Validator.validate!(input[:auth_token_update_strategy], ::String, context: "#{context}[:auth_token_update_strategy]")
        UserGroupIdList.validate!(input[:user_group_ids_to_add], context: "#{context}[:user_group_ids_to_add]") unless input[:user_group_ids_to_add].nil?
        UserGroupIdList.validate!(input[:user_group_ids_to_remove], context: "#{context}[:user_group_ids_to_remove]") unless input[:user_group_ids_to_remove].nil?
        Hearth::Validator.validate!(input[:remove_user_groups], ::TrueClass, ::FalseClass, context: "#{context}[:remove_user_groups]")
        LogDeliveryConfigurationRequestList.validate!(input[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless input[:log_delivery_configurations].nil?
      end
    end

    class ModifyReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReplicationGroupOutput, context: context)
        ReplicationGroup.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class ModifyReplicationGroupShardConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReplicationGroupShardConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:node_group_count], ::Integer, context: "#{context}[:node_group_count]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
        ReshardingConfigurationList.validate!(input[:resharding_configuration], context: "#{context}[:resharding_configuration]") unless input[:resharding_configuration].nil?
        NodeGroupsToRemoveList.validate!(input[:node_groups_to_remove], context: "#{context}[:node_groups_to_remove]") unless input[:node_groups_to_remove].nil?
        NodeGroupsToRetainList.validate!(input[:node_groups_to_retain], context: "#{context}[:node_groups_to_retain]") unless input[:node_groups_to_retain].nil?
      end
    end

    class ModifyReplicationGroupShardConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyReplicationGroupShardConfigurationOutput, context: context)
        ReplicationGroup.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class ModifyUserGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyUserGroupInput, context: context)
        Hearth::Validator.validate!(input[:user_group_id], ::String, context: "#{context}[:user_group_id]")
        UserIdListInput.validate!(input[:user_ids_to_add], context: "#{context}[:user_ids_to_add]") unless input[:user_ids_to_add].nil?
        UserIdListInput.validate!(input[:user_ids_to_remove], context: "#{context}[:user_ids_to_remove]") unless input[:user_ids_to_remove].nil?
      end
    end

    class ModifyUserGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyUserGroupOutput, context: context)
        Hearth::Validator.validate!(input[:user_group_id], ::String, context: "#{context}[:user_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        UserIdList.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        UserGroupPendingChanges.validate!(input[:pending_changes], context: "#{context}[:pending_changes]") unless input[:pending_changes].nil?
        UGReplicationGroupIdList.validate!(input[:replication_groups], context: "#{context}[:replication_groups]") unless input[:replication_groups].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ModifyUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:access_string], ::String, context: "#{context}[:access_string]")
        Hearth::Validator.validate!(input[:append_access_string], ::String, context: "#{context}[:append_access_string]")
        PasswordListInput.validate!(input[:passwords], context: "#{context}[:passwords]") unless input[:passwords].nil?
        Hearth::Validator.validate!(input[:no_password_required], ::TrueClass, ::FalseClass, context: "#{context}[:no_password_required]")
      end
    end

    class ModifyUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        Hearth::Validator.validate!(input[:access_string], ::String, context: "#{context}[:access_string]")
        UserGroupIdList.validate!(input[:user_group_ids], context: "#{context}[:user_group_ids]") unless input[:user_group_ids].nil?
        Authentication.validate!(input[:authentication], context: "#{context}[:authentication]") unless input[:authentication].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class NoOperationFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoOperationFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NodeGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeGroup, context: context)
        Hearth::Validator.validate!(input[:node_group_id], ::String, context: "#{context}[:node_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Endpoint.validate!(input[:primary_endpoint], context: "#{context}[:primary_endpoint]") unless input[:primary_endpoint].nil?
        Endpoint.validate!(input[:reader_endpoint], context: "#{context}[:reader_endpoint]") unless input[:reader_endpoint].nil?
        Hearth::Validator.validate!(input[:slots], ::String, context: "#{context}[:slots]")
        NodeGroupMemberList.validate!(input[:node_group_members], context: "#{context}[:node_group_members]") unless input[:node_group_members].nil?
      end
    end

    class NodeGroupConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeGroupConfiguration, context: context)
        Hearth::Validator.validate!(input[:node_group_id], ::String, context: "#{context}[:node_group_id]")
        Hearth::Validator.validate!(input[:slots], ::String, context: "#{context}[:slots]")
        Hearth::Validator.validate!(input[:replica_count], ::Integer, context: "#{context}[:replica_count]")
        Hearth::Validator.validate!(input[:primary_availability_zone], ::String, context: "#{context}[:primary_availability_zone]")
        AvailabilityZonesList.validate!(input[:replica_availability_zones], context: "#{context}[:replica_availability_zones]") unless input[:replica_availability_zones].nil?
        Hearth::Validator.validate!(input[:primary_outpost_arn], ::String, context: "#{context}[:primary_outpost_arn]")
        OutpostArnsList.validate!(input[:replica_outpost_arns], context: "#{context}[:replica_outpost_arns]") unless input[:replica_outpost_arns].nil?
      end
    end

    class NodeGroupConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NodeGroupConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NodeGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeGroupMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeGroupMember, context: context)
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:cache_node_id], ::String, context: "#{context}[:cache_node_id]")
        Endpoint.validate!(input[:read_endpoint], context: "#{context}[:read_endpoint]") unless input[:read_endpoint].nil?
        Hearth::Validator.validate!(input[:preferred_availability_zone], ::String, context: "#{context}[:preferred_availability_zone]")
        Hearth::Validator.validate!(input[:preferred_outpost_arn], ::String, context: "#{context}[:preferred_outpost_arn]")
        Hearth::Validator.validate!(input[:current_role], ::String, context: "#{context}[:current_role]")
      end
    end

    class NodeGroupMemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NodeGroupMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeGroupMemberUpdateStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeGroupMemberUpdateStatus, context: context)
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:cache_node_id], ::String, context: "#{context}[:cache_node_id]")
        Hearth::Validator.validate!(input[:node_update_status], ::String, context: "#{context}[:node_update_status]")
        Hearth::Validator.validate!(input[:node_deletion_date], ::Time, context: "#{context}[:node_deletion_date]")
        Hearth::Validator.validate!(input[:node_update_start_date], ::Time, context: "#{context}[:node_update_start_date]")
        Hearth::Validator.validate!(input[:node_update_end_date], ::Time, context: "#{context}[:node_update_end_date]")
        Hearth::Validator.validate!(input[:node_update_initiated_by], ::String, context: "#{context}[:node_update_initiated_by]")
        Hearth::Validator.validate!(input[:node_update_initiated_date], ::Time, context: "#{context}[:node_update_initiated_date]")
        Hearth::Validator.validate!(input[:node_update_status_modified_date], ::Time, context: "#{context}[:node_update_status_modified_date]")
      end
    end

    class NodeGroupMemberUpdateStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NodeGroupMemberUpdateStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NodeGroupUpdateStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeGroupUpdateStatus, context: context)
        Hearth::Validator.validate!(input[:node_group_id], ::String, context: "#{context}[:node_group_id]")
        NodeGroupMemberUpdateStatusList.validate!(input[:node_group_member_update_status], context: "#{context}[:node_group_member_update_status]") unless input[:node_group_member_update_status].nil?
      end
    end

    class NodeGroupUpdateStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NodeGroupUpdateStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeGroupsPerReplicationGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeGroupsPerReplicationGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NodeGroupsToRemoveList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NodeGroupsToRetainList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class NodeSnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeSnapshot, context: context)
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:node_group_id], ::String, context: "#{context}[:node_group_id]")
        Hearth::Validator.validate!(input[:cache_node_id], ::String, context: "#{context}[:cache_node_id]")
        NodeGroupConfiguration.validate!(input[:node_group_configuration], context: "#{context}[:node_group_configuration]") unless input[:node_group_configuration].nil?
        Hearth::Validator.validate!(input[:cache_size], ::String, context: "#{context}[:cache_size]")
        Hearth::Validator.validate!(input[:cache_node_create_time], ::Time, context: "#{context}[:cache_node_create_time]")
        Hearth::Validator.validate!(input[:snapshot_create_time], ::Time, context: "#{context}[:snapshot_create_time]")
      end
    end

    class NodeSnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NodeSnapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
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

    class OutpostArnsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Parameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parameter, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:allowed_values], ::String, context: "#{context}[:allowed_values]")
        Hearth::Validator.validate!(input[:is_modifiable], ::TrueClass, ::FalseClass, context: "#{context}[:is_modifiable]")
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        Hearth::Validator.validate!(input[:change_type], ::String, context: "#{context}[:change_type]")
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
          ParameterNameValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Parameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PasswordListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PendingLogDeliveryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingLogDeliveryConfiguration, context: context)
        Hearth::Validator.validate!(input[:log_type], ::String, context: "#{context}[:log_type]")
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        DestinationDetails.validate!(input[:destination_details], context: "#{context}[:destination_details]") unless input[:destination_details].nil?
        Hearth::Validator.validate!(input[:log_format], ::String, context: "#{context}[:log_format]")
      end
    end

    class PendingLogDeliveryConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PendingLogDeliveryConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PendingModifiedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingModifiedValues, context: context)
        Hearth::Validator.validate!(input[:num_cache_nodes], ::Integer, context: "#{context}[:num_cache_nodes]")
        CacheNodeIdsList.validate!(input[:cache_node_ids_to_remove], context: "#{context}[:cache_node_ids_to_remove]") unless input[:cache_node_ids_to_remove].nil?
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:auth_token_status], ::String, context: "#{context}[:auth_token_status]")
        PendingLogDeliveryConfigurationList.validate!(input[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless input[:log_delivery_configurations].nil?
      end
    end

    class PreferredAvailabilityZoneList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PreferredOutpostArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProcessedUpdateAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessedUpdateAction, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
        Hearth::Validator.validate!(input[:update_action_status], ::String, context: "#{context}[:update_action_status]")
      end
    end

    class ProcessedUpdateActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProcessedUpdateAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PurchaseReservedCacheNodesOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseReservedCacheNodesOfferingInput, context: context)
        Hearth::Validator.validate!(input[:reserved_cache_nodes_offering_id], ::String, context: "#{context}[:reserved_cache_nodes_offering_id]")
        Hearth::Validator.validate!(input[:reserved_cache_node_id], ::String, context: "#{context}[:reserved_cache_node_id]")
        Hearth::Validator.validate!(input[:cache_node_count], ::Integer, context: "#{context}[:cache_node_count]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PurchaseReservedCacheNodesOfferingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseReservedCacheNodesOfferingOutput, context: context)
        ReservedCacheNode.validate!(input[:reserved_cache_node], context: "#{context}[:reserved_cache_node]") unless input[:reserved_cache_node].nil?
      end
    end

    class RebalanceSlotsInGlobalReplicationGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebalanceSlotsInGlobalReplicationGroupInput, context: context)
        Hearth::Validator.validate!(input[:global_replication_group_id], ::String, context: "#{context}[:global_replication_group_id]")
        Hearth::Validator.validate!(input[:apply_immediately], ::TrueClass, ::FalseClass, context: "#{context}[:apply_immediately]")
      end
    end

    class RebalanceSlotsInGlobalReplicationGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebalanceSlotsInGlobalReplicationGroupOutput, context: context)
        GlobalReplicationGroup.validate!(input[:global_replication_group], context: "#{context}[:global_replication_group]") unless input[:global_replication_group].nil?
      end
    end

    class RebootCacheClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootCacheClusterInput, context: context)
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        CacheNodeIdsList.validate!(input[:cache_node_ids_to_reboot], context: "#{context}[:cache_node_ids_to_reboot]") unless input[:cache_node_ids_to_reboot].nil?
      end
    end

    class RebootCacheClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootCacheClusterOutput, context: context)
        CacheCluster.validate!(input[:cache_cluster], context: "#{context}[:cache_cluster]") unless input[:cache_cluster].nil?
      end
    end

    class RecurringCharge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecurringCharge, context: context)
        Hearth::Validator.validate!(input[:recurring_charge_amount], ::Float, context: "#{context}[:recurring_charge_amount]")
        Hearth::Validator.validate!(input[:recurring_charge_frequency], ::String, context: "#{context}[:recurring_charge_frequency]")
      end
    end

    class RecurringChargeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecurringCharge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegionalConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegionalConfiguration, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:replication_group_region], ::String, context: "#{context}[:replication_group_region]")
        ReshardingConfigurationList.validate!(input[:resharding_configuration], context: "#{context}[:resharding_configuration]") unless input[:resharding_configuration].nil?
      end
    end

    class RegionalConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegionalConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemoveReplicasList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RemoveTagsFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        KeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class ReplicaConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigureShard.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationGroup, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        GlobalReplicationGroupInfo.validate!(input[:global_replication_group_info], context: "#{context}[:global_replication_group_info]") unless input[:global_replication_group_info].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ReplicationGroupPendingModifiedValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        ClusterIdList.validate!(input[:member_clusters], context: "#{context}[:member_clusters]") unless input[:member_clusters].nil?
        NodeGroupList.validate!(input[:node_groups], context: "#{context}[:node_groups]") unless input[:node_groups].nil?
        Hearth::Validator.validate!(input[:snapshotting_cluster_id], ::String, context: "#{context}[:snapshotting_cluster_id]")
        Hearth::Validator.validate!(input[:automatic_failover], ::String, context: "#{context}[:automatic_failover]")
        Hearth::Validator.validate!(input[:multi_az], ::String, context: "#{context}[:multi_az]")
        Endpoint.validate!(input[:configuration_endpoint], context: "#{context}[:configuration_endpoint]") unless input[:configuration_endpoint].nil?
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:cluster_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cluster_enabled]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:auth_token_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auth_token_enabled]")
        Hearth::Validator.validate!(input[:auth_token_last_modified_date], ::Time, context: "#{context}[:auth_token_last_modified_date]")
        Hearth::Validator.validate!(input[:transit_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:transit_encryption_enabled]")
        Hearth::Validator.validate!(input[:at_rest_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:at_rest_encryption_enabled]")
        ReplicationGroupOutpostArnList.validate!(input[:member_clusters_outpost_arns], context: "#{context}[:member_clusters_outpost_arns]") unless input[:member_clusters_outpost_arns].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        UserGroupIdList.validate!(input[:user_group_ids], context: "#{context}[:user_group_ids]") unless input[:user_group_ids].nil?
        LogDeliveryConfigurationList.validate!(input[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless input[:log_delivery_configurations].nil?
        Hearth::Validator.validate!(input[:replication_group_create_time], ::Time, context: "#{context}[:replication_group_create_time]")
        Hearth::Validator.validate!(input[:data_tiering], ::String, context: "#{context}[:data_tiering]")
      end
    end

    class ReplicationGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplicationGroupAlreadyUnderMigrationFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationGroupAlreadyUnderMigrationFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplicationGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReplicationGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReplicationGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplicationGroupNotUnderMigrationFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationGroupNotUnderMigrationFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplicationGroupOutpostArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReplicationGroupPendingModifiedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationGroupPendingModifiedValues, context: context)
        Hearth::Validator.validate!(input[:primary_cluster_id], ::String, context: "#{context}[:primary_cluster_id]")
        Hearth::Validator.validate!(input[:automatic_failover_status], ::String, context: "#{context}[:automatic_failover_status]")
        ReshardingStatus.validate!(input[:resharding], context: "#{context}[:resharding]") unless input[:resharding].nil?
        Hearth::Validator.validate!(input[:auth_token_status], ::String, context: "#{context}[:auth_token_status]")
        UserGroupsUpdateStatus.validate!(input[:user_groups], context: "#{context}[:user_groups]") unless input[:user_groups].nil?
        PendingLogDeliveryConfigurationList.validate!(input[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless input[:log_delivery_configurations].nil?
      end
    end

    class ReservedCacheNode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedCacheNode, context: context)
        Hearth::Validator.validate!(input[:reserved_cache_node_id], ::String, context: "#{context}[:reserved_cache_node_id]")
        Hearth::Validator.validate!(input[:reserved_cache_nodes_offering_id], ::String, context: "#{context}[:reserved_cache_nodes_offering_id]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
        Hearth::Validator.validate!(input[:cache_node_count], ::Integer, context: "#{context}[:cache_node_count]")
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        RecurringChargeList.validate!(input[:recurring_charges], context: "#{context}[:recurring_charges]") unless input[:recurring_charges].nil?
        Hearth::Validator.validate!(input[:reservation_arn], ::String, context: "#{context}[:reservation_arn]")
      end
    end

    class ReservedCacheNodeAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedCacheNodeAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedCacheNodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReservedCacheNode.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedCacheNodeNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedCacheNodeNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedCacheNodeQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedCacheNodeQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservedCacheNodesOffering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedCacheNodesOffering, context: context)
        Hearth::Validator.validate!(input[:reserved_cache_nodes_offering_id], ::String, context: "#{context}[:reserved_cache_nodes_offering_id]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Hearth::Validator.validate!(input[:offering_type], ::String, context: "#{context}[:offering_type]")
        RecurringChargeList.validate!(input[:recurring_charges], context: "#{context}[:recurring_charges]") unless input[:recurring_charges].nil?
      end
    end

    class ReservedCacheNodesOfferingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReservedCacheNodesOffering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedCacheNodesOfferingNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedCacheNodesOfferingNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResetCacheParameterGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetCacheParameterGroupInput, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:reset_all_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:reset_all_parameters]")
        ParameterNameValueList.validate!(input[:parameter_name_values], context: "#{context}[:parameter_name_values]") unless input[:parameter_name_values].nil?
      end
    end

    class ResetCacheParameterGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetCacheParameterGroupOutput, context: context)
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
      end
    end

    class ReshardingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReshardingConfiguration, context: context)
        Hearth::Validator.validate!(input[:node_group_id], ::String, context: "#{context}[:node_group_id]")
        AvailabilityZonesList.validate!(input[:preferred_availability_zones], context: "#{context}[:preferred_availability_zones]") unless input[:preferred_availability_zones].nil?
      end
    end

    class ReshardingConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReshardingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReshardingStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReshardingStatus, context: context)
        SlotMigration.validate!(input[:slot_migration], context: "#{context}[:slot_migration]") unless input[:slot_migration].nil?
      end
    end

    class RevokeCacheSecurityGroupIngressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeCacheSecurityGroupIngressInput, context: context)
        Hearth::Validator.validate!(input[:cache_security_group_name], ::String, context: "#{context}[:cache_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_name], ::String, context: "#{context}[:ec2_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_owner_id], ::String, context: "#{context}[:ec2_security_group_owner_id]")
      end
    end

    class RevokeCacheSecurityGroupIngressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeCacheSecurityGroupIngressOutput, context: context)
        CacheSecurityGroup.validate!(input[:cache_security_group], context: "#{context}[:cache_security_group]") unless input[:cache_security_group].nil?
      end
    end

    class SecurityGroupIdsList
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
        Hearth::Validator.validate!(input[:security_group_id], ::String, context: "#{context}[:security_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SecurityGroupMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SecurityGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceLinkedRoleNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLinkedRoleNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUpdate, context: context)
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
        Hearth::Validator.validate!(input[:service_update_release_date], ::Time, context: "#{context}[:service_update_release_date]")
        Hearth::Validator.validate!(input[:service_update_end_date], ::Time, context: "#{context}[:service_update_end_date]")
        Hearth::Validator.validate!(input[:service_update_severity], ::String, context: "#{context}[:service_update_severity]")
        Hearth::Validator.validate!(input[:service_update_recommended_apply_by_date], ::Time, context: "#{context}[:service_update_recommended_apply_by_date]")
        Hearth::Validator.validate!(input[:service_update_status], ::String, context: "#{context}[:service_update_status]")
        Hearth::Validator.validate!(input[:service_update_description], ::String, context: "#{context}[:service_update_description]")
        Hearth::Validator.validate!(input[:service_update_type], ::String, context: "#{context}[:service_update_type]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:auto_update_after_recommended_apply_by_date], ::TrueClass, ::FalseClass, context: "#{context}[:auto_update_after_recommended_apply_by_date]")
        Hearth::Validator.validate!(input[:estimated_update_time], ::String, context: "#{context}[:estimated_update_time]")
      end
    end

    class ServiceUpdateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceUpdate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUpdateNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUpdateNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUpdateStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SlotMigration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlotMigration, context: context)
        Hearth::Validator.validate!(input[:progress_percentage], ::Float, context: "#{context}[:progress_percentage]")
      end
    end

    class Snapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Snapshot, context: context)
        Hearth::Validator.validate!(input[:snapshot_name], ::String, context: "#{context}[:snapshot_name]")
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:replication_group_description], ::String, context: "#{context}[:replication_group_description]")
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:snapshot_status], ::String, context: "#{context}[:snapshot_status]")
        Hearth::Validator.validate!(input[:snapshot_source], ::String, context: "#{context}[:snapshot_source]")
        Hearth::Validator.validate!(input[:cache_node_type], ::String, context: "#{context}[:cache_node_type]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:num_cache_nodes], ::Integer, context: "#{context}[:num_cache_nodes]")
        Hearth::Validator.validate!(input[:preferred_availability_zone], ::String, context: "#{context}[:preferred_availability_zone]")
        Hearth::Validator.validate!(input[:preferred_outpost_arn], ::String, context: "#{context}[:preferred_outpost_arn]")
        Hearth::Validator.validate!(input[:cache_cluster_create_time], ::Time, context: "#{context}[:cache_cluster_create_time]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:cache_parameter_group_name], ::String, context: "#{context}[:cache_parameter_group_name]")
        Hearth::Validator.validate!(input[:cache_subnet_group_name], ::String, context: "#{context}[:cache_subnet_group_name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:snapshot_retention_limit], ::Integer, context: "#{context}[:snapshot_retention_limit]")
        Hearth::Validator.validate!(input[:snapshot_window], ::String, context: "#{context}[:snapshot_window]")
        Hearth::Validator.validate!(input[:num_node_groups], ::Integer, context: "#{context}[:num_node_groups]")
        Hearth::Validator.validate!(input[:automatic_failover], ::String, context: "#{context}[:automatic_failover]")
        NodeSnapshotList.validate!(input[:node_snapshots], context: "#{context}[:node_snapshots]") unless input[:node_snapshots].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_tiering], ::String, context: "#{context}[:data_tiering]")
      end
    end

    class SnapshotAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotArnsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapshotFeatureNotSupportedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotFeatureNotSupportedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Snapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SnapshotNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapshotQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartMigrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMigrationInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        CustomerNodeEndpointList.validate!(input[:customer_node_endpoint_list], context: "#{context}[:customer_node_endpoint_list]") unless input[:customer_node_endpoint_list].nil?
      end
    end

    class StartMigrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMigrationOutput, context: context)
        ReplicationGroup.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class Subnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subnet, context: context)
        Hearth::Validator.validate!(input[:subnet_identifier], ::String, context: "#{context}[:subnet_identifier]")
        AvailabilityZone.validate!(input[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless input[:subnet_availability_zone].nil?
        SubnetOutpost.validate!(input[:subnet_outpost], context: "#{context}[:subnet_outpost]") unless input[:subnet_outpost].nil?
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
          Subnet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubnetNotAllowedFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetNotAllowedFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetOutpost
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetOutpost, context: context)
        Hearth::Validator.validate!(input[:subnet_outpost_arn], ::String, context: "#{context}[:subnet_outpost_arn]")
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class TestFailoverInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestFailoverInput, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:node_group_id], ::String, context: "#{context}[:node_group_id]")
      end
    end

    class TestFailoverNotAvailableFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestFailoverNotAvailableFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TestFailoverOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestFailoverOutput, context: context)
        ReplicationGroup.validate!(input[:replication_group], context: "#{context}[:replication_group]") unless input[:replication_group].nil?
      end
    end

    class TimeRangeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeRangeFilter, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class UGReplicationGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UnprocessedUpdateAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedUpdateAction, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
        Hearth::Validator.validate!(input[:error_type], ::String, context: "#{context}[:error_type]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class UnprocessedUpdateActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnprocessedUpdateAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAction, context: context)
        Hearth::Validator.validate!(input[:replication_group_id], ::String, context: "#{context}[:replication_group_id]")
        Hearth::Validator.validate!(input[:cache_cluster_id], ::String, context: "#{context}[:cache_cluster_id]")
        Hearth::Validator.validate!(input[:service_update_name], ::String, context: "#{context}[:service_update_name]")
        Hearth::Validator.validate!(input[:service_update_release_date], ::Time, context: "#{context}[:service_update_release_date]")
        Hearth::Validator.validate!(input[:service_update_severity], ::String, context: "#{context}[:service_update_severity]")
        Hearth::Validator.validate!(input[:service_update_status], ::String, context: "#{context}[:service_update_status]")
        Hearth::Validator.validate!(input[:service_update_recommended_apply_by_date], ::Time, context: "#{context}[:service_update_recommended_apply_by_date]")
        Hearth::Validator.validate!(input[:service_update_type], ::String, context: "#{context}[:service_update_type]")
        Hearth::Validator.validate!(input[:update_action_available_date], ::Time, context: "#{context}[:update_action_available_date]")
        Hearth::Validator.validate!(input[:update_action_status], ::String, context: "#{context}[:update_action_status]")
        Hearth::Validator.validate!(input[:nodes_updated], ::String, context: "#{context}[:nodes_updated]")
        Hearth::Validator.validate!(input[:update_action_status_modified_date], ::Time, context: "#{context}[:update_action_status_modified_date]")
        Hearth::Validator.validate!(input[:sla_met], ::String, context: "#{context}[:sla_met]")
        NodeGroupUpdateStatusList.validate!(input[:node_group_update_status], context: "#{context}[:node_group_update_status]") unless input[:node_group_update_status].nil?
        CacheNodeUpdateStatusList.validate!(input[:cache_node_update_status], context: "#{context}[:cache_node_update_status]") unless input[:cache_node_update_status].nil?
        Hearth::Validator.validate!(input[:estimated_update_time], ::String, context: "#{context}[:estimated_update_time]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
      end
    end

    class UpdateActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpdateAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateActionStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        Hearth::Validator.validate!(input[:access_string], ::String, context: "#{context}[:access_string]")
        UserGroupIdList.validate!(input[:user_group_ids], context: "#{context}[:user_group_ids]") unless input[:user_group_ids].nil?
        Authentication.validate!(input[:authentication], context: "#{context}[:authentication]") unless input[:authentication].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class UserAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserGroup, context: context)
        Hearth::Validator.validate!(input[:user_group_id], ::String, context: "#{context}[:user_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        UserIdList.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        Hearth::Validator.validate!(input[:minimum_engine_version], ::String, context: "#{context}[:minimum_engine_version]")
        UserGroupPendingChanges.validate!(input[:pending_changes], context: "#{context}[:pending_changes]") unless input[:pending_changes].nil?
        UGReplicationGroupIdList.validate!(input[:replication_groups], context: "#{context}[:replication_groups]") unless input[:replication_groups].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class UserGroupAlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserGroupAlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserGroupIdListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserGroupNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserGroupNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserGroupPendingChanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserGroupPendingChanges, context: context)
        UserIdList.validate!(input[:user_ids_to_remove], context: "#{context}[:user_ids_to_remove]") unless input[:user_ids_to_remove].nil?
        UserIdList.validate!(input[:user_ids_to_add], context: "#{context}[:user_ids_to_add]") unless input[:user_ids_to_add].nil?
      end
    end

    class UserGroupQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserGroupQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserGroupsUpdateStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserGroupsUpdateStatus, context: context)
        UserGroupIdList.validate!(input[:user_group_ids_to_add], context: "#{context}[:user_group_ids_to_add]") unless input[:user_group_ids_to_add].nil?
        UserGroupIdList.validate!(input[:user_group_ids_to_remove], context: "#{context}[:user_group_ids_to_remove]") unless input[:user_group_ids_to_remove].nil?
      end
    end

    class UserIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserIdListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserQuotaExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserQuotaExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
