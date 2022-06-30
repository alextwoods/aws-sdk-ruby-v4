# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ElastiCache
  module Params

    module APICallRateForCustomerExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::APICallRateForCustomerExceededFault, context: context)
        type = Types::APICallRateForCustomerExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module AddTagsToResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceInput, context: context)
        type = Types::AddTagsToResourceInput.new
        type.resource_name = params[:resource_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsToResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceOutput, context: context)
        type = Types::AddTagsToResourceOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module Authentication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Authentication, context: context)
        type = Types::Authentication.new
        type.type = params[:type]
        type.password_count = params[:password_count]
        type
      end
    end

    module AuthorizationAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationAlreadyExistsFault, context: context)
        type = Types::AuthorizationAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthorizationNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationNotFoundFault, context: context)
        type = Types::AuthorizationNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module AuthorizeCacheSecurityGroupIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeCacheSecurityGroupIngressInput, context: context)
        type = Types::AuthorizeCacheSecurityGroupIngressInput.new
        type.cache_security_group_name = params[:cache_security_group_name]
        type.ec2_security_group_name = params[:ec2_security_group_name]
        type.ec2_security_group_owner_id = params[:ec2_security_group_owner_id]
        type
      end
    end

    module AuthorizeCacheSecurityGroupIngressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeCacheSecurityGroupIngressOutput, context: context)
        type = Types::AuthorizeCacheSecurityGroupIngressOutput.new
        type.cache_security_group = CacheSecurityGroup.build(params[:cache_security_group], context: "#{context}[:cache_security_group]") unless params[:cache_security_group].nil?
        type
      end
    end

    module AvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZone, context: context)
        type = Types::AvailabilityZone.new
        type.name = params[:name]
        type
      end
    end

    module AvailabilityZonesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchApplyUpdateActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchApplyUpdateActionInput, context: context)
        type = Types::BatchApplyUpdateActionInput.new
        type.replication_group_ids = ReplicationGroupIdList.build(params[:replication_group_ids], context: "#{context}[:replication_group_ids]") unless params[:replication_group_ids].nil?
        type.cache_cluster_ids = CacheClusterIdList.build(params[:cache_cluster_ids], context: "#{context}[:cache_cluster_ids]") unless params[:cache_cluster_ids].nil?
        type.service_update_name = params[:service_update_name]
        type
      end
    end

    module BatchApplyUpdateActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchApplyUpdateActionOutput, context: context)
        type = Types::BatchApplyUpdateActionOutput.new
        type.processed_update_actions = ProcessedUpdateActionList.build(params[:processed_update_actions], context: "#{context}[:processed_update_actions]") unless params[:processed_update_actions].nil?
        type.unprocessed_update_actions = UnprocessedUpdateActionList.build(params[:unprocessed_update_actions], context: "#{context}[:unprocessed_update_actions]") unless params[:unprocessed_update_actions].nil?
        type
      end
    end

    module BatchStopUpdateActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStopUpdateActionInput, context: context)
        type = Types::BatchStopUpdateActionInput.new
        type.replication_group_ids = ReplicationGroupIdList.build(params[:replication_group_ids], context: "#{context}[:replication_group_ids]") unless params[:replication_group_ids].nil?
        type.cache_cluster_ids = CacheClusterIdList.build(params[:cache_cluster_ids], context: "#{context}[:cache_cluster_ids]") unless params[:cache_cluster_ids].nil?
        type.service_update_name = params[:service_update_name]
        type
      end
    end

    module BatchStopUpdateActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStopUpdateActionOutput, context: context)
        type = Types::BatchStopUpdateActionOutput.new
        type.processed_update_actions = ProcessedUpdateActionList.build(params[:processed_update_actions], context: "#{context}[:processed_update_actions]") unless params[:processed_update_actions].nil?
        type.unprocessed_update_actions = UnprocessedUpdateActionList.build(params[:unprocessed_update_actions], context: "#{context}[:unprocessed_update_actions]") unless params[:unprocessed_update_actions].nil?
        type
      end
    end

    module CacheCluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheCluster, context: context)
        type = Types::CacheCluster.new
        type.cache_cluster_id = params[:cache_cluster_id]
        type.configuration_endpoint = Endpoint.build(params[:configuration_endpoint], context: "#{context}[:configuration_endpoint]") unless params[:configuration_endpoint].nil?
        type.client_download_landing_page = params[:client_download_landing_page]
        type.cache_node_type = params[:cache_node_type]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.cache_cluster_status = params[:cache_cluster_status]
        type.num_cache_nodes = params[:num_cache_nodes]
        type.preferred_availability_zone = params[:preferred_availability_zone]
        type.preferred_outpost_arn = params[:preferred_outpost_arn]
        type.cache_cluster_create_time = params[:cache_cluster_create_time]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.pending_modified_values = PendingModifiedValues.build(params[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless params[:pending_modified_values].nil?
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type.cache_security_groups = CacheSecurityGroupMembershipList.build(params[:cache_security_groups], context: "#{context}[:cache_security_groups]") unless params[:cache_security_groups].nil?
        type.cache_parameter_group = CacheParameterGroupStatus.build(params[:cache_parameter_group], context: "#{context}[:cache_parameter_group]") unless params[:cache_parameter_group].nil?
        type.cache_subnet_group_name = params[:cache_subnet_group_name]
        type.cache_nodes = CacheNodeList.build(params[:cache_nodes], context: "#{context}[:cache_nodes]") unless params[:cache_nodes].nil?
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.security_groups = SecurityGroupMembershipList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.replication_group_id = params[:replication_group_id]
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.snapshot_window = params[:snapshot_window]
        type.auth_token_enabled = params[:auth_token_enabled]
        type.auth_token_last_modified_date = params[:auth_token_last_modified_date]
        type.transit_encryption_enabled = params[:transit_encryption_enabled]
        type.at_rest_encryption_enabled = params[:at_rest_encryption_enabled]
        type.arn = params[:arn]
        type.replication_group_log_delivery_enabled = params[:replication_group_log_delivery_enabled]
        type.log_delivery_configurations = LogDeliveryConfigurationList.build(params[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless params[:log_delivery_configurations].nil?
        type
      end
    end

    module CacheClusterAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheClusterAlreadyExistsFault, context: context)
        type = Types::CacheClusterAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheClusterIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CacheClusterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheCluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheClusterNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheClusterNotFoundFault, context: context)
        type = Types::CacheClusterNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheEngineVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheEngineVersion, context: context)
        type = Types::CacheEngineVersion.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.cache_parameter_group_family = params[:cache_parameter_group_family]
        type.cache_engine_description = params[:cache_engine_description]
        type.cache_engine_version_description = params[:cache_engine_version_description]
        type
      end
    end

    module CacheEngineVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheEngineVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheNode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheNode, context: context)
        type = Types::CacheNode.new
        type.cache_node_id = params[:cache_node_id]
        type.cache_node_status = params[:cache_node_status]
        type.cache_node_create_time = params[:cache_node_create_time]
        type.endpoint = Endpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type.parameter_group_status = params[:parameter_group_status]
        type.source_cache_node_id = params[:source_cache_node_id]
        type.customer_availability_zone = params[:customer_availability_zone]
        type.customer_outpost_arn = params[:customer_outpost_arn]
        type
      end
    end

    module CacheNodeIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CacheNodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheNode.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheNodeTypeSpecificParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheNodeTypeSpecificParameter, context: context)
        type = Types::CacheNodeTypeSpecificParameter.new
        type.parameter_name = params[:parameter_name]
        type.description = params[:description]
        type.source = params[:source]
        type.data_type = params[:data_type]
        type.allowed_values = params[:allowed_values]
        type.is_modifiable = params[:is_modifiable]
        type.minimum_engine_version = params[:minimum_engine_version]
        type.cache_node_type_specific_values = CacheNodeTypeSpecificValueList.build(params[:cache_node_type_specific_values], context: "#{context}[:cache_node_type_specific_values]") unless params[:cache_node_type_specific_values].nil?
        type.change_type = params[:change_type]
        type
      end
    end

    module CacheNodeTypeSpecificParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheNodeTypeSpecificParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheNodeTypeSpecificValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheNodeTypeSpecificValue, context: context)
        type = Types::CacheNodeTypeSpecificValue.new
        type.cache_node_type = params[:cache_node_type]
        type.value = params[:value]
        type
      end
    end

    module CacheNodeTypeSpecificValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheNodeTypeSpecificValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheNodeUpdateStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheNodeUpdateStatus, context: context)
        type = Types::CacheNodeUpdateStatus.new
        type.cache_node_id = params[:cache_node_id]
        type.node_update_status = params[:node_update_status]
        type.node_deletion_date = params[:node_deletion_date]
        type.node_update_start_date = params[:node_update_start_date]
        type.node_update_end_date = params[:node_update_end_date]
        type.node_update_initiated_by = params[:node_update_initiated_by]
        type.node_update_initiated_date = params[:node_update_initiated_date]
        type.node_update_status_modified_date = params[:node_update_status_modified_date]
        type
      end
    end

    module CacheNodeUpdateStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheNodeUpdateStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheParameterGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheParameterGroup, context: context)
        type = Types::CacheParameterGroup.new
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.cache_parameter_group_family = params[:cache_parameter_group_family]
        type.description = params[:description]
        type.is_global = params[:is_global]
        type.arn = params[:arn]
        type
      end
    end

    module CacheParameterGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheParameterGroupAlreadyExistsFault, context: context)
        type = Types::CacheParameterGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheParameterGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheParameterGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheParameterGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheParameterGroupNotFoundFault, context: context)
        type = Types::CacheParameterGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheParameterGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheParameterGroupQuotaExceededFault, context: context)
        type = Types::CacheParameterGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheParameterGroupStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheParameterGroupStatus, context: context)
        type = Types::CacheParameterGroupStatus.new
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.parameter_apply_status = params[:parameter_apply_status]
        type.cache_node_ids_to_reboot = CacheNodeIdsList.build(params[:cache_node_ids_to_reboot], context: "#{context}[:cache_node_ids_to_reboot]") unless params[:cache_node_ids_to_reboot].nil?
        type
      end
    end

    module CacheSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSecurityGroup, context: context)
        type = Types::CacheSecurityGroup.new
        type.owner_id = params[:owner_id]
        type.cache_security_group_name = params[:cache_security_group_name]
        type.description = params[:description]
        type.ec2_security_groups = EC2SecurityGroupList.build(params[:ec2_security_groups], context: "#{context}[:ec2_security_groups]") unless params[:ec2_security_groups].nil?
        type.arn = params[:arn]
        type
      end
    end

    module CacheSecurityGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSecurityGroupAlreadyExistsFault, context: context)
        type = Types::CacheSecurityGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheSecurityGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSecurityGroupMembership, context: context)
        type = Types::CacheSecurityGroupMembership.new
        type.cache_security_group_name = params[:cache_security_group_name]
        type.status = params[:status]
        type
      end
    end

    module CacheSecurityGroupMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheSecurityGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheSecurityGroupNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CacheSecurityGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSecurityGroupNotFoundFault, context: context)
        type = Types::CacheSecurityGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheSecurityGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSecurityGroupQuotaExceededFault, context: context)
        type = Types::CacheSecurityGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheSecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheSecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheSubnetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSubnetGroup, context: context)
        type = Types::CacheSubnetGroup.new
        type.cache_subnet_group_name = params[:cache_subnet_group_name]
        type.cache_subnet_group_description = params[:cache_subnet_group_description]
        type.vpc_id = params[:vpc_id]
        type.subnets = SubnetList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.arn = params[:arn]
        type
      end
    end

    module CacheSubnetGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSubnetGroupAlreadyExistsFault, context: context)
        type = Types::CacheSubnetGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheSubnetGroupInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSubnetGroupInUse, context: context)
        type = Types::CacheSubnetGroupInUse.new
        type.message = params[:message]
        type
      end
    end

    module CacheSubnetGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSubnetGroupNotFoundFault, context: context)
        type = Types::CacheSubnetGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheSubnetGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSubnetGroupQuotaExceededFault, context: context)
        type = Types::CacheSubnetGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module CacheSubnetGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CacheSubnetGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CacheSubnetQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheSubnetQuotaExceededFault, context: context)
        type = Types::CacheSubnetQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module CloudWatchLogsDestinationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsDestinationDetails, context: context)
        type = Types::CloudWatchLogsDestinationDetails.new
        type.log_group = params[:log_group]
        type
      end
    end

    module ClusterIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module CompleteMigrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteMigrationInput, context: context)
        type = Types::CompleteMigrationInput.new
        type.replication_group_id = params[:replication_group_id]
        type.force = params[:force]
        type
      end
    end

    module CompleteMigrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteMigrationOutput, context: context)
        type = Types::CompleteMigrationOutput.new
        type.replication_group = ReplicationGroup.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    module ConfigureShard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureShard, context: context)
        type = Types::ConfigureShard.new
        type.node_group_id = params[:node_group_id]
        type.new_replica_count = params[:new_replica_count]
        type.preferred_availability_zones = PreferredAvailabilityZoneList.build(params[:preferred_availability_zones], context: "#{context}[:preferred_availability_zones]") unless params[:preferred_availability_zones].nil?
        type.preferred_outpost_arns = PreferredOutpostArnList.build(params[:preferred_outpost_arns], context: "#{context}[:preferred_outpost_arns]") unless params[:preferred_outpost_arns].nil?
        type
      end
    end

    module CopySnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopySnapshotInput, context: context)
        type = Types::CopySnapshotInput.new
        type.source_snapshot_name = params[:source_snapshot_name]
        type.target_snapshot_name = params[:target_snapshot_name]
        type.target_bucket = params[:target_bucket]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CopySnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopySnapshotOutput, context: context)
        type = Types::CopySnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module CreateCacheClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCacheClusterInput, context: context)
        type = Types::CreateCacheClusterInput.new
        type.cache_cluster_id = params[:cache_cluster_id]
        type.replication_group_id = params[:replication_group_id]
        type.az_mode = params[:az_mode]
        type.preferred_availability_zone = params[:preferred_availability_zone]
        type.preferred_availability_zones = PreferredAvailabilityZoneList.build(params[:preferred_availability_zones], context: "#{context}[:preferred_availability_zones]") unless params[:preferred_availability_zones].nil?
        type.num_cache_nodes = params[:num_cache_nodes]
        type.cache_node_type = params[:cache_node_type]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.cache_subnet_group_name = params[:cache_subnet_group_name]
        type.cache_security_group_names = CacheSecurityGroupNameList.build(params[:cache_security_group_names], context: "#{context}[:cache_security_group_names]") unless params[:cache_security_group_names].nil?
        type.security_group_ids = SecurityGroupIdsList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.snapshot_arns = SnapshotArnsList.build(params[:snapshot_arns], context: "#{context}[:snapshot_arns]") unless params[:snapshot_arns].nil?
        type.snapshot_name = params[:snapshot_name]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.port = params[:port]
        type.notification_topic_arn = params[:notification_topic_arn]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.snapshot_window = params[:snapshot_window]
        type.auth_token = params[:auth_token]
        type.outpost_mode = params[:outpost_mode]
        type.preferred_outpost_arn = params[:preferred_outpost_arn]
        type.preferred_outpost_arns = PreferredOutpostArnList.build(params[:preferred_outpost_arns], context: "#{context}[:preferred_outpost_arns]") unless params[:preferred_outpost_arns].nil?
        type.log_delivery_configurations = LogDeliveryConfigurationRequestList.build(params[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless params[:log_delivery_configurations].nil?
        type.transit_encryption_enabled = params[:transit_encryption_enabled]
        type
      end
    end

    module CreateCacheClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCacheClusterOutput, context: context)
        type = Types::CreateCacheClusterOutput.new
        type.cache_cluster = CacheCluster.build(params[:cache_cluster], context: "#{context}[:cache_cluster]") unless params[:cache_cluster].nil?
        type
      end
    end

    module CreateCacheParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCacheParameterGroupInput, context: context)
        type = Types::CreateCacheParameterGroupInput.new
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.cache_parameter_group_family = params[:cache_parameter_group_family]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCacheParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCacheParameterGroupOutput, context: context)
        type = Types::CreateCacheParameterGroupOutput.new
        type.cache_parameter_group = CacheParameterGroup.build(params[:cache_parameter_group], context: "#{context}[:cache_parameter_group]") unless params[:cache_parameter_group].nil?
        type
      end
    end

    module CreateCacheSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCacheSecurityGroupInput, context: context)
        type = Types::CreateCacheSecurityGroupInput.new
        type.cache_security_group_name = params[:cache_security_group_name]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCacheSecurityGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCacheSecurityGroupOutput, context: context)
        type = Types::CreateCacheSecurityGroupOutput.new
        type.cache_security_group = CacheSecurityGroup.build(params[:cache_security_group], context: "#{context}[:cache_security_group]") unless params[:cache_security_group].nil?
        type
      end
    end

    module CreateCacheSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCacheSubnetGroupInput, context: context)
        type = Types::CreateCacheSubnetGroupInput.new
        type.cache_subnet_group_name = params[:cache_subnet_group_name]
        type.cache_subnet_group_description = params[:cache_subnet_group_description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCacheSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCacheSubnetGroupOutput, context: context)
        type = Types::CreateCacheSubnetGroupOutput.new
        type.cache_subnet_group = CacheSubnetGroup.build(params[:cache_subnet_group], context: "#{context}[:cache_subnet_group]") unless params[:cache_subnet_group].nil?
        type
      end
    end

    module CreateGlobalReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGlobalReplicationGroupInput, context: context)
        type = Types::CreateGlobalReplicationGroupInput.new
        type.global_replication_group_id_suffix = params[:global_replication_group_id_suffix]
        type.global_replication_group_description = params[:global_replication_group_description]
        type.primary_replication_group_id = params[:primary_replication_group_id]
        type
      end
    end

    module CreateGlobalReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGlobalReplicationGroupOutput, context: context)
        type = Types::CreateGlobalReplicationGroupOutput.new
        type.global_replication_group = GlobalReplicationGroup.build(params[:global_replication_group], context: "#{context}[:global_replication_group]") unless params[:global_replication_group].nil?
        type
      end
    end

    module CreateReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationGroupInput, context: context)
        type = Types::CreateReplicationGroupInput.new
        type.replication_group_id = params[:replication_group_id]
        type.replication_group_description = params[:replication_group_description]
        type.global_replication_group_id = params[:global_replication_group_id]
        type.primary_cluster_id = params[:primary_cluster_id]
        type.automatic_failover_enabled = params[:automatic_failover_enabled]
        type.multi_az_enabled = params[:multi_az_enabled]
        type.num_cache_clusters = params[:num_cache_clusters]
        type.preferred_cache_cluster_a_zs = AvailabilityZonesList.build(params[:preferred_cache_cluster_a_zs], context: "#{context}[:preferred_cache_cluster_a_zs]") unless params[:preferred_cache_cluster_a_zs].nil?
        type.num_node_groups = params[:num_node_groups]
        type.replicas_per_node_group = params[:replicas_per_node_group]
        type.node_group_configuration = NodeGroupConfigurationList.build(params[:node_group_configuration], context: "#{context}[:node_group_configuration]") unless params[:node_group_configuration].nil?
        type.cache_node_type = params[:cache_node_type]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.cache_subnet_group_name = params[:cache_subnet_group_name]
        type.cache_security_group_names = CacheSecurityGroupNameList.build(params[:cache_security_group_names], context: "#{context}[:cache_security_group_names]") unless params[:cache_security_group_names].nil?
        type.security_group_ids = SecurityGroupIdsList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.snapshot_arns = SnapshotArnsList.build(params[:snapshot_arns], context: "#{context}[:snapshot_arns]") unless params[:snapshot_arns].nil?
        type.snapshot_name = params[:snapshot_name]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.port = params[:port]
        type.notification_topic_arn = params[:notification_topic_arn]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.snapshot_window = params[:snapshot_window]
        type.auth_token = params[:auth_token]
        type.transit_encryption_enabled = params[:transit_encryption_enabled]
        type.at_rest_encryption_enabled = params[:at_rest_encryption_enabled]
        type.kms_key_id = params[:kms_key_id]
        type.user_group_ids = UserGroupIdListInput.build(params[:user_group_ids], context: "#{context}[:user_group_ids]") unless params[:user_group_ids].nil?
        type.log_delivery_configurations = LogDeliveryConfigurationRequestList.build(params[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless params[:log_delivery_configurations].nil?
        type.data_tiering_enabled = params[:data_tiering_enabled]
        type
      end
    end

    module CreateReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationGroupOutput, context: context)
        type = Types::CreateReplicationGroupOutput.new
        type.replication_group = ReplicationGroup.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    module CreateSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotInput, context: context)
        type = Types::CreateSnapshotInput.new
        type.replication_group_id = params[:replication_group_id]
        type.cache_cluster_id = params[:cache_cluster_id]
        type.snapshot_name = params[:snapshot_name]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSnapshotOutput, context: context)
        type = Types::CreateSnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module CreateUserGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserGroupInput, context: context)
        type = Types::CreateUserGroupInput.new
        type.user_group_id = params[:user_group_id]
        type.engine = params[:engine]
        type.user_ids = UserIdListInput.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUserGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserGroupOutput, context: context)
        type = Types::CreateUserGroupOutput.new
        type.user_group_id = params[:user_group_id]
        type.status = params[:status]
        type.engine = params[:engine]
        type.user_ids = UserIdList.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.minimum_engine_version = params[:minimum_engine_version]
        type.pending_changes = UserGroupPendingChanges.build(params[:pending_changes], context: "#{context}[:pending_changes]") unless params[:pending_changes].nil?
        type.replication_groups = UGReplicationGroupIdList.build(params[:replication_groups], context: "#{context}[:replication_groups]") unless params[:replication_groups].nil?
        type.arn = params[:arn]
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.user_id = params[:user_id]
        type.user_name = params[:user_name]
        type.engine = params[:engine]
        type.passwords = PasswordListInput.build(params[:passwords], context: "#{context}[:passwords]") unless params[:passwords].nil?
        type.access_string = params[:access_string]
        type.no_password_required = params[:no_password_required]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type.user_id = params[:user_id]
        type.user_name = params[:user_name]
        type.status = params[:status]
        type.engine = params[:engine]
        type.minimum_engine_version = params[:minimum_engine_version]
        type.access_string = params[:access_string]
        type.user_group_ids = UserGroupIdList.build(params[:user_group_ids], context: "#{context}[:user_group_ids]") unless params[:user_group_ids].nil?
        type.authentication = Authentication.build(params[:authentication], context: "#{context}[:authentication]") unless params[:authentication].nil?
        type.arn = params[:arn]
        type
      end
    end

    module CustomerNodeEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerNodeEndpoint, context: context)
        type = Types::CustomerNodeEndpoint.new
        type.address = params[:address]
        type.port = params[:port]
        type
      end
    end

    module CustomerNodeEndpointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomerNodeEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DecreaseNodeGroupsInGlobalReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecreaseNodeGroupsInGlobalReplicationGroupInput, context: context)
        type = Types::DecreaseNodeGroupsInGlobalReplicationGroupInput.new
        type.global_replication_group_id = params[:global_replication_group_id]
        type.node_group_count = params[:node_group_count]
        type.global_node_groups_to_remove = GlobalNodeGroupIdList.build(params[:global_node_groups_to_remove], context: "#{context}[:global_node_groups_to_remove]") unless params[:global_node_groups_to_remove].nil?
        type.global_node_groups_to_retain = GlobalNodeGroupIdList.build(params[:global_node_groups_to_retain], context: "#{context}[:global_node_groups_to_retain]") unless params[:global_node_groups_to_retain].nil?
        type.apply_immediately = params[:apply_immediately]
        type
      end
    end

    module DecreaseNodeGroupsInGlobalReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecreaseNodeGroupsInGlobalReplicationGroupOutput, context: context)
        type = Types::DecreaseNodeGroupsInGlobalReplicationGroupOutput.new
        type.global_replication_group = GlobalReplicationGroup.build(params[:global_replication_group], context: "#{context}[:global_replication_group]") unless params[:global_replication_group].nil?
        type
      end
    end

    module DecreaseReplicaCountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecreaseReplicaCountInput, context: context)
        type = Types::DecreaseReplicaCountInput.new
        type.replication_group_id = params[:replication_group_id]
        type.new_replica_count = params[:new_replica_count]
        type.replica_configuration = ReplicaConfigurationList.build(params[:replica_configuration], context: "#{context}[:replica_configuration]") unless params[:replica_configuration].nil?
        type.replicas_to_remove = RemoveReplicasList.build(params[:replicas_to_remove], context: "#{context}[:replicas_to_remove]") unless params[:replicas_to_remove].nil?
        type.apply_immediately = params[:apply_immediately]
        type
      end
    end

    module DecreaseReplicaCountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecreaseReplicaCountOutput, context: context)
        type = Types::DecreaseReplicaCountOutput.new
        type.replication_group = ReplicationGroup.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    module DefaultUserAssociatedToUserGroupFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultUserAssociatedToUserGroupFault, context: context)
        type = Types::DefaultUserAssociatedToUserGroupFault.new
        type.message = params[:message]
        type
      end
    end

    module DefaultUserRequired
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultUserRequired, context: context)
        type = Types::DefaultUserRequired.new
        type.message = params[:message]
        type
      end
    end

    module DeleteCacheClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCacheClusterInput, context: context)
        type = Types::DeleteCacheClusterInput.new
        type.cache_cluster_id = params[:cache_cluster_id]
        type.final_snapshot_identifier = params[:final_snapshot_identifier]
        type
      end
    end

    module DeleteCacheClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCacheClusterOutput, context: context)
        type = Types::DeleteCacheClusterOutput.new
        type.cache_cluster = CacheCluster.build(params[:cache_cluster], context: "#{context}[:cache_cluster]") unless params[:cache_cluster].nil?
        type
      end
    end

    module DeleteCacheParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCacheParameterGroupInput, context: context)
        type = Types::DeleteCacheParameterGroupInput.new
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type
      end
    end

    module DeleteCacheParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCacheParameterGroupOutput, context: context)
        type = Types::DeleteCacheParameterGroupOutput.new
        type
      end
    end

    module DeleteCacheSecurityGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCacheSecurityGroupInput, context: context)
        type = Types::DeleteCacheSecurityGroupInput.new
        type.cache_security_group_name = params[:cache_security_group_name]
        type
      end
    end

    module DeleteCacheSecurityGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCacheSecurityGroupOutput, context: context)
        type = Types::DeleteCacheSecurityGroupOutput.new
        type
      end
    end

    module DeleteCacheSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCacheSubnetGroupInput, context: context)
        type = Types::DeleteCacheSubnetGroupInput.new
        type.cache_subnet_group_name = params[:cache_subnet_group_name]
        type
      end
    end

    module DeleteCacheSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCacheSubnetGroupOutput, context: context)
        type = Types::DeleteCacheSubnetGroupOutput.new
        type
      end
    end

    module DeleteGlobalReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGlobalReplicationGroupInput, context: context)
        type = Types::DeleteGlobalReplicationGroupInput.new
        type.global_replication_group_id = params[:global_replication_group_id]
        type.retain_primary_replication_group = params[:retain_primary_replication_group]
        type
      end
    end

    module DeleteGlobalReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGlobalReplicationGroupOutput, context: context)
        type = Types::DeleteGlobalReplicationGroupOutput.new
        type.global_replication_group = GlobalReplicationGroup.build(params[:global_replication_group], context: "#{context}[:global_replication_group]") unless params[:global_replication_group].nil?
        type
      end
    end

    module DeleteReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationGroupInput, context: context)
        type = Types::DeleteReplicationGroupInput.new
        type.replication_group_id = params[:replication_group_id]
        type.retain_primary_cluster = params[:retain_primary_cluster]
        type.final_snapshot_identifier = params[:final_snapshot_identifier]
        type
      end
    end

    module DeleteReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationGroupOutput, context: context)
        type = Types::DeleteReplicationGroupOutput.new
        type.replication_group = ReplicationGroup.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    module DeleteSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotInput, context: context)
        type = Types::DeleteSnapshotInput.new
        type.snapshot_name = params[:snapshot_name]
        type
      end
    end

    module DeleteSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSnapshotOutput, context: context)
        type = Types::DeleteSnapshotOutput.new
        type.snapshot = Snapshot.build(params[:snapshot], context: "#{context}[:snapshot]") unless params[:snapshot].nil?
        type
      end
    end

    module DeleteUserGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserGroupInput, context: context)
        type = Types::DeleteUserGroupInput.new
        type.user_group_id = params[:user_group_id]
        type
      end
    end

    module DeleteUserGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserGroupOutput, context: context)
        type = Types::DeleteUserGroupOutput.new
        type.user_group_id = params[:user_group_id]
        type.status = params[:status]
        type.engine = params[:engine]
        type.user_ids = UserIdList.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.minimum_engine_version = params[:minimum_engine_version]
        type.pending_changes = UserGroupPendingChanges.build(params[:pending_changes], context: "#{context}[:pending_changes]") unless params[:pending_changes].nil?
        type.replication_groups = UGReplicationGroupIdList.build(params[:replication_groups], context: "#{context}[:replication_groups]") unless params[:replication_groups].nil?
        type.arn = params[:arn]
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.user_id = params[:user_id]
        type
      end
    end

    module DeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserOutput, context: context)
        type = Types::DeleteUserOutput.new
        type.user_id = params[:user_id]
        type.user_name = params[:user_name]
        type.status = params[:status]
        type.engine = params[:engine]
        type.minimum_engine_version = params[:minimum_engine_version]
        type.access_string = params[:access_string]
        type.user_group_ids = UserGroupIdList.build(params[:user_group_ids], context: "#{context}[:user_group_ids]") unless params[:user_group_ids].nil?
        type.authentication = Authentication.build(params[:authentication], context: "#{context}[:authentication]") unless params[:authentication].nil?
        type.arn = params[:arn]
        type
      end
    end

    module DescribeCacheClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheClustersInput, context: context)
        type = Types::DescribeCacheClustersInput.new
        type.cache_cluster_id = params[:cache_cluster_id]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.show_cache_node_info = params[:show_cache_node_info]
        type.show_cache_clusters_not_in_replication_groups = params[:show_cache_clusters_not_in_replication_groups]
        type
      end
    end

    module DescribeCacheClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheClustersOutput, context: context)
        type = Types::DescribeCacheClustersOutput.new
        type.marker = params[:marker]
        type.cache_clusters = CacheClusterList.build(params[:cache_clusters], context: "#{context}[:cache_clusters]") unless params[:cache_clusters].nil?
        type
      end
    end

    module DescribeCacheEngineVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheEngineVersionsInput, context: context)
        type = Types::DescribeCacheEngineVersionsInput.new
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.cache_parameter_group_family = params[:cache_parameter_group_family]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.default_only = params[:default_only]
        type
      end
    end

    module DescribeCacheEngineVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheEngineVersionsOutput, context: context)
        type = Types::DescribeCacheEngineVersionsOutput.new
        type.marker = params[:marker]
        type.cache_engine_versions = CacheEngineVersionList.build(params[:cache_engine_versions], context: "#{context}[:cache_engine_versions]") unless params[:cache_engine_versions].nil?
        type
      end
    end

    module DescribeCacheParameterGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheParameterGroupsInput, context: context)
        type = Types::DescribeCacheParameterGroupsInput.new
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeCacheParameterGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheParameterGroupsOutput, context: context)
        type = Types::DescribeCacheParameterGroupsOutput.new
        type.marker = params[:marker]
        type.cache_parameter_groups = CacheParameterGroupList.build(params[:cache_parameter_groups], context: "#{context}[:cache_parameter_groups]") unless params[:cache_parameter_groups].nil?
        type
      end
    end

    module DescribeCacheParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheParametersInput, context: context)
        type = Types::DescribeCacheParametersInput.new
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.source = params[:source]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeCacheParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheParametersOutput, context: context)
        type = Types::DescribeCacheParametersOutput.new
        type.marker = params[:marker]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.cache_node_type_specific_parameters = CacheNodeTypeSpecificParametersList.build(params[:cache_node_type_specific_parameters], context: "#{context}[:cache_node_type_specific_parameters]") unless params[:cache_node_type_specific_parameters].nil?
        type
      end
    end

    module DescribeCacheSecurityGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheSecurityGroupsInput, context: context)
        type = Types::DescribeCacheSecurityGroupsInput.new
        type.cache_security_group_name = params[:cache_security_group_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeCacheSecurityGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheSecurityGroupsOutput, context: context)
        type = Types::DescribeCacheSecurityGroupsOutput.new
        type.marker = params[:marker]
        type.cache_security_groups = CacheSecurityGroups.build(params[:cache_security_groups], context: "#{context}[:cache_security_groups]") unless params[:cache_security_groups].nil?
        type
      end
    end

    module DescribeCacheSubnetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheSubnetGroupsInput, context: context)
        type = Types::DescribeCacheSubnetGroupsInput.new
        type.cache_subnet_group_name = params[:cache_subnet_group_name]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeCacheSubnetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCacheSubnetGroupsOutput, context: context)
        type = Types::DescribeCacheSubnetGroupsOutput.new
        type.marker = params[:marker]
        type.cache_subnet_groups = CacheSubnetGroups.build(params[:cache_subnet_groups], context: "#{context}[:cache_subnet_groups]") unless params[:cache_subnet_groups].nil?
        type
      end
    end

    module DescribeEngineDefaultParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEngineDefaultParametersInput, context: context)
        type = Types::DescribeEngineDefaultParametersInput.new
        type.cache_parameter_group_family = params[:cache_parameter_group_family]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEngineDefaultParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEngineDefaultParametersOutput, context: context)
        type = Types::DescribeEngineDefaultParametersOutput.new
        type.engine_defaults = EngineDefaults.build(params[:engine_defaults], context: "#{context}[:engine_defaults]") unless params[:engine_defaults].nil?
        type
      end
    end

    module DescribeEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsInput, context: context)
        type = Types::DescribeEventsInput.new
        type.source_identifier = params[:source_identifier]
        type.source_type = params[:source_type]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.duration = params[:duration]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsOutput, context: context)
        type = Types::DescribeEventsOutput.new
        type.marker = params[:marker]
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module DescribeGlobalReplicationGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalReplicationGroupsInput, context: context)
        type = Types::DescribeGlobalReplicationGroupsInput.new
        type.global_replication_group_id = params[:global_replication_group_id]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type.show_member_info = params[:show_member_info]
        type
      end
    end

    module DescribeGlobalReplicationGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGlobalReplicationGroupsOutput, context: context)
        type = Types::DescribeGlobalReplicationGroupsOutput.new
        type.marker = params[:marker]
        type.global_replication_groups = GlobalReplicationGroupList.build(params[:global_replication_groups], context: "#{context}[:global_replication_groups]") unless params[:global_replication_groups].nil?
        type
      end
    end

    module DescribeReplicationGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationGroupsInput, context: context)
        type = Types::DescribeReplicationGroupsInput.new
        type.replication_group_id = params[:replication_group_id]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReplicationGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationGroupsOutput, context: context)
        type = Types::DescribeReplicationGroupsOutput.new
        type.marker = params[:marker]
        type.replication_groups = ReplicationGroupList.build(params[:replication_groups], context: "#{context}[:replication_groups]") unless params[:replication_groups].nil?
        type
      end
    end

    module DescribeReservedCacheNodesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedCacheNodesInput, context: context)
        type = Types::DescribeReservedCacheNodesInput.new
        type.reserved_cache_node_id = params[:reserved_cache_node_id]
        type.reserved_cache_nodes_offering_id = params[:reserved_cache_nodes_offering_id]
        type.cache_node_type = params[:cache_node_type]
        type.duration = params[:duration]
        type.product_description = params[:product_description]
        type.offering_type = params[:offering_type]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReservedCacheNodesOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedCacheNodesOfferingsInput, context: context)
        type = Types::DescribeReservedCacheNodesOfferingsInput.new
        type.reserved_cache_nodes_offering_id = params[:reserved_cache_nodes_offering_id]
        type.cache_node_type = params[:cache_node_type]
        type.duration = params[:duration]
        type.product_description = params[:product_description]
        type.offering_type = params[:offering_type]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeReservedCacheNodesOfferingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedCacheNodesOfferingsOutput, context: context)
        type = Types::DescribeReservedCacheNodesOfferingsOutput.new
        type.marker = params[:marker]
        type.reserved_cache_nodes_offerings = ReservedCacheNodesOfferingList.build(params[:reserved_cache_nodes_offerings], context: "#{context}[:reserved_cache_nodes_offerings]") unless params[:reserved_cache_nodes_offerings].nil?
        type
      end
    end

    module DescribeReservedCacheNodesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedCacheNodesOutput, context: context)
        type = Types::DescribeReservedCacheNodesOutput.new
        type.marker = params[:marker]
        type.reserved_cache_nodes = ReservedCacheNodeList.build(params[:reserved_cache_nodes], context: "#{context}[:reserved_cache_nodes]") unless params[:reserved_cache_nodes].nil?
        type
      end
    end

    module DescribeServiceUpdatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceUpdatesInput, context: context)
        type = Types::DescribeServiceUpdatesInput.new
        type.service_update_name = params[:service_update_name]
        type.service_update_status = ServiceUpdateStatusList.build(params[:service_update_status], context: "#{context}[:service_update_status]") unless params[:service_update_status].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeServiceUpdatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceUpdatesOutput, context: context)
        type = Types::DescribeServiceUpdatesOutput.new
        type.marker = params[:marker]
        type.service_updates = ServiceUpdateList.build(params[:service_updates], context: "#{context}[:service_updates]") unless params[:service_updates].nil?
        type
      end
    end

    module DescribeSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotsInput, context: context)
        type = Types::DescribeSnapshotsInput.new
        type.replication_group_id = params[:replication_group_id]
        type.cache_cluster_id = params[:cache_cluster_id]
        type.snapshot_name = params[:snapshot_name]
        type.snapshot_source = params[:snapshot_source]
        type.marker = params[:marker]
        type.max_records = params[:max_records]
        type.show_node_group_config = params[:show_node_group_config]
        type
      end
    end

    module DescribeSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSnapshotsOutput, context: context)
        type = Types::DescribeSnapshotsOutput.new
        type.marker = params[:marker]
        type.snapshots = SnapshotList.build(params[:snapshots], context: "#{context}[:snapshots]") unless params[:snapshots].nil?
        type
      end
    end

    module DescribeUpdateActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUpdateActionsInput, context: context)
        type = Types::DescribeUpdateActionsInput.new
        type.service_update_name = params[:service_update_name]
        type.replication_group_ids = ReplicationGroupIdList.build(params[:replication_group_ids], context: "#{context}[:replication_group_ids]") unless params[:replication_group_ids].nil?
        type.cache_cluster_ids = CacheClusterIdList.build(params[:cache_cluster_ids], context: "#{context}[:cache_cluster_ids]") unless params[:cache_cluster_ids].nil?
        type.engine = params[:engine]
        type.service_update_status = ServiceUpdateStatusList.build(params[:service_update_status], context: "#{context}[:service_update_status]") unless params[:service_update_status].nil?
        type.service_update_time_range = TimeRangeFilter.build(params[:service_update_time_range], context: "#{context}[:service_update_time_range]") unless params[:service_update_time_range].nil?
        type.update_action_status = UpdateActionStatusList.build(params[:update_action_status], context: "#{context}[:update_action_status]") unless params[:update_action_status].nil?
        type.show_node_level_update_status = params[:show_node_level_update_status]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeUpdateActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUpdateActionsOutput, context: context)
        type = Types::DescribeUpdateActionsOutput.new
        type.marker = params[:marker]
        type.update_actions = UpdateActionList.build(params[:update_actions], context: "#{context}[:update_actions]") unless params[:update_actions].nil?
        type
      end
    end

    module DescribeUserGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserGroupsInput, context: context)
        type = Types::DescribeUserGroupsInput.new
        type.user_group_id = params[:user_group_id]
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeUserGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserGroupsOutput, context: context)
        type = Types::DescribeUserGroupsOutput.new
        type.user_groups = UserGroupList.build(params[:user_groups], context: "#{context}[:user_groups]") unless params[:user_groups].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsersInput, context: context)
        type = Types::DescribeUsersInput.new
        type.engine = params[:engine]
        type.user_id = params[:user_id]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsersOutput, context: context)
        type = Types::DescribeUsersOutput.new
        type.users = UserList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DestinationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationDetails, context: context)
        type = Types::DestinationDetails.new
        type.cloud_watch_logs_details = CloudWatchLogsDestinationDetails.build(params[:cloud_watch_logs_details], context: "#{context}[:cloud_watch_logs_details]") unless params[:cloud_watch_logs_details].nil?
        type.kinesis_firehose_details = KinesisFirehoseDestinationDetails.build(params[:kinesis_firehose_details], context: "#{context}[:kinesis_firehose_details]") unless params[:kinesis_firehose_details].nil?
        type
      end
    end

    module DisassociateGlobalReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateGlobalReplicationGroupInput, context: context)
        type = Types::DisassociateGlobalReplicationGroupInput.new
        type.global_replication_group_id = params[:global_replication_group_id]
        type.replication_group_id = params[:replication_group_id]
        type.replication_group_region = params[:replication_group_region]
        type
      end
    end

    module DisassociateGlobalReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateGlobalReplicationGroupOutput, context: context)
        type = Types::DisassociateGlobalReplicationGroupOutput.new
        type.global_replication_group = GlobalReplicationGroup.build(params[:global_replication_group], context: "#{context}[:global_replication_group]") unless params[:global_replication_group].nil?
        type
      end
    end

    module DuplicateUserNameFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateUserNameFault, context: context)
        type = Types::DuplicateUserNameFault.new
        type.message = params[:message]
        type
      end
    end

    module EC2SecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2SecurityGroup, context: context)
        type = Types::EC2SecurityGroup.new
        type.status = params[:status]
        type.ec2_security_group_name = params[:ec2_security_group_name]
        type.ec2_security_group_owner_id = params[:ec2_security_group_owner_id]
        type
      end
    end

    module EC2SecurityGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EC2SecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.address = params[:address]
        type.port = params[:port]
        type
      end
    end

    module EngineDefaults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineDefaults, context: context)
        type = Types::EngineDefaults.new
        type.cache_parameter_group_family = params[:cache_parameter_group_family]
        type.marker = params[:marker]
        type.parameters = ParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.cache_node_type_specific_parameters = CacheNodeTypeSpecificParametersList.build(params[:cache_node_type_specific_parameters], context: "#{context}[:cache_node_type_specific_parameters]") unless params[:cache_node_type_specific_parameters].nil?
        type
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.source_identifier = params[:source_identifier]
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

    module FailoverGlobalReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverGlobalReplicationGroupInput, context: context)
        type = Types::FailoverGlobalReplicationGroupInput.new
        type.global_replication_group_id = params[:global_replication_group_id]
        type.primary_region = params[:primary_region]
        type.primary_replication_group_id = params[:primary_replication_group_id]
        type
      end
    end

    module FailoverGlobalReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailoverGlobalReplicationGroupOutput, context: context)
        type = Types::FailoverGlobalReplicationGroupOutput.new
        type.global_replication_group = GlobalReplicationGroup.build(params[:global_replication_group], context: "#{context}[:global_replication_group]") unless params[:global_replication_group].nil?
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GlobalNodeGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalNodeGroup, context: context)
        type = Types::GlobalNodeGroup.new
        type.global_node_group_id = params[:global_node_group_id]
        type.slots = params[:slots]
        type
      end
    end

    module GlobalNodeGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GlobalNodeGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalNodeGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlobalReplicationGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalReplicationGroup, context: context)
        type = Types::GlobalReplicationGroup.new
        type.global_replication_group_id = params[:global_replication_group_id]
        type.global_replication_group_description = params[:global_replication_group_description]
        type.status = params[:status]
        type.cache_node_type = params[:cache_node_type]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.members = GlobalReplicationGroupMemberList.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.cluster_enabled = params[:cluster_enabled]
        type.global_node_groups = GlobalNodeGroupList.build(params[:global_node_groups], context: "#{context}[:global_node_groups]") unless params[:global_node_groups].nil?
        type.auth_token_enabled = params[:auth_token_enabled]
        type.transit_encryption_enabled = params[:transit_encryption_enabled]
        type.at_rest_encryption_enabled = params[:at_rest_encryption_enabled]
        type.arn = params[:arn]
        type
      end
    end

    module GlobalReplicationGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalReplicationGroupAlreadyExistsFault, context: context)
        type = Types::GlobalReplicationGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module GlobalReplicationGroupInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalReplicationGroupInfo, context: context)
        type = Types::GlobalReplicationGroupInfo.new
        type.global_replication_group_id = params[:global_replication_group_id]
        type.global_replication_group_member_role = params[:global_replication_group_member_role]
        type
      end
    end

    module GlobalReplicationGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalReplicationGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlobalReplicationGroupMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalReplicationGroupMember, context: context)
        type = Types::GlobalReplicationGroupMember.new
        type.replication_group_id = params[:replication_group_id]
        type.replication_group_region = params[:replication_group_region]
        type.role = params[:role]
        type.automatic_failover = params[:automatic_failover]
        type.status = params[:status]
        type
      end
    end

    module GlobalReplicationGroupMemberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlobalReplicationGroupMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlobalReplicationGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalReplicationGroupNotFoundFault, context: context)
        type = Types::GlobalReplicationGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module IncreaseNodeGroupsInGlobalReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncreaseNodeGroupsInGlobalReplicationGroupInput, context: context)
        type = Types::IncreaseNodeGroupsInGlobalReplicationGroupInput.new
        type.global_replication_group_id = params[:global_replication_group_id]
        type.node_group_count = params[:node_group_count]
        type.regional_configurations = RegionalConfigurationList.build(params[:regional_configurations], context: "#{context}[:regional_configurations]") unless params[:regional_configurations].nil?
        type.apply_immediately = params[:apply_immediately]
        type
      end
    end

    module IncreaseNodeGroupsInGlobalReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncreaseNodeGroupsInGlobalReplicationGroupOutput, context: context)
        type = Types::IncreaseNodeGroupsInGlobalReplicationGroupOutput.new
        type.global_replication_group = GlobalReplicationGroup.build(params[:global_replication_group], context: "#{context}[:global_replication_group]") unless params[:global_replication_group].nil?
        type
      end
    end

    module IncreaseReplicaCountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncreaseReplicaCountInput, context: context)
        type = Types::IncreaseReplicaCountInput.new
        type.replication_group_id = params[:replication_group_id]
        type.new_replica_count = params[:new_replica_count]
        type.replica_configuration = ReplicaConfigurationList.build(params[:replica_configuration], context: "#{context}[:replica_configuration]") unless params[:replica_configuration].nil?
        type.apply_immediately = params[:apply_immediately]
        type
      end
    end

    module IncreaseReplicaCountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncreaseReplicaCountOutput, context: context)
        type = Types::IncreaseReplicaCountOutput.new
        type.replication_group = ReplicationGroup.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    module InsufficientCacheClusterCapacityFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientCacheClusterCapacityFault, context: context)
        type = Types::InsufficientCacheClusterCapacityFault.new
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

    module InvalidCacheClusterStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCacheClusterStateFault, context: context)
        type = Types::InvalidCacheClusterStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCacheParameterGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCacheParameterGroupStateFault, context: context)
        type = Types::InvalidCacheParameterGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCacheSecurityGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCacheSecurityGroupStateFault, context: context)
        type = Types::InvalidCacheSecurityGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidGlobalReplicationGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidGlobalReplicationGroupStateFault, context: context)
        type = Types::InvalidGlobalReplicationGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidKMSKeyFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKMSKeyFault, context: context)
        type = Types::InvalidKMSKeyFault.new
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

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidReplicationGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidReplicationGroupStateFault, context: context)
        type = Types::InvalidReplicationGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSnapshotStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSnapshotStateFault, context: context)
        type = Types::InvalidSnapshotStateFault.new
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

    module InvalidUserGroupStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUserGroupStateFault, context: context)
        type = Types::InvalidUserGroupStateFault.new
        type.message = params[:message]
        type
      end
    end

    module InvalidUserStateFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUserStateFault, context: context)
        type = Types::InvalidUserStateFault.new
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

    module KinesisFirehoseDestinationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseDestinationDetails, context: context)
        type = Types::KinesisFirehoseDestinationDetails.new
        type.delivery_stream = params[:delivery_stream]
        type
      end
    end

    module ListAllowedNodeTypeModificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAllowedNodeTypeModificationsInput, context: context)
        type = Types::ListAllowedNodeTypeModificationsInput.new
        type.cache_cluster_id = params[:cache_cluster_id]
        type.replication_group_id = params[:replication_group_id]
        type
      end
    end

    module ListAllowedNodeTypeModificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAllowedNodeTypeModificationsOutput, context: context)
        type = Types::ListAllowedNodeTypeModificationsOutput.new
        type.scale_up_modifications = NodeTypeList.build(params[:scale_up_modifications], context: "#{context}[:scale_up_modifications]") unless params[:scale_up_modifications].nil?
        type.scale_down_modifications = NodeTypeList.build(params[:scale_down_modifications], context: "#{context}[:scale_down_modifications]") unless params[:scale_down_modifications].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module LogDeliveryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogDeliveryConfiguration, context: context)
        type = Types::LogDeliveryConfiguration.new
        type.log_type = params[:log_type]
        type.destination_type = params[:destination_type]
        type.destination_details = DestinationDetails.build(params[:destination_details], context: "#{context}[:destination_details]") unless params[:destination_details].nil?
        type.log_format = params[:log_format]
        type.status = params[:status]
        type.message = params[:message]
        type
      end
    end

    module LogDeliveryConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogDeliveryConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LogDeliveryConfigurationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogDeliveryConfigurationRequest, context: context)
        type = Types::LogDeliveryConfigurationRequest.new
        type.log_type = params[:log_type]
        type.destination_type = params[:destination_type]
        type.destination_details = DestinationDetails.build(params[:destination_details], context: "#{context}[:destination_details]") unless params[:destination_details].nil?
        type.log_format = params[:log_format]
        type.enabled = params[:enabled]
        type
      end
    end

    module LogDeliveryConfigurationRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogDeliveryConfigurationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModifyCacheClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCacheClusterInput, context: context)
        type = Types::ModifyCacheClusterInput.new
        type.cache_cluster_id = params[:cache_cluster_id]
        type.num_cache_nodes = params[:num_cache_nodes]
        type.cache_node_ids_to_remove = CacheNodeIdsList.build(params[:cache_node_ids_to_remove], context: "#{context}[:cache_node_ids_to_remove]") unless params[:cache_node_ids_to_remove].nil?
        type.az_mode = params[:az_mode]
        type.new_availability_zones = PreferredAvailabilityZoneList.build(params[:new_availability_zones], context: "#{context}[:new_availability_zones]") unless params[:new_availability_zones].nil?
        type.cache_security_group_names = CacheSecurityGroupNameList.build(params[:cache_security_group_names], context: "#{context}[:cache_security_group_names]") unless params[:cache_security_group_names].nil?
        type.security_group_ids = SecurityGroupIdsList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.notification_topic_arn = params[:notification_topic_arn]
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.notification_topic_status = params[:notification_topic_status]
        type.apply_immediately = params[:apply_immediately]
        type.engine_version = params[:engine_version]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.snapshot_window = params[:snapshot_window]
        type.cache_node_type = params[:cache_node_type]
        type.auth_token = params[:auth_token]
        type.auth_token_update_strategy = params[:auth_token_update_strategy]
        type.log_delivery_configurations = LogDeliveryConfigurationRequestList.build(params[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless params[:log_delivery_configurations].nil?
        type
      end
    end

    module ModifyCacheClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCacheClusterOutput, context: context)
        type = Types::ModifyCacheClusterOutput.new
        type.cache_cluster = CacheCluster.build(params[:cache_cluster], context: "#{context}[:cache_cluster]") unless params[:cache_cluster].nil?
        type
      end
    end

    module ModifyCacheParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCacheParameterGroupInput, context: context)
        type = Types::ModifyCacheParameterGroupInput.new
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.parameter_name_values = ParameterNameValueList.build(params[:parameter_name_values], context: "#{context}[:parameter_name_values]") unless params[:parameter_name_values].nil?
        type
      end
    end

    module ModifyCacheParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCacheParameterGroupOutput, context: context)
        type = Types::ModifyCacheParameterGroupOutput.new
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type
      end
    end

    module ModifyCacheSubnetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCacheSubnetGroupInput, context: context)
        type = Types::ModifyCacheSubnetGroupInput.new
        type.cache_subnet_group_name = params[:cache_subnet_group_name]
        type.cache_subnet_group_description = params[:cache_subnet_group_description]
        type.subnet_ids = SubnetIdentifierList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module ModifyCacheSubnetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyCacheSubnetGroupOutput, context: context)
        type = Types::ModifyCacheSubnetGroupOutput.new
        type.cache_subnet_group = CacheSubnetGroup.build(params[:cache_subnet_group], context: "#{context}[:cache_subnet_group]") unless params[:cache_subnet_group].nil?
        type
      end
    end

    module ModifyGlobalReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyGlobalReplicationGroupInput, context: context)
        type = Types::ModifyGlobalReplicationGroupInput.new
        type.global_replication_group_id = params[:global_replication_group_id]
        type.apply_immediately = params[:apply_immediately]
        type.cache_node_type = params[:cache_node_type]
        type.engine_version = params[:engine_version]
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.global_replication_group_description = params[:global_replication_group_description]
        type.automatic_failover_enabled = params[:automatic_failover_enabled]
        type
      end
    end

    module ModifyGlobalReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyGlobalReplicationGroupOutput, context: context)
        type = Types::ModifyGlobalReplicationGroupOutput.new
        type.global_replication_group = GlobalReplicationGroup.build(params[:global_replication_group], context: "#{context}[:global_replication_group]") unless params[:global_replication_group].nil?
        type
      end
    end

    module ModifyReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReplicationGroupInput, context: context)
        type = Types::ModifyReplicationGroupInput.new
        type.replication_group_id = params[:replication_group_id]
        type.replication_group_description = params[:replication_group_description]
        type.primary_cluster_id = params[:primary_cluster_id]
        type.snapshotting_cluster_id = params[:snapshotting_cluster_id]
        type.automatic_failover_enabled = params[:automatic_failover_enabled]
        type.multi_az_enabled = params[:multi_az_enabled]
        type.node_group_id = params[:node_group_id]
        type.cache_security_group_names = CacheSecurityGroupNameList.build(params[:cache_security_group_names], context: "#{context}[:cache_security_group_names]") unless params[:cache_security_group_names].nil?
        type.security_group_ids = SecurityGroupIdsList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.notification_topic_arn = params[:notification_topic_arn]
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.notification_topic_status = params[:notification_topic_status]
        type.apply_immediately = params[:apply_immediately]
        type.engine_version = params[:engine_version]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.snapshot_window = params[:snapshot_window]
        type.cache_node_type = params[:cache_node_type]
        type.auth_token = params[:auth_token]
        type.auth_token_update_strategy = params[:auth_token_update_strategy]
        type.user_group_ids_to_add = UserGroupIdList.build(params[:user_group_ids_to_add], context: "#{context}[:user_group_ids_to_add]") unless params[:user_group_ids_to_add].nil?
        type.user_group_ids_to_remove = UserGroupIdList.build(params[:user_group_ids_to_remove], context: "#{context}[:user_group_ids_to_remove]") unless params[:user_group_ids_to_remove].nil?
        type.remove_user_groups = params[:remove_user_groups]
        type.log_delivery_configurations = LogDeliveryConfigurationRequestList.build(params[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless params[:log_delivery_configurations].nil?
        type
      end
    end

    module ModifyReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReplicationGroupOutput, context: context)
        type = Types::ModifyReplicationGroupOutput.new
        type.replication_group = ReplicationGroup.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    module ModifyReplicationGroupShardConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReplicationGroupShardConfigurationInput, context: context)
        type = Types::ModifyReplicationGroupShardConfigurationInput.new
        type.replication_group_id = params[:replication_group_id]
        type.node_group_count = params[:node_group_count]
        type.apply_immediately = params[:apply_immediately]
        type.resharding_configuration = ReshardingConfigurationList.build(params[:resharding_configuration], context: "#{context}[:resharding_configuration]") unless params[:resharding_configuration].nil?
        type.node_groups_to_remove = NodeGroupsToRemoveList.build(params[:node_groups_to_remove], context: "#{context}[:node_groups_to_remove]") unless params[:node_groups_to_remove].nil?
        type.node_groups_to_retain = NodeGroupsToRetainList.build(params[:node_groups_to_retain], context: "#{context}[:node_groups_to_retain]") unless params[:node_groups_to_retain].nil?
        type
      end
    end

    module ModifyReplicationGroupShardConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyReplicationGroupShardConfigurationOutput, context: context)
        type = Types::ModifyReplicationGroupShardConfigurationOutput.new
        type.replication_group = ReplicationGroup.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    module ModifyUserGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyUserGroupInput, context: context)
        type = Types::ModifyUserGroupInput.new
        type.user_group_id = params[:user_group_id]
        type.user_ids_to_add = UserIdListInput.build(params[:user_ids_to_add], context: "#{context}[:user_ids_to_add]") unless params[:user_ids_to_add].nil?
        type.user_ids_to_remove = UserIdListInput.build(params[:user_ids_to_remove], context: "#{context}[:user_ids_to_remove]") unless params[:user_ids_to_remove].nil?
        type
      end
    end

    module ModifyUserGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyUserGroupOutput, context: context)
        type = Types::ModifyUserGroupOutput.new
        type.user_group_id = params[:user_group_id]
        type.status = params[:status]
        type.engine = params[:engine]
        type.user_ids = UserIdList.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.minimum_engine_version = params[:minimum_engine_version]
        type.pending_changes = UserGroupPendingChanges.build(params[:pending_changes], context: "#{context}[:pending_changes]") unless params[:pending_changes].nil?
        type.replication_groups = UGReplicationGroupIdList.build(params[:replication_groups], context: "#{context}[:replication_groups]") unless params[:replication_groups].nil?
        type.arn = params[:arn]
        type
      end
    end

    module ModifyUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyUserInput, context: context)
        type = Types::ModifyUserInput.new
        type.user_id = params[:user_id]
        type.access_string = params[:access_string]
        type.append_access_string = params[:append_access_string]
        type.passwords = PasswordListInput.build(params[:passwords], context: "#{context}[:passwords]") unless params[:passwords].nil?
        type.no_password_required = params[:no_password_required]
        type
      end
    end

    module ModifyUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyUserOutput, context: context)
        type = Types::ModifyUserOutput.new
        type.user_id = params[:user_id]
        type.user_name = params[:user_name]
        type.status = params[:status]
        type.engine = params[:engine]
        type.minimum_engine_version = params[:minimum_engine_version]
        type.access_string = params[:access_string]
        type.user_group_ids = UserGroupIdList.build(params[:user_group_ids], context: "#{context}[:user_group_ids]") unless params[:user_group_ids].nil?
        type.authentication = Authentication.build(params[:authentication], context: "#{context}[:authentication]") unless params[:authentication].nil?
        type.arn = params[:arn]
        type
      end
    end

    module NoOperationFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoOperationFault, context: context)
        type = Types::NoOperationFault.new
        type.message = params[:message]
        type
      end
    end

    module NodeGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeGroup, context: context)
        type = Types::NodeGroup.new
        type.node_group_id = params[:node_group_id]
        type.status = params[:status]
        type.primary_endpoint = Endpoint.build(params[:primary_endpoint], context: "#{context}[:primary_endpoint]") unless params[:primary_endpoint].nil?
        type.reader_endpoint = Endpoint.build(params[:reader_endpoint], context: "#{context}[:reader_endpoint]") unless params[:reader_endpoint].nil?
        type.slots = params[:slots]
        type.node_group_members = NodeGroupMemberList.build(params[:node_group_members], context: "#{context}[:node_group_members]") unless params[:node_group_members].nil?
        type
      end
    end

    module NodeGroupConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeGroupConfiguration, context: context)
        type = Types::NodeGroupConfiguration.new
        type.node_group_id = params[:node_group_id]
        type.slots = params[:slots]
        type.replica_count = params[:replica_count]
        type.primary_availability_zone = params[:primary_availability_zone]
        type.replica_availability_zones = AvailabilityZonesList.build(params[:replica_availability_zones], context: "#{context}[:replica_availability_zones]") unless params[:replica_availability_zones].nil?
        type.primary_outpost_arn = params[:primary_outpost_arn]
        type.replica_outpost_arns = OutpostArnsList.build(params[:replica_outpost_arns], context: "#{context}[:replica_outpost_arns]") unless params[:replica_outpost_arns].nil?
        type
      end
    end

    module NodeGroupConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeGroupConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeGroupMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeGroupMember, context: context)
        type = Types::NodeGroupMember.new
        type.cache_cluster_id = params[:cache_cluster_id]
        type.cache_node_id = params[:cache_node_id]
        type.read_endpoint = Endpoint.build(params[:read_endpoint], context: "#{context}[:read_endpoint]") unless params[:read_endpoint].nil?
        type.preferred_availability_zone = params[:preferred_availability_zone]
        type.preferred_outpost_arn = params[:preferred_outpost_arn]
        type.current_role = params[:current_role]
        type
      end
    end

    module NodeGroupMemberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeGroupMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeGroupMemberUpdateStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeGroupMemberUpdateStatus, context: context)
        type = Types::NodeGroupMemberUpdateStatus.new
        type.cache_cluster_id = params[:cache_cluster_id]
        type.cache_node_id = params[:cache_node_id]
        type.node_update_status = params[:node_update_status]
        type.node_deletion_date = params[:node_deletion_date]
        type.node_update_start_date = params[:node_update_start_date]
        type.node_update_end_date = params[:node_update_end_date]
        type.node_update_initiated_by = params[:node_update_initiated_by]
        type.node_update_initiated_date = params[:node_update_initiated_date]
        type.node_update_status_modified_date = params[:node_update_status_modified_date]
        type
      end
    end

    module NodeGroupMemberUpdateStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeGroupMemberUpdateStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeGroupNotFoundFault, context: context)
        type = Types::NodeGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module NodeGroupUpdateStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeGroupUpdateStatus, context: context)
        type = Types::NodeGroupUpdateStatus.new
        type.node_group_id = params[:node_group_id]
        type.node_group_member_update_status = NodeGroupMemberUpdateStatusList.build(params[:node_group_member_update_status], context: "#{context}[:node_group_member_update_status]") unless params[:node_group_member_update_status].nil?
        type
      end
    end

    module NodeGroupUpdateStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeGroupUpdateStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeGroupsPerReplicationGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeGroupsPerReplicationGroupQuotaExceededFault, context: context)
        type = Types::NodeGroupsPerReplicationGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module NodeGroupsToRemoveList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NodeGroupsToRetainList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module NodeSnapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeSnapshot, context: context)
        type = Types::NodeSnapshot.new
        type.cache_cluster_id = params[:cache_cluster_id]
        type.node_group_id = params[:node_group_id]
        type.cache_node_id = params[:cache_node_id]
        type.node_group_configuration = NodeGroupConfiguration.build(params[:node_group_configuration], context: "#{context}[:node_group_configuration]") unless params[:node_group_configuration].nil?
        type.cache_size = params[:cache_size]
        type.cache_node_create_time = params[:cache_node_create_time]
        type.snapshot_create_time = params[:snapshot_create_time]
        type
      end
    end

    module NodeSnapshotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeSnapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module OutpostArnsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Parameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parameter, context: context)
        type = Types::Parameter.new
        type.parameter_name = params[:parameter_name]
        type.parameter_value = params[:parameter_value]
        type.description = params[:description]
        type.source = params[:source]
        type.data_type = params[:data_type]
        type.allowed_values = params[:allowed_values]
        type.is_modifiable = params[:is_modifiable]
        type.minimum_engine_version = params[:minimum_engine_version]
        type.change_type = params[:change_type]
        type
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

    module ParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PasswordListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PendingLogDeliveryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingLogDeliveryConfiguration, context: context)
        type = Types::PendingLogDeliveryConfiguration.new
        type.log_type = params[:log_type]
        type.destination_type = params[:destination_type]
        type.destination_details = DestinationDetails.build(params[:destination_details], context: "#{context}[:destination_details]") unless params[:destination_details].nil?
        type.log_format = params[:log_format]
        type
      end
    end

    module PendingLogDeliveryConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PendingLogDeliveryConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PendingModifiedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingModifiedValues, context: context)
        type = Types::PendingModifiedValues.new
        type.num_cache_nodes = params[:num_cache_nodes]
        type.cache_node_ids_to_remove = CacheNodeIdsList.build(params[:cache_node_ids_to_remove], context: "#{context}[:cache_node_ids_to_remove]") unless params[:cache_node_ids_to_remove].nil?
        type.engine_version = params[:engine_version]
        type.cache_node_type = params[:cache_node_type]
        type.auth_token_status = params[:auth_token_status]
        type.log_delivery_configurations = PendingLogDeliveryConfigurationList.build(params[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless params[:log_delivery_configurations].nil?
        type
      end
    end

    module PreferredAvailabilityZoneList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PreferredOutpostArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProcessedUpdateAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessedUpdateAction, context: context)
        type = Types::ProcessedUpdateAction.new
        type.replication_group_id = params[:replication_group_id]
        type.cache_cluster_id = params[:cache_cluster_id]
        type.service_update_name = params[:service_update_name]
        type.update_action_status = params[:update_action_status]
        type
      end
    end

    module ProcessedUpdateActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProcessedUpdateAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PurchaseReservedCacheNodesOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseReservedCacheNodesOfferingInput, context: context)
        type = Types::PurchaseReservedCacheNodesOfferingInput.new
        type.reserved_cache_nodes_offering_id = params[:reserved_cache_nodes_offering_id]
        type.reserved_cache_node_id = params[:reserved_cache_node_id]
        type.cache_node_count = params[:cache_node_count]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PurchaseReservedCacheNodesOfferingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseReservedCacheNodesOfferingOutput, context: context)
        type = Types::PurchaseReservedCacheNodesOfferingOutput.new
        type.reserved_cache_node = ReservedCacheNode.build(params[:reserved_cache_node], context: "#{context}[:reserved_cache_node]") unless params[:reserved_cache_node].nil?
        type
      end
    end

    module RebalanceSlotsInGlobalReplicationGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebalanceSlotsInGlobalReplicationGroupInput, context: context)
        type = Types::RebalanceSlotsInGlobalReplicationGroupInput.new
        type.global_replication_group_id = params[:global_replication_group_id]
        type.apply_immediately = params[:apply_immediately]
        type
      end
    end

    module RebalanceSlotsInGlobalReplicationGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebalanceSlotsInGlobalReplicationGroupOutput, context: context)
        type = Types::RebalanceSlotsInGlobalReplicationGroupOutput.new
        type.global_replication_group = GlobalReplicationGroup.build(params[:global_replication_group], context: "#{context}[:global_replication_group]") unless params[:global_replication_group].nil?
        type
      end
    end

    module RebootCacheClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootCacheClusterInput, context: context)
        type = Types::RebootCacheClusterInput.new
        type.cache_cluster_id = params[:cache_cluster_id]
        type.cache_node_ids_to_reboot = CacheNodeIdsList.build(params[:cache_node_ids_to_reboot], context: "#{context}[:cache_node_ids_to_reboot]") unless params[:cache_node_ids_to_reboot].nil?
        type
      end
    end

    module RebootCacheClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootCacheClusterOutput, context: context)
        type = Types::RebootCacheClusterOutput.new
        type.cache_cluster = CacheCluster.build(params[:cache_cluster], context: "#{context}[:cache_cluster]") unless params[:cache_cluster].nil?
        type
      end
    end

    module RecurringCharge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecurringCharge, context: context)
        type = Types::RecurringCharge.new
        type.recurring_charge_amount = params[:recurring_charge_amount]
        type.recurring_charge_frequency = params[:recurring_charge_frequency]
        type
      end
    end

    module RecurringChargeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecurringCharge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegionalConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegionalConfiguration, context: context)
        type = Types::RegionalConfiguration.new
        type.replication_group_id = params[:replication_group_id]
        type.replication_group_region = params[:replication_group_region]
        type.resharding_configuration = ReshardingConfigurationList.build(params[:resharding_configuration], context: "#{context}[:resharding_configuration]") unless params[:resharding_configuration].nil?
        type
      end
    end

    module RegionalConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegionalConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemoveReplicasList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RemoveTagsFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceInput, context: context)
        type = Types::RemoveTagsFromResourceInput.new
        type.resource_name = params[:resource_name]
        type.tag_keys = KeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceOutput, context: context)
        type = Types::RemoveTagsFromResourceOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module ReplicaConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigureShard.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationGroup, context: context)
        type = Types::ReplicationGroup.new
        type.replication_group_id = params[:replication_group_id]
        type.description = params[:description]
        type.global_replication_group_info = GlobalReplicationGroupInfo.build(params[:global_replication_group_info], context: "#{context}[:global_replication_group_info]") unless params[:global_replication_group_info].nil?
        type.status = params[:status]
        type.pending_modified_values = ReplicationGroupPendingModifiedValues.build(params[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless params[:pending_modified_values].nil?
        type.member_clusters = ClusterIdList.build(params[:member_clusters], context: "#{context}[:member_clusters]") unless params[:member_clusters].nil?
        type.node_groups = NodeGroupList.build(params[:node_groups], context: "#{context}[:node_groups]") unless params[:node_groups].nil?
        type.snapshotting_cluster_id = params[:snapshotting_cluster_id]
        type.automatic_failover = params[:automatic_failover]
        type.multi_az = params[:multi_az]
        type.configuration_endpoint = Endpoint.build(params[:configuration_endpoint], context: "#{context}[:configuration_endpoint]") unless params[:configuration_endpoint].nil?
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.snapshot_window = params[:snapshot_window]
        type.cluster_enabled = params[:cluster_enabled]
        type.cache_node_type = params[:cache_node_type]
        type.auth_token_enabled = params[:auth_token_enabled]
        type.auth_token_last_modified_date = params[:auth_token_last_modified_date]
        type.transit_encryption_enabled = params[:transit_encryption_enabled]
        type.at_rest_encryption_enabled = params[:at_rest_encryption_enabled]
        type.member_clusters_outpost_arns = ReplicationGroupOutpostArnList.build(params[:member_clusters_outpost_arns], context: "#{context}[:member_clusters_outpost_arns]") unless params[:member_clusters_outpost_arns].nil?
        type.kms_key_id = params[:kms_key_id]
        type.arn = params[:arn]
        type.user_group_ids = UserGroupIdList.build(params[:user_group_ids], context: "#{context}[:user_group_ids]") unless params[:user_group_ids].nil?
        type.log_delivery_configurations = LogDeliveryConfigurationList.build(params[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless params[:log_delivery_configurations].nil?
        type.replication_group_create_time = params[:replication_group_create_time]
        type.data_tiering = params[:data_tiering]
        type
      end
    end

    module ReplicationGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationGroupAlreadyExistsFault, context: context)
        type = Types::ReplicationGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ReplicationGroupAlreadyUnderMigrationFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationGroupAlreadyUnderMigrationFault, context: context)
        type = Types::ReplicationGroupAlreadyUnderMigrationFault.new
        type.message = params[:message]
        type
      end
    end

    module ReplicationGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReplicationGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationGroupNotFoundFault, context: context)
        type = Types::ReplicationGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ReplicationGroupNotUnderMigrationFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationGroupNotUnderMigrationFault, context: context)
        type = Types::ReplicationGroupNotUnderMigrationFault.new
        type.message = params[:message]
        type
      end
    end

    module ReplicationGroupOutpostArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReplicationGroupPendingModifiedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationGroupPendingModifiedValues, context: context)
        type = Types::ReplicationGroupPendingModifiedValues.new
        type.primary_cluster_id = params[:primary_cluster_id]
        type.automatic_failover_status = params[:automatic_failover_status]
        type.resharding = ReshardingStatus.build(params[:resharding], context: "#{context}[:resharding]") unless params[:resharding].nil?
        type.auth_token_status = params[:auth_token_status]
        type.user_groups = UserGroupsUpdateStatus.build(params[:user_groups], context: "#{context}[:user_groups]") unless params[:user_groups].nil?
        type.log_delivery_configurations = PendingLogDeliveryConfigurationList.build(params[:log_delivery_configurations], context: "#{context}[:log_delivery_configurations]") unless params[:log_delivery_configurations].nil?
        type
      end
    end

    module ReservedCacheNode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedCacheNode, context: context)
        type = Types::ReservedCacheNode.new
        type.reserved_cache_node_id = params[:reserved_cache_node_id]
        type.reserved_cache_nodes_offering_id = params[:reserved_cache_nodes_offering_id]
        type.cache_node_type = params[:cache_node_type]
        type.start_time = params[:start_time]
        type.duration = params[:duration]
        type.fixed_price = params[:fixed_price]
        type.usage_price = params[:usage_price]
        type.cache_node_count = params[:cache_node_count]
        type.product_description = params[:product_description]
        type.offering_type = params[:offering_type]
        type.state = params[:state]
        type.recurring_charges = RecurringChargeList.build(params[:recurring_charges], context: "#{context}[:recurring_charges]") unless params[:recurring_charges].nil?
        type.reservation_arn = params[:reservation_arn]
        type
      end
    end

    module ReservedCacheNodeAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedCacheNodeAlreadyExistsFault, context: context)
        type = Types::ReservedCacheNodeAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedCacheNodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedCacheNode.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedCacheNodeNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedCacheNodeNotFoundFault, context: context)
        type = Types::ReservedCacheNodeNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedCacheNodeQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedCacheNodeQuotaExceededFault, context: context)
        type = Types::ReservedCacheNodeQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module ReservedCacheNodesOffering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedCacheNodesOffering, context: context)
        type = Types::ReservedCacheNodesOffering.new
        type.reserved_cache_nodes_offering_id = params[:reserved_cache_nodes_offering_id]
        type.cache_node_type = params[:cache_node_type]
        type.duration = params[:duration]
        type.fixed_price = params[:fixed_price]
        type.usage_price = params[:usage_price]
        type.product_description = params[:product_description]
        type.offering_type = params[:offering_type]
        type.recurring_charges = RecurringChargeList.build(params[:recurring_charges], context: "#{context}[:recurring_charges]") unless params[:recurring_charges].nil?
        type
      end
    end

    module ReservedCacheNodesOfferingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedCacheNodesOffering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedCacheNodesOfferingNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedCacheNodesOfferingNotFoundFault, context: context)
        type = Types::ReservedCacheNodesOfferingNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ResetCacheParameterGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetCacheParameterGroupInput, context: context)
        type = Types::ResetCacheParameterGroupInput.new
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.reset_all_parameters = params[:reset_all_parameters]
        type.parameter_name_values = ParameterNameValueList.build(params[:parameter_name_values], context: "#{context}[:parameter_name_values]") unless params[:parameter_name_values].nil?
        type
      end
    end

    module ResetCacheParameterGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetCacheParameterGroupOutput, context: context)
        type = Types::ResetCacheParameterGroupOutput.new
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type
      end
    end

    module ReshardingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReshardingConfiguration, context: context)
        type = Types::ReshardingConfiguration.new
        type.node_group_id = params[:node_group_id]
        type.preferred_availability_zones = AvailabilityZonesList.build(params[:preferred_availability_zones], context: "#{context}[:preferred_availability_zones]") unless params[:preferred_availability_zones].nil?
        type
      end
    end

    module ReshardingConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReshardingConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReshardingStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReshardingStatus, context: context)
        type = Types::ReshardingStatus.new
        type.slot_migration = SlotMigration.build(params[:slot_migration], context: "#{context}[:slot_migration]") unless params[:slot_migration].nil?
        type
      end
    end

    module RevokeCacheSecurityGroupIngressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeCacheSecurityGroupIngressInput, context: context)
        type = Types::RevokeCacheSecurityGroupIngressInput.new
        type.cache_security_group_name = params[:cache_security_group_name]
        type.ec2_security_group_name = params[:ec2_security_group_name]
        type.ec2_security_group_owner_id = params[:ec2_security_group_owner_id]
        type
      end
    end

    module RevokeCacheSecurityGroupIngressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeCacheSecurityGroupIngressOutput, context: context)
        type = Types::RevokeCacheSecurityGroupIngressOutput.new
        type.cache_security_group = CacheSecurityGroup.build(params[:cache_security_group], context: "#{context}[:cache_security_group]") unless params[:cache_security_group].nil?
        type
      end
    end

    module SecurityGroupIdsList
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
        type.security_group_id = params[:security_group_id]
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

    module ServiceUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUpdate, context: context)
        type = Types::ServiceUpdate.new
        type.service_update_name = params[:service_update_name]
        type.service_update_release_date = params[:service_update_release_date]
        type.service_update_end_date = params[:service_update_end_date]
        type.service_update_severity = params[:service_update_severity]
        type.service_update_recommended_apply_by_date = params[:service_update_recommended_apply_by_date]
        type.service_update_status = params[:service_update_status]
        type.service_update_description = params[:service_update_description]
        type.service_update_type = params[:service_update_type]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.auto_update_after_recommended_apply_by_date = params[:auto_update_after_recommended_apply_by_date]
        type.estimated_update_time = params[:estimated_update_time]
        type
      end
    end

    module ServiceUpdateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceUpdate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceUpdateNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUpdateNotFoundFault, context: context)
        type = Types::ServiceUpdateNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module ServiceUpdateStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SlotMigration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlotMigration, context: context)
        type = Types::SlotMigration.new
        type.progress_percentage = params[:progress_percentage]
        type
      end
    end

    module Snapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Snapshot, context: context)
        type = Types::Snapshot.new
        type.snapshot_name = params[:snapshot_name]
        type.replication_group_id = params[:replication_group_id]
        type.replication_group_description = params[:replication_group_description]
        type.cache_cluster_id = params[:cache_cluster_id]
        type.snapshot_status = params[:snapshot_status]
        type.snapshot_source = params[:snapshot_source]
        type.cache_node_type = params[:cache_node_type]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.num_cache_nodes = params[:num_cache_nodes]
        type.preferred_availability_zone = params[:preferred_availability_zone]
        type.preferred_outpost_arn = params[:preferred_outpost_arn]
        type.cache_cluster_create_time = params[:cache_cluster_create_time]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.topic_arn = params[:topic_arn]
        type.port = params[:port]
        type.cache_parameter_group_name = params[:cache_parameter_group_name]
        type.cache_subnet_group_name = params[:cache_subnet_group_name]
        type.vpc_id = params[:vpc_id]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.snapshot_retention_limit = params[:snapshot_retention_limit]
        type.snapshot_window = params[:snapshot_window]
        type.num_node_groups = params[:num_node_groups]
        type.automatic_failover = params[:automatic_failover]
        type.node_snapshots = NodeSnapshotList.build(params[:node_snapshots], context: "#{context}[:node_snapshots]") unless params[:node_snapshots].nil?
        type.kms_key_id = params[:kms_key_id]
        type.arn = params[:arn]
        type.data_tiering = params[:data_tiering]
        type
      end
    end

    module SnapshotAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotAlreadyExistsFault, context: context)
        type = Types::SnapshotAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotArnsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SnapshotFeatureNotSupportedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotFeatureNotSupportedFault, context: context)
        type = Types::SnapshotFeatureNotSupportedFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Snapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SnapshotNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotNotFoundFault, context: context)
        type = Types::SnapshotNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module SnapshotQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotQuotaExceededFault, context: context)
        type = Types::SnapshotQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module StartMigrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMigrationInput, context: context)
        type = Types::StartMigrationInput.new
        type.replication_group_id = params[:replication_group_id]
        type.customer_node_endpoint_list = CustomerNodeEndpointList.build(params[:customer_node_endpoint_list], context: "#{context}[:customer_node_endpoint_list]") unless params[:customer_node_endpoint_list].nil?
        type
      end
    end

    module StartMigrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMigrationOutput, context: context)
        type = Types::StartMigrationOutput.new
        type.replication_group = ReplicationGroup.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    module Subnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subnet, context: context)
        type = Types::Subnet.new
        type.subnet_identifier = params[:subnet_identifier]
        type.subnet_availability_zone = AvailabilityZone.build(params[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless params[:subnet_availability_zone].nil?
        type.subnet_outpost = SubnetOutpost.build(params[:subnet_outpost], context: "#{context}[:subnet_outpost]") unless params[:subnet_outpost].nil?
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

    module SubnetNotAllowedFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetNotAllowedFault, context: context)
        type = Types::SubnetNotAllowedFault.new
        type.message = params[:message]
        type
      end
    end

    module SubnetOutpost
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetOutpost, context: context)
        type = Types::SubnetOutpost.new
        type.subnet_outpost_arn = params[:subnet_outpost_arn]
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

    module TestFailoverInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestFailoverInput, context: context)
        type = Types::TestFailoverInput.new
        type.replication_group_id = params[:replication_group_id]
        type.node_group_id = params[:node_group_id]
        type
      end
    end

    module TestFailoverNotAvailableFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestFailoverNotAvailableFault, context: context)
        type = Types::TestFailoverNotAvailableFault.new
        type.message = params[:message]
        type
      end
    end

    module TestFailoverOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestFailoverOutput, context: context)
        type = Types::TestFailoverOutput.new
        type.replication_group = ReplicationGroup.build(params[:replication_group], context: "#{context}[:replication_group]") unless params[:replication_group].nil?
        type
      end
    end

    module TimeRangeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeRangeFilter, context: context)
        type = Types::TimeRangeFilter.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module UGReplicationGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UnprocessedUpdateAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedUpdateAction, context: context)
        type = Types::UnprocessedUpdateAction.new
        type.replication_group_id = params[:replication_group_id]
        type.cache_cluster_id = params[:cache_cluster_id]
        type.service_update_name = params[:service_update_name]
        type.error_type = params[:error_type]
        type.error_message = params[:error_message]
        type
      end
    end

    module UnprocessedUpdateActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedUpdateAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAction, context: context)
        type = Types::UpdateAction.new
        type.replication_group_id = params[:replication_group_id]
        type.cache_cluster_id = params[:cache_cluster_id]
        type.service_update_name = params[:service_update_name]
        type.service_update_release_date = params[:service_update_release_date]
        type.service_update_severity = params[:service_update_severity]
        type.service_update_status = params[:service_update_status]
        type.service_update_recommended_apply_by_date = params[:service_update_recommended_apply_by_date]
        type.service_update_type = params[:service_update_type]
        type.update_action_available_date = params[:update_action_available_date]
        type.update_action_status = params[:update_action_status]
        type.nodes_updated = params[:nodes_updated]
        type.update_action_status_modified_date = params[:update_action_status_modified_date]
        type.sla_met = params[:sla_met]
        type.node_group_update_status = NodeGroupUpdateStatusList.build(params[:node_group_update_status], context: "#{context}[:node_group_update_status]") unless params[:node_group_update_status].nil?
        type.cache_node_update_status = CacheNodeUpdateStatusList.build(params[:cache_node_update_status], context: "#{context}[:cache_node_update_status]") unless params[:cache_node_update_status].nil?
        type.estimated_update_time = params[:estimated_update_time]
        type.engine = params[:engine]
        type
      end
    end

    module UpdateActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateActionStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.user_id = params[:user_id]
        type.user_name = params[:user_name]
        type.status = params[:status]
        type.engine = params[:engine]
        type.minimum_engine_version = params[:minimum_engine_version]
        type.access_string = params[:access_string]
        type.user_group_ids = UserGroupIdList.build(params[:user_group_ids], context: "#{context}[:user_group_ids]") unless params[:user_group_ids].nil?
        type.authentication = Authentication.build(params[:authentication], context: "#{context}[:authentication]") unless params[:authentication].nil?
        type.arn = params[:arn]
        type
      end
    end

    module UserAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserAlreadyExistsFault, context: context)
        type = Types::UserAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module UserGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserGroup, context: context)
        type = Types::UserGroup.new
        type.user_group_id = params[:user_group_id]
        type.status = params[:status]
        type.engine = params[:engine]
        type.user_ids = UserIdList.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.minimum_engine_version = params[:minimum_engine_version]
        type.pending_changes = UserGroupPendingChanges.build(params[:pending_changes], context: "#{context}[:pending_changes]") unless params[:pending_changes].nil?
        type.replication_groups = UGReplicationGroupIdList.build(params[:replication_groups], context: "#{context}[:replication_groups]") unless params[:replication_groups].nil?
        type.arn = params[:arn]
        type
      end
    end

    module UserGroupAlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserGroupAlreadyExistsFault, context: context)
        type = Types::UserGroupAlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module UserGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserGroupIdListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserGroupNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserGroupNotFoundFault, context: context)
        type = Types::UserGroupNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module UserGroupPendingChanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserGroupPendingChanges, context: context)
        type = Types::UserGroupPendingChanges.new
        type.user_ids_to_remove = UserIdList.build(params[:user_ids_to_remove], context: "#{context}[:user_ids_to_remove]") unless params[:user_ids_to_remove].nil?
        type.user_ids_to_add = UserIdList.build(params[:user_ids_to_add], context: "#{context}[:user_ids_to_add]") unless params[:user_ids_to_add].nil?
        type
      end
    end

    module UserGroupQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserGroupQuotaExceededFault, context: context)
        type = Types::UserGroupQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module UserGroupsUpdateStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserGroupsUpdateStatus, context: context)
        type = Types::UserGroupsUpdateStatus.new
        type.user_group_ids_to_add = UserGroupIdList.build(params[:user_group_ids_to_add], context: "#{context}[:user_group_ids_to_add]") unless params[:user_group_ids_to_add].nil?
        type.user_group_ids_to_remove = UserGroupIdList.build(params[:user_group_ids_to_remove], context: "#{context}[:user_group_ids_to_remove]") unless params[:user_group_ids_to_remove].nil?
        type
      end
    end

    module UserIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserIdListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserNotFoundFault, context: context)
        type = Types::UserNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module UserQuotaExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserQuotaExceededFault, context: context)
        type = Types::UserQuotaExceededFault.new
        type.message = params[:message]
        type
      end
    end

  end
end
