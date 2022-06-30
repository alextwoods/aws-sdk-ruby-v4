# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Mgn
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class CPU
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CPU, context: context)
        Hearth::Validator.validate!(input[:cores], ::Integer, context: "#{context}[:cores]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
      end
    end

    class ChangeServerLifeCycleStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeServerLifeCycleStateInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Validators::ChangeServerLifeCycleStateSourceServerLifecycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
      end
    end

    class ChangeServerLifeCycleStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeServerLifeCycleStateOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LaunchedInstance.validate!(input[:launched_instance], context: "#{context}[:launched_instance]") unless input[:launched_instance].nil?
        Validators::DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        Validators::LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        Validators::SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        Hearth::Validator.validate!(input[:replication_type], ::String, context: "#{context}[:replication_type]")
        Hearth::Validator.validate!(input[:vcenter_client_id], ::String, context: "#{context}[:vcenter_client_id]")
      end
    end

    class ChangeServerLifeCycleStateSourceServerLifecycle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeServerLifeCycleStateSourceServerLifecycle, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class Cpus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CPU.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateReplicationConfigurationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationConfigurationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        Validators::ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        Validators::TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateReplicationConfigurationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationConfigurationTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:replication_configuration_template_id], ::String, context: "#{context}[:replication_configuration_template_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        Validators::ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        Validators::TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DataReplicationError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataReplicationError, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:raw_error], ::String, context: "#{context}[:raw_error]")
      end
    end

    class DataReplicationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataReplicationInfo, context: context)
        Hearth::Validator.validate!(input[:lag_duration], ::String, context: "#{context}[:lag_duration]")
        Hearth::Validator.validate!(input[:eta_date_time], ::String, context: "#{context}[:eta_date_time]")
        Validators::DataReplicationInfoReplicatedDisks.validate!(input[:replicated_disks], context: "#{context}[:replicated_disks]") unless input[:replicated_disks].nil?
        Hearth::Validator.validate!(input[:data_replication_state], ::String, context: "#{context}[:data_replication_state]")
        Validators::DataReplicationInitiation.validate!(input[:data_replication_initiation], context: "#{context}[:data_replication_initiation]") unless input[:data_replication_initiation].nil?
        Validators::DataReplicationError.validate!(input[:data_replication_error], context: "#{context}[:data_replication_error]") unless input[:data_replication_error].nil?
        Hearth::Validator.validate!(input[:last_snapshot_date_time], ::String, context: "#{context}[:last_snapshot_date_time]")
      end
    end

    class DataReplicationInfoReplicatedDisk
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataReplicationInfoReplicatedDisk, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:total_storage_bytes], ::Integer, context: "#{context}[:total_storage_bytes]")
        Hearth::Validator.validate!(input[:replicated_storage_bytes], ::Integer, context: "#{context}[:replicated_storage_bytes]")
        Hearth::Validator.validate!(input[:rescanned_storage_bytes], ::Integer, context: "#{context}[:rescanned_storage_bytes]")
        Hearth::Validator.validate!(input[:backlogged_storage_bytes], ::Integer, context: "#{context}[:backlogged_storage_bytes]")
      end
    end

    class DataReplicationInfoReplicatedDisks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataReplicationInfoReplicatedDisk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataReplicationInitiation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataReplicationInitiation, context: context)
        Hearth::Validator.validate!(input[:start_date_time], ::String, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:next_attempt_date_time], ::String, context: "#{context}[:next_attempt_date_time]")
        Validators::DataReplicationInitiationSteps.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
      end
    end

    class DataReplicationInitiationStep
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataReplicationInitiationStep, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DataReplicationInitiationSteps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataReplicationInitiationStep.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DeleteJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobOutput, context: context)
      end
    end

    class DeleteReplicationConfigurationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationConfigurationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:replication_configuration_template_id], ::String, context: "#{context}[:replication_configuration_template_id]")
      end
    end

    class DeleteReplicationConfigurationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationConfigurationTemplateOutput, context: context)
      end
    end

    class DeleteSourceServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSourceServerInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
      end
    end

    class DeleteSourceServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSourceServerOutput, context: context)
      end
    end

    class DeleteVcenterClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVcenterClientInput, context: context)
        Hearth::Validator.validate!(input[:vcenter_client_id], ::String, context: "#{context}[:vcenter_client_id]")
      end
    end

    class DeleteVcenterClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVcenterClientOutput, context: context)
      end
    end

    class DescribeJobLogItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobLogItemsInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobLogItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobLogItemsOutput, context: context)
        Validators::JobLogs.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobsInput, context: context)
        Validators::DescribeJobsRequestFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobsOutput, context: context)
        Validators::JobsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobsRequestFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobsRequestFilters, context: context)
        Validators::DescribeJobsRequestFiltersJobIDs.validate!(input[:job_i_ds], context: "#{context}[:job_i_ds]") unless input[:job_i_ds].nil?
        Hearth::Validator.validate!(input[:from_date], ::String, context: "#{context}[:from_date]")
        Hearth::Validator.validate!(input[:to_date], ::String, context: "#{context}[:to_date]")
      end
    end

    class DescribeJobsRequestFiltersJobIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DescribeReplicationConfigurationTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationConfigurationTemplatesInput, context: context)
        Validators::ReplicationConfigurationTemplateIDs.validate!(input[:replication_configuration_template_i_ds], context: "#{context}[:replication_configuration_template_i_ds]") unless input[:replication_configuration_template_i_ds].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeReplicationConfigurationTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationConfigurationTemplatesOutput, context: context)
        Validators::ReplicationConfigurationTemplates.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSourceServersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSourceServersInput, context: context)
        Validators::DescribeSourceServersRequestFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSourceServersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSourceServersOutput, context: context)
        Validators::SourceServersList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSourceServersRequestFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSourceServersRequestFilters, context: context)
        Validators::DescribeSourceServersRequestFiltersIDs.validate!(input[:source_server_i_ds], context: "#{context}[:source_server_i_ds]") unless input[:source_server_i_ds].nil?
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Validators::ReplicationTypes.validate!(input[:replication_types], context: "#{context}[:replication_types]") unless input[:replication_types].nil?
        Validators::LifeCycleStates.validate!(input[:life_cycle_states], context: "#{context}[:life_cycle_states]") unless input[:life_cycle_states].nil?
      end
    end

    class DescribeSourceServersRequestFiltersIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DescribeVcenterClientsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVcenterClientsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVcenterClientsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVcenterClientsOutput, context: context)
        Validators::VcenterClientList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DisconnectFromServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectFromServiceInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
      end
    end

    class DisconnectFromServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectFromServiceOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LaunchedInstance.validate!(input[:launched_instance], context: "#{context}[:launched_instance]") unless input[:launched_instance].nil?
        Validators::DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        Validators::LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        Validators::SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        Hearth::Validator.validate!(input[:replication_type], ::String, context: "#{context}[:replication_type]")
        Hearth::Validator.validate!(input[:vcenter_client_id], ::String, context: "#{context}[:vcenter_client_id]")
      end
    end

    class Disk
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Disk, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:bytes], ::Integer, context: "#{context}[:bytes]")
      end
    end

    class Disks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Disk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FinalizeCutoverInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FinalizeCutoverInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
      end
    end

    class FinalizeCutoverOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FinalizeCutoverOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LaunchedInstance.validate!(input[:launched_instance], context: "#{context}[:launched_instance]") unless input[:launched_instance].nil?
        Validators::DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        Validators::LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        Validators::SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        Hearth::Validator.validate!(input[:replication_type], ::String, context: "#{context}[:replication_type]")
        Hearth::Validator.validate!(input[:vcenter_client_id], ::String, context: "#{context}[:vcenter_client_id]")
      end
    end

    class GetLaunchConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
      end
    end

    class GetLaunchConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLaunchConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ec2_launch_template_id], ::String, context: "#{context}[:ec2_launch_template_id]")
        Hearth::Validator.validate!(input[:launch_disposition], ::String, context: "#{context}[:launch_disposition]")
        Hearth::Validator.validate!(input[:target_instance_type_right_sizing_method], ::String, context: "#{context}[:target_instance_type_right_sizing_method]")
        Hearth::Validator.validate!(input[:copy_private_ip], ::TrueClass, ::FalseClass, context: "#{context}[:copy_private_ip]")
        Hearth::Validator.validate!(input[:copy_tags], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags]")
        Validators::Licensing.validate!(input[:licensing], context: "#{context}[:licensing]") unless input[:licensing].nil?
        Hearth::Validator.validate!(input[:boot_mode], ::String, context: "#{context}[:boot_mode]")
      end
    end

    class GetReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReplicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
      end
    end

    class GetReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReplicationConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        Validators::ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Validators::ReplicationConfigurationReplicatedDisks.validate!(input[:replicated_disks], context: "#{context}[:replicated_disks]") unless input[:replicated_disks].nil?
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        Validators::TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
      end
    end

    class IPsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IdentificationHints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentificationHints, context: context)
        Hearth::Validator.validate!(input[:fqdn], ::String, context: "#{context}[:fqdn]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:vm_ware_uuid], ::String, context: "#{context}[:vm_ware_uuid]")
        Hearth::Validator.validate!(input[:aws_instance_id], ::String, context: "#{context}[:aws_instance_id]")
        Hearth::Validator.validate!(input[:vm_path], ::String, context: "#{context}[:vm_path]")
      end
    end

    class InitializeServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitializeServiceInput, context: context)
      end
    end

    class InitializeServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitializeServiceOutput, context: context)
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class Job
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Job, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:initiated_by], ::String, context: "#{context}[:initiated_by]")
        Hearth::Validator.validate!(input[:creation_date_time], ::String, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::String, context: "#{context}[:end_date_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ParticipatingServers.validate!(input[:participating_servers], context: "#{context}[:participating_servers]") unless input[:participating_servers].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class JobLog
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobLog, context: context)
        Hearth::Validator.validate!(input[:log_date_time], ::String, context: "#{context}[:log_date_time]")
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        Validators::JobLogEventData.validate!(input[:event_data], context: "#{context}[:event_data]") unless input[:event_data].nil?
      end
    end

    class JobLogEventData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobLogEventData, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:conversion_server_id], ::String, context: "#{context}[:conversion_server_id]")
        Hearth::Validator.validate!(input[:target_instance_id], ::String, context: "#{context}[:target_instance_id]")
        Hearth::Validator.validate!(input[:raw_error], ::String, context: "#{context}[:raw_error]")
      end
    end

    class JobLogs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobLog.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Job.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchedInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchedInstance, context: context)
        Hearth::Validator.validate!(input[:ec2_instance_id], ::String, context: "#{context}[:ec2_instance_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:first_boot], ::String, context: "#{context}[:first_boot]")
      end
    end

    class Licensing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Licensing, context: context)
        Hearth::Validator.validate!(input[:os_byol], ::TrueClass, ::FalseClass, context: "#{context}[:os_byol]")
      end
    end

    class LifeCycle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycle, context: context)
        Hearth::Validator.validate!(input[:added_to_service_date_time], ::String, context: "#{context}[:added_to_service_date_time]")
        Hearth::Validator.validate!(input[:first_byte_date_time], ::String, context: "#{context}[:first_byte_date_time]")
        Hearth::Validator.validate!(input[:elapsed_replication_duration], ::String, context: "#{context}[:elapsed_replication_duration]")
        Hearth::Validator.validate!(input[:last_seen_by_service_date_time], ::String, context: "#{context}[:last_seen_by_service_date_time]")
        Validators::LifeCycleLastTest.validate!(input[:last_test], context: "#{context}[:last_test]") unless input[:last_test].nil?
        Validators::LifeCycleLastCutover.validate!(input[:last_cutover], context: "#{context}[:last_cutover]") unless input[:last_cutover].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class LifeCycleLastCutover
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycleLastCutover, context: context)
        Validators::LifeCycleLastCutoverInitiated.validate!(input[:initiated], context: "#{context}[:initiated]") unless input[:initiated].nil?
        Validators::LifeCycleLastCutoverReverted.validate!(input[:reverted], context: "#{context}[:reverted]") unless input[:reverted].nil?
        Validators::LifeCycleLastCutoverFinalized.validate!(input[:finalized], context: "#{context}[:finalized]") unless input[:finalized].nil?
      end
    end

    class LifeCycleLastCutoverFinalized
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycleLastCutoverFinalized, context: context)
        Hearth::Validator.validate!(input[:api_call_date_time], ::String, context: "#{context}[:api_call_date_time]")
      end
    end

    class LifeCycleLastCutoverInitiated
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycleLastCutoverInitiated, context: context)
        Hearth::Validator.validate!(input[:api_call_date_time], ::String, context: "#{context}[:api_call_date_time]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class LifeCycleLastCutoverReverted
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycleLastCutoverReverted, context: context)
        Hearth::Validator.validate!(input[:api_call_date_time], ::String, context: "#{context}[:api_call_date_time]")
      end
    end

    class LifeCycleLastTest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycleLastTest, context: context)
        Validators::LifeCycleLastTestInitiated.validate!(input[:initiated], context: "#{context}[:initiated]") unless input[:initiated].nil?
        Validators::LifeCycleLastTestReverted.validate!(input[:reverted], context: "#{context}[:reverted]") unless input[:reverted].nil?
        Validators::LifeCycleLastTestFinalized.validate!(input[:finalized], context: "#{context}[:finalized]") unless input[:finalized].nil?
      end
    end

    class LifeCycleLastTestFinalized
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycleLastTestFinalized, context: context)
        Hearth::Validator.validate!(input[:api_call_date_time], ::String, context: "#{context}[:api_call_date_time]")
      end
    end

    class LifeCycleLastTestInitiated
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycleLastTestInitiated, context: context)
        Hearth::Validator.validate!(input[:api_call_date_time], ::String, context: "#{context}[:api_call_date_time]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class LifeCycleLastTestReverted
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycleLastTestReverted, context: context)
        Hearth::Validator.validate!(input[:api_call_date_time], ::String, context: "#{context}[:api_call_date_time]")
      end
    end

    class LifeCycleStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MarkAsArchivedInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarkAsArchivedInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
      end
    end

    class MarkAsArchivedOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarkAsArchivedOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LaunchedInstance.validate!(input[:launched_instance], context: "#{context}[:launched_instance]") unless input[:launched_instance].nil?
        Validators::DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        Validators::LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        Validators::SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        Hearth::Validator.validate!(input[:replication_type], ::String, context: "#{context}[:replication_type]")
        Hearth::Validator.validate!(input[:vcenter_client_id], ::String, context: "#{context}[:vcenter_client_id]")
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
        Validators::IPsList.validate!(input[:ips], context: "#{context}[:ips]") unless input[:ips].nil?
        Hearth::Validator.validate!(input[:is_primary], ::TrueClass, ::FalseClass, context: "#{context}[:is_primary]")
      end
    end

    class NetworkInterfaces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OS
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OS, context: context)
        Hearth::Validator.validate!(input[:full_string], ::String, context: "#{context}[:full_string]")
      end
    end

    class ParticipatingServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParticipatingServer, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:launch_status], ::String, context: "#{context}[:launch_status]")
      end
    end

    class ParticipatingServers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ParticipatingServer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationConfigurationReplicatedDisk
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationConfigurationReplicatedDisk, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:is_boot_disk], ::TrueClass, ::FalseClass, context: "#{context}[:is_boot_disk]")
        Hearth::Validator.validate!(input[:staging_disk_type], ::String, context: "#{context}[:staging_disk_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:throughput], ::Integer, context: "#{context}[:throughput]")
      end
    end

    class ReplicationConfigurationReplicatedDisks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationConfigurationReplicatedDisk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationConfigurationTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationConfigurationTemplate, context: context)
        Hearth::Validator.validate!(input[:replication_configuration_template_id], ::String, context: "#{context}[:replication_configuration_template_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        Validators::ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        Validators::TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ReplicationConfigurationTemplateIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReplicationConfigurationTemplates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationConfigurationTemplate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationServersSecurityGroupsIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReplicationTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class RetryDataReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryDataReplicationInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
      end
    end

    class RetryDataReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryDataReplicationOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LaunchedInstance.validate!(input[:launched_instance], context: "#{context}[:launched_instance]") unless input[:launched_instance].nil?
        Validators::DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        Validators::LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        Validators::SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        Hearth::Validator.validate!(input[:replication_type], ::String, context: "#{context}[:replication_type]")
        Hearth::Validator.validate!(input[:vcenter_client_id], ::String, context: "#{context}[:vcenter_client_id]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:quota_value], ::Integer, context: "#{context}[:quota_value]")
      end
    end

    class SourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceProperties, context: context)
        Hearth::Validator.validate!(input[:last_updated_date_time], ::String, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:recommended_instance_type], ::String, context: "#{context}[:recommended_instance_type]")
        Validators::IdentificationHints.validate!(input[:identification_hints], context: "#{context}[:identification_hints]") unless input[:identification_hints].nil?
        Validators::NetworkInterfaces.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Validators::Disks.validate!(input[:disks], context: "#{context}[:disks]") unless input[:disks].nil?
        Validators::Cpus.validate!(input[:cpus], context: "#{context}[:cpus]") unless input[:cpus].nil?
        Hearth::Validator.validate!(input[:ram_bytes], ::Integer, context: "#{context}[:ram_bytes]")
        Validators::OS.validate!(input[:os], context: "#{context}[:os]") unless input[:os].nil?
      end
    end

    class SourceServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceServer, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LaunchedInstance.validate!(input[:launched_instance], context: "#{context}[:launched_instance]") unless input[:launched_instance].nil?
        Validators::DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        Validators::LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        Validators::SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        Hearth::Validator.validate!(input[:replication_type], ::String, context: "#{context}[:replication_type]")
        Hearth::Validator.validate!(input[:vcenter_client_id], ::String, context: "#{context}[:vcenter_client_id]")
      end
    end

    class SourceServersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SourceServer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartCutoverInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCutoverInput, context: context)
        Validators::StartCutoverRequestSourceServerIDs.validate!(input[:source_server_i_ds], context: "#{context}[:source_server_i_ds]") unless input[:source_server_i_ds].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartCutoverOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCutoverOutput, context: context)
        Validators::Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class StartCutoverRequestSourceServerIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReplicationInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
      end
    end

    class StartReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartReplicationOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LaunchedInstance.validate!(input[:launched_instance], context: "#{context}[:launched_instance]") unless input[:launched_instance].nil?
        Validators::DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        Validators::LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        Validators::SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        Hearth::Validator.validate!(input[:replication_type], ::String, context: "#{context}[:replication_type]")
        Hearth::Validator.validate!(input[:vcenter_client_id], ::String, context: "#{context}[:vcenter_client_id]")
      end
    end

    class StartTestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTestInput, context: context)
        Validators::StartTestRequestSourceServerIDs.validate!(input[:source_server_i_ds], context: "#{context}[:source_server_i_ds]") unless input[:source_server_i_ds].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartTestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTestOutput, context: context)
        Validators::Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class StartTestRequestSourceServerIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TerminateTargetInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateTargetInstancesInput, context: context)
        Validators::TerminateTargetInstancesRequestSourceServerIDs.validate!(input[:source_server_i_ds], context: "#{context}[:source_server_i_ds]") unless input[:source_server_i_ds].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TerminateTargetInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateTargetInstancesOutput, context: context)
        Validators::Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class TerminateTargetInstancesRequestSourceServerIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
      end
    end

    class UninitializedAccountException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UninitializedAccountException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateLaunchConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLaunchConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:launch_disposition], ::String, context: "#{context}[:launch_disposition]")
        Hearth::Validator.validate!(input[:target_instance_type_right_sizing_method], ::String, context: "#{context}[:target_instance_type_right_sizing_method]")
        Hearth::Validator.validate!(input[:copy_private_ip], ::TrueClass, ::FalseClass, context: "#{context}[:copy_private_ip]")
        Hearth::Validator.validate!(input[:copy_tags], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags]")
        Validators::Licensing.validate!(input[:licensing], context: "#{context}[:licensing]") unless input[:licensing].nil?
        Hearth::Validator.validate!(input[:boot_mode], ::String, context: "#{context}[:boot_mode]")
      end
    end

    class UpdateLaunchConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLaunchConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ec2_launch_template_id], ::String, context: "#{context}[:ec2_launch_template_id]")
        Hearth::Validator.validate!(input[:launch_disposition], ::String, context: "#{context}[:launch_disposition]")
        Hearth::Validator.validate!(input[:target_instance_type_right_sizing_method], ::String, context: "#{context}[:target_instance_type_right_sizing_method]")
        Hearth::Validator.validate!(input[:copy_private_ip], ::TrueClass, ::FalseClass, context: "#{context}[:copy_private_ip]")
        Hearth::Validator.validate!(input[:copy_tags], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags]")
        Validators::Licensing.validate!(input[:licensing], context: "#{context}[:licensing]") unless input[:licensing].nil?
        Hearth::Validator.validate!(input[:boot_mode], ::String, context: "#{context}[:boot_mode]")
      end
    end

    class UpdateReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        Validators::ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Validators::ReplicationConfigurationReplicatedDisks.validate!(input[:replicated_disks], context: "#{context}[:replicated_disks]") unless input[:replicated_disks].nil?
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        Validators::TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
      end
    end

    class UpdateReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        Validators::ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Validators::ReplicationConfigurationReplicatedDisks.validate!(input[:replicated_disks], context: "#{context}[:replicated_disks]") unless input[:replicated_disks].nil?
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        Validators::TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
      end
    end

    class UpdateReplicationConfigurationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationConfigurationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:replication_configuration_template_id], ::String, context: "#{context}[:replication_configuration_template_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        Validators::ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        Validators::TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
      end
    end

    class UpdateReplicationConfigurationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationConfigurationTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:replication_configuration_template_id], ::String, context: "#{context}[:replication_configuration_template_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        Validators::ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        Validators::TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateSourceServerReplicationTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSourceServerReplicationTypeInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:replication_type], ::String, context: "#{context}[:replication_type]")
      end
    end

    class UpdateSourceServerReplicationTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSourceServerReplicationTypeOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:is_archived], ::TrueClass, ::FalseClass, context: "#{context}[:is_archived]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LaunchedInstance.validate!(input[:launched_instance], context: "#{context}[:launched_instance]") unless input[:launched_instance].nil?
        Validators::DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        Validators::LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        Validators::SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        Hearth::Validator.validate!(input[:replication_type], ::String, context: "#{context}[:replication_type]")
        Hearth::Validator.validate!(input[:vcenter_client_id], ::String, context: "#{context}[:vcenter_client_id]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:field_list], context: "#{context}[:field_list]") unless input[:field_list].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VcenterClient
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VcenterClient, context: context)
        Hearth::Validator.validate!(input[:vcenter_client_id], ::String, context: "#{context}[:vcenter_client_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:vcenter_uuid], ::String, context: "#{context}[:vcenter_uuid]")
        Hearth::Validator.validate!(input[:datacenter_name], ::String, context: "#{context}[:datacenter_name]")
        Hearth::Validator.validate!(input[:last_seen_datetime], ::String, context: "#{context}[:last_seen_datetime]")
        Validators::TagsMap.validate!(input[:source_server_tags], context: "#{context}[:source_server_tags]") unless input[:source_server_tags].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class VcenterClientList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VcenterClient.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
