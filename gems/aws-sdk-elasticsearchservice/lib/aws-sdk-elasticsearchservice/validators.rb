# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ElasticsearchService
  module Validators

    class AcceptInboundCrossClusterSearchConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInboundCrossClusterSearchConnectionInput, context: context)
        Hearth::Validator.validate!(input[:cross_cluster_search_connection_id], ::String, context: "#{context}[:cross_cluster_search_connection_id]")
      end
    end

    class AcceptInboundCrossClusterSearchConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInboundCrossClusterSearchConnectionOutput, context: context)
        InboundCrossClusterSearchConnection.validate!(input[:cross_cluster_search_connection], context: "#{context}[:cross_cluster_search_connection]") unless input[:cross_cluster_search_connection].nil?
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccessPoliciesStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPoliciesStatus, context: context)
        Hearth::Validator.validate!(input[:options], ::String, context: "#{context}[:options]")
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class AddTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class AddTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsOutput, context: context)
      end
    end

    class AdditionalLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdditionalLimit, context: context)
        Hearth::Validator.validate!(input[:limit_name], ::String, context: "#{context}[:limit_name]")
        LimitValueList.validate!(input[:limit_values], context: "#{context}[:limit_values]") unless input[:limit_values].nil?
      end
    end

    class AdditionalLimitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AdditionalLimit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AdvancedOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AdvancedOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvancedOptionsStatus, context: context)
        AdvancedOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class AdvancedSecurityOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvancedSecurityOptions, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:internal_user_database_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:internal_user_database_enabled]")
        SAMLOptionsOutput.validate!(input[:saml_options], context: "#{context}[:saml_options]") unless input[:saml_options].nil?
        Hearth::Validator.validate!(input[:anonymous_auth_disable_date], ::Time, context: "#{context}[:anonymous_auth_disable_date]")
        Hearth::Validator.validate!(input[:anonymous_auth_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:anonymous_auth_enabled]")
      end
    end

    class AdvancedSecurityOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvancedSecurityOptionsInput, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:internal_user_database_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:internal_user_database_enabled]")
        MasterUserOptions.validate!(input[:master_user_options], context: "#{context}[:master_user_options]") unless input[:master_user_options].nil?
        SAMLOptionsInput.validate!(input[:saml_options], context: "#{context}[:saml_options]") unless input[:saml_options].nil?
        Hearth::Validator.validate!(input[:anonymous_auth_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:anonymous_auth_enabled]")
      end
    end

    class AdvancedSecurityOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvancedSecurityOptionsStatus, context: context)
        AdvancedSecurityOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class AssociatePackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePackageInput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class AssociatePackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePackageOutput, context: context)
        DomainPackageDetails.validate!(input[:domain_package_details], context: "#{context}[:domain_package_details]") unless input[:domain_package_details].nil?
      end
    end

    class AutoTune
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoTune, context: context)
        Hearth::Validator.validate!(input[:auto_tune_type], ::String, context: "#{context}[:auto_tune_type]")
        AutoTuneDetails.validate!(input[:auto_tune_details], context: "#{context}[:auto_tune_details]") unless input[:auto_tune_details].nil?
      end
    end

    class AutoTuneDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoTuneDetails, context: context)
        ScheduledAutoTuneDetails.validate!(input[:scheduled_auto_tune_details], context: "#{context}[:scheduled_auto_tune_details]") unless input[:scheduled_auto_tune_details].nil?
      end
    end

    class AutoTuneList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoTune.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoTuneMaintenanceSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoTuneMaintenanceSchedule, context: context)
        Hearth::Validator.validate!(input[:start_at], ::Time, context: "#{context}[:start_at]")
        Duration.validate!(input[:duration], context: "#{context}[:duration]") unless input[:duration].nil?
        Hearth::Validator.validate!(input[:cron_expression_for_recurrence], ::String, context: "#{context}[:cron_expression_for_recurrence]")
      end
    end

    class AutoTuneMaintenanceScheduleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoTuneMaintenanceSchedule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoTuneOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoTuneOptions, context: context)
        Hearth::Validator.validate!(input[:desired_state], ::String, context: "#{context}[:desired_state]")
        Hearth::Validator.validate!(input[:rollback_on_disable], ::String, context: "#{context}[:rollback_on_disable]")
        AutoTuneMaintenanceScheduleList.validate!(input[:maintenance_schedules], context: "#{context}[:maintenance_schedules]") unless input[:maintenance_schedules].nil?
      end
    end

    class AutoTuneOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoTuneOptionsInput, context: context)
        Hearth::Validator.validate!(input[:desired_state], ::String, context: "#{context}[:desired_state]")
        AutoTuneMaintenanceScheduleList.validate!(input[:maintenance_schedules], context: "#{context}[:maintenance_schedules]") unless input[:maintenance_schedules].nil?
      end
    end

    class AutoTuneOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoTuneOptionsOutput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class AutoTuneOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoTuneOptionsStatus, context: context)
        AutoTuneOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        AutoTuneStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class AutoTuneStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoTuneStatus, context: context)
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:update_date], ::Time, context: "#{context}[:update_date]")
        Hearth::Validator.validate!(input[:update_version], ::Integer, context: "#{context}[:update_version]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:pending_deletion], ::TrueClass, ::FalseClass, context: "#{context}[:pending_deletion]")
      end
    end

    class BaseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelElasticsearchServiceSoftwareUpdateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelElasticsearchServiceSoftwareUpdateInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class CancelElasticsearchServiceSoftwareUpdateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelElasticsearchServiceSoftwareUpdateOutput, context: context)
        ServiceSoftwareOptions.validate!(input[:service_software_options], context: "#{context}[:service_software_options]") unless input[:service_software_options].nil?
      end
    end

    class ChangeProgressDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeProgressDetails, context: context)
        Hearth::Validator.validate!(input[:change_id], ::String, context: "#{context}[:change_id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ChangeProgressStage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeProgressStage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
      end
    end

    class ChangeProgressStageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChangeProgressStage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChangeProgressStatusDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeProgressStatusDetails, context: context)
        Hearth::Validator.validate!(input[:change_id], ::String, context: "#{context}[:change_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        StringList.validate!(input[:pending_properties], context: "#{context}[:pending_properties]") unless input[:pending_properties].nil?
        StringList.validate!(input[:completed_properties], context: "#{context}[:completed_properties]") unless input[:completed_properties].nil?
        Hearth::Validator.validate!(input[:total_number_of_stages], ::Integer, context: "#{context}[:total_number_of_stages]")
        ChangeProgressStageList.validate!(input[:change_progress_stages], context: "#{context}[:change_progress_stages]") unless input[:change_progress_stages].nil?
      end
    end

    class CognitoOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CognitoOptions, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class CognitoOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CognitoOptionsStatus, context: context)
        CognitoOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class ColdStorageOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColdStorageOptions, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class CompatibleElasticsearchVersionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CompatibleVersionsMap.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompatibleVersionsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompatibleVersionsMap, context: context)
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        ElasticsearchVersionList.validate!(input[:target_versions], context: "#{context}[:target_versions]") unless input[:target_versions].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateElasticsearchDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateElasticsearchDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:elasticsearch_version], ::String, context: "#{context}[:elasticsearch_version]")
        ElasticsearchClusterConfig.validate!(input[:elasticsearch_cluster_config], context: "#{context}[:elasticsearch_cluster_config]") unless input[:elasticsearch_cluster_config].nil?
        EBSOptions.validate!(input[:ebs_options], context: "#{context}[:ebs_options]") unless input[:ebs_options].nil?
        Hearth::Validator.validate!(input[:access_policies], ::String, context: "#{context}[:access_policies]")
        SnapshotOptions.validate!(input[:snapshot_options], context: "#{context}[:snapshot_options]") unless input[:snapshot_options].nil?
        VPCOptions.validate!(input[:vpc_options], context: "#{context}[:vpc_options]") unless input[:vpc_options].nil?
        CognitoOptions.validate!(input[:cognito_options], context: "#{context}[:cognito_options]") unless input[:cognito_options].nil?
        EncryptionAtRestOptions.validate!(input[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless input[:encryption_at_rest_options].nil?
        NodeToNodeEncryptionOptions.validate!(input[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless input[:node_to_node_encryption_options].nil?
        AdvancedOptions.validate!(input[:advanced_options], context: "#{context}[:advanced_options]") unless input[:advanced_options].nil?
        LogPublishingOptions.validate!(input[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless input[:log_publishing_options].nil?
        DomainEndpointOptions.validate!(input[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless input[:domain_endpoint_options].nil?
        AdvancedSecurityOptionsInput.validate!(input[:advanced_security_options], context: "#{context}[:advanced_security_options]") unless input[:advanced_security_options].nil?
        AutoTuneOptionsInput.validate!(input[:auto_tune_options], context: "#{context}[:auto_tune_options]") unless input[:auto_tune_options].nil?
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class CreateElasticsearchDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateElasticsearchDomainOutput, context: context)
        ElasticsearchDomainStatus.validate!(input[:domain_status], context: "#{context}[:domain_status]") unless input[:domain_status].nil?
      end
    end

    class CreateOutboundCrossClusterSearchConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOutboundCrossClusterSearchConnectionInput, context: context)
        DomainInformation.validate!(input[:source_domain_info], context: "#{context}[:source_domain_info]") unless input[:source_domain_info].nil?
        DomainInformation.validate!(input[:destination_domain_info], context: "#{context}[:destination_domain_info]") unless input[:destination_domain_info].nil?
        Hearth::Validator.validate!(input[:connection_alias], ::String, context: "#{context}[:connection_alias]")
      end
    end

    class CreateOutboundCrossClusterSearchConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOutboundCrossClusterSearchConnectionOutput, context: context)
        DomainInformation.validate!(input[:source_domain_info], context: "#{context}[:source_domain_info]") unless input[:source_domain_info].nil?
        DomainInformation.validate!(input[:destination_domain_info], context: "#{context}[:destination_domain_info]") unless input[:destination_domain_info].nil?
        Hearth::Validator.validate!(input[:connection_alias], ::String, context: "#{context}[:connection_alias]")
        OutboundCrossClusterSearchConnectionStatus.validate!(input[:connection_status], context: "#{context}[:connection_status]") unless input[:connection_status].nil?
        Hearth::Validator.validate!(input[:cross_cluster_search_connection_id], ::String, context: "#{context}[:cross_cluster_search_connection_id]")
      end
    end

    class CreatePackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePackageInput, context: context)
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:package_type], ::String, context: "#{context}[:package_type]")
        Hearth::Validator.validate!(input[:package_description], ::String, context: "#{context}[:package_description]")
        PackageSource.validate!(input[:package_source], context: "#{context}[:package_source]") unless input[:package_source].nil?
      end
    end

    class CreatePackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePackageOutput, context: context)
        PackageDetails.validate!(input[:package_details], context: "#{context}[:package_details]") unless input[:package_details].nil?
      end
    end

    class DeleteElasticsearchDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteElasticsearchDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteElasticsearchDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteElasticsearchDomainOutput, context: context)
        ElasticsearchDomainStatus.validate!(input[:domain_status], context: "#{context}[:domain_status]") unless input[:domain_status].nil?
      end
    end

    class DeleteElasticsearchServiceRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteElasticsearchServiceRoleInput, context: context)
      end
    end

    class DeleteElasticsearchServiceRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteElasticsearchServiceRoleOutput, context: context)
      end
    end

    class DeleteInboundCrossClusterSearchConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInboundCrossClusterSearchConnectionInput, context: context)
        Hearth::Validator.validate!(input[:cross_cluster_search_connection_id], ::String, context: "#{context}[:cross_cluster_search_connection_id]")
      end
    end

    class DeleteInboundCrossClusterSearchConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInboundCrossClusterSearchConnectionOutput, context: context)
        InboundCrossClusterSearchConnection.validate!(input[:cross_cluster_search_connection], context: "#{context}[:cross_cluster_search_connection]") unless input[:cross_cluster_search_connection].nil?
      end
    end

    class DeleteOutboundCrossClusterSearchConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOutboundCrossClusterSearchConnectionInput, context: context)
        Hearth::Validator.validate!(input[:cross_cluster_search_connection_id], ::String, context: "#{context}[:cross_cluster_search_connection_id]")
      end
    end

    class DeleteOutboundCrossClusterSearchConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOutboundCrossClusterSearchConnectionOutput, context: context)
        OutboundCrossClusterSearchConnection.validate!(input[:cross_cluster_search_connection], context: "#{context}[:cross_cluster_search_connection]") unless input[:cross_cluster_search_connection].nil?
      end
    end

    class DeletePackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePackageInput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
      end
    end

    class DeletePackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePackageOutput, context: context)
        PackageDetails.validate!(input[:package_details], context: "#{context}[:package_details]") unless input[:package_details].nil?
      end
    end

    class DescribeDomainAutoTunesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainAutoTunesInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDomainAutoTunesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainAutoTunesOutput, context: context)
        AutoTuneList.validate!(input[:auto_tunes], context: "#{context}[:auto_tunes]") unless input[:auto_tunes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDomainChangeProgressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainChangeProgressInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:change_id], ::String, context: "#{context}[:change_id]")
      end
    end

    class DescribeDomainChangeProgressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainChangeProgressOutput, context: context)
        ChangeProgressStatusDetails.validate!(input[:change_progress_status], context: "#{context}[:change_progress_status]") unless input[:change_progress_status].nil?
      end
    end

    class DescribeElasticsearchDomainConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticsearchDomainConfigInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DescribeElasticsearchDomainConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticsearchDomainConfigOutput, context: context)
        ElasticsearchDomainConfig.validate!(input[:domain_config], context: "#{context}[:domain_config]") unless input[:domain_config].nil?
      end
    end

    class DescribeElasticsearchDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticsearchDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DescribeElasticsearchDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticsearchDomainOutput, context: context)
        ElasticsearchDomainStatus.validate!(input[:domain_status], context: "#{context}[:domain_status]") unless input[:domain_status].nil?
      end
    end

    class DescribeElasticsearchDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticsearchDomainsInput, context: context)
        DomainNameList.validate!(input[:domain_names], context: "#{context}[:domain_names]") unless input[:domain_names].nil?
      end
    end

    class DescribeElasticsearchDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticsearchDomainsOutput, context: context)
        ElasticsearchDomainStatusList.validate!(input[:domain_status_list], context: "#{context}[:domain_status_list]") unless input[:domain_status_list].nil?
      end
    end

    class DescribeElasticsearchInstanceTypeLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticsearchInstanceTypeLimitsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:elasticsearch_version], ::String, context: "#{context}[:elasticsearch_version]")
      end
    end

    class DescribeElasticsearchInstanceTypeLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticsearchInstanceTypeLimitsOutput, context: context)
        LimitsByRole.validate!(input[:limits_by_role], context: "#{context}[:limits_by_role]") unless input[:limits_by_role].nil?
      end
    end

    class DescribeInboundCrossClusterSearchConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInboundCrossClusterSearchConnectionsInput, context: context)
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInboundCrossClusterSearchConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInboundCrossClusterSearchConnectionsOutput, context: context)
        InboundCrossClusterSearchConnections.validate!(input[:cross_cluster_search_connections], context: "#{context}[:cross_cluster_search_connections]") unless input[:cross_cluster_search_connections].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOutboundCrossClusterSearchConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOutboundCrossClusterSearchConnectionsInput, context: context)
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOutboundCrossClusterSearchConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOutboundCrossClusterSearchConnectionsOutput, context: context)
        OutboundCrossClusterSearchConnections.validate!(input[:cross_cluster_search_connections], context: "#{context}[:cross_cluster_search_connections]") unless input[:cross_cluster_search_connections].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePackagesFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackagesFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        DescribePackagesFilterValues.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class DescribePackagesFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DescribePackagesFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribePackagesFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DescribePackagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackagesInput, context: context)
        DescribePackagesFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePackagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePackagesOutput, context: context)
        PackageDetailsList.validate!(input[:package_details_list], context: "#{context}[:package_details_list]") unless input[:package_details_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeReservedElasticsearchInstanceOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedElasticsearchInstanceOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:reserved_elasticsearch_instance_offering_id], ::String, context: "#{context}[:reserved_elasticsearch_instance_offering_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeReservedElasticsearchInstanceOfferingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedElasticsearchInstanceOfferingsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ReservedElasticsearchInstanceOfferingList.validate!(input[:reserved_elasticsearch_instance_offerings], context: "#{context}[:reserved_elasticsearch_instance_offerings]") unless input[:reserved_elasticsearch_instance_offerings].nil?
      end
    end

    class DescribeReservedElasticsearchInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedElasticsearchInstancesInput, context: context)
        Hearth::Validator.validate!(input[:reserved_elasticsearch_instance_id], ::String, context: "#{context}[:reserved_elasticsearch_instance_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeReservedElasticsearchInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReservedElasticsearchInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ReservedElasticsearchInstanceList.validate!(input[:reserved_elasticsearch_instances], context: "#{context}[:reserved_elasticsearch_instances]") unless input[:reserved_elasticsearch_instances].nil?
      end
    end

    class DisabledOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisabledOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DissociatePackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DissociatePackageInput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DissociatePackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DissociatePackageOutput, context: context)
        DomainPackageDetails.validate!(input[:domain_package_details], context: "#{context}[:domain_package_details]") unless input[:domain_package_details].nil?
      end
    end

    class DomainEndpointOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainEndpointOptions, context: context)
        Hearth::Validator.validate!(input[:enforce_https], ::TrueClass, ::FalseClass, context: "#{context}[:enforce_https]")
        Hearth::Validator.validate!(input[:tls_security_policy], ::String, context: "#{context}[:tls_security_policy]")
        Hearth::Validator.validate!(input[:custom_endpoint_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:custom_endpoint_enabled]")
        Hearth::Validator.validate!(input[:custom_endpoint], ::String, context: "#{context}[:custom_endpoint]")
        Hearth::Validator.validate!(input[:custom_endpoint_certificate_arn], ::String, context: "#{context}[:custom_endpoint_certificate_arn]")
      end
    end

    class DomainEndpointOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainEndpointOptionsStatus, context: context)
        DomainEndpointOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class DomainInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainInfo, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
      end
    end

    class DomainInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainInformation, context: context)
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class DomainNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DomainPackageDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainPackageDetails, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:package_type], ::String, context: "#{context}[:package_type]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:domain_package_status], ::String, context: "#{context}[:domain_package_status]")
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:reference_path], ::String, context: "#{context}[:reference_path]")
        ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
      end
    end

    class DomainPackageDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainPackageDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DryRunResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DryRunResults, context: context)
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Duration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Duration, context: context)
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class EBSOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EBSOptions, context: context)
        Hearth::Validator.validate!(input[:ebs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_enabled]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
      end
    end

    class EBSOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EBSOptionsStatus, context: context)
        EBSOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class ElasticsearchClusterConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchClusterConfig, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:dedicated_master_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dedicated_master_enabled]")
        Hearth::Validator.validate!(input[:zone_awareness_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:zone_awareness_enabled]")
        ZoneAwarenessConfig.validate!(input[:zone_awareness_config], context: "#{context}[:zone_awareness_config]") unless input[:zone_awareness_config].nil?
        Hearth::Validator.validate!(input[:dedicated_master_type], ::String, context: "#{context}[:dedicated_master_type]")
        Hearth::Validator.validate!(input[:dedicated_master_count], ::Integer, context: "#{context}[:dedicated_master_count]")
        Hearth::Validator.validate!(input[:warm_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:warm_enabled]")
        Hearth::Validator.validate!(input[:warm_type], ::String, context: "#{context}[:warm_type]")
        Hearth::Validator.validate!(input[:warm_count], ::Integer, context: "#{context}[:warm_count]")
        ColdStorageOptions.validate!(input[:cold_storage_options], context: "#{context}[:cold_storage_options]") unless input[:cold_storage_options].nil?
      end
    end

    class ElasticsearchClusterConfigStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchClusterConfigStatus, context: context)
        ElasticsearchClusterConfig.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class ElasticsearchDomainConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchDomainConfig, context: context)
        ElasticsearchVersionStatus.validate!(input[:elasticsearch_version], context: "#{context}[:elasticsearch_version]") unless input[:elasticsearch_version].nil?
        ElasticsearchClusterConfigStatus.validate!(input[:elasticsearch_cluster_config], context: "#{context}[:elasticsearch_cluster_config]") unless input[:elasticsearch_cluster_config].nil?
        EBSOptionsStatus.validate!(input[:ebs_options], context: "#{context}[:ebs_options]") unless input[:ebs_options].nil?
        AccessPoliciesStatus.validate!(input[:access_policies], context: "#{context}[:access_policies]") unless input[:access_policies].nil?
        SnapshotOptionsStatus.validate!(input[:snapshot_options], context: "#{context}[:snapshot_options]") unless input[:snapshot_options].nil?
        VPCDerivedInfoStatus.validate!(input[:vpc_options], context: "#{context}[:vpc_options]") unless input[:vpc_options].nil?
        CognitoOptionsStatus.validate!(input[:cognito_options], context: "#{context}[:cognito_options]") unless input[:cognito_options].nil?
        EncryptionAtRestOptionsStatus.validate!(input[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless input[:encryption_at_rest_options].nil?
        NodeToNodeEncryptionOptionsStatus.validate!(input[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless input[:node_to_node_encryption_options].nil?
        AdvancedOptionsStatus.validate!(input[:advanced_options], context: "#{context}[:advanced_options]") unless input[:advanced_options].nil?
        LogPublishingOptionsStatus.validate!(input[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless input[:log_publishing_options].nil?
        DomainEndpointOptionsStatus.validate!(input[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless input[:domain_endpoint_options].nil?
        AdvancedSecurityOptionsStatus.validate!(input[:advanced_security_options], context: "#{context}[:advanced_security_options]") unless input[:advanced_security_options].nil?
        AutoTuneOptionsStatus.validate!(input[:auto_tune_options], context: "#{context}[:auto_tune_options]") unless input[:auto_tune_options].nil?
        ChangeProgressDetails.validate!(input[:change_progress_details], context: "#{context}[:change_progress_details]") unless input[:change_progress_details].nil?
      end
    end

    class ElasticsearchDomainStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchDomainStatus, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created], ::TrueClass, ::FalseClass, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:deleted], ::TrueClass, ::FalseClass, context: "#{context}[:deleted]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        EndpointsMap.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:processing], ::TrueClass, ::FalseClass, context: "#{context}[:processing]")
        Hearth::Validator.validate!(input[:upgrade_processing], ::TrueClass, ::FalseClass, context: "#{context}[:upgrade_processing]")
        Hearth::Validator.validate!(input[:elasticsearch_version], ::String, context: "#{context}[:elasticsearch_version]")
        ElasticsearchClusterConfig.validate!(input[:elasticsearch_cluster_config], context: "#{context}[:elasticsearch_cluster_config]") unless input[:elasticsearch_cluster_config].nil?
        EBSOptions.validate!(input[:ebs_options], context: "#{context}[:ebs_options]") unless input[:ebs_options].nil?
        Hearth::Validator.validate!(input[:access_policies], ::String, context: "#{context}[:access_policies]")
        SnapshotOptions.validate!(input[:snapshot_options], context: "#{context}[:snapshot_options]") unless input[:snapshot_options].nil?
        VPCDerivedInfo.validate!(input[:vpc_options], context: "#{context}[:vpc_options]") unless input[:vpc_options].nil?
        CognitoOptions.validate!(input[:cognito_options], context: "#{context}[:cognito_options]") unless input[:cognito_options].nil?
        EncryptionAtRestOptions.validate!(input[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless input[:encryption_at_rest_options].nil?
        NodeToNodeEncryptionOptions.validate!(input[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless input[:node_to_node_encryption_options].nil?
        AdvancedOptions.validate!(input[:advanced_options], context: "#{context}[:advanced_options]") unless input[:advanced_options].nil?
        LogPublishingOptions.validate!(input[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless input[:log_publishing_options].nil?
        ServiceSoftwareOptions.validate!(input[:service_software_options], context: "#{context}[:service_software_options]") unless input[:service_software_options].nil?
        DomainEndpointOptions.validate!(input[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless input[:domain_endpoint_options].nil?
        AdvancedSecurityOptions.validate!(input[:advanced_security_options], context: "#{context}[:advanced_security_options]") unless input[:advanced_security_options].nil?
        AutoTuneOptionsOutput.validate!(input[:auto_tune_options], context: "#{context}[:auto_tune_options]") unless input[:auto_tune_options].nil?
        ChangeProgressDetails.validate!(input[:change_progress_details], context: "#{context}[:change_progress_details]") unless input[:change_progress_details].nil?
      end
    end

    class ElasticsearchDomainStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ElasticsearchDomainStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ElasticsearchInstanceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ElasticsearchVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ElasticsearchVersionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchVersionStatus, context: context)
        Hearth::Validator.validate!(input[:options], ::String, context: "#{context}[:options]")
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class EncryptionAtRestOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionAtRestOptions, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class EncryptionAtRestOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionAtRestOptionsStatus, context: context)
        EncryptionAtRestOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class EndpointsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetails, context: context)
        Hearth::Validator.validate!(input[:error_type], ::String, context: "#{context}[:error_type]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ValueStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
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

    class GetCompatibleElasticsearchVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCompatibleElasticsearchVersionsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetCompatibleElasticsearchVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCompatibleElasticsearchVersionsOutput, context: context)
        CompatibleElasticsearchVersionsList.validate!(input[:compatible_elasticsearch_versions], context: "#{context}[:compatible_elasticsearch_versions]") unless input[:compatible_elasticsearch_versions].nil?
      end
    end

    class GetPackageVersionHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPackageVersionHistoryInput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetPackageVersionHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPackageVersionHistoryOutput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        PackageVersionHistoryList.validate!(input[:package_version_history_list], context: "#{context}[:package_version_history_list]") unless input[:package_version_history_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetUpgradeHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUpgradeHistoryInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetUpgradeHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUpgradeHistoryOutput, context: context)
        UpgradeHistoryList.validate!(input[:upgrade_histories], context: "#{context}[:upgrade_histories]") unless input[:upgrade_histories].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetUpgradeStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUpgradeStatusInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetUpgradeStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUpgradeStatusOutput, context: context)
        Hearth::Validator.validate!(input[:upgrade_step], ::String, context: "#{context}[:upgrade_step]")
        Hearth::Validator.validate!(input[:step_status], ::String, context: "#{context}[:step_status]")
        Hearth::Validator.validate!(input[:upgrade_name], ::String, context: "#{context}[:upgrade_name]")
      end
    end

    class InboundCrossClusterSearchConnection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InboundCrossClusterSearchConnection, context: context)
        DomainInformation.validate!(input[:source_domain_info], context: "#{context}[:source_domain_info]") unless input[:source_domain_info].nil?
        DomainInformation.validate!(input[:destination_domain_info], context: "#{context}[:destination_domain_info]") unless input[:destination_domain_info].nil?
        Hearth::Validator.validate!(input[:cross_cluster_search_connection_id], ::String, context: "#{context}[:cross_cluster_search_connection_id]")
        InboundCrossClusterSearchConnectionStatus.validate!(input[:connection_status], context: "#{context}[:connection_status]") unless input[:connection_status].nil?
      end
    end

    class InboundCrossClusterSearchConnectionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InboundCrossClusterSearchConnectionStatus, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InboundCrossClusterSearchConnections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InboundCrossClusterSearchConnection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceCountLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceCountLimits, context: context)
        Hearth::Validator.validate!(input[:minimum_instance_count], ::Integer, context: "#{context}[:minimum_instance_count]")
        Hearth::Validator.validate!(input[:maximum_instance_count], ::Integer, context: "#{context}[:maximum_instance_count]")
      end
    end

    class InstanceLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceLimits, context: context)
        InstanceCountLimits.validate!(input[:instance_count_limits], context: "#{context}[:instance_count_limits]") unless input[:instance_count_limits].nil?
      end
    end

    class InternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPaginationTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPaginationTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Issues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Limits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Limits, context: context)
        StorageTypeList.validate!(input[:storage_types], context: "#{context}[:storage_types]") unless input[:storage_types].nil?
        InstanceLimits.validate!(input[:instance_limits], context: "#{context}[:instance_limits]") unless input[:instance_limits].nil?
        AdditionalLimitList.validate!(input[:additional_limits], context: "#{context}[:additional_limits]") unless input[:additional_limits].nil?
      end
    end

    class LimitsByRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Limits.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ListDomainNamesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainNamesInput, context: context)
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
      end
    end

    class ListDomainNamesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainNamesOutput, context: context)
        DomainInfoList.validate!(input[:domain_names], context: "#{context}[:domain_names]") unless input[:domain_names].nil?
      end
    end

    class ListDomainsForPackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsForPackageInput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainsForPackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsForPackageOutput, context: context)
        DomainPackageDetailsList.validate!(input[:domain_package_details_list], context: "#{context}[:domain_package_details_list]") unless input[:domain_package_details_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListElasticsearchInstanceTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListElasticsearchInstanceTypesInput, context: context)
        Hearth::Validator.validate!(input[:elasticsearch_version], ::String, context: "#{context}[:elasticsearch_version]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListElasticsearchInstanceTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListElasticsearchInstanceTypesOutput, context: context)
        ElasticsearchInstanceTypeList.validate!(input[:elasticsearch_instance_types], context: "#{context}[:elasticsearch_instance_types]") unless input[:elasticsearch_instance_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListElasticsearchVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListElasticsearchVersionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListElasticsearchVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListElasticsearchVersionsOutput, context: context)
        ElasticsearchVersionList.validate!(input[:elasticsearch_versions], context: "#{context}[:elasticsearch_versions]") unless input[:elasticsearch_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackagesForDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackagesForDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPackagesForDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPackagesForDomainOutput, context: context)
        DomainPackageDetailsList.validate!(input[:domain_package_details_list], context: "#{context}[:domain_package_details_list]") unless input[:domain_package_details_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class LogPublishingOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogPublishingOption, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class LogPublishingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          LogPublishingOption.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class LogPublishingOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogPublishingOptionsStatus, context: context)
        LogPublishingOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class MasterUserOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MasterUserOptions, context: context)
        Hearth::Validator.validate!(input[:master_user_arn], ::String, context: "#{context}[:master_user_arn]")
        Hearth::Validator.validate!(input[:master_user_name], ::String, context: "#{context}[:master_user_name]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
      end
    end

    class NodeToNodeEncryptionOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeToNodeEncryptionOptions, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class NodeToNodeEncryptionOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeToNodeEncryptionOptionsStatus, context: context)
        NodeToNodeEncryptionOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class OptionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionStatus, context: context)
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:update_date], ::Time, context: "#{context}[:update_date]")
        Hearth::Validator.validate!(input[:update_version], ::Integer, context: "#{context}[:update_version]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:pending_deletion], ::TrueClass, ::FalseClass, context: "#{context}[:pending_deletion]")
      end
    end

    class OutboundCrossClusterSearchConnection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutboundCrossClusterSearchConnection, context: context)
        DomainInformation.validate!(input[:source_domain_info], context: "#{context}[:source_domain_info]") unless input[:source_domain_info].nil?
        DomainInformation.validate!(input[:destination_domain_info], context: "#{context}[:destination_domain_info]") unless input[:destination_domain_info].nil?
        Hearth::Validator.validate!(input[:cross_cluster_search_connection_id], ::String, context: "#{context}[:cross_cluster_search_connection_id]")
        Hearth::Validator.validate!(input[:connection_alias], ::String, context: "#{context}[:connection_alias]")
        OutboundCrossClusterSearchConnectionStatus.validate!(input[:connection_status], context: "#{context}[:connection_status]") unless input[:connection_status].nil?
      end
    end

    class OutboundCrossClusterSearchConnectionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutboundCrossClusterSearchConnectionStatus, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OutboundCrossClusterSearchConnections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OutboundCrossClusterSearchConnection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageDetails, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        Hearth::Validator.validate!(input[:package_name], ::String, context: "#{context}[:package_name]")
        Hearth::Validator.validate!(input[:package_type], ::String, context: "#{context}[:package_type]")
        Hearth::Validator.validate!(input[:package_description], ::String, context: "#{context}[:package_description]")
        Hearth::Validator.validate!(input[:package_status], ::String, context: "#{context}[:package_status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:available_package_version], ::String, context: "#{context}[:available_package_version]")
        ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
      end
    end

    class PackageDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PackageDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageSource, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
      end
    end

    class PackageVersionHistory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PackageVersionHistory, context: context)
        Hearth::Validator.validate!(input[:package_version], ::String, context: "#{context}[:package_version]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class PackageVersionHistoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PackageVersionHistory.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PurchaseReservedElasticsearchInstanceOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseReservedElasticsearchInstanceOfferingInput, context: context)
        Hearth::Validator.validate!(input[:reserved_elasticsearch_instance_offering_id], ::String, context: "#{context}[:reserved_elasticsearch_instance_offering_id]")
        Hearth::Validator.validate!(input[:reservation_name], ::String, context: "#{context}[:reservation_name]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
      end
    end

    class PurchaseReservedElasticsearchInstanceOfferingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseReservedElasticsearchInstanceOfferingOutput, context: context)
        Hearth::Validator.validate!(input[:reserved_elasticsearch_instance_id], ::String, context: "#{context}[:reserved_elasticsearch_instance_id]")
        Hearth::Validator.validate!(input[:reservation_name], ::String, context: "#{context}[:reservation_name]")
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

    class RejectInboundCrossClusterSearchConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectInboundCrossClusterSearchConnectionInput, context: context)
        Hearth::Validator.validate!(input[:cross_cluster_search_connection_id], ::String, context: "#{context}[:cross_cluster_search_connection_id]")
      end
    end

    class RejectInboundCrossClusterSearchConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectInboundCrossClusterSearchConnectionOutput, context: context)
        InboundCrossClusterSearchConnection.validate!(input[:cross_cluster_search_connection], context: "#{context}[:cross_cluster_search_connection]") unless input[:cross_cluster_search_connection].nil?
      end
    end

    class RemoveTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        StringList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsOutput, context: context)
      end
    end

    class ReservedElasticsearchInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedElasticsearchInstance, context: context)
        Hearth::Validator.validate!(input[:reservation_name], ::String, context: "#{context}[:reservation_name]")
        Hearth::Validator.validate!(input[:reserved_elasticsearch_instance_id], ::String, context: "#{context}[:reserved_elasticsearch_instance_id]")
        Hearth::Validator.validate!(input[:reserved_elasticsearch_instance_offering_id], ::String, context: "#{context}[:reserved_elasticsearch_instance_offering_id]")
        Hearth::Validator.validate!(input[:elasticsearch_instance_type], ::String, context: "#{context}[:elasticsearch_instance_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:elasticsearch_instance_count], ::Integer, context: "#{context}[:elasticsearch_instance_count]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        RecurringChargeList.validate!(input[:recurring_charges], context: "#{context}[:recurring_charges]") unless input[:recurring_charges].nil?
      end
    end

    class ReservedElasticsearchInstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReservedElasticsearchInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservedElasticsearchInstanceOffering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservedElasticsearchInstanceOffering, context: context)
        Hearth::Validator.validate!(input[:reserved_elasticsearch_instance_offering_id], ::String, context: "#{context}[:reserved_elasticsearch_instance_offering_id]")
        Hearth::Validator.validate!(input[:elasticsearch_instance_type], ::String, context: "#{context}[:elasticsearch_instance_type]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:fixed_price], ::Float, context: "#{context}[:fixed_price]")
        Hearth::Validator.validate!(input[:usage_price], ::Float, context: "#{context}[:usage_price]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        RecurringChargeList.validate!(input[:recurring_charges], context: "#{context}[:recurring_charges]") unless input[:recurring_charges].nil?
      end
    end

    class ReservedElasticsearchInstanceOfferingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReservedElasticsearchInstanceOffering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SAMLIdp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SAMLIdp, context: context)
        Hearth::Validator.validate!(input[:metadata_content], ::String, context: "#{context}[:metadata_content]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
      end
    end

    class SAMLOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SAMLOptionsInput, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        SAMLIdp.validate!(input[:idp], context: "#{context}[:idp]") unless input[:idp].nil?
        Hearth::Validator.validate!(input[:master_user_name], ::String, context: "#{context}[:master_user_name]")
        Hearth::Validator.validate!(input[:master_backend_role], ::String, context: "#{context}[:master_backend_role]")
        Hearth::Validator.validate!(input[:subject_key], ::String, context: "#{context}[:subject_key]")
        Hearth::Validator.validate!(input[:roles_key], ::String, context: "#{context}[:roles_key]")
        Hearth::Validator.validate!(input[:session_timeout_minutes], ::Integer, context: "#{context}[:session_timeout_minutes]")
      end
    end

    class SAMLOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SAMLOptionsOutput, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        SAMLIdp.validate!(input[:idp], context: "#{context}[:idp]") unless input[:idp].nil?
        Hearth::Validator.validate!(input[:subject_key], ::String, context: "#{context}[:subject_key]")
        Hearth::Validator.validate!(input[:roles_key], ::String, context: "#{context}[:roles_key]")
        Hearth::Validator.validate!(input[:session_timeout_minutes], ::Integer, context: "#{context}[:session_timeout_minutes]")
      end
    end

    class ScheduledAutoTuneDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledAutoTuneDetails, context: context)
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
      end
    end

    class ServiceSoftwareOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceSoftwareOptions, context: context)
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:new_version], ::String, context: "#{context}[:new_version]")
        Hearth::Validator.validate!(input[:update_available], ::TrueClass, ::FalseClass, context: "#{context}[:update_available]")
        Hearth::Validator.validate!(input[:cancellable], ::TrueClass, ::FalseClass, context: "#{context}[:cancellable]")
        Hearth::Validator.validate!(input[:update_status], ::String, context: "#{context}[:update_status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:automated_update_date], ::Time, context: "#{context}[:automated_update_date]")
        Hearth::Validator.validate!(input[:optional_deployment], ::TrueClass, ::FalseClass, context: "#{context}[:optional_deployment]")
      end
    end

    class SnapshotOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotOptions, context: context)
        Hearth::Validator.validate!(input[:automated_snapshot_start_hour], ::Integer, context: "#{context}[:automated_snapshot_start_hour]")
      end
    end

    class SnapshotOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnapshotOptionsStatus, context: context)
        SnapshotOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class StartElasticsearchServiceSoftwareUpdateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartElasticsearchServiceSoftwareUpdateInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class StartElasticsearchServiceSoftwareUpdateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartElasticsearchServiceSoftwareUpdateOutput, context: context)
        ServiceSoftwareOptions.validate!(input[:service_software_options], context: "#{context}[:service_software_options]") unless input[:service_software_options].nil?
      end
    end

    class StorageType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageType, context: context)
        Hearth::Validator.validate!(input[:storage_type_name], ::String, context: "#{context}[:storage_type_name]")
        Hearth::Validator.validate!(input[:storage_sub_type_name], ::String, context: "#{context}[:storage_sub_type_name]")
        StorageTypeLimitList.validate!(input[:storage_type_limits], context: "#{context}[:storage_type_limits]") unless input[:storage_type_limits].nil?
      end
    end

    class StorageTypeLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageTypeLimit, context: context)
        Hearth::Validator.validate!(input[:limit_name], ::String, context: "#{context}[:limit_name]")
        LimitValueList.validate!(input[:limit_values], context: "#{context}[:limit_values]") unless input[:limit_values].nil?
      end
    end

    class StorageTypeLimitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StorageTypeLimit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StorageTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StorageType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class UpdateElasticsearchDomainConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateElasticsearchDomainConfigInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        ElasticsearchClusterConfig.validate!(input[:elasticsearch_cluster_config], context: "#{context}[:elasticsearch_cluster_config]") unless input[:elasticsearch_cluster_config].nil?
        EBSOptions.validate!(input[:ebs_options], context: "#{context}[:ebs_options]") unless input[:ebs_options].nil?
        SnapshotOptions.validate!(input[:snapshot_options], context: "#{context}[:snapshot_options]") unless input[:snapshot_options].nil?
        VPCOptions.validate!(input[:vpc_options], context: "#{context}[:vpc_options]") unless input[:vpc_options].nil?
        CognitoOptions.validate!(input[:cognito_options], context: "#{context}[:cognito_options]") unless input[:cognito_options].nil?
        AdvancedOptions.validate!(input[:advanced_options], context: "#{context}[:advanced_options]") unless input[:advanced_options].nil?
        Hearth::Validator.validate!(input[:access_policies], ::String, context: "#{context}[:access_policies]")
        LogPublishingOptions.validate!(input[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless input[:log_publishing_options].nil?
        DomainEndpointOptions.validate!(input[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless input[:domain_endpoint_options].nil?
        AdvancedSecurityOptionsInput.validate!(input[:advanced_security_options], context: "#{context}[:advanced_security_options]") unless input[:advanced_security_options].nil?
        NodeToNodeEncryptionOptions.validate!(input[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless input[:node_to_node_encryption_options].nil?
        EncryptionAtRestOptions.validate!(input[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless input[:encryption_at_rest_options].nil?
        AutoTuneOptions.validate!(input[:auto_tune_options], context: "#{context}[:auto_tune_options]") unless input[:auto_tune_options].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class UpdateElasticsearchDomainConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateElasticsearchDomainConfigOutput, context: context)
        ElasticsearchDomainConfig.validate!(input[:domain_config], context: "#{context}[:domain_config]") unless input[:domain_config].nil?
        DryRunResults.validate!(input[:dry_run_results], context: "#{context}[:dry_run_results]") unless input[:dry_run_results].nil?
      end
    end

    class UpdatePackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePackageInput, context: context)
        Hearth::Validator.validate!(input[:package_id], ::String, context: "#{context}[:package_id]")
        PackageSource.validate!(input[:package_source], context: "#{context}[:package_source]") unless input[:package_source].nil?
        Hearth::Validator.validate!(input[:package_description], ::String, context: "#{context}[:package_description]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
      end
    end

    class UpdatePackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePackageOutput, context: context)
        PackageDetails.validate!(input[:package_details], context: "#{context}[:package_details]") unless input[:package_details].nil?
      end
    end

    class UpgradeElasticsearchDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeElasticsearchDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:target_version], ::String, context: "#{context}[:target_version]")
        Hearth::Validator.validate!(input[:perform_check_only], ::TrueClass, ::FalseClass, context: "#{context}[:perform_check_only]")
      end
    end

    class UpgradeElasticsearchDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeElasticsearchDomainOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:target_version], ::String, context: "#{context}[:target_version]")
        Hearth::Validator.validate!(input[:perform_check_only], ::TrueClass, ::FalseClass, context: "#{context}[:perform_check_only]")
        ChangeProgressDetails.validate!(input[:change_progress_details], context: "#{context}[:change_progress_details]") unless input[:change_progress_details].nil?
      end
    end

    class UpgradeHistory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeHistory, context: context)
        Hearth::Validator.validate!(input[:upgrade_name], ::String, context: "#{context}[:upgrade_name]")
        Hearth::Validator.validate!(input[:start_timestamp], ::Time, context: "#{context}[:start_timestamp]")
        Hearth::Validator.validate!(input[:upgrade_status], ::String, context: "#{context}[:upgrade_status]")
        UpgradeStepsList.validate!(input[:steps_list], context: "#{context}[:steps_list]") unless input[:steps_list].nil?
      end
    end

    class UpgradeHistoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpgradeHistory.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpgradeStepItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeStepItem, context: context)
        Hearth::Validator.validate!(input[:upgrade_step], ::String, context: "#{context}[:upgrade_step]")
        Hearth::Validator.validate!(input[:upgrade_step_status], ::String, context: "#{context}[:upgrade_step_status]")
        Issues.validate!(input[:issues], context: "#{context}[:issues]") unless input[:issues].nil?
        Hearth::Validator.validate!(input[:progress_percent], ::Float, context: "#{context}[:progress_percent]")
      end
    end

    class UpgradeStepsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpgradeStepItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VPCDerivedInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VPCDerivedInfo, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        StringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        StringList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        StringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class VPCDerivedInfoStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VPCDerivedInfoStatus, context: context)
        VPCDerivedInfo.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class VPCOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VPCOptions, context: context)
        StringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        StringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValueStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ZoneAwarenessConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZoneAwarenessConfig, context: context)
        Hearth::Validator.validate!(input[:availability_zone_count], ::Integer, context: "#{context}[:availability_zone_count]")
      end
    end

  end
end
