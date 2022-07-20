# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Drs
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class Account
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Account, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class AccountIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Accounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Account.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CPU
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CPU, context: context)
        Hearth::Validator.validate!(input[:cores], ::Integer, context: "#{context}[:cores]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
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

    class ConversionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ConversionProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConversionProperties, context: context)
        VolumeToConversionMap.validate!(input[:volume_to_conversion_map], context: "#{context}[:volume_to_conversion_map]") unless input[:volume_to_conversion_map].nil?
        Hearth::Validator.validate!(input[:root_volume_name], ::String, context: "#{context}[:root_volume_name]")
        Hearth::Validator.validate!(input[:force_uefi], ::TrueClass, ::FalseClass, context: "#{context}[:force_uefi]")
        Hearth::Validator.validate!(input[:data_timestamp], ::String, context: "#{context}[:data_timestamp]")
        VolumeToSizeMap.validate!(input[:volume_to_volume_size], context: "#{context}[:volume_to_volume_size]") unless input[:volume_to_volume_size].nil?
      end
    end

    class Cpus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CPU.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateExtendedSourceServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExtendedSourceServerInput, context: context)
        Hearth::Validator.validate!(input[:source_server_arn], ::String, context: "#{context}[:source_server_arn]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateExtendedSourceServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExtendedSourceServerOutput, context: context)
        SourceServer.validate!(input[:source_server], context: "#{context}[:source_server]") unless input[:source_server].nil?
      end
    end

    class CreateReplicationConfigurationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationConfigurationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        PITPolicy.validate!(input[:pit_policy], context: "#{context}[:pit_policy]") unless input[:pit_policy].nil?
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateReplicationConfigurationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationConfigurationTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:replication_configuration_template_id], ::String, context: "#{context}[:replication_configuration_template_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        PITPolicy.validate!(input[:pit_policy], context: "#{context}[:pit_policy]") unless input[:pit_policy].nil?
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
        DataReplicationInfoReplicatedDisks.validate!(input[:replicated_disks], context: "#{context}[:replicated_disks]") unless input[:replicated_disks].nil?
        Hearth::Validator.validate!(input[:data_replication_state], ::String, context: "#{context}[:data_replication_state]")
        DataReplicationInitiation.validate!(input[:data_replication_initiation], context: "#{context}[:data_replication_initiation]") unless input[:data_replication_initiation].nil?
        DataReplicationError.validate!(input[:data_replication_error], context: "#{context}[:data_replication_error]") unless input[:data_replication_error].nil?
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
          DataReplicationInfoReplicatedDisk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataReplicationInitiation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataReplicationInitiation, context: context)
        Hearth::Validator.validate!(input[:start_date_time], ::String, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:next_attempt_date_time], ::String, context: "#{context}[:next_attempt_date_time]")
        DataReplicationInitiationSteps.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
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
          DataReplicationInitiationStep.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class DeleteRecoveryInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecoveryInstanceInput, context: context)
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
      end
    end

    class DeleteRecoveryInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecoveryInstanceOutput, context: context)
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
        JobLogs.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobsInput, context: context)
        DescribeJobsRequestFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobsOutput, context: context)
        JobsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobsRequestFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobsRequestFilters, context: context)
        DescribeJobsRequestFiltersJobIDs.validate!(input[:job_i_ds], context: "#{context}[:job_i_ds]") unless input[:job_i_ds].nil?
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

    class DescribeRecoveryInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecoveryInstancesInput, context: context)
        DescribeRecoveryInstancesRequestFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRecoveryInstancesItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecoveryInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeRecoveryInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecoveryInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        DescribeRecoveryInstancesItems.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class DescribeRecoveryInstancesRequestFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecoveryInstancesRequestFilters, context: context)
        RecoveryInstanceIDs.validate!(input[:recovery_instance_i_ds], context: "#{context}[:recovery_instance_i_ds]") unless input[:recovery_instance_i_ds].nil?
        SourceServerIDs.validate!(input[:source_server_i_ds], context: "#{context}[:source_server_i_ds]") unless input[:source_server_i_ds].nil?
      end
    end

    class DescribeRecoverySnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecoverySnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        DescribeRecoverySnapshotsRequestFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRecoverySnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecoverySnapshotsOutput, context: context)
        RecoverySnapshotsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRecoverySnapshotsRequestFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecoverySnapshotsRequestFilters, context: context)
        Hearth::Validator.validate!(input[:from_date_time], ::String, context: "#{context}[:from_date_time]")
        Hearth::Validator.validate!(input[:to_date_time], ::String, context: "#{context}[:to_date_time]")
      end
    end

    class DescribeReplicationConfigurationTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationConfigurationTemplatesInput, context: context)
        ReplicationConfigurationTemplateIDs.validate!(input[:replication_configuration_template_i_ds], context: "#{context}[:replication_configuration_template_i_ds]") unless input[:replication_configuration_template_i_ds].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeReplicationConfigurationTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationConfigurationTemplatesOutput, context: context)
        ReplicationConfigurationTemplates.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSourceServersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSourceServersInput, context: context)
        DescribeSourceServersRequestFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSourceServersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSourceServersOutput, context: context)
        SourceServersList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSourceServersRequestFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSourceServersRequestFilters, context: context)
        DescribeSourceServersRequestFiltersIDs.validate!(input[:source_server_i_ds], context: "#{context}[:source_server_i_ds]") unless input[:source_server_i_ds].nil?
        Hearth::Validator.validate!(input[:hardware_id], ::String, context: "#{context}[:hardware_id]")
        AccountIDs.validate!(input[:staging_account_i_ds], context: "#{context}[:staging_account_i_ds]") unless input[:staging_account_i_ds].nil?
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

    class DisconnectRecoveryInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectRecoveryInstanceInput, context: context)
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
      end
    end

    class DisconnectRecoveryInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectRecoveryInstanceOutput, context: context)
      end
    end

    class DisconnectSourceServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectSourceServerInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
      end
    end

    class DisconnectSourceServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectSourceServerOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
        Hearth::Validator.validate!(input[:last_launch_result], ::String, context: "#{context}[:last_launch_result]")
        DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        StagingArea.validate!(input[:staging_area], context: "#{context}[:staging_area]") unless input[:staging_area].nil?
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
          Disk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EbsSnapshotsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetFailbackReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFailbackReplicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
      end
    end

    class GetFailbackReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFailbackReplicationConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:use_private_ip], ::TrueClass, ::FalseClass, context: "#{context}[:use_private_ip]")
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
        Licensing.validate!(input[:licensing], context: "#{context}[:licensing]") unless input[:licensing].nil?
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
        ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        ReplicationConfigurationReplicatedDisks.validate!(input[:replicated_disks], context: "#{context}[:replicated_disks]") unless input[:replicated_disks].nil?
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        PITPolicy.validate!(input[:pit_policy], context: "#{context}[:pit_policy]") unless input[:pit_policy].nil?
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
        ParticipatingServers.validate!(input[:participating_servers], context: "#{context}[:participating_servers]") unless input[:participating_servers].nil?
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class JobLog
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobLog, context: context)
        Hearth::Validator.validate!(input[:log_date_time], ::String, context: "#{context}[:log_date_time]")
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        JobLogEventData.validate!(input[:event_data], context: "#{context}[:event_data]") unless input[:event_data].nil?
      end
    end

    class JobLogEventData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobLogEventData, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:conversion_server_id], ::String, context: "#{context}[:conversion_server_id]")
        Hearth::Validator.validate!(input[:target_instance_id], ::String, context: "#{context}[:target_instance_id]")
        Hearth::Validator.validate!(input[:raw_error], ::String, context: "#{context}[:raw_error]")
        ConversionProperties.validate!(input[:conversion_properties], context: "#{context}[:conversion_properties]") unless input[:conversion_properties].nil?
      end
    end

    class JobLogs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobLog.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Job.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
        LifeCycleLastLaunch.validate!(input[:last_launch], context: "#{context}[:last_launch]") unless input[:last_launch].nil?
      end
    end

    class LifeCycleLastLaunch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycleLastLaunch, context: context)
        LifeCycleLastLaunchInitiated.validate!(input[:initiated], context: "#{context}[:initiated]") unless input[:initiated].nil?
      end
    end

    class LifeCycleLastLaunchInitiated
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifeCycleLastLaunchInitiated, context: context)
        Hearth::Validator.validate!(input[:api_call_date_time], ::String, context: "#{context}[:api_call_date_time]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ListExtensibleSourceServersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExtensibleSourceServersInput, context: context)
        Hearth::Validator.validate!(input[:staging_account_id], ::String, context: "#{context}[:staging_account_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExtensibleSourceServersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExtensibleSourceServersOutput, context: context)
        StagingSourceServersList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStagingAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStagingAccountsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStagingAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStagingAccountsOutput, context: context)
        Accounts.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
        IPsList.validate!(input[:ips], context: "#{context}[:ips]") unless input[:ips].nil?
        Hearth::Validator.validate!(input[:is_primary], ::TrueClass, ::FalseClass, context: "#{context}[:is_primary]")
      end
    end

    class NetworkInterfaces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OS
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OS, context: context)
        Hearth::Validator.validate!(input[:full_string], ::String, context: "#{context}[:full_string]")
      end
    end

    class PITPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PITPolicyRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PITPolicyRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PITPolicyRule, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::Integer, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:units], ::String, context: "#{context}[:units]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:retention_duration], ::Integer, context: "#{context}[:retention_duration]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class ParticipatingServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParticipatingServer, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
        Hearth::Validator.validate!(input[:launch_status], ::String, context: "#{context}[:launch_status]")
      end
    end

    class ParticipatingServers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParticipatingServer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecoveryInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryInstance, context: context)
        Hearth::Validator.validate!(input[:ec2_instance_id], ::String, context: "#{context}[:ec2_instance_id]")
        Hearth::Validator.validate!(input[:ec2_instance_state], ::String, context: "#{context}[:ec2_instance_state]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        RecoveryInstanceFailback.validate!(input[:failback], context: "#{context}[:failback]") unless input[:failback].nil?
        RecoveryInstanceDataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        RecoveryInstanceProperties.validate!(input[:recovery_instance_properties], context: "#{context}[:recovery_instance_properties]") unless input[:recovery_instance_properties].nil?
        Hearth::Validator.validate!(input[:point_in_time_snapshot_date_time], ::String, context: "#{context}[:point_in_time_snapshot_date_time]")
        Hearth::Validator.validate!(input[:is_drill], ::TrueClass, ::FalseClass, context: "#{context}[:is_drill]")
      end
    end

    class RecoveryInstanceDataReplicationError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryInstanceDataReplicationError, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:raw_error], ::String, context: "#{context}[:raw_error]")
      end
    end

    class RecoveryInstanceDataReplicationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryInstanceDataReplicationInfo, context: context)
        Hearth::Validator.validate!(input[:lag_duration], ::String, context: "#{context}[:lag_duration]")
        Hearth::Validator.validate!(input[:eta_date_time], ::String, context: "#{context}[:eta_date_time]")
        RecoveryInstanceDataReplicationInfoReplicatedDisks.validate!(input[:replicated_disks], context: "#{context}[:replicated_disks]") unless input[:replicated_disks].nil?
        Hearth::Validator.validate!(input[:data_replication_state], ::String, context: "#{context}[:data_replication_state]")
        RecoveryInstanceDataReplicationInitiation.validate!(input[:data_replication_initiation], context: "#{context}[:data_replication_initiation]") unless input[:data_replication_initiation].nil?
        RecoveryInstanceDataReplicationError.validate!(input[:data_replication_error], context: "#{context}[:data_replication_error]") unless input[:data_replication_error].nil?
      end
    end

    class RecoveryInstanceDataReplicationInfoReplicatedDisk
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryInstanceDataReplicationInfoReplicatedDisk, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:total_storage_bytes], ::Integer, context: "#{context}[:total_storage_bytes]")
        Hearth::Validator.validate!(input[:replicated_storage_bytes], ::Integer, context: "#{context}[:replicated_storage_bytes]")
        Hearth::Validator.validate!(input[:rescanned_storage_bytes], ::Integer, context: "#{context}[:rescanned_storage_bytes]")
        Hearth::Validator.validate!(input[:backlogged_storage_bytes], ::Integer, context: "#{context}[:backlogged_storage_bytes]")
      end
    end

    class RecoveryInstanceDataReplicationInfoReplicatedDisks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecoveryInstanceDataReplicationInfoReplicatedDisk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecoveryInstanceDataReplicationInitiation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryInstanceDataReplicationInitiation, context: context)
        Hearth::Validator.validate!(input[:start_date_time], ::String, context: "#{context}[:start_date_time]")
        RecoveryInstanceDataReplicationInitiationSteps.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
      end
    end

    class RecoveryInstanceDataReplicationInitiationStep
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryInstanceDataReplicationInitiationStep, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class RecoveryInstanceDataReplicationInitiationSteps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecoveryInstanceDataReplicationInitiationStep.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecoveryInstanceDisk
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryInstanceDisk, context: context)
        Hearth::Validator.validate!(input[:internal_device_name], ::String, context: "#{context}[:internal_device_name]")
        Hearth::Validator.validate!(input[:bytes], ::Integer, context: "#{context}[:bytes]")
        Hearth::Validator.validate!(input[:ebs_volume_id], ::String, context: "#{context}[:ebs_volume_id]")
      end
    end

    class RecoveryInstanceDisks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecoveryInstanceDisk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecoveryInstanceFailback
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryInstanceFailback, context: context)
        Hearth::Validator.validate!(input[:failback_client_id], ::String, context: "#{context}[:failback_client_id]")
        Hearth::Validator.validate!(input[:failback_job_id], ::String, context: "#{context}[:failback_job_id]")
        Hearth::Validator.validate!(input[:failback_initiation_time], ::String, context: "#{context}[:failback_initiation_time]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:agent_last_seen_by_service_date_time], ::String, context: "#{context}[:agent_last_seen_by_service_date_time]")
        Hearth::Validator.validate!(input[:failback_client_last_seen_by_service_date_time], ::String, context: "#{context}[:failback_client_last_seen_by_service_date_time]")
        Hearth::Validator.validate!(input[:failback_to_original_server], ::TrueClass, ::FalseClass, context: "#{context}[:failback_to_original_server]")
        Hearth::Validator.validate!(input[:first_byte_date_time], ::String, context: "#{context}[:first_byte_date_time]")
        Hearth::Validator.validate!(input[:elapsed_replication_duration], ::String, context: "#{context}[:elapsed_replication_duration]")
      end
    end

    class RecoveryInstanceIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecoveryInstanceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryInstanceProperties, context: context)
        Hearth::Validator.validate!(input[:last_updated_date_time], ::String, context: "#{context}[:last_updated_date_time]")
        IdentificationHints.validate!(input[:identification_hints], context: "#{context}[:identification_hints]") unless input[:identification_hints].nil?
        NetworkInterfaces.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        RecoveryInstanceDisks.validate!(input[:disks], context: "#{context}[:disks]") unless input[:disks].nil?
        Cpus.validate!(input[:cpus], context: "#{context}[:cpus]") unless input[:cpus].nil?
        Hearth::Validator.validate!(input[:ram_bytes], ::Integer, context: "#{context}[:ram_bytes]")
        OS.validate!(input[:os], context: "#{context}[:os]") unless input[:os].nil?
      end
    end

    class RecoveryInstancesForTerminationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecoverySnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoverySnapshot, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:expected_timestamp], ::String, context: "#{context}[:expected_timestamp]")
        Hearth::Validator.validate!(input[:timestamp], ::String, context: "#{context}[:timestamp]")
        EbsSnapshotsList.validate!(input[:ebs_snapshots], context: "#{context}[:ebs_snapshots]") unless input[:ebs_snapshots].nil?
      end
    end

    class RecoverySnapshotsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecoverySnapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
          ReplicationConfigurationReplicatedDisk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        PITPolicy.validate!(input[:pit_policy], context: "#{context}[:pit_policy]") unless input[:pit_policy].nil?
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
          ReplicationConfigurationTemplate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
        Hearth::Validator.validate!(input[:last_launch_result], ::String, context: "#{context}[:last_launch_result]")
        DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        StagingArea.validate!(input[:staging_area], context: "#{context}[:staging_area]") unless input[:staging_area].nil?
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
      end
    end

    class SourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceProperties, context: context)
        Hearth::Validator.validate!(input[:last_updated_date_time], ::String, context: "#{context}[:last_updated_date_time]")
        Hearth::Validator.validate!(input[:recommended_instance_type], ::String, context: "#{context}[:recommended_instance_type]")
        IdentificationHints.validate!(input[:identification_hints], context: "#{context}[:identification_hints]") unless input[:identification_hints].nil?
        NetworkInterfaces.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Disks.validate!(input[:disks], context: "#{context}[:disks]") unless input[:disks].nil?
        Cpus.validate!(input[:cpus], context: "#{context}[:cpus]") unless input[:cpus].nil?
        Hearth::Validator.validate!(input[:ram_bytes], ::Integer, context: "#{context}[:ram_bytes]")
        OS.validate!(input[:os], context: "#{context}[:os]") unless input[:os].nil?
      end
    end

    class SourceServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceServer, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
        Hearth::Validator.validate!(input[:last_launch_result], ::String, context: "#{context}[:last_launch_result]")
        DataReplicationInfo.validate!(input[:data_replication_info], context: "#{context}[:data_replication_info]") unless input[:data_replication_info].nil?
        LifeCycle.validate!(input[:life_cycle], context: "#{context}[:life_cycle]") unless input[:life_cycle].nil?
        SourceProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        StagingArea.validate!(input[:staging_area], context: "#{context}[:staging_area]") unless input[:staging_area].nil?
      end
    end

    class SourceServerIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SourceServersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SourceServer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StagingArea
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StagingArea, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:staging_account_id], ::String, context: "#{context}[:staging_account_id]")
        Hearth::Validator.validate!(input[:staging_source_server_arn], ::String, context: "#{context}[:staging_source_server_arn]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class StagingSourceServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StagingSourceServer, context: context)
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StagingSourceServersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StagingSourceServer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartFailbackLaunchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFailbackLaunchInput, context: context)
        StartFailbackRequestRecoveryInstanceIDs.validate!(input[:recovery_instance_i_ds], context: "#{context}[:recovery_instance_i_ds]") unless input[:recovery_instance_i_ds].nil?
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartFailbackLaunchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFailbackLaunchOutput, context: context)
        Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class StartFailbackRequestRecoveryInstanceIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartRecoveryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRecoveryInput, context: context)
        StartRecoveryRequestSourceServers.validate!(input[:source_servers], context: "#{context}[:source_servers]") unless input[:source_servers].nil?
        Hearth::Validator.validate!(input[:is_drill], ::TrueClass, ::FalseClass, context: "#{context}[:is_drill]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartRecoveryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRecoveryOutput, context: context)
        Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class StartRecoveryRequestSourceServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRecoveryRequestSourceServer, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:recovery_snapshot_id], ::String, context: "#{context}[:recovery_snapshot_id]")
      end
    end

    class StartRecoveryRequestSourceServers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StartRecoveryRequestSourceServer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StopFailbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopFailbackInput, context: context)
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
      end
    end

    class StopFailbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopFailbackOutput, context: context)
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
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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

    class TerminateRecoveryInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateRecoveryInstancesInput, context: context)
        RecoveryInstancesForTerminationRequest.validate!(input[:recovery_instance_i_ds], context: "#{context}[:recovery_instance_i_ds]") unless input[:recovery_instance_i_ds].nil?
      end
    end

    class TerminateRecoveryInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateRecoveryInstancesOutput, context: context)
        Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
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
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateFailbackReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFailbackReplicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:recovery_instance_id], ::String, context: "#{context}[:recovery_instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:use_private_ip], ::TrueClass, ::FalseClass, context: "#{context}[:use_private_ip]")
      end
    end

    class UpdateFailbackReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFailbackReplicationConfigurationOutput, context: context)
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
        Licensing.validate!(input[:licensing], context: "#{context}[:licensing]") unless input[:licensing].nil?
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
        Licensing.validate!(input[:licensing], context: "#{context}[:licensing]") unless input[:licensing].nil?
      end
    end

    class UpdateReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        ReplicationConfigurationReplicatedDisks.validate!(input[:replicated_disks], context: "#{context}[:replicated_disks]") unless input[:replicated_disks].nil?
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        PITPolicy.validate!(input[:pit_policy], context: "#{context}[:pit_policy]") unless input[:pit_policy].nil?
      end
    end

    class UpdateReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        ReplicationConfigurationReplicatedDisks.validate!(input[:replicated_disks], context: "#{context}[:replicated_disks]") unless input[:replicated_disks].nil?
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        PITPolicy.validate!(input[:pit_policy], context: "#{context}[:pit_policy]") unless input[:pit_policy].nil?
      end
    end

    class UpdateReplicationConfigurationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationConfigurationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:replication_configuration_template_id], ::String, context: "#{context}[:replication_configuration_template_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        PITPolicy.validate!(input[:pit_policy], context: "#{context}[:pit_policy]") unless input[:pit_policy].nil?
      end
    end

    class UpdateReplicationConfigurationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationConfigurationTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:replication_configuration_template_id], ::String, context: "#{context}[:replication_configuration_template_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:staging_area_subnet_id], ::String, context: "#{context}[:staging_area_subnet_id]")
        Hearth::Validator.validate!(input[:associate_default_security_group], ::TrueClass, ::FalseClass, context: "#{context}[:associate_default_security_group]")
        ReplicationServersSecurityGroupsIDs.validate!(input[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless input[:replication_servers_security_groups_i_ds].nil?
        Hearth::Validator.validate!(input[:replication_server_instance_type], ::String, context: "#{context}[:replication_server_instance_type]")
        Hearth::Validator.validate!(input[:use_dedicated_replication_server], ::TrueClass, ::FalseClass, context: "#{context}[:use_dedicated_replication_server]")
        Hearth::Validator.validate!(input[:default_large_staging_disk_type], ::String, context: "#{context}[:default_large_staging_disk_type]")
        Hearth::Validator.validate!(input[:ebs_encryption], ::String, context: "#{context}[:ebs_encryption]")
        Hearth::Validator.validate!(input[:ebs_encryption_key_arn], ::String, context: "#{context}[:ebs_encryption_key_arn]")
        Hearth::Validator.validate!(input[:bandwidth_throttling], ::Integer, context: "#{context}[:bandwidth_throttling]")
        Hearth::Validator.validate!(input[:data_plane_routing], ::String, context: "#{context}[:data_plane_routing]")
        Hearth::Validator.validate!(input[:create_public_ip], ::TrueClass, ::FalseClass, context: "#{context}[:create_public_ip]")
        TagsMap.validate!(input[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless input[:staging_area_tags].nil?
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        PITPolicy.validate!(input[:pit_policy], context: "#{context}[:pit_policy]") unless input[:pit_policy].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        ValidationExceptionFieldList.validate!(input[:field_list], context: "#{context}[:field_list]") unless input[:field_list].nil?
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
          ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VolumeToConversionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ConversionMap.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class VolumeToSizeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
