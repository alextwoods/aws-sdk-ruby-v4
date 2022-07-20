# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Drs
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module Account
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Account, context: context)
        type = Types::Account.new
        type.account_id = params[:account_id]
        type
      end
    end

    module AccountIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Accounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Account.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CPU
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CPU, context: context)
        type = Types::CPU.new
        type.cores = params[:cores]
        type.model_name = params[:model_name]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.code = params[:code]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ConversionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ConversionProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConversionProperties, context: context)
        type = Types::ConversionProperties.new
        type.volume_to_conversion_map = VolumeToConversionMap.build(params[:volume_to_conversion_map], context: "#{context}[:volume_to_conversion_map]") unless params[:volume_to_conversion_map].nil?
        type.root_volume_name = params[:root_volume_name]
        type.force_uefi = params[:force_uefi]
        type.data_timestamp = params[:data_timestamp]
        type.volume_to_volume_size = VolumeToSizeMap.build(params[:volume_to_volume_size], context: "#{context}[:volume_to_volume_size]") unless params[:volume_to_volume_size].nil?
        type
      end
    end

    module Cpus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CPU.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateExtendedSourceServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExtendedSourceServerInput, context: context)
        type = Types::CreateExtendedSourceServerInput.new
        type.source_server_arn = params[:source_server_arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateExtendedSourceServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExtendedSourceServerOutput, context: context)
        type = Types::CreateExtendedSourceServerOutput.new
        type.source_server = SourceServer.build(params[:source_server], context: "#{context}[:source_server]") unless params[:source_server].nil?
        type
      end
    end

    module CreateReplicationConfigurationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationConfigurationTemplateInput, context: context)
        type = Types::CreateReplicationConfigurationTemplateInput.new
        type.staging_area_subnet_id = params[:staging_area_subnet_id]
        type.associate_default_security_group = params[:associate_default_security_group]
        type.replication_servers_security_groups_i_ds = ReplicationServersSecurityGroupsIDs.build(params[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless params[:replication_servers_security_groups_i_ds].nil?
        type.replication_server_instance_type = params[:replication_server_instance_type]
        type.use_dedicated_replication_server = params[:use_dedicated_replication_server]
        type.default_large_staging_disk_type = params[:default_large_staging_disk_type]
        type.ebs_encryption = params[:ebs_encryption]
        type.ebs_encryption_key_arn = params[:ebs_encryption_key_arn]
        type.bandwidth_throttling = params[:bandwidth_throttling]
        type.data_plane_routing = params[:data_plane_routing]
        type.create_public_ip = params[:create_public_ip]
        type.staging_area_tags = TagsMap.build(params[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless params[:staging_area_tags].nil?
        type.pit_policy = PITPolicy.build(params[:pit_policy], context: "#{context}[:pit_policy]") unless params[:pit_policy].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateReplicationConfigurationTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationConfigurationTemplateOutput, context: context)
        type = Types::CreateReplicationConfigurationTemplateOutput.new
        type.replication_configuration_template_id = params[:replication_configuration_template_id]
        type.arn = params[:arn]
        type.staging_area_subnet_id = params[:staging_area_subnet_id]
        type.associate_default_security_group = params[:associate_default_security_group]
        type.replication_servers_security_groups_i_ds = ReplicationServersSecurityGroupsIDs.build(params[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless params[:replication_servers_security_groups_i_ds].nil?
        type.replication_server_instance_type = params[:replication_server_instance_type]
        type.use_dedicated_replication_server = params[:use_dedicated_replication_server]
        type.default_large_staging_disk_type = params[:default_large_staging_disk_type]
        type.ebs_encryption = params[:ebs_encryption]
        type.ebs_encryption_key_arn = params[:ebs_encryption_key_arn]
        type.bandwidth_throttling = params[:bandwidth_throttling]
        type.data_plane_routing = params[:data_plane_routing]
        type.create_public_ip = params[:create_public_ip]
        type.staging_area_tags = TagsMap.build(params[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless params[:staging_area_tags].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.pit_policy = PITPolicy.build(params[:pit_policy], context: "#{context}[:pit_policy]") unless params[:pit_policy].nil?
        type
      end
    end

    module DataReplicationError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataReplicationError, context: context)
        type = Types::DataReplicationError.new
        type.error = params[:error]
        type.raw_error = params[:raw_error]
        type
      end
    end

    module DataReplicationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataReplicationInfo, context: context)
        type = Types::DataReplicationInfo.new
        type.lag_duration = params[:lag_duration]
        type.eta_date_time = params[:eta_date_time]
        type.replicated_disks = DataReplicationInfoReplicatedDisks.build(params[:replicated_disks], context: "#{context}[:replicated_disks]") unless params[:replicated_disks].nil?
        type.data_replication_state = params[:data_replication_state]
        type.data_replication_initiation = DataReplicationInitiation.build(params[:data_replication_initiation], context: "#{context}[:data_replication_initiation]") unless params[:data_replication_initiation].nil?
        type.data_replication_error = DataReplicationError.build(params[:data_replication_error], context: "#{context}[:data_replication_error]") unless params[:data_replication_error].nil?
        type
      end
    end

    module DataReplicationInfoReplicatedDisk
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataReplicationInfoReplicatedDisk, context: context)
        type = Types::DataReplicationInfoReplicatedDisk.new
        type.device_name = params[:device_name]
        type.total_storage_bytes = params[:total_storage_bytes]
        type.replicated_storage_bytes = params[:replicated_storage_bytes]
        type.rescanned_storage_bytes = params[:rescanned_storage_bytes]
        type.backlogged_storage_bytes = params[:backlogged_storage_bytes]
        type
      end
    end

    module DataReplicationInfoReplicatedDisks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataReplicationInfoReplicatedDisk.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataReplicationInitiation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataReplicationInitiation, context: context)
        type = Types::DataReplicationInitiation.new
        type.start_date_time = params[:start_date_time]
        type.next_attempt_date_time = params[:next_attempt_date_time]
        type.steps = DataReplicationInitiationSteps.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type
      end
    end

    module DataReplicationInitiationStep
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataReplicationInitiationStep, context: context)
        type = Types::DataReplicationInitiationStep.new
        type.name = params[:name]
        type.status = params[:status]
        type
      end
    end

    module DataReplicationInitiationSteps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataReplicationInitiationStep.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobInput, context: context)
        type = Types::DeleteJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DeleteJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobOutput, context: context)
        type = Types::DeleteJobOutput.new
        type
      end
    end

    module DeleteRecoveryInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecoveryInstanceInput, context: context)
        type = Types::DeleteRecoveryInstanceInput.new
        type.recovery_instance_id = params[:recovery_instance_id]
        type
      end
    end

    module DeleteRecoveryInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecoveryInstanceOutput, context: context)
        type = Types::DeleteRecoveryInstanceOutput.new
        type
      end
    end

    module DeleteReplicationConfigurationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationConfigurationTemplateInput, context: context)
        type = Types::DeleteReplicationConfigurationTemplateInput.new
        type.replication_configuration_template_id = params[:replication_configuration_template_id]
        type
      end
    end

    module DeleteReplicationConfigurationTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationConfigurationTemplateOutput, context: context)
        type = Types::DeleteReplicationConfigurationTemplateOutput.new
        type
      end
    end

    module DeleteSourceServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSourceServerInput, context: context)
        type = Types::DeleteSourceServerInput.new
        type.source_server_id = params[:source_server_id]
        type
      end
    end

    module DeleteSourceServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSourceServerOutput, context: context)
        type = Types::DeleteSourceServerOutput.new
        type
      end
    end

    module DescribeJobLogItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobLogItemsInput, context: context)
        type = Types::DescribeJobLogItemsInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeJobLogItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobLogItemsOutput, context: context)
        type = Types::DescribeJobLogItemsOutput.new
        type.items = JobLogs.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobsInput, context: context)
        type = Types::DescribeJobsInput.new
        type.filters = DescribeJobsRequestFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobsOutput, context: context)
        type = Types::DescribeJobsOutput.new
        type.items = JobsList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeJobsRequestFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobsRequestFilters, context: context)
        type = Types::DescribeJobsRequestFilters.new
        type.job_i_ds = DescribeJobsRequestFiltersJobIDs.build(params[:job_i_ds], context: "#{context}[:job_i_ds]") unless params[:job_i_ds].nil?
        type.from_date = params[:from_date]
        type.to_date = params[:to_date]
        type
      end
    end

    module DescribeJobsRequestFiltersJobIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DescribeRecoveryInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecoveryInstancesInput, context: context)
        type = Types::DescribeRecoveryInstancesInput.new
        type.filters = DescribeRecoveryInstancesRequestFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRecoveryInstancesItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecoveryInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeRecoveryInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecoveryInstancesOutput, context: context)
        type = Types::DescribeRecoveryInstancesOutput.new
        type.next_token = params[:next_token]
        type.items = DescribeRecoveryInstancesItems.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module DescribeRecoveryInstancesRequestFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecoveryInstancesRequestFilters, context: context)
        type = Types::DescribeRecoveryInstancesRequestFilters.new
        type.recovery_instance_i_ds = RecoveryInstanceIDs.build(params[:recovery_instance_i_ds], context: "#{context}[:recovery_instance_i_ds]") unless params[:recovery_instance_i_ds].nil?
        type.source_server_i_ds = SourceServerIDs.build(params[:source_server_i_ds], context: "#{context}[:source_server_i_ds]") unless params[:source_server_i_ds].nil?
        type
      end
    end

    module DescribeRecoverySnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecoverySnapshotsInput, context: context)
        type = Types::DescribeRecoverySnapshotsInput.new
        type.source_server_id = params[:source_server_id]
        type.filters = DescribeRecoverySnapshotsRequestFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.order = params[:order]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRecoverySnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecoverySnapshotsOutput, context: context)
        type = Types::DescribeRecoverySnapshotsOutput.new
        type.items = RecoverySnapshotsList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRecoverySnapshotsRequestFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecoverySnapshotsRequestFilters, context: context)
        type = Types::DescribeRecoverySnapshotsRequestFilters.new
        type.from_date_time = params[:from_date_time]
        type.to_date_time = params[:to_date_time]
        type
      end
    end

    module DescribeReplicationConfigurationTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationConfigurationTemplatesInput, context: context)
        type = Types::DescribeReplicationConfigurationTemplatesInput.new
        type.replication_configuration_template_i_ds = ReplicationConfigurationTemplateIDs.build(params[:replication_configuration_template_i_ds], context: "#{context}[:replication_configuration_template_i_ds]") unless params[:replication_configuration_template_i_ds].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeReplicationConfigurationTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationConfigurationTemplatesOutput, context: context)
        type = Types::DescribeReplicationConfigurationTemplatesOutput.new
        type.items = ReplicationConfigurationTemplates.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSourceServersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSourceServersInput, context: context)
        type = Types::DescribeSourceServersInput.new
        type.filters = DescribeSourceServersRequestFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSourceServersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSourceServersOutput, context: context)
        type = Types::DescribeSourceServersOutput.new
        type.items = SourceServersList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSourceServersRequestFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSourceServersRequestFilters, context: context)
        type = Types::DescribeSourceServersRequestFilters.new
        type.source_server_i_ds = DescribeSourceServersRequestFiltersIDs.build(params[:source_server_i_ds], context: "#{context}[:source_server_i_ds]") unless params[:source_server_i_ds].nil?
        type.hardware_id = params[:hardware_id]
        type.staging_account_i_ds = AccountIDs.build(params[:staging_account_i_ds], context: "#{context}[:staging_account_i_ds]") unless params[:staging_account_i_ds].nil?
        type
      end
    end

    module DescribeSourceServersRequestFiltersIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DisconnectRecoveryInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectRecoveryInstanceInput, context: context)
        type = Types::DisconnectRecoveryInstanceInput.new
        type.recovery_instance_id = params[:recovery_instance_id]
        type
      end
    end

    module DisconnectRecoveryInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectRecoveryInstanceOutput, context: context)
        type = Types::DisconnectRecoveryInstanceOutput.new
        type
      end
    end

    module DisconnectSourceServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectSourceServerInput, context: context)
        type = Types::DisconnectSourceServerInput.new
        type.source_server_id = params[:source_server_id]
        type
      end
    end

    module DisconnectSourceServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectSourceServerOutput, context: context)
        type = Types::DisconnectSourceServerOutput.new
        type.source_server_id = params[:source_server_id]
        type.arn = params[:arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.recovery_instance_id = params[:recovery_instance_id]
        type.last_launch_result = params[:last_launch_result]
        type.data_replication_info = DataReplicationInfo.build(params[:data_replication_info], context: "#{context}[:data_replication_info]") unless params[:data_replication_info].nil?
        type.life_cycle = LifeCycle.build(params[:life_cycle], context: "#{context}[:life_cycle]") unless params[:life_cycle].nil?
        type.source_properties = SourceProperties.build(params[:source_properties], context: "#{context}[:source_properties]") unless params[:source_properties].nil?
        type.staging_area = StagingArea.build(params[:staging_area], context: "#{context}[:staging_area]") unless params[:staging_area].nil?
        type
      end
    end

    module Disk
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Disk, context: context)
        type = Types::Disk.new
        type.device_name = params[:device_name]
        type.bytes = params[:bytes]
        type
      end
    end

    module Disks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Disk.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EbsSnapshotsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetFailbackReplicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFailbackReplicationConfigurationInput, context: context)
        type = Types::GetFailbackReplicationConfigurationInput.new
        type.recovery_instance_id = params[:recovery_instance_id]
        type
      end
    end

    module GetFailbackReplicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFailbackReplicationConfigurationOutput, context: context)
        type = Types::GetFailbackReplicationConfigurationOutput.new
        type.recovery_instance_id = params[:recovery_instance_id]
        type.name = params[:name]
        type.bandwidth_throttling = params[:bandwidth_throttling]
        type.use_private_ip = params[:use_private_ip]
        type
      end
    end

    module GetLaunchConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchConfigurationInput, context: context)
        type = Types::GetLaunchConfigurationInput.new
        type.source_server_id = params[:source_server_id]
        type
      end
    end

    module GetLaunchConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLaunchConfigurationOutput, context: context)
        type = Types::GetLaunchConfigurationOutput.new
        type.source_server_id = params[:source_server_id]
        type.name = params[:name]
        type.ec2_launch_template_id = params[:ec2_launch_template_id]
        type.launch_disposition = params[:launch_disposition]
        type.target_instance_type_right_sizing_method = params[:target_instance_type_right_sizing_method]
        type.copy_private_ip = params[:copy_private_ip]
        type.copy_tags = params[:copy_tags]
        type.licensing = Licensing.build(params[:licensing], context: "#{context}[:licensing]") unless params[:licensing].nil?
        type
      end
    end

    module GetReplicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReplicationConfigurationInput, context: context)
        type = Types::GetReplicationConfigurationInput.new
        type.source_server_id = params[:source_server_id]
        type
      end
    end

    module GetReplicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReplicationConfigurationOutput, context: context)
        type = Types::GetReplicationConfigurationOutput.new
        type.source_server_id = params[:source_server_id]
        type.name = params[:name]
        type.staging_area_subnet_id = params[:staging_area_subnet_id]
        type.associate_default_security_group = params[:associate_default_security_group]
        type.replication_servers_security_groups_i_ds = ReplicationServersSecurityGroupsIDs.build(params[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless params[:replication_servers_security_groups_i_ds].nil?
        type.replication_server_instance_type = params[:replication_server_instance_type]
        type.use_dedicated_replication_server = params[:use_dedicated_replication_server]
        type.default_large_staging_disk_type = params[:default_large_staging_disk_type]
        type.replicated_disks = ReplicationConfigurationReplicatedDisks.build(params[:replicated_disks], context: "#{context}[:replicated_disks]") unless params[:replicated_disks].nil?
        type.ebs_encryption = params[:ebs_encryption]
        type.ebs_encryption_key_arn = params[:ebs_encryption_key_arn]
        type.bandwidth_throttling = params[:bandwidth_throttling]
        type.data_plane_routing = params[:data_plane_routing]
        type.create_public_ip = params[:create_public_ip]
        type.staging_area_tags = TagsMap.build(params[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless params[:staging_area_tags].nil?
        type.pit_policy = PITPolicy.build(params[:pit_policy], context: "#{context}[:pit_policy]") unless params[:pit_policy].nil?
        type
      end
    end

    module IPsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IdentificationHints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentificationHints, context: context)
        type = Types::IdentificationHints.new
        type.fqdn = params[:fqdn]
        type.hostname = params[:hostname]
        type.vm_ware_uuid = params[:vm_ware_uuid]
        type.aws_instance_id = params[:aws_instance_id]
        type
      end
    end

    module InitializeServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitializeServiceInput, context: context)
        type = Types::InitializeServiceInput.new
        type
      end
    end

    module InitializeServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitializeServiceOutput, context: context)
        type = Types::InitializeServiceOutput.new
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module Job
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Job, context: context)
        type = Types::Job.new
        type.job_id = params[:job_id]
        type.arn = params[:arn]
        type.type = params[:type]
        type.initiated_by = params[:initiated_by]
        type.creation_date_time = params[:creation_date_time]
        type.end_date_time = params[:end_date_time]
        type.status = params[:status]
        type.participating_servers = ParticipatingServers.build(params[:participating_servers], context: "#{context}[:participating_servers]") unless params[:participating_servers].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module JobLog
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobLog, context: context)
        type = Types::JobLog.new
        type.log_date_time = params[:log_date_time]
        type.event = params[:event]
        type.event_data = JobLogEventData.build(params[:event_data], context: "#{context}[:event_data]") unless params[:event_data].nil?
        type
      end
    end

    module JobLogEventData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobLogEventData, context: context)
        type = Types::JobLogEventData.new
        type.source_server_id = params[:source_server_id]
        type.conversion_server_id = params[:conversion_server_id]
        type.target_instance_id = params[:target_instance_id]
        type.raw_error = params[:raw_error]
        type.conversion_properties = ConversionProperties.build(params[:conversion_properties], context: "#{context}[:conversion_properties]") unless params[:conversion_properties].nil?
        type
      end
    end

    module JobLogs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobLog.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Job.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Licensing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Licensing, context: context)
        type = Types::Licensing.new
        type.os_byol = params[:os_byol]
        type
      end
    end

    module LifeCycle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifeCycle, context: context)
        type = Types::LifeCycle.new
        type.added_to_service_date_time = params[:added_to_service_date_time]
        type.first_byte_date_time = params[:first_byte_date_time]
        type.elapsed_replication_duration = params[:elapsed_replication_duration]
        type.last_seen_by_service_date_time = params[:last_seen_by_service_date_time]
        type.last_launch = LifeCycleLastLaunch.build(params[:last_launch], context: "#{context}[:last_launch]") unless params[:last_launch].nil?
        type
      end
    end

    module LifeCycleLastLaunch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifeCycleLastLaunch, context: context)
        type = Types::LifeCycleLastLaunch.new
        type.initiated = LifeCycleLastLaunchInitiated.build(params[:initiated], context: "#{context}[:initiated]") unless params[:initiated].nil?
        type
      end
    end

    module LifeCycleLastLaunchInitiated
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifeCycleLastLaunchInitiated, context: context)
        type = Types::LifeCycleLastLaunchInitiated.new
        type.api_call_date_time = params[:api_call_date_time]
        type.job_id = params[:job_id]
        type.type = params[:type]
        type
      end
    end

    module ListExtensibleSourceServersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExtensibleSourceServersInput, context: context)
        type = Types::ListExtensibleSourceServersInput.new
        type.staging_account_id = params[:staging_account_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExtensibleSourceServersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExtensibleSourceServersOutput, context: context)
        type = Types::ListExtensibleSourceServersOutput.new
        type.items = StagingSourceServersList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStagingAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStagingAccountsInput, context: context)
        type = Types::ListStagingAccountsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStagingAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStagingAccountsOutput, context: context)
        type = Types::ListStagingAccountsOutput.new
        type.accounts = Accounts.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterface, context: context)
        type = Types::NetworkInterface.new
        type.mac_address = params[:mac_address]
        type.ips = IPsList.build(params[:ips], context: "#{context}[:ips]") unless params[:ips].nil?
        type.is_primary = params[:is_primary]
        type
      end
    end

    module NetworkInterfaces
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OS
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OS, context: context)
        type = Types::OS.new
        type.full_string = params[:full_string]
        type
      end
    end

    module PITPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PITPolicyRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PITPolicyRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PITPolicyRule, context: context)
        type = Types::PITPolicyRule.new
        type.rule_id = params[:rule_id]
        type.units = params[:units]
        type.interval = params[:interval]
        type.retention_duration = params[:retention_duration]
        type.enabled = params[:enabled]
        type
      end
    end

    module ParticipatingServer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParticipatingServer, context: context)
        type = Types::ParticipatingServer.new
        type.source_server_id = params[:source_server_id]
        type.recovery_instance_id = params[:recovery_instance_id]
        type.launch_status = params[:launch_status]
        type
      end
    end

    module ParticipatingServers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParticipatingServer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecoveryInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryInstance, context: context)
        type = Types::RecoveryInstance.new
        type.ec2_instance_id = params[:ec2_instance_id]
        type.ec2_instance_state = params[:ec2_instance_state]
        type.job_id = params[:job_id]
        type.recovery_instance_id = params[:recovery_instance_id]
        type.source_server_id = params[:source_server_id]
        type.arn = params[:arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.failback = RecoveryInstanceFailback.build(params[:failback], context: "#{context}[:failback]") unless params[:failback].nil?
        type.data_replication_info = RecoveryInstanceDataReplicationInfo.build(params[:data_replication_info], context: "#{context}[:data_replication_info]") unless params[:data_replication_info].nil?
        type.recovery_instance_properties = RecoveryInstanceProperties.build(params[:recovery_instance_properties], context: "#{context}[:recovery_instance_properties]") unless params[:recovery_instance_properties].nil?
        type.point_in_time_snapshot_date_time = params[:point_in_time_snapshot_date_time]
        type.is_drill = params[:is_drill]
        type
      end
    end

    module RecoveryInstanceDataReplicationError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryInstanceDataReplicationError, context: context)
        type = Types::RecoveryInstanceDataReplicationError.new
        type.error = params[:error]
        type.raw_error = params[:raw_error]
        type
      end
    end

    module RecoveryInstanceDataReplicationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryInstanceDataReplicationInfo, context: context)
        type = Types::RecoveryInstanceDataReplicationInfo.new
        type.lag_duration = params[:lag_duration]
        type.eta_date_time = params[:eta_date_time]
        type.replicated_disks = RecoveryInstanceDataReplicationInfoReplicatedDisks.build(params[:replicated_disks], context: "#{context}[:replicated_disks]") unless params[:replicated_disks].nil?
        type.data_replication_state = params[:data_replication_state]
        type.data_replication_initiation = RecoveryInstanceDataReplicationInitiation.build(params[:data_replication_initiation], context: "#{context}[:data_replication_initiation]") unless params[:data_replication_initiation].nil?
        type.data_replication_error = RecoveryInstanceDataReplicationError.build(params[:data_replication_error], context: "#{context}[:data_replication_error]") unless params[:data_replication_error].nil?
        type
      end
    end

    module RecoveryInstanceDataReplicationInfoReplicatedDisk
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryInstanceDataReplicationInfoReplicatedDisk, context: context)
        type = Types::RecoveryInstanceDataReplicationInfoReplicatedDisk.new
        type.device_name = params[:device_name]
        type.total_storage_bytes = params[:total_storage_bytes]
        type.replicated_storage_bytes = params[:replicated_storage_bytes]
        type.rescanned_storage_bytes = params[:rescanned_storage_bytes]
        type.backlogged_storage_bytes = params[:backlogged_storage_bytes]
        type
      end
    end

    module RecoveryInstanceDataReplicationInfoReplicatedDisks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecoveryInstanceDataReplicationInfoReplicatedDisk.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecoveryInstanceDataReplicationInitiation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryInstanceDataReplicationInitiation, context: context)
        type = Types::RecoveryInstanceDataReplicationInitiation.new
        type.start_date_time = params[:start_date_time]
        type.steps = RecoveryInstanceDataReplicationInitiationSteps.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type
      end
    end

    module RecoveryInstanceDataReplicationInitiationStep
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryInstanceDataReplicationInitiationStep, context: context)
        type = Types::RecoveryInstanceDataReplicationInitiationStep.new
        type.name = params[:name]
        type.status = params[:status]
        type
      end
    end

    module RecoveryInstanceDataReplicationInitiationSteps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecoveryInstanceDataReplicationInitiationStep.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecoveryInstanceDisk
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryInstanceDisk, context: context)
        type = Types::RecoveryInstanceDisk.new
        type.internal_device_name = params[:internal_device_name]
        type.bytes = params[:bytes]
        type.ebs_volume_id = params[:ebs_volume_id]
        type
      end
    end

    module RecoveryInstanceDisks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecoveryInstanceDisk.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecoveryInstanceFailback
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryInstanceFailback, context: context)
        type = Types::RecoveryInstanceFailback.new
        type.failback_client_id = params[:failback_client_id]
        type.failback_job_id = params[:failback_job_id]
        type.failback_initiation_time = params[:failback_initiation_time]
        type.state = params[:state]
        type.agent_last_seen_by_service_date_time = params[:agent_last_seen_by_service_date_time]
        type.failback_client_last_seen_by_service_date_time = params[:failback_client_last_seen_by_service_date_time]
        type.failback_to_original_server = params[:failback_to_original_server]
        type.first_byte_date_time = params[:first_byte_date_time]
        type.elapsed_replication_duration = params[:elapsed_replication_duration]
        type
      end
    end

    module RecoveryInstanceIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecoveryInstanceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryInstanceProperties, context: context)
        type = Types::RecoveryInstanceProperties.new
        type.last_updated_date_time = params[:last_updated_date_time]
        type.identification_hints = IdentificationHints.build(params[:identification_hints], context: "#{context}[:identification_hints]") unless params[:identification_hints].nil?
        type.network_interfaces = NetworkInterfaces.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.disks = RecoveryInstanceDisks.build(params[:disks], context: "#{context}[:disks]") unless params[:disks].nil?
        type.cpus = Cpus.build(params[:cpus], context: "#{context}[:cpus]") unless params[:cpus].nil?
        type.ram_bytes = params[:ram_bytes]
        type.os = OS.build(params[:os], context: "#{context}[:os]") unless params[:os].nil?
        type
      end
    end

    module RecoveryInstancesForTerminationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecoverySnapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoverySnapshot, context: context)
        type = Types::RecoverySnapshot.new
        type.snapshot_id = params[:snapshot_id]
        type.source_server_id = params[:source_server_id]
        type.expected_timestamp = params[:expected_timestamp]
        type.timestamp = params[:timestamp]
        type.ebs_snapshots = EbsSnapshotsList.build(params[:ebs_snapshots], context: "#{context}[:ebs_snapshots]") unless params[:ebs_snapshots].nil?
        type
      end
    end

    module RecoverySnapshotsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecoverySnapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationConfigurationReplicatedDisk
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationConfigurationReplicatedDisk, context: context)
        type = Types::ReplicationConfigurationReplicatedDisk.new
        type.device_name = params[:device_name]
        type.is_boot_disk = params[:is_boot_disk]
        type.staging_disk_type = params[:staging_disk_type]
        type.iops = params[:iops]
        type.throughput = params[:throughput]
        type
      end
    end

    module ReplicationConfigurationReplicatedDisks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationConfigurationReplicatedDisk.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationConfigurationTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationConfigurationTemplate, context: context)
        type = Types::ReplicationConfigurationTemplate.new
        type.replication_configuration_template_id = params[:replication_configuration_template_id]
        type.arn = params[:arn]
        type.staging_area_subnet_id = params[:staging_area_subnet_id]
        type.associate_default_security_group = params[:associate_default_security_group]
        type.replication_servers_security_groups_i_ds = ReplicationServersSecurityGroupsIDs.build(params[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless params[:replication_servers_security_groups_i_ds].nil?
        type.replication_server_instance_type = params[:replication_server_instance_type]
        type.use_dedicated_replication_server = params[:use_dedicated_replication_server]
        type.default_large_staging_disk_type = params[:default_large_staging_disk_type]
        type.ebs_encryption = params[:ebs_encryption]
        type.ebs_encryption_key_arn = params[:ebs_encryption_key_arn]
        type.bandwidth_throttling = params[:bandwidth_throttling]
        type.data_plane_routing = params[:data_plane_routing]
        type.create_public_ip = params[:create_public_ip]
        type.staging_area_tags = TagsMap.build(params[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless params[:staging_area_tags].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.pit_policy = PITPolicy.build(params[:pit_policy], context: "#{context}[:pit_policy]") unless params[:pit_policy].nil?
        type
      end
    end

    module ReplicationConfigurationTemplateIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReplicationConfigurationTemplates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationConfigurationTemplate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationServersSecurityGroupsIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.code = params[:code]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module RetryDataReplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryDataReplicationInput, context: context)
        type = Types::RetryDataReplicationInput.new
        type.source_server_id = params[:source_server_id]
        type
      end
    end

    module RetryDataReplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryDataReplicationOutput, context: context)
        type = Types::RetryDataReplicationOutput.new
        type.source_server_id = params[:source_server_id]
        type.arn = params[:arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.recovery_instance_id = params[:recovery_instance_id]
        type.last_launch_result = params[:last_launch_result]
        type.data_replication_info = DataReplicationInfo.build(params[:data_replication_info], context: "#{context}[:data_replication_info]") unless params[:data_replication_info].nil?
        type.life_cycle = LifeCycle.build(params[:life_cycle], context: "#{context}[:life_cycle]") unless params[:life_cycle].nil?
        type.source_properties = SourceProperties.build(params[:source_properties], context: "#{context}[:source_properties]") unless params[:source_properties].nil?
        type.staging_area = StagingArea.build(params[:staging_area], context: "#{context}[:staging_area]") unless params[:staging_area].nil?
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.code = params[:code]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type
      end
    end

    module SourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceProperties, context: context)
        type = Types::SourceProperties.new
        type.last_updated_date_time = params[:last_updated_date_time]
        type.recommended_instance_type = params[:recommended_instance_type]
        type.identification_hints = IdentificationHints.build(params[:identification_hints], context: "#{context}[:identification_hints]") unless params[:identification_hints].nil?
        type.network_interfaces = NetworkInterfaces.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.disks = Disks.build(params[:disks], context: "#{context}[:disks]") unless params[:disks].nil?
        type.cpus = Cpus.build(params[:cpus], context: "#{context}[:cpus]") unless params[:cpus].nil?
        type.ram_bytes = params[:ram_bytes]
        type.os = OS.build(params[:os], context: "#{context}[:os]") unless params[:os].nil?
        type
      end
    end

    module SourceServer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceServer, context: context)
        type = Types::SourceServer.new
        type.source_server_id = params[:source_server_id]
        type.arn = params[:arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.recovery_instance_id = params[:recovery_instance_id]
        type.last_launch_result = params[:last_launch_result]
        type.data_replication_info = DataReplicationInfo.build(params[:data_replication_info], context: "#{context}[:data_replication_info]") unless params[:data_replication_info].nil?
        type.life_cycle = LifeCycle.build(params[:life_cycle], context: "#{context}[:life_cycle]") unless params[:life_cycle].nil?
        type.source_properties = SourceProperties.build(params[:source_properties], context: "#{context}[:source_properties]") unless params[:source_properties].nil?
        type.staging_area = StagingArea.build(params[:staging_area], context: "#{context}[:staging_area]") unless params[:staging_area].nil?
        type
      end
    end

    module SourceServerIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SourceServersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceServer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StagingArea
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StagingArea, context: context)
        type = Types::StagingArea.new
        type.status = params[:status]
        type.staging_account_id = params[:staging_account_id]
        type.staging_source_server_arn = params[:staging_source_server_arn]
        type.error_message = params[:error_message]
        type
      end
    end

    module StagingSourceServer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StagingSourceServer, context: context)
        type = Types::StagingSourceServer.new
        type.hostname = params[:hostname]
        type.arn = params[:arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StagingSourceServersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StagingSourceServer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartFailbackLaunchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFailbackLaunchInput, context: context)
        type = Types::StartFailbackLaunchInput.new
        type.recovery_instance_i_ds = StartFailbackRequestRecoveryInstanceIDs.build(params[:recovery_instance_i_ds], context: "#{context}[:recovery_instance_i_ds]") unless params[:recovery_instance_i_ds].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartFailbackLaunchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFailbackLaunchOutput, context: context)
        type = Types::StartFailbackLaunchOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module StartFailbackRequestRecoveryInstanceIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartRecoveryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRecoveryInput, context: context)
        type = Types::StartRecoveryInput.new
        type.source_servers = StartRecoveryRequestSourceServers.build(params[:source_servers], context: "#{context}[:source_servers]") unless params[:source_servers].nil?
        type.is_drill = params[:is_drill]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartRecoveryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRecoveryOutput, context: context)
        type = Types::StartRecoveryOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module StartRecoveryRequestSourceServer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRecoveryRequestSourceServer, context: context)
        type = Types::StartRecoveryRequestSourceServer.new
        type.source_server_id = params[:source_server_id]
        type.recovery_snapshot_id = params[:recovery_snapshot_id]
        type
      end
    end

    module StartRecoveryRequestSourceServers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StartRecoveryRequestSourceServer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StopFailbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopFailbackInput, context: context)
        type = Types::StopFailbackInput.new
        type.recovery_instance_id = params[:recovery_instance_id]
        type
      end
    end

    module StopFailbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopFailbackOutput, context: context)
        type = Types::StopFailbackOutput.new
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TagsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TerminateRecoveryInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateRecoveryInstancesInput, context: context)
        type = Types::TerminateRecoveryInstancesInput.new
        type.recovery_instance_i_ds = RecoveryInstancesForTerminationRequest.build(params[:recovery_instance_i_ds], context: "#{context}[:recovery_instance_i_ds]") unless params[:recovery_instance_i_ds].nil?
        type
      end
    end

    module TerminateRecoveryInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateRecoveryInstancesOutput, context: context)
        type = Types::TerminateRecoveryInstancesOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module UninitializedAccountException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UninitializedAccountException, context: context)
        type = Types::UninitializedAccountException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateFailbackReplicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFailbackReplicationConfigurationInput, context: context)
        type = Types::UpdateFailbackReplicationConfigurationInput.new
        type.recovery_instance_id = params[:recovery_instance_id]
        type.name = params[:name]
        type.bandwidth_throttling = params[:bandwidth_throttling]
        type.use_private_ip = params[:use_private_ip]
        type
      end
    end

    module UpdateFailbackReplicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFailbackReplicationConfigurationOutput, context: context)
        type = Types::UpdateFailbackReplicationConfigurationOutput.new
        type
      end
    end

    module UpdateLaunchConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLaunchConfigurationInput, context: context)
        type = Types::UpdateLaunchConfigurationInput.new
        type.source_server_id = params[:source_server_id]
        type.name = params[:name]
        type.launch_disposition = params[:launch_disposition]
        type.target_instance_type_right_sizing_method = params[:target_instance_type_right_sizing_method]
        type.copy_private_ip = params[:copy_private_ip]
        type.copy_tags = params[:copy_tags]
        type.licensing = Licensing.build(params[:licensing], context: "#{context}[:licensing]") unless params[:licensing].nil?
        type
      end
    end

    module UpdateLaunchConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLaunchConfigurationOutput, context: context)
        type = Types::UpdateLaunchConfigurationOutput.new
        type.source_server_id = params[:source_server_id]
        type.name = params[:name]
        type.ec2_launch_template_id = params[:ec2_launch_template_id]
        type.launch_disposition = params[:launch_disposition]
        type.target_instance_type_right_sizing_method = params[:target_instance_type_right_sizing_method]
        type.copy_private_ip = params[:copy_private_ip]
        type.copy_tags = params[:copy_tags]
        type.licensing = Licensing.build(params[:licensing], context: "#{context}[:licensing]") unless params[:licensing].nil?
        type
      end
    end

    module UpdateReplicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReplicationConfigurationInput, context: context)
        type = Types::UpdateReplicationConfigurationInput.new
        type.source_server_id = params[:source_server_id]
        type.name = params[:name]
        type.staging_area_subnet_id = params[:staging_area_subnet_id]
        type.associate_default_security_group = params[:associate_default_security_group]
        type.replication_servers_security_groups_i_ds = ReplicationServersSecurityGroupsIDs.build(params[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless params[:replication_servers_security_groups_i_ds].nil?
        type.replication_server_instance_type = params[:replication_server_instance_type]
        type.use_dedicated_replication_server = params[:use_dedicated_replication_server]
        type.default_large_staging_disk_type = params[:default_large_staging_disk_type]
        type.replicated_disks = ReplicationConfigurationReplicatedDisks.build(params[:replicated_disks], context: "#{context}[:replicated_disks]") unless params[:replicated_disks].nil?
        type.ebs_encryption = params[:ebs_encryption]
        type.ebs_encryption_key_arn = params[:ebs_encryption_key_arn]
        type.bandwidth_throttling = params[:bandwidth_throttling]
        type.data_plane_routing = params[:data_plane_routing]
        type.create_public_ip = params[:create_public_ip]
        type.staging_area_tags = TagsMap.build(params[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless params[:staging_area_tags].nil?
        type.pit_policy = PITPolicy.build(params[:pit_policy], context: "#{context}[:pit_policy]") unless params[:pit_policy].nil?
        type
      end
    end

    module UpdateReplicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReplicationConfigurationOutput, context: context)
        type = Types::UpdateReplicationConfigurationOutput.new
        type.source_server_id = params[:source_server_id]
        type.name = params[:name]
        type.staging_area_subnet_id = params[:staging_area_subnet_id]
        type.associate_default_security_group = params[:associate_default_security_group]
        type.replication_servers_security_groups_i_ds = ReplicationServersSecurityGroupsIDs.build(params[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless params[:replication_servers_security_groups_i_ds].nil?
        type.replication_server_instance_type = params[:replication_server_instance_type]
        type.use_dedicated_replication_server = params[:use_dedicated_replication_server]
        type.default_large_staging_disk_type = params[:default_large_staging_disk_type]
        type.replicated_disks = ReplicationConfigurationReplicatedDisks.build(params[:replicated_disks], context: "#{context}[:replicated_disks]") unless params[:replicated_disks].nil?
        type.ebs_encryption = params[:ebs_encryption]
        type.ebs_encryption_key_arn = params[:ebs_encryption_key_arn]
        type.bandwidth_throttling = params[:bandwidth_throttling]
        type.data_plane_routing = params[:data_plane_routing]
        type.create_public_ip = params[:create_public_ip]
        type.staging_area_tags = TagsMap.build(params[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless params[:staging_area_tags].nil?
        type.pit_policy = PITPolicy.build(params[:pit_policy], context: "#{context}[:pit_policy]") unless params[:pit_policy].nil?
        type
      end
    end

    module UpdateReplicationConfigurationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReplicationConfigurationTemplateInput, context: context)
        type = Types::UpdateReplicationConfigurationTemplateInput.new
        type.replication_configuration_template_id = params[:replication_configuration_template_id]
        type.arn = params[:arn]
        type.staging_area_subnet_id = params[:staging_area_subnet_id]
        type.associate_default_security_group = params[:associate_default_security_group]
        type.replication_servers_security_groups_i_ds = ReplicationServersSecurityGroupsIDs.build(params[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless params[:replication_servers_security_groups_i_ds].nil?
        type.replication_server_instance_type = params[:replication_server_instance_type]
        type.use_dedicated_replication_server = params[:use_dedicated_replication_server]
        type.default_large_staging_disk_type = params[:default_large_staging_disk_type]
        type.ebs_encryption = params[:ebs_encryption]
        type.ebs_encryption_key_arn = params[:ebs_encryption_key_arn]
        type.bandwidth_throttling = params[:bandwidth_throttling]
        type.data_plane_routing = params[:data_plane_routing]
        type.create_public_ip = params[:create_public_ip]
        type.staging_area_tags = TagsMap.build(params[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless params[:staging_area_tags].nil?
        type.pit_policy = PITPolicy.build(params[:pit_policy], context: "#{context}[:pit_policy]") unless params[:pit_policy].nil?
        type
      end
    end

    module UpdateReplicationConfigurationTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReplicationConfigurationTemplateOutput, context: context)
        type = Types::UpdateReplicationConfigurationTemplateOutput.new
        type.replication_configuration_template_id = params[:replication_configuration_template_id]
        type.arn = params[:arn]
        type.staging_area_subnet_id = params[:staging_area_subnet_id]
        type.associate_default_security_group = params[:associate_default_security_group]
        type.replication_servers_security_groups_i_ds = ReplicationServersSecurityGroupsIDs.build(params[:replication_servers_security_groups_i_ds], context: "#{context}[:replication_servers_security_groups_i_ds]") unless params[:replication_servers_security_groups_i_ds].nil?
        type.replication_server_instance_type = params[:replication_server_instance_type]
        type.use_dedicated_replication_server = params[:use_dedicated_replication_server]
        type.default_large_staging_disk_type = params[:default_large_staging_disk_type]
        type.ebs_encryption = params[:ebs_encryption]
        type.ebs_encryption_key_arn = params[:ebs_encryption_key_arn]
        type.bandwidth_throttling = params[:bandwidth_throttling]
        type.data_plane_routing = params[:data_plane_routing]
        type.create_public_ip = params[:create_public_ip]
        type.staging_area_tags = TagsMap.build(params[:staging_area_tags], context: "#{context}[:staging_area_tags]") unless params[:staging_area_tags].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.pit_policy = PITPolicy.build(params[:pit_policy], context: "#{context}[:pit_policy]") unless params[:pit_policy].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.code = params[:code]
        type.reason = params[:reason]
        type.field_list = ValidationExceptionFieldList.build(params[:field_list], context: "#{context}[:field_list]") unless params[:field_list].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VolumeToConversionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ConversionMap.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module VolumeToSizeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
