# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ElasticsearchService
  module Params

    module AcceptInboundCrossClusterSearchConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInboundCrossClusterSearchConnectionInput, context: context)
        type = Types::AcceptInboundCrossClusterSearchConnectionInput.new
        type.cross_cluster_search_connection_id = params[:cross_cluster_search_connection_id]
        type
      end
    end

    module AcceptInboundCrossClusterSearchConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInboundCrossClusterSearchConnectionOutput, context: context)
        type = Types::AcceptInboundCrossClusterSearchConnectionOutput.new
        type.cross_cluster_search_connection = InboundCrossClusterSearchConnection.build(params[:cross_cluster_search_connection], context: "#{context}[:cross_cluster_search_connection]") unless params[:cross_cluster_search_connection].nil?
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccessPoliciesStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPoliciesStatus, context: context)
        type = Types::AccessPoliciesStatus.new
        type.options = params[:options]
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module AddTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsInput, context: context)
        type = Types::AddTagsInput.new
        type.arn = params[:arn]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module AddTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsOutput, context: context)
        type = Types::AddTagsOutput.new
        type
      end
    end

    module AdditionalLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdditionalLimit, context: context)
        type = Types::AdditionalLimit.new
        type.limit_name = params[:limit_name]
        type.limit_values = LimitValueList.build(params[:limit_values], context: "#{context}[:limit_values]") unless params[:limit_values].nil?
        type
      end
    end

    module AdditionalLimitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdditionalLimit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AdvancedOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AdvancedOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvancedOptionsStatus, context: context)
        type = Types::AdvancedOptionsStatus.new
        type.options = AdvancedOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module AdvancedSecurityOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvancedSecurityOptions, context: context)
        type = Types::AdvancedSecurityOptions.new
        type.enabled = params[:enabled]
        type.internal_user_database_enabled = params[:internal_user_database_enabled]
        type.saml_options = SAMLOptionsOutput.build(params[:saml_options], context: "#{context}[:saml_options]") unless params[:saml_options].nil?
        type.anonymous_auth_disable_date = params[:anonymous_auth_disable_date]
        type.anonymous_auth_enabled = params[:anonymous_auth_enabled]
        type
      end
    end

    module AdvancedSecurityOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvancedSecurityOptionsInput, context: context)
        type = Types::AdvancedSecurityOptionsInput.new
        type.enabled = params[:enabled]
        type.internal_user_database_enabled = params[:internal_user_database_enabled]
        type.master_user_options = MasterUserOptions.build(params[:master_user_options], context: "#{context}[:master_user_options]") unless params[:master_user_options].nil?
        type.saml_options = SAMLOptionsInput.build(params[:saml_options], context: "#{context}[:saml_options]") unless params[:saml_options].nil?
        type.anonymous_auth_enabled = params[:anonymous_auth_enabled]
        type
      end
    end

    module AdvancedSecurityOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvancedSecurityOptionsStatus, context: context)
        type = Types::AdvancedSecurityOptionsStatus.new
        type.options = AdvancedSecurityOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module AssociatePackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePackageInput, context: context)
        type = Types::AssociatePackageInput.new
        type.package_id = params[:package_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module AssociatePackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePackageOutput, context: context)
        type = Types::AssociatePackageOutput.new
        type.domain_package_details = DomainPackageDetails.build(params[:domain_package_details], context: "#{context}[:domain_package_details]") unless params[:domain_package_details].nil?
        type
      end
    end

    module AutoTune
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoTune, context: context)
        type = Types::AutoTune.new
        type.auto_tune_type = params[:auto_tune_type]
        type.auto_tune_details = AutoTuneDetails.build(params[:auto_tune_details], context: "#{context}[:auto_tune_details]") unless params[:auto_tune_details].nil?
        type
      end
    end

    module AutoTuneDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoTuneDetails, context: context)
        type = Types::AutoTuneDetails.new
        type.scheduled_auto_tune_details = ScheduledAutoTuneDetails.build(params[:scheduled_auto_tune_details], context: "#{context}[:scheduled_auto_tune_details]") unless params[:scheduled_auto_tune_details].nil?
        type
      end
    end

    module AutoTuneList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoTune.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoTuneMaintenanceSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoTuneMaintenanceSchedule, context: context)
        type = Types::AutoTuneMaintenanceSchedule.new
        type.start_at = params[:start_at]
        type.duration = Duration.build(params[:duration], context: "#{context}[:duration]") unless params[:duration].nil?
        type.cron_expression_for_recurrence = params[:cron_expression_for_recurrence]
        type
      end
    end

    module AutoTuneMaintenanceScheduleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoTuneMaintenanceSchedule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoTuneOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoTuneOptions, context: context)
        type = Types::AutoTuneOptions.new
        type.desired_state = params[:desired_state]
        type.rollback_on_disable = params[:rollback_on_disable]
        type.maintenance_schedules = AutoTuneMaintenanceScheduleList.build(params[:maintenance_schedules], context: "#{context}[:maintenance_schedules]") unless params[:maintenance_schedules].nil?
        type
      end
    end

    module AutoTuneOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoTuneOptionsInput, context: context)
        type = Types::AutoTuneOptionsInput.new
        type.desired_state = params[:desired_state]
        type.maintenance_schedules = AutoTuneMaintenanceScheduleList.build(params[:maintenance_schedules], context: "#{context}[:maintenance_schedules]") unless params[:maintenance_schedules].nil?
        type
      end
    end

    module AutoTuneOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoTuneOptionsOutput, context: context)
        type = Types::AutoTuneOptionsOutput.new
        type.state = params[:state]
        type.error_message = params[:error_message]
        type
      end
    end

    module AutoTuneOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoTuneOptionsStatus, context: context)
        type = Types::AutoTuneOptionsStatus.new
        type.options = AutoTuneOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = AutoTuneStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module AutoTuneStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoTuneStatus, context: context)
        type = Types::AutoTuneStatus.new
        type.creation_date = params[:creation_date]
        type.update_date = params[:update_date]
        type.update_version = params[:update_version]
        type.state = params[:state]
        type.error_message = params[:error_message]
        type.pending_deletion = params[:pending_deletion]
        type
      end
    end

    module BaseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaseException, context: context)
        type = Types::BaseException.new
        type.message = params[:message]
        type
      end
    end

    module CancelElasticsearchServiceSoftwareUpdateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelElasticsearchServiceSoftwareUpdateInput, context: context)
        type = Types::CancelElasticsearchServiceSoftwareUpdateInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module CancelElasticsearchServiceSoftwareUpdateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelElasticsearchServiceSoftwareUpdateOutput, context: context)
        type = Types::CancelElasticsearchServiceSoftwareUpdateOutput.new
        type.service_software_options = ServiceSoftwareOptions.build(params[:service_software_options], context: "#{context}[:service_software_options]") unless params[:service_software_options].nil?
        type
      end
    end

    module ChangeProgressDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeProgressDetails, context: context)
        type = Types::ChangeProgressDetails.new
        type.change_id = params[:change_id]
        type.message = params[:message]
        type
      end
    end

    module ChangeProgressStage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeProgressStage, context: context)
        type = Types::ChangeProgressStage.new
        type.name = params[:name]
        type.status = params[:status]
        type.description = params[:description]
        type.last_updated = params[:last_updated]
        type
      end
    end

    module ChangeProgressStageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChangeProgressStage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChangeProgressStatusDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeProgressStatusDetails, context: context)
        type = Types::ChangeProgressStatusDetails.new
        type.change_id = params[:change_id]
        type.start_time = params[:start_time]
        type.status = params[:status]
        type.pending_properties = StringList.build(params[:pending_properties], context: "#{context}[:pending_properties]") unless params[:pending_properties].nil?
        type.completed_properties = StringList.build(params[:completed_properties], context: "#{context}[:completed_properties]") unless params[:completed_properties].nil?
        type.total_number_of_stages = params[:total_number_of_stages]
        type.change_progress_stages = ChangeProgressStageList.build(params[:change_progress_stages], context: "#{context}[:change_progress_stages]") unless params[:change_progress_stages].nil?
        type
      end
    end

    module CognitoOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CognitoOptions, context: context)
        type = Types::CognitoOptions.new
        type.enabled = params[:enabled]
        type.user_pool_id = params[:user_pool_id]
        type.identity_pool_id = params[:identity_pool_id]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module CognitoOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CognitoOptionsStatus, context: context)
        type = Types::CognitoOptionsStatus.new
        type.options = CognitoOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module ColdStorageOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColdStorageOptions, context: context)
        type = Types::ColdStorageOptions.new
        type.enabled = params[:enabled]
        type
      end
    end

    module CompatibleElasticsearchVersionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompatibleVersionsMap.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CompatibleVersionsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompatibleVersionsMap, context: context)
        type = Types::CompatibleVersionsMap.new
        type.source_version = params[:source_version]
        type.target_versions = ElasticsearchVersionList.build(params[:target_versions], context: "#{context}[:target_versions]") unless params[:target_versions].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateElasticsearchDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateElasticsearchDomainInput, context: context)
        type = Types::CreateElasticsearchDomainInput.new
        type.domain_name = params[:domain_name]
        type.elasticsearch_version = params[:elasticsearch_version]
        type.elasticsearch_cluster_config = ElasticsearchClusterConfig.build(params[:elasticsearch_cluster_config], context: "#{context}[:elasticsearch_cluster_config]") unless params[:elasticsearch_cluster_config].nil?
        type.ebs_options = EBSOptions.build(params[:ebs_options], context: "#{context}[:ebs_options]") unless params[:ebs_options].nil?
        type.access_policies = params[:access_policies]
        type.snapshot_options = SnapshotOptions.build(params[:snapshot_options], context: "#{context}[:snapshot_options]") unless params[:snapshot_options].nil?
        type.vpc_options = VPCOptions.build(params[:vpc_options], context: "#{context}[:vpc_options]") unless params[:vpc_options].nil?
        type.cognito_options = CognitoOptions.build(params[:cognito_options], context: "#{context}[:cognito_options]") unless params[:cognito_options].nil?
        type.encryption_at_rest_options = EncryptionAtRestOptions.build(params[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless params[:encryption_at_rest_options].nil?
        type.node_to_node_encryption_options = NodeToNodeEncryptionOptions.build(params[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless params[:node_to_node_encryption_options].nil?
        type.advanced_options = AdvancedOptions.build(params[:advanced_options], context: "#{context}[:advanced_options]") unless params[:advanced_options].nil?
        type.log_publishing_options = LogPublishingOptions.build(params[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless params[:log_publishing_options].nil?
        type.domain_endpoint_options = DomainEndpointOptions.build(params[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless params[:domain_endpoint_options].nil?
        type.advanced_security_options = AdvancedSecurityOptionsInput.build(params[:advanced_security_options], context: "#{context}[:advanced_security_options]") unless params[:advanced_security_options].nil?
        type.auto_tune_options = AutoTuneOptionsInput.build(params[:auto_tune_options], context: "#{context}[:auto_tune_options]") unless params[:auto_tune_options].nil?
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module CreateElasticsearchDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateElasticsearchDomainOutput, context: context)
        type = Types::CreateElasticsearchDomainOutput.new
        type.domain_status = ElasticsearchDomainStatus.build(params[:domain_status], context: "#{context}[:domain_status]") unless params[:domain_status].nil?
        type
      end
    end

    module CreateOutboundCrossClusterSearchConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOutboundCrossClusterSearchConnectionInput, context: context)
        type = Types::CreateOutboundCrossClusterSearchConnectionInput.new
        type.source_domain_info = DomainInformation.build(params[:source_domain_info], context: "#{context}[:source_domain_info]") unless params[:source_domain_info].nil?
        type.destination_domain_info = DomainInformation.build(params[:destination_domain_info], context: "#{context}[:destination_domain_info]") unless params[:destination_domain_info].nil?
        type.connection_alias = params[:connection_alias]
        type
      end
    end

    module CreateOutboundCrossClusterSearchConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOutboundCrossClusterSearchConnectionOutput, context: context)
        type = Types::CreateOutboundCrossClusterSearchConnectionOutput.new
        type.source_domain_info = DomainInformation.build(params[:source_domain_info], context: "#{context}[:source_domain_info]") unless params[:source_domain_info].nil?
        type.destination_domain_info = DomainInformation.build(params[:destination_domain_info], context: "#{context}[:destination_domain_info]") unless params[:destination_domain_info].nil?
        type.connection_alias = params[:connection_alias]
        type.connection_status = OutboundCrossClusterSearchConnectionStatus.build(params[:connection_status], context: "#{context}[:connection_status]") unless params[:connection_status].nil?
        type.cross_cluster_search_connection_id = params[:cross_cluster_search_connection_id]
        type
      end
    end

    module CreatePackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePackageInput, context: context)
        type = Types::CreatePackageInput.new
        type.package_name = params[:package_name]
        type.package_type = params[:package_type]
        type.package_description = params[:package_description]
        type.package_source = PackageSource.build(params[:package_source], context: "#{context}[:package_source]") unless params[:package_source].nil?
        type
      end
    end

    module CreatePackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePackageOutput, context: context)
        type = Types::CreatePackageOutput.new
        type.package_details = PackageDetails.build(params[:package_details], context: "#{context}[:package_details]") unless params[:package_details].nil?
        type
      end
    end

    module DeleteElasticsearchDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteElasticsearchDomainInput, context: context)
        type = Types::DeleteElasticsearchDomainInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteElasticsearchDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteElasticsearchDomainOutput, context: context)
        type = Types::DeleteElasticsearchDomainOutput.new
        type.domain_status = ElasticsearchDomainStatus.build(params[:domain_status], context: "#{context}[:domain_status]") unless params[:domain_status].nil?
        type
      end
    end

    module DeleteElasticsearchServiceRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteElasticsearchServiceRoleInput, context: context)
        type = Types::DeleteElasticsearchServiceRoleInput.new
        type
      end
    end

    module DeleteElasticsearchServiceRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteElasticsearchServiceRoleOutput, context: context)
        type = Types::DeleteElasticsearchServiceRoleOutput.new
        type
      end
    end

    module DeleteInboundCrossClusterSearchConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInboundCrossClusterSearchConnectionInput, context: context)
        type = Types::DeleteInboundCrossClusterSearchConnectionInput.new
        type.cross_cluster_search_connection_id = params[:cross_cluster_search_connection_id]
        type
      end
    end

    module DeleteInboundCrossClusterSearchConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInboundCrossClusterSearchConnectionOutput, context: context)
        type = Types::DeleteInboundCrossClusterSearchConnectionOutput.new
        type.cross_cluster_search_connection = InboundCrossClusterSearchConnection.build(params[:cross_cluster_search_connection], context: "#{context}[:cross_cluster_search_connection]") unless params[:cross_cluster_search_connection].nil?
        type
      end
    end

    module DeleteOutboundCrossClusterSearchConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOutboundCrossClusterSearchConnectionInput, context: context)
        type = Types::DeleteOutboundCrossClusterSearchConnectionInput.new
        type.cross_cluster_search_connection_id = params[:cross_cluster_search_connection_id]
        type
      end
    end

    module DeleteOutboundCrossClusterSearchConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOutboundCrossClusterSearchConnectionOutput, context: context)
        type = Types::DeleteOutboundCrossClusterSearchConnectionOutput.new
        type.cross_cluster_search_connection = OutboundCrossClusterSearchConnection.build(params[:cross_cluster_search_connection], context: "#{context}[:cross_cluster_search_connection]") unless params[:cross_cluster_search_connection].nil?
        type
      end
    end

    module DeletePackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePackageInput, context: context)
        type = Types::DeletePackageInput.new
        type.package_id = params[:package_id]
        type
      end
    end

    module DeletePackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePackageOutput, context: context)
        type = Types::DeletePackageOutput.new
        type.package_details = PackageDetails.build(params[:package_details], context: "#{context}[:package_details]") unless params[:package_details].nil?
        type
      end
    end

    module DescribeDomainAutoTunesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainAutoTunesInput, context: context)
        type = Types::DescribeDomainAutoTunesInput.new
        type.domain_name = params[:domain_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDomainAutoTunesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainAutoTunesOutput, context: context)
        type = Types::DescribeDomainAutoTunesOutput.new
        type.auto_tunes = AutoTuneList.build(params[:auto_tunes], context: "#{context}[:auto_tunes]") unless params[:auto_tunes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDomainChangeProgressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainChangeProgressInput, context: context)
        type = Types::DescribeDomainChangeProgressInput.new
        type.domain_name = params[:domain_name]
        type.change_id = params[:change_id]
        type
      end
    end

    module DescribeDomainChangeProgressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainChangeProgressOutput, context: context)
        type = Types::DescribeDomainChangeProgressOutput.new
        type.change_progress_status = ChangeProgressStatusDetails.build(params[:change_progress_status], context: "#{context}[:change_progress_status]") unless params[:change_progress_status].nil?
        type
      end
    end

    module DescribeElasticsearchDomainConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticsearchDomainConfigInput, context: context)
        type = Types::DescribeElasticsearchDomainConfigInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DescribeElasticsearchDomainConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticsearchDomainConfigOutput, context: context)
        type = Types::DescribeElasticsearchDomainConfigOutput.new
        type.domain_config = ElasticsearchDomainConfig.build(params[:domain_config], context: "#{context}[:domain_config]") unless params[:domain_config].nil?
        type
      end
    end

    module DescribeElasticsearchDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticsearchDomainInput, context: context)
        type = Types::DescribeElasticsearchDomainInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DescribeElasticsearchDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticsearchDomainOutput, context: context)
        type = Types::DescribeElasticsearchDomainOutput.new
        type.domain_status = ElasticsearchDomainStatus.build(params[:domain_status], context: "#{context}[:domain_status]") unless params[:domain_status].nil?
        type
      end
    end

    module DescribeElasticsearchDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticsearchDomainsInput, context: context)
        type = Types::DescribeElasticsearchDomainsInput.new
        type.domain_names = DomainNameList.build(params[:domain_names], context: "#{context}[:domain_names]") unless params[:domain_names].nil?
        type
      end
    end

    module DescribeElasticsearchDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticsearchDomainsOutput, context: context)
        type = Types::DescribeElasticsearchDomainsOutput.new
        type.domain_status_list = ElasticsearchDomainStatusList.build(params[:domain_status_list], context: "#{context}[:domain_status_list]") unless params[:domain_status_list].nil?
        type
      end
    end

    module DescribeElasticsearchInstanceTypeLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticsearchInstanceTypeLimitsInput, context: context)
        type = Types::DescribeElasticsearchInstanceTypeLimitsInput.new
        type.domain_name = params[:domain_name]
        type.instance_type = params[:instance_type]
        type.elasticsearch_version = params[:elasticsearch_version]
        type
      end
    end

    module DescribeElasticsearchInstanceTypeLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticsearchInstanceTypeLimitsOutput, context: context)
        type = Types::DescribeElasticsearchInstanceTypeLimitsOutput.new
        type.limits_by_role = LimitsByRole.build(params[:limits_by_role], context: "#{context}[:limits_by_role]") unless params[:limits_by_role].nil?
        type
      end
    end

    module DescribeInboundCrossClusterSearchConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInboundCrossClusterSearchConnectionsInput, context: context)
        type = Types::DescribeInboundCrossClusterSearchConnectionsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInboundCrossClusterSearchConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInboundCrossClusterSearchConnectionsOutput, context: context)
        type = Types::DescribeInboundCrossClusterSearchConnectionsOutput.new
        type.cross_cluster_search_connections = InboundCrossClusterSearchConnections.build(params[:cross_cluster_search_connections], context: "#{context}[:cross_cluster_search_connections]") unless params[:cross_cluster_search_connections].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOutboundCrossClusterSearchConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOutboundCrossClusterSearchConnectionsInput, context: context)
        type = Types::DescribeOutboundCrossClusterSearchConnectionsInput.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOutboundCrossClusterSearchConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOutboundCrossClusterSearchConnectionsOutput, context: context)
        type = Types::DescribeOutboundCrossClusterSearchConnectionsOutput.new
        type.cross_cluster_search_connections = OutboundCrossClusterSearchConnections.build(params[:cross_cluster_search_connections], context: "#{context}[:cross_cluster_search_connections]") unless params[:cross_cluster_search_connections].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePackagesFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackagesFilter, context: context)
        type = Types::DescribePackagesFilter.new
        type.name = params[:name]
        type.value = DescribePackagesFilterValues.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module DescribePackagesFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DescribePackagesFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribePackagesFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DescribePackagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackagesInput, context: context)
        type = Types::DescribePackagesInput.new
        type.filters = DescribePackagesFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePackagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePackagesOutput, context: context)
        type = Types::DescribePackagesOutput.new
        type.package_details_list = PackageDetailsList.build(params[:package_details_list], context: "#{context}[:package_details_list]") unless params[:package_details_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeReservedElasticsearchInstanceOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedElasticsearchInstanceOfferingsInput, context: context)
        type = Types::DescribeReservedElasticsearchInstanceOfferingsInput.new
        type.reserved_elasticsearch_instance_offering_id = params[:reserved_elasticsearch_instance_offering_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeReservedElasticsearchInstanceOfferingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedElasticsearchInstanceOfferingsOutput, context: context)
        type = Types::DescribeReservedElasticsearchInstanceOfferingsOutput.new
        type.next_token = params[:next_token]
        type.reserved_elasticsearch_instance_offerings = ReservedElasticsearchInstanceOfferingList.build(params[:reserved_elasticsearch_instance_offerings], context: "#{context}[:reserved_elasticsearch_instance_offerings]") unless params[:reserved_elasticsearch_instance_offerings].nil?
        type
      end
    end

    module DescribeReservedElasticsearchInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedElasticsearchInstancesInput, context: context)
        type = Types::DescribeReservedElasticsearchInstancesInput.new
        type.reserved_elasticsearch_instance_id = params[:reserved_elasticsearch_instance_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeReservedElasticsearchInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReservedElasticsearchInstancesOutput, context: context)
        type = Types::DescribeReservedElasticsearchInstancesOutput.new
        type.next_token = params[:next_token]
        type.reserved_elasticsearch_instances = ReservedElasticsearchInstanceList.build(params[:reserved_elasticsearch_instances], context: "#{context}[:reserved_elasticsearch_instances]") unless params[:reserved_elasticsearch_instances].nil?
        type
      end
    end

    module DisabledOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisabledOperationException, context: context)
        type = Types::DisabledOperationException.new
        type.message = params[:message]
        type
      end
    end

    module DissociatePackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DissociatePackageInput, context: context)
        type = Types::DissociatePackageInput.new
        type.package_id = params[:package_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DissociatePackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DissociatePackageOutput, context: context)
        type = Types::DissociatePackageOutput.new
        type.domain_package_details = DomainPackageDetails.build(params[:domain_package_details], context: "#{context}[:domain_package_details]") unless params[:domain_package_details].nil?
        type
      end
    end

    module DomainEndpointOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainEndpointOptions, context: context)
        type = Types::DomainEndpointOptions.new
        type.enforce_https = params[:enforce_https]
        type.tls_security_policy = params[:tls_security_policy]
        type.custom_endpoint_enabled = params[:custom_endpoint_enabled]
        type.custom_endpoint = params[:custom_endpoint]
        type.custom_endpoint_certificate_arn = params[:custom_endpoint_certificate_arn]
        type
      end
    end

    module DomainEndpointOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainEndpointOptionsStatus, context: context)
        type = Types::DomainEndpointOptionsStatus.new
        type.options = DomainEndpointOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module DomainInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainInfo, context: context)
        type = Types::DomainInfo.new
        type.domain_name = params[:domain_name]
        type.engine_type = params[:engine_type]
        type
      end
    end

    module DomainInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainInformation, context: context)
        type = Types::DomainInformation.new
        type.owner_id = params[:owner_id]
        type.domain_name = params[:domain_name]
        type.region = params[:region]
        type
      end
    end

    module DomainNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DomainPackageDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainPackageDetails, context: context)
        type = Types::DomainPackageDetails.new
        type.package_id = params[:package_id]
        type.package_name = params[:package_name]
        type.package_type = params[:package_type]
        type.last_updated = params[:last_updated]
        type.domain_name = params[:domain_name]
        type.domain_package_status = params[:domain_package_status]
        type.package_version = params[:package_version]
        type.reference_path = params[:reference_path]
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type
      end
    end

    module DomainPackageDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainPackageDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DryRunResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DryRunResults, context: context)
        type = Types::DryRunResults.new
        type.deployment_type = params[:deployment_type]
        type.message = params[:message]
        type
      end
    end

    module Duration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Duration, context: context)
        type = Types::Duration.new
        type.value = params[:value]
        type.unit = params[:unit]
        type
      end
    end

    module EBSOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EBSOptions, context: context)
        type = Types::EBSOptions.new
        type.ebs_enabled = params[:ebs_enabled]
        type.volume_type = params[:volume_type]
        type.volume_size = params[:volume_size]
        type.iops = params[:iops]
        type
      end
    end

    module EBSOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EBSOptionsStatus, context: context)
        type = Types::EBSOptionsStatus.new
        type.options = EBSOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module ElasticsearchClusterConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchClusterConfig, context: context)
        type = Types::ElasticsearchClusterConfig.new
        type.instance_type = params[:instance_type]
        type.instance_count = params[:instance_count]
        type.dedicated_master_enabled = params[:dedicated_master_enabled]
        type.zone_awareness_enabled = params[:zone_awareness_enabled]
        type.zone_awareness_config = ZoneAwarenessConfig.build(params[:zone_awareness_config], context: "#{context}[:zone_awareness_config]") unless params[:zone_awareness_config].nil?
        type.dedicated_master_type = params[:dedicated_master_type]
        type.dedicated_master_count = params[:dedicated_master_count]
        type.warm_enabled = params[:warm_enabled]
        type.warm_type = params[:warm_type]
        type.warm_count = params[:warm_count]
        type.cold_storage_options = ColdStorageOptions.build(params[:cold_storage_options], context: "#{context}[:cold_storage_options]") unless params[:cold_storage_options].nil?
        type
      end
    end

    module ElasticsearchClusterConfigStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchClusterConfigStatus, context: context)
        type = Types::ElasticsearchClusterConfigStatus.new
        type.options = ElasticsearchClusterConfig.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module ElasticsearchDomainConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchDomainConfig, context: context)
        type = Types::ElasticsearchDomainConfig.new
        type.elasticsearch_version = ElasticsearchVersionStatus.build(params[:elasticsearch_version], context: "#{context}[:elasticsearch_version]") unless params[:elasticsearch_version].nil?
        type.elasticsearch_cluster_config = ElasticsearchClusterConfigStatus.build(params[:elasticsearch_cluster_config], context: "#{context}[:elasticsearch_cluster_config]") unless params[:elasticsearch_cluster_config].nil?
        type.ebs_options = EBSOptionsStatus.build(params[:ebs_options], context: "#{context}[:ebs_options]") unless params[:ebs_options].nil?
        type.access_policies = AccessPoliciesStatus.build(params[:access_policies], context: "#{context}[:access_policies]") unless params[:access_policies].nil?
        type.snapshot_options = SnapshotOptionsStatus.build(params[:snapshot_options], context: "#{context}[:snapshot_options]") unless params[:snapshot_options].nil?
        type.vpc_options = VPCDerivedInfoStatus.build(params[:vpc_options], context: "#{context}[:vpc_options]") unless params[:vpc_options].nil?
        type.cognito_options = CognitoOptionsStatus.build(params[:cognito_options], context: "#{context}[:cognito_options]") unless params[:cognito_options].nil?
        type.encryption_at_rest_options = EncryptionAtRestOptionsStatus.build(params[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless params[:encryption_at_rest_options].nil?
        type.node_to_node_encryption_options = NodeToNodeEncryptionOptionsStatus.build(params[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless params[:node_to_node_encryption_options].nil?
        type.advanced_options = AdvancedOptionsStatus.build(params[:advanced_options], context: "#{context}[:advanced_options]") unless params[:advanced_options].nil?
        type.log_publishing_options = LogPublishingOptionsStatus.build(params[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless params[:log_publishing_options].nil?
        type.domain_endpoint_options = DomainEndpointOptionsStatus.build(params[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless params[:domain_endpoint_options].nil?
        type.advanced_security_options = AdvancedSecurityOptionsStatus.build(params[:advanced_security_options], context: "#{context}[:advanced_security_options]") unless params[:advanced_security_options].nil?
        type.auto_tune_options = AutoTuneOptionsStatus.build(params[:auto_tune_options], context: "#{context}[:auto_tune_options]") unless params[:auto_tune_options].nil?
        type.change_progress_details = ChangeProgressDetails.build(params[:change_progress_details], context: "#{context}[:change_progress_details]") unless params[:change_progress_details].nil?
        type
      end
    end

    module ElasticsearchDomainStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchDomainStatus, context: context)
        type = Types::ElasticsearchDomainStatus.new
        type.domain_id = params[:domain_id]
        type.domain_name = params[:domain_name]
        type.arn = params[:arn]
        type.created = params[:created]
        type.deleted = params[:deleted]
        type.endpoint = params[:endpoint]
        type.endpoints = EndpointsMap.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.processing = params[:processing]
        type.upgrade_processing = params[:upgrade_processing]
        type.elasticsearch_version = params[:elasticsearch_version]
        type.elasticsearch_cluster_config = ElasticsearchClusterConfig.build(params[:elasticsearch_cluster_config], context: "#{context}[:elasticsearch_cluster_config]") unless params[:elasticsearch_cluster_config].nil?
        type.ebs_options = EBSOptions.build(params[:ebs_options], context: "#{context}[:ebs_options]") unless params[:ebs_options].nil?
        type.access_policies = params[:access_policies]
        type.snapshot_options = SnapshotOptions.build(params[:snapshot_options], context: "#{context}[:snapshot_options]") unless params[:snapshot_options].nil?
        type.vpc_options = VPCDerivedInfo.build(params[:vpc_options], context: "#{context}[:vpc_options]") unless params[:vpc_options].nil?
        type.cognito_options = CognitoOptions.build(params[:cognito_options], context: "#{context}[:cognito_options]") unless params[:cognito_options].nil?
        type.encryption_at_rest_options = EncryptionAtRestOptions.build(params[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless params[:encryption_at_rest_options].nil?
        type.node_to_node_encryption_options = NodeToNodeEncryptionOptions.build(params[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless params[:node_to_node_encryption_options].nil?
        type.advanced_options = AdvancedOptions.build(params[:advanced_options], context: "#{context}[:advanced_options]") unless params[:advanced_options].nil?
        type.log_publishing_options = LogPublishingOptions.build(params[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless params[:log_publishing_options].nil?
        type.service_software_options = ServiceSoftwareOptions.build(params[:service_software_options], context: "#{context}[:service_software_options]") unless params[:service_software_options].nil?
        type.domain_endpoint_options = DomainEndpointOptions.build(params[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless params[:domain_endpoint_options].nil?
        type.advanced_security_options = AdvancedSecurityOptions.build(params[:advanced_security_options], context: "#{context}[:advanced_security_options]") unless params[:advanced_security_options].nil?
        type.auto_tune_options = AutoTuneOptionsOutput.build(params[:auto_tune_options], context: "#{context}[:auto_tune_options]") unless params[:auto_tune_options].nil?
        type.change_progress_details = ChangeProgressDetails.build(params[:change_progress_details], context: "#{context}[:change_progress_details]") unless params[:change_progress_details].nil?
        type
      end
    end

    module ElasticsearchDomainStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ElasticsearchDomainStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ElasticsearchInstanceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ElasticsearchVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ElasticsearchVersionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchVersionStatus, context: context)
        type = Types::ElasticsearchVersionStatus.new
        type.options = params[:options]
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module EncryptionAtRestOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionAtRestOptions, context: context)
        type = Types::EncryptionAtRestOptions.new
        type.enabled = params[:enabled]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module EncryptionAtRestOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionAtRestOptionsStatus, context: context)
        type = Types::EncryptionAtRestOptionsStatus.new
        type.options = EncryptionAtRestOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module EndpointsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetails, context: context)
        type = Types::ErrorDetails.new
        type.error_type = params[:error_type]
        type.error_message = params[:error_message]
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = ValueStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
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

    module GetCompatibleElasticsearchVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCompatibleElasticsearchVersionsInput, context: context)
        type = Types::GetCompatibleElasticsearchVersionsInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetCompatibleElasticsearchVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCompatibleElasticsearchVersionsOutput, context: context)
        type = Types::GetCompatibleElasticsearchVersionsOutput.new
        type.compatible_elasticsearch_versions = CompatibleElasticsearchVersionsList.build(params[:compatible_elasticsearch_versions], context: "#{context}[:compatible_elasticsearch_versions]") unless params[:compatible_elasticsearch_versions].nil?
        type
      end
    end

    module GetPackageVersionHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPackageVersionHistoryInput, context: context)
        type = Types::GetPackageVersionHistoryInput.new
        type.package_id = params[:package_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetPackageVersionHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPackageVersionHistoryOutput, context: context)
        type = Types::GetPackageVersionHistoryOutput.new
        type.package_id = params[:package_id]
        type.package_version_history_list = PackageVersionHistoryList.build(params[:package_version_history_list], context: "#{context}[:package_version_history_list]") unless params[:package_version_history_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetUpgradeHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUpgradeHistoryInput, context: context)
        type = Types::GetUpgradeHistoryInput.new
        type.domain_name = params[:domain_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetUpgradeHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUpgradeHistoryOutput, context: context)
        type = Types::GetUpgradeHistoryOutput.new
        type.upgrade_histories = UpgradeHistoryList.build(params[:upgrade_histories], context: "#{context}[:upgrade_histories]") unless params[:upgrade_histories].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetUpgradeStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUpgradeStatusInput, context: context)
        type = Types::GetUpgradeStatusInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetUpgradeStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUpgradeStatusOutput, context: context)
        type = Types::GetUpgradeStatusOutput.new
        type.upgrade_step = params[:upgrade_step]
        type.step_status = params[:step_status]
        type.upgrade_name = params[:upgrade_name]
        type
      end
    end

    module InboundCrossClusterSearchConnection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InboundCrossClusterSearchConnection, context: context)
        type = Types::InboundCrossClusterSearchConnection.new
        type.source_domain_info = DomainInformation.build(params[:source_domain_info], context: "#{context}[:source_domain_info]") unless params[:source_domain_info].nil?
        type.destination_domain_info = DomainInformation.build(params[:destination_domain_info], context: "#{context}[:destination_domain_info]") unless params[:destination_domain_info].nil?
        type.cross_cluster_search_connection_id = params[:cross_cluster_search_connection_id]
        type.connection_status = InboundCrossClusterSearchConnectionStatus.build(params[:connection_status], context: "#{context}[:connection_status]") unless params[:connection_status].nil?
        type
      end
    end

    module InboundCrossClusterSearchConnectionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InboundCrossClusterSearchConnectionStatus, context: context)
        type = Types::InboundCrossClusterSearchConnectionStatus.new
        type.status_code = params[:status_code]
        type.message = params[:message]
        type
      end
    end

    module InboundCrossClusterSearchConnections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InboundCrossClusterSearchConnection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceCountLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceCountLimits, context: context)
        type = Types::InstanceCountLimits.new
        type.minimum_instance_count = params[:minimum_instance_count]
        type.maximum_instance_count = params[:maximum_instance_count]
        type
      end
    end

    module InstanceLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceLimits, context: context)
        type = Types::InstanceLimits.new
        type.instance_count_limits = InstanceCountLimits.build(params[:instance_count_limits], context: "#{context}[:instance_count_limits]") unless params[:instance_count_limits].nil?
        type
      end
    end

    module InternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalException, context: context)
        type = Types::InternalException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPaginationTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPaginationTokenException, context: context)
        type = Types::InvalidPaginationTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTypeException, context: context)
        type = Types::InvalidTypeException.new
        type.message = params[:message]
        type
      end
    end

    module Issues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module LimitValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Limits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Limits, context: context)
        type = Types::Limits.new
        type.storage_types = StorageTypeList.build(params[:storage_types], context: "#{context}[:storage_types]") unless params[:storage_types].nil?
        type.instance_limits = InstanceLimits.build(params[:instance_limits], context: "#{context}[:instance_limits]") unless params[:instance_limits].nil?
        type.additional_limits = AdditionalLimitList.build(params[:additional_limits], context: "#{context}[:additional_limits]") unless params[:additional_limits].nil?
        type
      end
    end

    module LimitsByRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Limits.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ListDomainNamesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainNamesInput, context: context)
        type = Types::ListDomainNamesInput.new
        type.engine_type = params[:engine_type]
        type
      end
    end

    module ListDomainNamesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainNamesOutput, context: context)
        type = Types::ListDomainNamesOutput.new
        type.domain_names = DomainInfoList.build(params[:domain_names], context: "#{context}[:domain_names]") unless params[:domain_names].nil?
        type
      end
    end

    module ListDomainsForPackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsForPackageInput, context: context)
        type = Types::ListDomainsForPackageInput.new
        type.package_id = params[:package_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainsForPackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsForPackageOutput, context: context)
        type = Types::ListDomainsForPackageOutput.new
        type.domain_package_details_list = DomainPackageDetailsList.build(params[:domain_package_details_list], context: "#{context}[:domain_package_details_list]") unless params[:domain_package_details_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListElasticsearchInstanceTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListElasticsearchInstanceTypesInput, context: context)
        type = Types::ListElasticsearchInstanceTypesInput.new
        type.elasticsearch_version = params[:elasticsearch_version]
        type.domain_name = params[:domain_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListElasticsearchInstanceTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListElasticsearchInstanceTypesOutput, context: context)
        type = Types::ListElasticsearchInstanceTypesOutput.new
        type.elasticsearch_instance_types = ElasticsearchInstanceTypeList.build(params[:elasticsearch_instance_types], context: "#{context}[:elasticsearch_instance_types]") unless params[:elasticsearch_instance_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListElasticsearchVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListElasticsearchVersionsInput, context: context)
        type = Types::ListElasticsearchVersionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListElasticsearchVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListElasticsearchVersionsOutput, context: context)
        type = Types::ListElasticsearchVersionsOutput.new
        type.elasticsearch_versions = ElasticsearchVersionList.build(params[:elasticsearch_versions], context: "#{context}[:elasticsearch_versions]") unless params[:elasticsearch_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackagesForDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackagesForDomainInput, context: context)
        type = Types::ListPackagesForDomainInput.new
        type.domain_name = params[:domain_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPackagesForDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPackagesForDomainOutput, context: context)
        type = Types::ListPackagesForDomainOutput.new
        type.domain_package_details_list = DomainPackageDetailsList.build(params[:domain_package_details_list], context: "#{context}[:domain_package_details_list]") unless params[:domain_package_details_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.arn = params[:arn]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module LogPublishingOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogPublishingOption, context: context)
        type = Types::LogPublishingOption.new
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type.enabled = params[:enabled]
        type
      end
    end

    module LogPublishingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = LogPublishingOption.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module LogPublishingOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogPublishingOptionsStatus, context: context)
        type = Types::LogPublishingOptionsStatus.new
        type.options = LogPublishingOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module MasterUserOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MasterUserOptions, context: context)
        type = Types::MasterUserOptions.new
        type.master_user_arn = params[:master_user_arn]
        type.master_user_name = params[:master_user_name]
        type.master_user_password = params[:master_user_password]
        type
      end
    end

    module NodeToNodeEncryptionOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeToNodeEncryptionOptions, context: context)
        type = Types::NodeToNodeEncryptionOptions.new
        type.enabled = params[:enabled]
        type
      end
    end

    module NodeToNodeEncryptionOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeToNodeEncryptionOptionsStatus, context: context)
        type = Types::NodeToNodeEncryptionOptionsStatus.new
        type.options = NodeToNodeEncryptionOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module OptionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionStatus, context: context)
        type = Types::OptionStatus.new
        type.creation_date = params[:creation_date]
        type.update_date = params[:update_date]
        type.update_version = params[:update_version]
        type.state = params[:state]
        type.pending_deletion = params[:pending_deletion]
        type
      end
    end

    module OutboundCrossClusterSearchConnection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutboundCrossClusterSearchConnection, context: context)
        type = Types::OutboundCrossClusterSearchConnection.new
        type.source_domain_info = DomainInformation.build(params[:source_domain_info], context: "#{context}[:source_domain_info]") unless params[:source_domain_info].nil?
        type.destination_domain_info = DomainInformation.build(params[:destination_domain_info], context: "#{context}[:destination_domain_info]") unless params[:destination_domain_info].nil?
        type.cross_cluster_search_connection_id = params[:cross_cluster_search_connection_id]
        type.connection_alias = params[:connection_alias]
        type.connection_status = OutboundCrossClusterSearchConnectionStatus.build(params[:connection_status], context: "#{context}[:connection_status]") unless params[:connection_status].nil?
        type
      end
    end

    module OutboundCrossClusterSearchConnectionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutboundCrossClusterSearchConnectionStatus, context: context)
        type = Types::OutboundCrossClusterSearchConnectionStatus.new
        type.status_code = params[:status_code]
        type.message = params[:message]
        type
      end
    end

    module OutboundCrossClusterSearchConnections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutboundCrossClusterSearchConnection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageDetails, context: context)
        type = Types::PackageDetails.new
        type.package_id = params[:package_id]
        type.package_name = params[:package_name]
        type.package_type = params[:package_type]
        type.package_description = params[:package_description]
        type.package_status = params[:package_status]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.available_package_version = params[:available_package_version]
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type
      end
    end

    module PackageDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackageDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageSource, context: context)
        type = Types::PackageSource.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key = params[:s3_key]
        type
      end
    end

    module PackageVersionHistory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PackageVersionHistory, context: context)
        type = Types::PackageVersionHistory.new
        type.package_version = params[:package_version]
        type.commit_message = params[:commit_message]
        type.created_at = params[:created_at]
        type
      end
    end

    module PackageVersionHistoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PackageVersionHistory.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PurchaseReservedElasticsearchInstanceOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseReservedElasticsearchInstanceOfferingInput, context: context)
        type = Types::PurchaseReservedElasticsearchInstanceOfferingInput.new
        type.reserved_elasticsearch_instance_offering_id = params[:reserved_elasticsearch_instance_offering_id]
        type.reservation_name = params[:reservation_name]
        type.instance_count = params[:instance_count]
        type
      end
    end

    module PurchaseReservedElasticsearchInstanceOfferingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseReservedElasticsearchInstanceOfferingOutput, context: context)
        type = Types::PurchaseReservedElasticsearchInstanceOfferingOutput.new
        type.reserved_elasticsearch_instance_id = params[:reserved_elasticsearch_instance_id]
        type.reservation_name = params[:reservation_name]
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

    module RejectInboundCrossClusterSearchConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectInboundCrossClusterSearchConnectionInput, context: context)
        type = Types::RejectInboundCrossClusterSearchConnectionInput.new
        type.cross_cluster_search_connection_id = params[:cross_cluster_search_connection_id]
        type
      end
    end

    module RejectInboundCrossClusterSearchConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectInboundCrossClusterSearchConnectionOutput, context: context)
        type = Types::RejectInboundCrossClusterSearchConnectionOutput.new
        type.cross_cluster_search_connection = InboundCrossClusterSearchConnection.build(params[:cross_cluster_search_connection], context: "#{context}[:cross_cluster_search_connection]") unless params[:cross_cluster_search_connection].nil?
        type
      end
    end

    module RemoveTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsInput, context: context)
        type = Types::RemoveTagsInput.new
        type.arn = params[:arn]
        type.tag_keys = StringList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsOutput, context: context)
        type = Types::RemoveTagsOutput.new
        type
      end
    end

    module ReservedElasticsearchInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedElasticsearchInstance, context: context)
        type = Types::ReservedElasticsearchInstance.new
        type.reservation_name = params[:reservation_name]
        type.reserved_elasticsearch_instance_id = params[:reserved_elasticsearch_instance_id]
        type.reserved_elasticsearch_instance_offering_id = params[:reserved_elasticsearch_instance_offering_id]
        type.elasticsearch_instance_type = params[:elasticsearch_instance_type]
        type.start_time = params[:start_time]
        type.duration = params[:duration]
        type.fixed_price = params[:fixed_price]
        type.usage_price = params[:usage_price]
        type.currency_code = params[:currency_code]
        type.elasticsearch_instance_count = params[:elasticsearch_instance_count]
        type.state = params[:state]
        type.payment_option = params[:payment_option]
        type.recurring_charges = RecurringChargeList.build(params[:recurring_charges], context: "#{context}[:recurring_charges]") unless params[:recurring_charges].nil?
        type
      end
    end

    module ReservedElasticsearchInstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedElasticsearchInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservedElasticsearchInstanceOffering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservedElasticsearchInstanceOffering, context: context)
        type = Types::ReservedElasticsearchInstanceOffering.new
        type.reserved_elasticsearch_instance_offering_id = params[:reserved_elasticsearch_instance_offering_id]
        type.elasticsearch_instance_type = params[:elasticsearch_instance_type]
        type.duration = params[:duration]
        type.fixed_price = params[:fixed_price]
        type.usage_price = params[:usage_price]
        type.currency_code = params[:currency_code]
        type.payment_option = params[:payment_option]
        type.recurring_charges = RecurringChargeList.build(params[:recurring_charges], context: "#{context}[:recurring_charges]") unless params[:recurring_charges].nil?
        type
      end
    end

    module ReservedElasticsearchInstanceOfferingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservedElasticsearchInstanceOffering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SAMLIdp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SAMLIdp, context: context)
        type = Types::SAMLIdp.new
        type.metadata_content = params[:metadata_content]
        type.entity_id = params[:entity_id]
        type
      end
    end

    module SAMLOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SAMLOptionsInput, context: context)
        type = Types::SAMLOptionsInput.new
        type.enabled = params[:enabled]
        type.idp = SAMLIdp.build(params[:idp], context: "#{context}[:idp]") unless params[:idp].nil?
        type.master_user_name = params[:master_user_name]
        type.master_backend_role = params[:master_backend_role]
        type.subject_key = params[:subject_key]
        type.roles_key = params[:roles_key]
        type.session_timeout_minutes = params[:session_timeout_minutes]
        type
      end
    end

    module SAMLOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SAMLOptionsOutput, context: context)
        type = Types::SAMLOptionsOutput.new
        type.enabled = params[:enabled]
        type.idp = SAMLIdp.build(params[:idp], context: "#{context}[:idp]") unless params[:idp].nil?
        type.subject_key = params[:subject_key]
        type.roles_key = params[:roles_key]
        type.session_timeout_minutes = params[:session_timeout_minutes]
        type
      end
    end

    module ScheduledAutoTuneDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledAutoTuneDetails, context: context)
        type = Types::ScheduledAutoTuneDetails.new
        type.date = params[:date]
        type.action_type = params[:action_type]
        type.action = params[:action]
        type.severity = params[:severity]
        type
      end
    end

    module ServiceSoftwareOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceSoftwareOptions, context: context)
        type = Types::ServiceSoftwareOptions.new
        type.current_version = params[:current_version]
        type.new_version = params[:new_version]
        type.update_available = params[:update_available]
        type.cancellable = params[:cancellable]
        type.update_status = params[:update_status]
        type.description = params[:description]
        type.automated_update_date = params[:automated_update_date]
        type.optional_deployment = params[:optional_deployment]
        type
      end
    end

    module SnapshotOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotOptions, context: context)
        type = Types::SnapshotOptions.new
        type.automated_snapshot_start_hour = params[:automated_snapshot_start_hour]
        type
      end
    end

    module SnapshotOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnapshotOptionsStatus, context: context)
        type = Types::SnapshotOptionsStatus.new
        type.options = SnapshotOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module StartElasticsearchServiceSoftwareUpdateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartElasticsearchServiceSoftwareUpdateInput, context: context)
        type = Types::StartElasticsearchServiceSoftwareUpdateInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module StartElasticsearchServiceSoftwareUpdateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartElasticsearchServiceSoftwareUpdateOutput, context: context)
        type = Types::StartElasticsearchServiceSoftwareUpdateOutput.new
        type.service_software_options = ServiceSoftwareOptions.build(params[:service_software_options], context: "#{context}[:service_software_options]") unless params[:service_software_options].nil?
        type
      end
    end

    module StorageType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageType, context: context)
        type = Types::StorageType.new
        type.storage_type_name = params[:storage_type_name]
        type.storage_sub_type_name = params[:storage_sub_type_name]
        type.storage_type_limits = StorageTypeLimitList.build(params[:storage_type_limits], context: "#{context}[:storage_type_limits]") unless params[:storage_type_limits].nil?
        type
      end
    end

    module StorageTypeLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageTypeLimit, context: context)
        type = Types::StorageTypeLimit.new
        type.limit_name = params[:limit_name]
        type.limit_values = LimitValueList.build(params[:limit_values], context: "#{context}[:limit_values]") unless params[:limit_values].nil?
        type
      end
    end

    module StorageTypeLimitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StorageTypeLimit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StorageTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StorageType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module UpdateElasticsearchDomainConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateElasticsearchDomainConfigInput, context: context)
        type = Types::UpdateElasticsearchDomainConfigInput.new
        type.domain_name = params[:domain_name]
        type.elasticsearch_cluster_config = ElasticsearchClusterConfig.build(params[:elasticsearch_cluster_config], context: "#{context}[:elasticsearch_cluster_config]") unless params[:elasticsearch_cluster_config].nil?
        type.ebs_options = EBSOptions.build(params[:ebs_options], context: "#{context}[:ebs_options]") unless params[:ebs_options].nil?
        type.snapshot_options = SnapshotOptions.build(params[:snapshot_options], context: "#{context}[:snapshot_options]") unless params[:snapshot_options].nil?
        type.vpc_options = VPCOptions.build(params[:vpc_options], context: "#{context}[:vpc_options]") unless params[:vpc_options].nil?
        type.cognito_options = CognitoOptions.build(params[:cognito_options], context: "#{context}[:cognito_options]") unless params[:cognito_options].nil?
        type.advanced_options = AdvancedOptions.build(params[:advanced_options], context: "#{context}[:advanced_options]") unless params[:advanced_options].nil?
        type.access_policies = params[:access_policies]
        type.log_publishing_options = LogPublishingOptions.build(params[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless params[:log_publishing_options].nil?
        type.domain_endpoint_options = DomainEndpointOptions.build(params[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless params[:domain_endpoint_options].nil?
        type.advanced_security_options = AdvancedSecurityOptionsInput.build(params[:advanced_security_options], context: "#{context}[:advanced_security_options]") unless params[:advanced_security_options].nil?
        type.node_to_node_encryption_options = NodeToNodeEncryptionOptions.build(params[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless params[:node_to_node_encryption_options].nil?
        type.encryption_at_rest_options = EncryptionAtRestOptions.build(params[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless params[:encryption_at_rest_options].nil?
        type.auto_tune_options = AutoTuneOptions.build(params[:auto_tune_options], context: "#{context}[:auto_tune_options]") unless params[:auto_tune_options].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module UpdateElasticsearchDomainConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateElasticsearchDomainConfigOutput, context: context)
        type = Types::UpdateElasticsearchDomainConfigOutput.new
        type.domain_config = ElasticsearchDomainConfig.build(params[:domain_config], context: "#{context}[:domain_config]") unless params[:domain_config].nil?
        type.dry_run_results = DryRunResults.build(params[:dry_run_results], context: "#{context}[:dry_run_results]") unless params[:dry_run_results].nil?
        type
      end
    end

    module UpdatePackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePackageInput, context: context)
        type = Types::UpdatePackageInput.new
        type.package_id = params[:package_id]
        type.package_source = PackageSource.build(params[:package_source], context: "#{context}[:package_source]") unless params[:package_source].nil?
        type.package_description = params[:package_description]
        type.commit_message = params[:commit_message]
        type
      end
    end

    module UpdatePackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePackageOutput, context: context)
        type = Types::UpdatePackageOutput.new
        type.package_details = PackageDetails.build(params[:package_details], context: "#{context}[:package_details]") unless params[:package_details].nil?
        type
      end
    end

    module UpgradeElasticsearchDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradeElasticsearchDomainInput, context: context)
        type = Types::UpgradeElasticsearchDomainInput.new
        type.domain_name = params[:domain_name]
        type.target_version = params[:target_version]
        type.perform_check_only = params[:perform_check_only]
        type
      end
    end

    module UpgradeElasticsearchDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradeElasticsearchDomainOutput, context: context)
        type = Types::UpgradeElasticsearchDomainOutput.new
        type.domain_name = params[:domain_name]
        type.target_version = params[:target_version]
        type.perform_check_only = params[:perform_check_only]
        type.change_progress_details = ChangeProgressDetails.build(params[:change_progress_details], context: "#{context}[:change_progress_details]") unless params[:change_progress_details].nil?
        type
      end
    end

    module UpgradeHistory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradeHistory, context: context)
        type = Types::UpgradeHistory.new
        type.upgrade_name = params[:upgrade_name]
        type.start_timestamp = params[:start_timestamp]
        type.upgrade_status = params[:upgrade_status]
        type.steps_list = UpgradeStepsList.build(params[:steps_list], context: "#{context}[:steps_list]") unless params[:steps_list].nil?
        type
      end
    end

    module UpgradeHistoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpgradeHistory.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpgradeStepItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradeStepItem, context: context)
        type = Types::UpgradeStepItem.new
        type.upgrade_step = params[:upgrade_step]
        type.upgrade_step_status = params[:upgrade_step_status]
        type.issues = Issues.build(params[:issues], context: "#{context}[:issues]") unless params[:issues].nil?
        type.progress_percent = params[:progress_percent]
        type
      end
    end

    module UpgradeStepsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpgradeStepItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VPCDerivedInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VPCDerivedInfo, context: context)
        type = Types::VPCDerivedInfo.new
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = StringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.availability_zones = StringList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.security_group_ids = StringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module VPCDerivedInfoStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VPCDerivedInfoStatus, context: context)
        type = Types::VPCDerivedInfoStatus.new
        type.options = VPCDerivedInfo.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module VPCOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VPCOptions, context: context)
        type = Types::VPCOptions.new
        type.subnet_ids = StringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = StringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module ValueStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ZoneAwarenessConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZoneAwarenessConfig, context: context)
        type = Types::ZoneAwarenessConfig.new
        type.availability_zone_count = params[:availability_zone_count]
        type
      end
    end

  end
end
