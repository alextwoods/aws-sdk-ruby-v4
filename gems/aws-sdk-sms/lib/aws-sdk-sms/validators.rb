# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SMS
  module Validators

    class AppIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AppSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppSummary, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:imported_app_id], ::String, context: "#{context}[:imported_app_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:replication_configuration_status], ::String, context: "#{context}[:replication_configuration_status]")
        Hearth::Validator.validate!(input[:replication_status], ::String, context: "#{context}[:replication_status]")
        Hearth::Validator.validate!(input[:replication_status_message], ::String, context: "#{context}[:replication_status_message]")
        Hearth::Validator.validate!(input[:latest_replication_time], ::Time, context: "#{context}[:latest_replication_time]")
        Hearth::Validator.validate!(input[:launch_configuration_status], ::String, context: "#{context}[:launch_configuration_status]")
        Hearth::Validator.validate!(input[:launch_status], ::String, context: "#{context}[:launch_status]")
        Hearth::Validator.validate!(input[:launch_status_message], ::String, context: "#{context}[:launch_status_message]")
        Validators::LaunchDetails.validate!(input[:launch_details], context: "#{context}[:launch_details]") unless input[:launch_details].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:total_server_groups], ::Integer, context: "#{context}[:total_server_groups]")
        Hearth::Validator.validate!(input[:total_servers], ::Integer, context: "#{context}[:total_servers]")
      end
    end

    class AppValidationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppValidationConfiguration, context: context)
        Hearth::Validator.validate!(input[:validation_id], ::String, context: "#{context}[:validation_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:app_validation_strategy], ::String, context: "#{context}[:app_validation_strategy]")
        Validators::SSMValidationParameters.validate!(input[:ssm_validation_parameters], context: "#{context}[:ssm_validation_parameters]") unless input[:ssm_validation_parameters].nil?
      end
    end

    class AppValidationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AppValidationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppValidationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppValidationOutput, context: context)
        Validators::SSMOutput.validate!(input[:ssm_output], context: "#{context}[:ssm_output]") unless input[:ssm_output].nil?
      end
    end

    class Apps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AppSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Connector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Connector, context: context)
        Hearth::Validator.validate!(input[:connector_id], ::String, context: "#{context}[:connector_id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ConnectorCapabilityList.validate!(input[:capability_list], context: "#{context}[:capability_list]") unless input[:capability_list].nil?
        Hearth::Validator.validate!(input[:vm_manager_name], ::String, context: "#{context}[:vm_manager_name]")
        Hearth::Validator.validate!(input[:vm_manager_type], ::String, context: "#{context}[:vm_manager_type]")
        Hearth::Validator.validate!(input[:vm_manager_id], ::String, context: "#{context}[:vm_manager_id]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
        Hearth::Validator.validate!(input[:associated_on], ::Time, context: "#{context}[:associated_on]")
      end
    end

    class ConnectorCapabilityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConnectorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Connector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::ServerGroups.validate!(input[:server_groups], context: "#{context}[:server_groups]") unless input[:server_groups].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppOutput, context: context)
        Validators::AppSummary.validate!(input[:app_summary], context: "#{context}[:app_summary]") unless input[:app_summary].nil?
        Validators::ServerGroups.validate!(input[:server_groups], context: "#{context}[:server_groups]") unless input[:server_groups].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateReplicationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationJobInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:seed_replication_time], ::Time, context: "#{context}[:seed_replication_time]")
        Hearth::Validator.validate!(input[:frequency], ::Integer, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:run_once], ::TrueClass, ::FalseClass, context: "#{context}[:run_once]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:number_of_recent_amis_to_keep], ::Integer, context: "#{context}[:number_of_recent_amis_to_keep]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class CreateReplicationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationJobOutput, context: context)
        Hearth::Validator.validate!(input[:replication_job_id], ::String, context: "#{context}[:replication_job_id]")
      end
    end

    class DeleteAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:force_stop_app_replication], ::TrueClass, ::FalseClass, context: "#{context}[:force_stop_app_replication]")
        Hearth::Validator.validate!(input[:force_terminate_app], ::TrueClass, ::FalseClass, context: "#{context}[:force_terminate_app]")
      end
    end

    class DeleteAppLaunchConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppLaunchConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class DeleteAppLaunchConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppLaunchConfigurationOutput, context: context)
      end
    end

    class DeleteAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppOutput, context: context)
      end
    end

    class DeleteAppReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppReplicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class DeleteAppReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppReplicationConfigurationOutput, context: context)
      end
    end

    class DeleteAppValidationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppValidationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class DeleteAppValidationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppValidationConfigurationOutput, context: context)
      end
    end

    class DeleteReplicationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationJobInput, context: context)
        Hearth::Validator.validate!(input[:replication_job_id], ::String, context: "#{context}[:replication_job_id]")
      end
    end

    class DeleteReplicationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationJobOutput, context: context)
      end
    end

    class DeleteServerCatalogInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServerCatalogInput, context: context)
      end
    end

    class DeleteServerCatalogOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServerCatalogOutput, context: context)
      end
    end

    class DisassociateConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateConnectorInput, context: context)
        Hearth::Validator.validate!(input[:connector_id], ::String, context: "#{context}[:connector_id]")
      end
    end

    class DisassociateConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateConnectorOutput, context: context)
      end
    end

    class DryRunOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DryRunOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GenerateChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:changeset_format], ::String, context: "#{context}[:changeset_format]")
      end
    end

    class GenerateChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateChangeSetOutput, context: context)
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class GenerateTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateTemplateInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:template_format], ::String, context: "#{context}[:template_format]")
      end
    end

    class GenerateTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateTemplateOutput, context: context)
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class GetAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class GetAppLaunchConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppLaunchConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class GetAppLaunchConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppLaunchConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:auto_launch], ::TrueClass, ::FalseClass, context: "#{context}[:auto_launch]")
        Validators::ServerGroupLaunchConfigurations.validate!(input[:server_group_launch_configurations], context: "#{context}[:server_group_launch_configurations]") unless input[:server_group_launch_configurations].nil?
      end
    end

    class GetAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppOutput, context: context)
        Validators::AppSummary.validate!(input[:app_summary], context: "#{context}[:app_summary]") unless input[:app_summary].nil?
        Validators::ServerGroups.validate!(input[:server_groups], context: "#{context}[:server_groups]") unless input[:server_groups].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetAppReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppReplicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class GetAppReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppReplicationConfigurationOutput, context: context)
        Validators::ServerGroupReplicationConfigurations.validate!(input[:server_group_replication_configurations], context: "#{context}[:server_group_replication_configurations]") unless input[:server_group_replication_configurations].nil?
      end
    end

    class GetAppValidationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppValidationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class GetAppValidationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppValidationConfigurationOutput, context: context)
        Validators::AppValidationConfigurations.validate!(input[:app_validation_configurations], context: "#{context}[:app_validation_configurations]") unless input[:app_validation_configurations].nil?
        Validators::ServerGroupValidationConfigurations.validate!(input[:server_group_validation_configurations], context: "#{context}[:server_group_validation_configurations]") unless input[:server_group_validation_configurations].nil?
      end
    end

    class GetAppValidationOutputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppValidationOutputInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class GetAppValidationOutputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppValidationOutputOutput, context: context)
        Validators::ValidationOutputList.validate!(input[:validation_output_list], context: "#{context}[:validation_output_list]") unless input[:validation_output_list].nil?
      end
    end

    class GetConnectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectorsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetConnectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectorsOutput, context: context)
        Validators::ConnectorList.validate!(input[:connector_list], context: "#{context}[:connector_list]") unless input[:connector_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetReplicationJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReplicationJobsInput, context: context)
        Hearth::Validator.validate!(input[:replication_job_id], ::String, context: "#{context}[:replication_job_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetReplicationJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReplicationJobsOutput, context: context)
        Validators::ReplicationJobList.validate!(input[:replication_job_list], context: "#{context}[:replication_job_list]") unless input[:replication_job_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetReplicationRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReplicationRunsInput, context: context)
        Hearth::Validator.validate!(input[:replication_job_id], ::String, context: "#{context}[:replication_job_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetReplicationRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReplicationRunsOutput, context: context)
        Validators::ReplicationJob.validate!(input[:replication_job], context: "#{context}[:replication_job]") unless input[:replication_job].nil?
        Validators::ReplicationRunList.validate!(input[:replication_run_list], context: "#{context}[:replication_run_list]") unless input[:replication_run_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetServersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::VmServerAddressList.validate!(input[:vm_server_address_list], context: "#{context}[:vm_server_address_list]") unless input[:vm_server_address_list].nil?
      end
    end

    class GetServersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServersOutput, context: context)
        Hearth::Validator.validate!(input[:last_modified_on], ::Time, context: "#{context}[:last_modified_on]")
        Hearth::Validator.validate!(input[:server_catalog_status], ::String, context: "#{context}[:server_catalog_status]")
        Validators::ServerList.validate!(input[:server_list], context: "#{context}[:server_list]") unless input[:server_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ImportAppCatalogInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAppCatalogInput, context: context)
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
      end
    end

    class ImportAppCatalogOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportAppCatalogOutput, context: context)
      end
    end

    class ImportServerCatalogInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportServerCatalogInput, context: context)
      end
    end

    class ImportServerCatalogOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportServerCatalogOutput, context: context)
      end
    end

    class InternalError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LaunchAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchAppInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class LaunchAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchAppOutput, context: context)
      end
    end

    class LaunchDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchDetails, context: context)
        Hearth::Validator.validate!(input[:latest_launch_time], ::Time, context: "#{context}[:latest_launch_time]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class ListAppsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppsInput, context: context)
        Validators::AppIds.validate!(input[:app_ids], context: "#{context}[:app_ids]") unless input[:app_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAppsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppsOutput, context: context)
        Validators::Apps.validate!(input[:apps], context: "#{context}[:apps]") unless input[:apps].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MissingRequiredParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingRequiredParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoConnectorsAvailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoConnectorsAvailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotificationContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationContext, context: context)
        Hearth::Validator.validate!(input[:validation_id], ::String, context: "#{context}[:validation_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class NotifyAppValidationOutputInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyAppValidationOutputInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Validators::NotificationContext.validate!(input[:notification_context], context: "#{context}[:notification_context]") unless input[:notification_context].nil?
      end
    end

    class NotifyAppValidationOutputOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyAppValidationOutputOutput, context: context)
      end
    end

    class OperationNotPermittedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotPermittedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutAppLaunchConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppLaunchConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:auto_launch], ::TrueClass, ::FalseClass, context: "#{context}[:auto_launch]")
        Validators::ServerGroupLaunchConfigurations.validate!(input[:server_group_launch_configurations], context: "#{context}[:server_group_launch_configurations]") unless input[:server_group_launch_configurations].nil?
      end
    end

    class PutAppLaunchConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppLaunchConfigurationOutput, context: context)
      end
    end

    class PutAppReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppReplicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Validators::ServerGroupReplicationConfigurations.validate!(input[:server_group_replication_configurations], context: "#{context}[:server_group_replication_configurations]") unless input[:server_group_replication_configurations].nil?
      end
    end

    class PutAppReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppReplicationConfigurationOutput, context: context)
      end
    end

    class PutAppValidationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppValidationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Validators::AppValidationConfigurations.validate!(input[:app_validation_configurations], context: "#{context}[:app_validation_configurations]") unless input[:app_validation_configurations].nil?
        Validators::ServerGroupValidationConfigurations.validate!(input[:server_group_validation_configurations], context: "#{context}[:server_group_validation_configurations]") unless input[:server_group_validation_configurations].nil?
      end
    end

    class PutAppValidationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppValidationConfigurationOutput, context: context)
      end
    end

    class ReplicationJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationJob, context: context)
        Hearth::Validator.validate!(input[:replication_job_id], ::String, context: "#{context}[:replication_job_id]")
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:server_type], ::String, context: "#{context}[:server_type]")
        Validators::VmServer.validate!(input[:vm_server], context: "#{context}[:vm_server]") unless input[:vm_server].nil?
        Hearth::Validator.validate!(input[:seed_replication_time], ::Time, context: "#{context}[:seed_replication_time]")
        Hearth::Validator.validate!(input[:frequency], ::Integer, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:run_once], ::TrueClass, ::FalseClass, context: "#{context}[:run_once]")
        Hearth::Validator.validate!(input[:next_replication_run_start_time], ::Time, context: "#{context}[:next_replication_run_start_time]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:latest_ami_id], ::String, context: "#{context}[:latest_ami_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:number_of_recent_amis_to_keep], ::Integer, context: "#{context}[:number_of_recent_amis_to_keep]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::ReplicationRunList.validate!(input[:replication_run_list], context: "#{context}[:replication_run_list]") unless input[:replication_run_list].nil?
      end
    end

    class ReplicationJobAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationJobAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplicationJobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationJobNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationJobNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplicationRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationRun, context: context)
        Hearth::Validator.validate!(input[:replication_run_id], ::String, context: "#{context}[:replication_run_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ReplicationRunStageDetails.validate!(input[:stage_details], context: "#{context}[:stage_details]") unless input[:stage_details].nil?
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:ami_id], ::String, context: "#{context}[:ami_id]")
        Hearth::Validator.validate!(input[:scheduled_start_time], ::Time, context: "#{context}[:scheduled_start_time]")
        Hearth::Validator.validate!(input[:completed_time], ::Time, context: "#{context}[:completed_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ReplicationRunLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationRunLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplicationRunList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationRunStageDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationRunStageDetails, context: context)
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        Hearth::Validator.validate!(input[:stage_progress], ::String, context: "#{context}[:stage_progress]")
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class SSMOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSMOutput, context: context)
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class SSMValidationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSMValidationParameters, context: context)
        Validators::Source.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:script_type], ::String, context: "#{context}[:script_type]")
        Hearth::Validator.validate!(input[:command], ::String, context: "#{context}[:command]")
        Hearth::Validator.validate!(input[:execution_timeout_seconds], ::Integer, context: "#{context}[:execution_timeout_seconds]")
        Hearth::Validator.validate!(input[:output_s3_bucket_name], ::String, context: "#{context}[:output_s3_bucket_name]")
      end
    end

    class Server
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Server, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:server_type], ::String, context: "#{context}[:server_type]")
        Validators::VmServer.validate!(input[:vm_server], context: "#{context}[:vm_server]") unless input[:vm_server].nil?
        Hearth::Validator.validate!(input[:replication_job_id], ::String, context: "#{context}[:replication_job_id]")
        Hearth::Validator.validate!(input[:replication_job_terminated], ::TrueClass, ::FalseClass, context: "#{context}[:replication_job_terminated]")
      end
    end

    class ServerCannotBeReplicatedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerCannotBeReplicatedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServerGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerGroup, context: context)
        Hearth::Validator.validate!(input[:server_group_id], ::String, context: "#{context}[:server_group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ServerList.validate!(input[:server_list], context: "#{context}[:server_list]") unless input[:server_list].nil?
      end
    end

    class ServerGroupLaunchConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerGroupLaunchConfiguration, context: context)
        Hearth::Validator.validate!(input[:server_group_id], ::String, context: "#{context}[:server_group_id]")
        Hearth::Validator.validate!(input[:launch_order], ::Integer, context: "#{context}[:launch_order]")
        Validators::ServerLaunchConfigurations.validate!(input[:server_launch_configurations], context: "#{context}[:server_launch_configurations]") unless input[:server_launch_configurations].nil?
      end
    end

    class ServerGroupLaunchConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServerGroupLaunchConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerGroupReplicationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerGroupReplicationConfiguration, context: context)
        Hearth::Validator.validate!(input[:server_group_id], ::String, context: "#{context}[:server_group_id]")
        Validators::ServerReplicationConfigurations.validate!(input[:server_replication_configurations], context: "#{context}[:server_replication_configurations]") unless input[:server_replication_configurations].nil?
      end
    end

    class ServerGroupReplicationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServerGroupReplicationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerGroupValidationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerGroupValidationConfiguration, context: context)
        Hearth::Validator.validate!(input[:server_group_id], ::String, context: "#{context}[:server_group_id]")
        Validators::ServerValidationConfigurations.validate!(input[:server_validation_configurations], context: "#{context}[:server_validation_configurations]") unless input[:server_validation_configurations].nil?
      end
    end

    class ServerGroupValidationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServerGroupValidationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServerGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerLaunchConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerLaunchConfiguration, context: context)
        Validators::Server.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
        Hearth::Validator.validate!(input[:logical_id], ::String, context: "#{context}[:logical_id]")
        Hearth::Validator.validate!(input[:vpc], ::String, context: "#{context}[:vpc]")
        Hearth::Validator.validate!(input[:subnet], ::String, context: "#{context}[:subnet]")
        Hearth::Validator.validate!(input[:security_group], ::String, context: "#{context}[:security_group]")
        Hearth::Validator.validate!(input[:ec2_key_name], ::String, context: "#{context}[:ec2_key_name]")
        Validators::UserData.validate!(input[:user_data], context: "#{context}[:user_data]") unless input[:user_data].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:associate_public_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_public_ip_address]")
        Hearth::Validator.validate!(input[:iam_instance_profile_name], ::String, context: "#{context}[:iam_instance_profile_name]")
        Validators::S3Location.validate!(input[:configure_script], context: "#{context}[:configure_script]") unless input[:configure_script].nil?
        Hearth::Validator.validate!(input[:configure_script_type], ::String, context: "#{context}[:configure_script_type]")
      end
    end

    class ServerLaunchConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServerLaunchConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Server.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerReplicationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerReplicationConfiguration, context: context)
        Validators::Server.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
        Validators::ServerReplicationParameters.validate!(input[:server_replication_parameters], context: "#{context}[:server_replication_parameters]") unless input[:server_replication_parameters].nil?
      end
    end

    class ServerReplicationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServerReplicationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerReplicationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerReplicationParameters, context: context)
        Hearth::Validator.validate!(input[:seed_time], ::Time, context: "#{context}[:seed_time]")
        Hearth::Validator.validate!(input[:frequency], ::Integer, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:run_once], ::TrueClass, ::FalseClass, context: "#{context}[:run_once]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
        Hearth::Validator.validate!(input[:number_of_recent_amis_to_keep], ::Integer, context: "#{context}[:number_of_recent_amis_to_keep]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ServerValidationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerValidationConfiguration, context: context)
        Validators::Server.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
        Hearth::Validator.validate!(input[:validation_id], ::String, context: "#{context}[:validation_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:server_validation_strategy], ::String, context: "#{context}[:server_validation_strategy]")
        Validators::UserDataValidationParameters.validate!(input[:user_data_validation_parameters], context: "#{context}[:user_data_validation_parameters]") unless input[:user_data_validation_parameters].nil?
      end
    end

    class ServerValidationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServerValidationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerValidationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerValidationOutput, context: context)
        Validators::Server.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
      end
    end

    class Source
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Source, context: context)
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class StartAppReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAppReplicationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class StartAppReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAppReplicationOutput, context: context)
      end
    end

    class StartOnDemandAppReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartOnDemandAppReplicationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class StartOnDemandAppReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartOnDemandAppReplicationOutput, context: context)
      end
    end

    class StartOnDemandReplicationRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartOnDemandReplicationRunInput, context: context)
        Hearth::Validator.validate!(input[:replication_job_id], ::String, context: "#{context}[:replication_job_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class StartOnDemandReplicationRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartOnDemandReplicationRunOutput, context: context)
        Hearth::Validator.validate!(input[:replication_run_id], ::String, context: "#{context}[:replication_run_id]")
      end
    end

    class StopAppReplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAppReplicationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class StopAppReplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAppReplicationOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TemporarilyUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemporarilyUnavailableException, context: context)
      end
    end

    class TerminateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateAppInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class TerminateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateAppOutput, context: context)
      end
    end

    class UnauthorizedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Validators::ServerGroups.validate!(input[:server_groups], context: "#{context}[:server_groups]") unless input[:server_groups].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppOutput, context: context)
        Validators::AppSummary.validate!(input[:app_summary], context: "#{context}[:app_summary]") unless input[:app_summary].nil?
        Validators::ServerGroups.validate!(input[:server_groups], context: "#{context}[:server_groups]") unless input[:server_groups].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateReplicationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationJobInput, context: context)
        Hearth::Validator.validate!(input[:replication_job_id], ::String, context: "#{context}[:replication_job_id]")
        Hearth::Validator.validate!(input[:frequency], ::Integer, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:next_replication_run_start_time], ::Time, context: "#{context}[:next_replication_run_start_time]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:number_of_recent_amis_to_keep], ::Integer, context: "#{context}[:number_of_recent_amis_to_keep]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class UpdateReplicationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReplicationJobOutput, context: context)
      end
    end

    class UserData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserData, context: context)
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class UserDataValidationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserDataValidationParameters, context: context)
        Validators::Source.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:script_type], ::String, context: "#{context}[:script_type]")
      end
    end

    class ValidationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationOutput, context: context)
        Hearth::Validator.validate!(input[:validation_id], ::String, context: "#{context}[:validation_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:latest_validation_time], ::Time, context: "#{context}[:latest_validation_time]")
        Validators::AppValidationOutput.validate!(input[:app_validation_output], context: "#{context}[:app_validation_output]") unless input[:app_validation_output].nil?
        Validators::ServerValidationOutput.validate!(input[:server_validation_output], context: "#{context}[:server_validation_output]") unless input[:server_validation_output].nil?
      end
    end

    class ValidationOutputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VmServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VmServer, context: context)
        Validators::VmServerAddress.validate!(input[:vm_server_address], context: "#{context}[:vm_server_address]") unless input[:vm_server_address].nil?
        Hearth::Validator.validate!(input[:vm_name], ::String, context: "#{context}[:vm_name]")
        Hearth::Validator.validate!(input[:vm_manager_name], ::String, context: "#{context}[:vm_manager_name]")
        Hearth::Validator.validate!(input[:vm_manager_type], ::String, context: "#{context}[:vm_manager_type]")
        Hearth::Validator.validate!(input[:vm_path], ::String, context: "#{context}[:vm_path]")
      end
    end

    class VmServerAddress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VmServerAddress, context: context)
        Hearth::Validator.validate!(input[:vm_manager_id], ::String, context: "#{context}[:vm_manager_id]")
        Hearth::Validator.validate!(input[:vm_id], ::String, context: "#{context}[:vm_id]")
      end
    end

    class VmServerAddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VmServerAddress.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
