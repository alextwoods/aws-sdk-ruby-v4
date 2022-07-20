# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SMS
  module Params

    module AppIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AppSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppSummary, context: context)
        type = Types::AppSummary.new
        type.app_id = params[:app_id]
        type.imported_app_id = params[:imported_app_id]
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.replication_configuration_status = params[:replication_configuration_status]
        type.replication_status = params[:replication_status]
        type.replication_status_message = params[:replication_status_message]
        type.latest_replication_time = params[:latest_replication_time]
        type.launch_configuration_status = params[:launch_configuration_status]
        type.launch_status = params[:launch_status]
        type.launch_status_message = params[:launch_status_message]
        type.launch_details = LaunchDetails.build(params[:launch_details], context: "#{context}[:launch_details]") unless params[:launch_details].nil?
        type.creation_time = params[:creation_time]
        type.last_modified = params[:last_modified]
        type.role_name = params[:role_name]
        type.total_server_groups = params[:total_server_groups]
        type.total_servers = params[:total_servers]
        type
      end
    end

    module AppValidationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppValidationConfiguration, context: context)
        type = Types::AppValidationConfiguration.new
        type.validation_id = params[:validation_id]
        type.name = params[:name]
        type.app_validation_strategy = params[:app_validation_strategy]
        type.ssm_validation_parameters = SSMValidationParameters.build(params[:ssm_validation_parameters], context: "#{context}[:ssm_validation_parameters]") unless params[:ssm_validation_parameters].nil?
        type
      end
    end

    module AppValidationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppValidationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppValidationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppValidationOutput, context: context)
        type = Types::AppValidationOutput.new
        type.ssm_output = SSMOutput.build(params[:ssm_output], context: "#{context}[:ssm_output]") unless params[:ssm_output].nil?
        type
      end
    end

    module Apps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Connector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Connector, context: context)
        type = Types::Connector.new
        type.connector_id = params[:connector_id]
        type.version = params[:version]
        type.status = params[:status]
        type.capability_list = ConnectorCapabilityList.build(params[:capability_list], context: "#{context}[:capability_list]") unless params[:capability_list].nil?
        type.vm_manager_name = params[:vm_manager_name]
        type.vm_manager_type = params[:vm_manager_type]
        type.vm_manager_id = params[:vm_manager_id]
        type.ip_address = params[:ip_address]
        type.mac_address = params[:mac_address]
        type.associated_on = params[:associated_on]
        type
      end
    end

    module ConnectorCapabilityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConnectorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Connector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInput, context: context)
        type = Types::CreateAppInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.role_name = params[:role_name]
        type.client_token = params[:client_token]
        type.server_groups = ServerGroups.build(params[:server_groups], context: "#{context}[:server_groups]") unless params[:server_groups].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppOutput, context: context)
        type = Types::CreateAppOutput.new
        type.app_summary = AppSummary.build(params[:app_summary], context: "#{context}[:app_summary]") unless params[:app_summary].nil?
        type.server_groups = ServerGroups.build(params[:server_groups], context: "#{context}[:server_groups]") unless params[:server_groups].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateReplicationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationJobInput, context: context)
        type = Types::CreateReplicationJobInput.new
        type.server_id = params[:server_id]
        type.seed_replication_time = params[:seed_replication_time]
        type.frequency = params[:frequency]
        type.run_once = params[:run_once]
        type.license_type = params[:license_type]
        type.role_name = params[:role_name]
        type.description = params[:description]
        type.number_of_recent_amis_to_keep = params[:number_of_recent_amis_to_keep]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module CreateReplicationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationJobOutput, context: context)
        type = Types::CreateReplicationJobOutput.new
        type.replication_job_id = params[:replication_job_id]
        type
      end
    end

    module DeleteAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInput, context: context)
        type = Types::DeleteAppInput.new
        type.app_id = params[:app_id]
        type.force_stop_app_replication = params[:force_stop_app_replication]
        type.force_terminate_app = params[:force_terminate_app]
        type
      end
    end

    module DeleteAppLaunchConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppLaunchConfigurationInput, context: context)
        type = Types::DeleteAppLaunchConfigurationInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module DeleteAppLaunchConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppLaunchConfigurationOutput, context: context)
        type = Types::DeleteAppLaunchConfigurationOutput.new
        type
      end
    end

    module DeleteAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppOutput, context: context)
        type = Types::DeleteAppOutput.new
        type
      end
    end

    module DeleteAppReplicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppReplicationConfigurationInput, context: context)
        type = Types::DeleteAppReplicationConfigurationInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module DeleteAppReplicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppReplicationConfigurationOutput, context: context)
        type = Types::DeleteAppReplicationConfigurationOutput.new
        type
      end
    end

    module DeleteAppValidationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppValidationConfigurationInput, context: context)
        type = Types::DeleteAppValidationConfigurationInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module DeleteAppValidationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppValidationConfigurationOutput, context: context)
        type = Types::DeleteAppValidationConfigurationOutput.new
        type
      end
    end

    module DeleteReplicationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationJobInput, context: context)
        type = Types::DeleteReplicationJobInput.new
        type.replication_job_id = params[:replication_job_id]
        type
      end
    end

    module DeleteReplicationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationJobOutput, context: context)
        type = Types::DeleteReplicationJobOutput.new
        type
      end
    end

    module DeleteServerCatalogInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServerCatalogInput, context: context)
        type = Types::DeleteServerCatalogInput.new
        type
      end
    end

    module DeleteServerCatalogOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServerCatalogOutput, context: context)
        type = Types::DeleteServerCatalogOutput.new
        type
      end
    end

    module DisassociateConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateConnectorInput, context: context)
        type = Types::DisassociateConnectorInput.new
        type.connector_id = params[:connector_id]
        type
      end
    end

    module DisassociateConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateConnectorOutput, context: context)
        type = Types::DisassociateConnectorOutput.new
        type
      end
    end

    module DryRunOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DryRunOperationException, context: context)
        type = Types::DryRunOperationException.new
        type.message = params[:message]
        type
      end
    end

    module GenerateChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateChangeSetInput, context: context)
        type = Types::GenerateChangeSetInput.new
        type.app_id = params[:app_id]
        type.changeset_format = params[:changeset_format]
        type
      end
    end

    module GenerateChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateChangeSetOutput, context: context)
        type = Types::GenerateChangeSetOutput.new
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module GenerateTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateTemplateInput, context: context)
        type = Types::GenerateTemplateInput.new
        type.app_id = params[:app_id]
        type.template_format = params[:template_format]
        type
      end
    end

    module GenerateTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateTemplateOutput, context: context)
        type = Types::GenerateTemplateOutput.new
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module GetAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppInput, context: context)
        type = Types::GetAppInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module GetAppLaunchConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppLaunchConfigurationInput, context: context)
        type = Types::GetAppLaunchConfigurationInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module GetAppLaunchConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppLaunchConfigurationOutput, context: context)
        type = Types::GetAppLaunchConfigurationOutput.new
        type.app_id = params[:app_id]
        type.role_name = params[:role_name]
        type.auto_launch = params[:auto_launch]
        type.server_group_launch_configurations = ServerGroupLaunchConfigurations.build(params[:server_group_launch_configurations], context: "#{context}[:server_group_launch_configurations]") unless params[:server_group_launch_configurations].nil?
        type
      end
    end

    module GetAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppOutput, context: context)
        type = Types::GetAppOutput.new
        type.app_summary = AppSummary.build(params[:app_summary], context: "#{context}[:app_summary]") unless params[:app_summary].nil?
        type.server_groups = ServerGroups.build(params[:server_groups], context: "#{context}[:server_groups]") unless params[:server_groups].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetAppReplicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppReplicationConfigurationInput, context: context)
        type = Types::GetAppReplicationConfigurationInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module GetAppReplicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppReplicationConfigurationOutput, context: context)
        type = Types::GetAppReplicationConfigurationOutput.new
        type.server_group_replication_configurations = ServerGroupReplicationConfigurations.build(params[:server_group_replication_configurations], context: "#{context}[:server_group_replication_configurations]") unless params[:server_group_replication_configurations].nil?
        type
      end
    end

    module GetAppValidationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppValidationConfigurationInput, context: context)
        type = Types::GetAppValidationConfigurationInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module GetAppValidationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppValidationConfigurationOutput, context: context)
        type = Types::GetAppValidationConfigurationOutput.new
        type.app_validation_configurations = AppValidationConfigurations.build(params[:app_validation_configurations], context: "#{context}[:app_validation_configurations]") unless params[:app_validation_configurations].nil?
        type.server_group_validation_configurations = ServerGroupValidationConfigurations.build(params[:server_group_validation_configurations], context: "#{context}[:server_group_validation_configurations]") unless params[:server_group_validation_configurations].nil?
        type
      end
    end

    module GetAppValidationOutputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppValidationOutputInput, context: context)
        type = Types::GetAppValidationOutputInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module GetAppValidationOutputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppValidationOutputOutput, context: context)
        type = Types::GetAppValidationOutputOutput.new
        type.validation_output_list = ValidationOutputList.build(params[:validation_output_list], context: "#{context}[:validation_output_list]") unless params[:validation_output_list].nil?
        type
      end
    end

    module GetConnectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectorsInput, context: context)
        type = Types::GetConnectorsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetConnectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectorsOutput, context: context)
        type = Types::GetConnectorsOutput.new
        type.connector_list = ConnectorList.build(params[:connector_list], context: "#{context}[:connector_list]") unless params[:connector_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetReplicationJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReplicationJobsInput, context: context)
        type = Types::GetReplicationJobsInput.new
        type.replication_job_id = params[:replication_job_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetReplicationJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReplicationJobsOutput, context: context)
        type = Types::GetReplicationJobsOutput.new
        type.replication_job_list = ReplicationJobList.build(params[:replication_job_list], context: "#{context}[:replication_job_list]") unless params[:replication_job_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetReplicationRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReplicationRunsInput, context: context)
        type = Types::GetReplicationRunsInput.new
        type.replication_job_id = params[:replication_job_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetReplicationRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReplicationRunsOutput, context: context)
        type = Types::GetReplicationRunsOutput.new
        type.replication_job = ReplicationJob.build(params[:replication_job], context: "#{context}[:replication_job]") unless params[:replication_job].nil?
        type.replication_run_list = ReplicationRunList.build(params[:replication_run_list], context: "#{context}[:replication_run_list]") unless params[:replication_run_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetServersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServersInput, context: context)
        type = Types::GetServersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.vm_server_address_list = VmServerAddressList.build(params[:vm_server_address_list], context: "#{context}[:vm_server_address_list]") unless params[:vm_server_address_list].nil?
        type
      end
    end

    module GetServersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServersOutput, context: context)
        type = Types::GetServersOutput.new
        type.last_modified_on = params[:last_modified_on]
        type.server_catalog_status = params[:server_catalog_status]
        type.server_list = ServerList.build(params[:server_list], context: "#{context}[:server_list]") unless params[:server_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ImportAppCatalogInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAppCatalogInput, context: context)
        type = Types::ImportAppCatalogInput.new
        type.role_name = params[:role_name]
        type
      end
    end

    module ImportAppCatalogOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportAppCatalogOutput, context: context)
        type = Types::ImportAppCatalogOutput.new
        type
      end
    end

    module ImportServerCatalogInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportServerCatalogInput, context: context)
        type = Types::ImportServerCatalogInput.new
        type
      end
    end

    module ImportServerCatalogOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportServerCatalogOutput, context: context)
        type = Types::ImportServerCatalogOutput.new
        type
      end
    end

    module InternalError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalError, context: context)
        type = Types::InternalError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module LaunchAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchAppInput, context: context)
        type = Types::LaunchAppInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module LaunchAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchAppOutput, context: context)
        type = Types::LaunchAppOutput.new
        type
      end
    end

    module LaunchDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchDetails, context: context)
        type = Types::LaunchDetails.new
        type.latest_launch_time = params[:latest_launch_time]
        type.stack_name = params[:stack_name]
        type.stack_id = params[:stack_id]
        type
      end
    end

    module ListAppsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppsInput, context: context)
        type = Types::ListAppsInput.new
        type.app_ids = AppIds.build(params[:app_ids], context: "#{context}[:app_ids]") unless params[:app_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAppsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppsOutput, context: context)
        type = Types::ListAppsOutput.new
        type.apps = Apps.build(params[:apps], context: "#{context}[:apps]") unless params[:apps].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MissingRequiredParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingRequiredParameterException, context: context)
        type = Types::MissingRequiredParameterException.new
        type.message = params[:message]
        type
      end
    end

    module NoConnectorsAvailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoConnectorsAvailableException, context: context)
        type = Types::NoConnectorsAvailableException.new
        type.message = params[:message]
        type
      end
    end

    module NotificationContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationContext, context: context)
        type = Types::NotificationContext.new
        type.validation_id = params[:validation_id]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type
      end
    end

    module NotifyAppValidationOutputInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyAppValidationOutputInput, context: context)
        type = Types::NotifyAppValidationOutputInput.new
        type.app_id = params[:app_id]
        type.notification_context = NotificationContext.build(params[:notification_context], context: "#{context}[:notification_context]") unless params[:notification_context].nil?
        type
      end
    end

    module NotifyAppValidationOutputOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyAppValidationOutputOutput, context: context)
        type = Types::NotifyAppValidationOutputOutput.new
        type
      end
    end

    module OperationNotPermittedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotPermittedException, context: context)
        type = Types::OperationNotPermittedException.new
        type.message = params[:message]
        type
      end
    end

    module PutAppLaunchConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppLaunchConfigurationInput, context: context)
        type = Types::PutAppLaunchConfigurationInput.new
        type.app_id = params[:app_id]
        type.role_name = params[:role_name]
        type.auto_launch = params[:auto_launch]
        type.server_group_launch_configurations = ServerGroupLaunchConfigurations.build(params[:server_group_launch_configurations], context: "#{context}[:server_group_launch_configurations]") unless params[:server_group_launch_configurations].nil?
        type
      end
    end

    module PutAppLaunchConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppLaunchConfigurationOutput, context: context)
        type = Types::PutAppLaunchConfigurationOutput.new
        type
      end
    end

    module PutAppReplicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppReplicationConfigurationInput, context: context)
        type = Types::PutAppReplicationConfigurationInput.new
        type.app_id = params[:app_id]
        type.server_group_replication_configurations = ServerGroupReplicationConfigurations.build(params[:server_group_replication_configurations], context: "#{context}[:server_group_replication_configurations]") unless params[:server_group_replication_configurations].nil?
        type
      end
    end

    module PutAppReplicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppReplicationConfigurationOutput, context: context)
        type = Types::PutAppReplicationConfigurationOutput.new
        type
      end
    end

    module PutAppValidationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppValidationConfigurationInput, context: context)
        type = Types::PutAppValidationConfigurationInput.new
        type.app_id = params[:app_id]
        type.app_validation_configurations = AppValidationConfigurations.build(params[:app_validation_configurations], context: "#{context}[:app_validation_configurations]") unless params[:app_validation_configurations].nil?
        type.server_group_validation_configurations = ServerGroupValidationConfigurations.build(params[:server_group_validation_configurations], context: "#{context}[:server_group_validation_configurations]") unless params[:server_group_validation_configurations].nil?
        type
      end
    end

    module PutAppValidationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppValidationConfigurationOutput, context: context)
        type = Types::PutAppValidationConfigurationOutput.new
        type
      end
    end

    module ReplicationJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationJob, context: context)
        type = Types::ReplicationJob.new
        type.replication_job_id = params[:replication_job_id]
        type.server_id = params[:server_id]
        type.server_type = params[:server_type]
        type.vm_server = VmServer.build(params[:vm_server], context: "#{context}[:vm_server]") unless params[:vm_server].nil?
        type.seed_replication_time = params[:seed_replication_time]
        type.frequency = params[:frequency]
        type.run_once = params[:run_once]
        type.next_replication_run_start_time = params[:next_replication_run_start_time]
        type.license_type = params[:license_type]
        type.role_name = params[:role_name]
        type.latest_ami_id = params[:latest_ami_id]
        type.state = params[:state]
        type.status_message = params[:status_message]
        type.description = params[:description]
        type.number_of_recent_amis_to_keep = params[:number_of_recent_amis_to_keep]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.replication_run_list = ReplicationRunList.build(params[:replication_run_list], context: "#{context}[:replication_run_list]") unless params[:replication_run_list].nil?
        type
      end
    end

    module ReplicationJobAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationJobAlreadyExistsException, context: context)
        type = Types::ReplicationJobAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ReplicationJobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationJobNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationJobNotFoundException, context: context)
        type = Types::ReplicationJobNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ReplicationRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationRun, context: context)
        type = Types::ReplicationRun.new
        type.replication_run_id = params[:replication_run_id]
        type.state = params[:state]
        type.type = params[:type]
        type.stage_details = ReplicationRunStageDetails.build(params[:stage_details], context: "#{context}[:stage_details]") unless params[:stage_details].nil?
        type.status_message = params[:status_message]
        type.ami_id = params[:ami_id]
        type.scheduled_start_time = params[:scheduled_start_time]
        type.completed_time = params[:completed_time]
        type.description = params[:description]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ReplicationRunLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationRunLimitExceededException, context: context)
        type = Types::ReplicationRunLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ReplicationRunList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationRunStageDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationRunStageDetails, context: context)
        type = Types::ReplicationRunStageDetails.new
        type.stage = params[:stage]
        type.stage_progress = params[:stage_progress]
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module SSMOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSMOutput, context: context)
        type = Types::SSMOutput.new
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module SSMValidationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSMValidationParameters, context: context)
        type = Types::SSMValidationParameters.new
        type.source = Source.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.instance_id = params[:instance_id]
        type.script_type = params[:script_type]
        type.command = params[:command]
        type.execution_timeout_seconds = params[:execution_timeout_seconds]
        type.output_s3_bucket_name = params[:output_s3_bucket_name]
        type
      end
    end

    module Server
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Server, context: context)
        type = Types::Server.new
        type.server_id = params[:server_id]
        type.server_type = params[:server_type]
        type.vm_server = VmServer.build(params[:vm_server], context: "#{context}[:vm_server]") unless params[:vm_server].nil?
        type.replication_job_id = params[:replication_job_id]
        type.replication_job_terminated = params[:replication_job_terminated]
        type
      end
    end

    module ServerCannotBeReplicatedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerCannotBeReplicatedException, context: context)
        type = Types::ServerCannotBeReplicatedException.new
        type.message = params[:message]
        type
      end
    end

    module ServerGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerGroup, context: context)
        type = Types::ServerGroup.new
        type.server_group_id = params[:server_group_id]
        type.name = params[:name]
        type.server_list = ServerList.build(params[:server_list], context: "#{context}[:server_list]") unless params[:server_list].nil?
        type
      end
    end

    module ServerGroupLaunchConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerGroupLaunchConfiguration, context: context)
        type = Types::ServerGroupLaunchConfiguration.new
        type.server_group_id = params[:server_group_id]
        type.launch_order = params[:launch_order]
        type.server_launch_configurations = ServerLaunchConfigurations.build(params[:server_launch_configurations], context: "#{context}[:server_launch_configurations]") unless params[:server_launch_configurations].nil?
        type
      end
    end

    module ServerGroupLaunchConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerGroupLaunchConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerGroupReplicationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerGroupReplicationConfiguration, context: context)
        type = Types::ServerGroupReplicationConfiguration.new
        type.server_group_id = params[:server_group_id]
        type.server_replication_configurations = ServerReplicationConfigurations.build(params[:server_replication_configurations], context: "#{context}[:server_replication_configurations]") unless params[:server_replication_configurations].nil?
        type
      end
    end

    module ServerGroupReplicationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerGroupReplicationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerGroupValidationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerGroupValidationConfiguration, context: context)
        type = Types::ServerGroupValidationConfiguration.new
        type.server_group_id = params[:server_group_id]
        type.server_validation_configurations = ServerValidationConfigurations.build(params[:server_validation_configurations], context: "#{context}[:server_validation_configurations]") unless params[:server_validation_configurations].nil?
        type
      end
    end

    module ServerGroupValidationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerGroupValidationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerLaunchConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerLaunchConfiguration, context: context)
        type = Types::ServerLaunchConfiguration.new
        type.server = Server.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type.logical_id = params[:logical_id]
        type.vpc = params[:vpc]
        type.subnet = params[:subnet]
        type.security_group = params[:security_group]
        type.ec2_key_name = params[:ec2_key_name]
        type.user_data = UserData.build(params[:user_data], context: "#{context}[:user_data]") unless params[:user_data].nil?
        type.instance_type = params[:instance_type]
        type.associate_public_ip_address = params[:associate_public_ip_address]
        type.iam_instance_profile_name = params[:iam_instance_profile_name]
        type.configure_script = S3Location.build(params[:configure_script], context: "#{context}[:configure_script]") unless params[:configure_script].nil?
        type.configure_script_type = params[:configure_script_type]
        type
      end
    end

    module ServerLaunchConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerLaunchConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Server.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerReplicationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerReplicationConfiguration, context: context)
        type = Types::ServerReplicationConfiguration.new
        type.server = Server.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type.server_replication_parameters = ServerReplicationParameters.build(params[:server_replication_parameters], context: "#{context}[:server_replication_parameters]") unless params[:server_replication_parameters].nil?
        type
      end
    end

    module ServerReplicationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerReplicationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerReplicationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerReplicationParameters, context: context)
        type = Types::ServerReplicationParameters.new
        type.seed_time = params[:seed_time]
        type.frequency = params[:frequency]
        type.run_once = params[:run_once]
        type.license_type = params[:license_type]
        type.number_of_recent_amis_to_keep = params[:number_of_recent_amis_to_keep]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ServerValidationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerValidationConfiguration, context: context)
        type = Types::ServerValidationConfiguration.new
        type.server = Server.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type.validation_id = params[:validation_id]
        type.name = params[:name]
        type.server_validation_strategy = params[:server_validation_strategy]
        type.user_data_validation_parameters = UserDataValidationParameters.build(params[:user_data_validation_parameters], context: "#{context}[:user_data_validation_parameters]") unless params[:user_data_validation_parameters].nil?
        type
      end
    end

    module ServerValidationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerValidationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerValidationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerValidationOutput, context: context)
        type = Types::ServerValidationOutput.new
        type.server = Server.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type
      end
    end

    module Source
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Source, context: context)
        type = Types::Source.new
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module StartAppReplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAppReplicationInput, context: context)
        type = Types::StartAppReplicationInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module StartAppReplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAppReplicationOutput, context: context)
        type = Types::StartAppReplicationOutput.new
        type
      end
    end

    module StartOnDemandAppReplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartOnDemandAppReplicationInput, context: context)
        type = Types::StartOnDemandAppReplicationInput.new
        type.app_id = params[:app_id]
        type.description = params[:description]
        type
      end
    end

    module StartOnDemandAppReplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartOnDemandAppReplicationOutput, context: context)
        type = Types::StartOnDemandAppReplicationOutput.new
        type
      end
    end

    module StartOnDemandReplicationRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartOnDemandReplicationRunInput, context: context)
        type = Types::StartOnDemandReplicationRunInput.new
        type.replication_job_id = params[:replication_job_id]
        type.description = params[:description]
        type
      end
    end

    module StartOnDemandReplicationRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartOnDemandReplicationRunOutput, context: context)
        type = Types::StartOnDemandReplicationRunOutput.new
        type.replication_run_id = params[:replication_run_id]
        type
      end
    end

    module StopAppReplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAppReplicationInput, context: context)
        type = Types::StopAppReplicationInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module StopAppReplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAppReplicationOutput, context: context)
        type = Types::StopAppReplicationOutput.new
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TemporarilyUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemporarilyUnavailableException, context: context)
        type = Types::TemporarilyUnavailableException.new
        type
      end
    end

    module TerminateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateAppInput, context: context)
        type = Types::TerminateAppInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module TerminateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateAppOutput, context: context)
        type = Types::TerminateAppOutput.new
        type
      end
    end

    module UnauthorizedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedOperationException, context: context)
        type = Types::UnauthorizedOperationException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInput, context: context)
        type = Types::UpdateAppInput.new
        type.app_id = params[:app_id]
        type.name = params[:name]
        type.description = params[:description]
        type.role_name = params[:role_name]
        type.server_groups = ServerGroups.build(params[:server_groups], context: "#{context}[:server_groups]") unless params[:server_groups].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppOutput, context: context)
        type = Types::UpdateAppOutput.new
        type.app_summary = AppSummary.build(params[:app_summary], context: "#{context}[:app_summary]") unless params[:app_summary].nil?
        type.server_groups = ServerGroups.build(params[:server_groups], context: "#{context}[:server_groups]") unless params[:server_groups].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateReplicationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReplicationJobInput, context: context)
        type = Types::UpdateReplicationJobInput.new
        type.replication_job_id = params[:replication_job_id]
        type.frequency = params[:frequency]
        type.next_replication_run_start_time = params[:next_replication_run_start_time]
        type.license_type = params[:license_type]
        type.role_name = params[:role_name]
        type.description = params[:description]
        type.number_of_recent_amis_to_keep = params[:number_of_recent_amis_to_keep]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module UpdateReplicationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReplicationJobOutput, context: context)
        type = Types::UpdateReplicationJobOutput.new
        type
      end
    end

    module UserData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserData, context: context)
        type = Types::UserData.new
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module UserDataValidationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserDataValidationParameters, context: context)
        type = Types::UserDataValidationParameters.new
        type.source = Source.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.script_type = params[:script_type]
        type
      end
    end

    module ValidationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationOutput, context: context)
        type = Types::ValidationOutput.new
        type.validation_id = params[:validation_id]
        type.name = params[:name]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.latest_validation_time = params[:latest_validation_time]
        type.app_validation_output = AppValidationOutput.build(params[:app_validation_output], context: "#{context}[:app_validation_output]") unless params[:app_validation_output].nil?
        type.server_validation_output = ServerValidationOutput.build(params[:server_validation_output], context: "#{context}[:server_validation_output]") unless params[:server_validation_output].nil?
        type
      end
    end

    module ValidationOutputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VmServer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VmServer, context: context)
        type = Types::VmServer.new
        type.vm_server_address = VmServerAddress.build(params[:vm_server_address], context: "#{context}[:vm_server_address]") unless params[:vm_server_address].nil?
        type.vm_name = params[:vm_name]
        type.vm_manager_name = params[:vm_manager_name]
        type.vm_manager_type = params[:vm_manager_type]
        type.vm_path = params[:vm_path]
        type
      end
    end

    module VmServerAddress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VmServerAddress, context: context)
        type = Types::VmServerAddress.new
        type.vm_manager_id = params[:vm_manager_id]
        type.vm_id = params[:vm_id]
        type
      end
    end

    module VmServerAddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VmServerAddress.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
