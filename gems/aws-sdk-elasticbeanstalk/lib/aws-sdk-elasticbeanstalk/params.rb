# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ElasticBeanstalk
  module Params

    module AbortEnvironmentUpdateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortEnvironmentUpdateInput, context: context)
        type = Types::AbortEnvironmentUpdateInput.new
        type.environment_id = params[:environment_id]
        type.environment_name = params[:environment_name]
        type
      end
    end

    module AbortEnvironmentUpdateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortEnvironmentUpdateOutput, context: context)
        type = Types::AbortEnvironmentUpdateOutput.new
        type
      end
    end

    module ApplicationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationDescription, context: context)
        type = Types::ApplicationDescription.new
        type.application_arn = params[:application_arn]
        type.application_name = params[:application_name]
        type.description = params[:description]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.versions = VersionLabelsList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.configuration_templates = ConfigurationTemplateNamesList.build(params[:configuration_templates], context: "#{context}[:configuration_templates]") unless params[:configuration_templates].nil?
        type.resource_lifecycle_config = ApplicationResourceLifecycleConfig.build(params[:resource_lifecycle_config], context: "#{context}[:resource_lifecycle_config]") unless params[:resource_lifecycle_config].nil?
        type
      end
    end

    module ApplicationDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationMetrics, context: context)
        type = Types::ApplicationMetrics.new
        type.duration = params[:duration]
        type.request_count = params[:request_count]
        type.status_codes = StatusCodes.build(params[:status_codes], context: "#{context}[:status_codes]") unless params[:status_codes].nil?
        type.latency = Latency.build(params[:latency], context: "#{context}[:latency]") unless params[:latency].nil?
        type
      end
    end

    module ApplicationNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ApplicationResourceLifecycleConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationResourceLifecycleConfig, context: context)
        type = Types::ApplicationResourceLifecycleConfig.new
        type.service_role = params[:service_role]
        type.version_lifecycle_config = ApplicationVersionLifecycleConfig.build(params[:version_lifecycle_config], context: "#{context}[:version_lifecycle_config]") unless params[:version_lifecycle_config].nil?
        type
      end
    end

    module ApplicationVersionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationVersionDescription, context: context)
        type = Types::ApplicationVersionDescription.new
        type.application_version_arn = params[:application_version_arn]
        type.application_name = params[:application_name]
        type.description = params[:description]
        type.version_label = params[:version_label]
        type.source_build_information = SourceBuildInformation.build(params[:source_build_information], context: "#{context}[:source_build_information]") unless params[:source_build_information].nil?
        type.build_arn = params[:build_arn]
        type.source_bundle = S3Location.build(params[:source_bundle], context: "#{context}[:source_bundle]") unless params[:source_bundle].nil?
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.status = params[:status]
        type
      end
    end

    module ApplicationVersionDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationVersionDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationVersionLifecycleConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationVersionLifecycleConfig, context: context)
        type = Types::ApplicationVersionLifecycleConfig.new
        type.max_count_rule = MaxCountRule.build(params[:max_count_rule], context: "#{context}[:max_count_rule]") unless params[:max_count_rule].nil?
        type.max_age_rule = MaxAgeRule.build(params[:max_age_rule], context: "#{context}[:max_age_rule]") unless params[:max_age_rule].nil?
        type
      end
    end

    module ApplyEnvironmentManagedActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplyEnvironmentManagedActionInput, context: context)
        type = Types::ApplyEnvironmentManagedActionInput.new
        type.environment_name = params[:environment_name]
        type.environment_id = params[:environment_id]
        type.action_id = params[:action_id]
        type
      end
    end

    module ApplyEnvironmentManagedActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplyEnvironmentManagedActionOutput, context: context)
        type = Types::ApplyEnvironmentManagedActionOutput.new
        type.action_id = params[:action_id]
        type.action_description = params[:action_description]
        type.action_type = params[:action_type]
        type.status = params[:status]
        type
      end
    end

    module AssociateEnvironmentOperationsRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateEnvironmentOperationsRoleInput, context: context)
        type = Types::AssociateEnvironmentOperationsRoleInput.new
        type.environment_name = params[:environment_name]
        type.operations_role = params[:operations_role]
        type
      end
    end

    module AssociateEnvironmentOperationsRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateEnvironmentOperationsRoleOutput, context: context)
        type = Types::AssociateEnvironmentOperationsRoleOutput.new
        type
      end
    end

    module AutoScalingGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingGroup, context: context)
        type = Types::AutoScalingGroup.new
        type.name = params[:name]
        type
      end
    end

    module AutoScalingGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoScalingGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AvailableSolutionStackDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SolutionStackDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AvailableSolutionStackNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BuildConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildConfiguration, context: context)
        type = Types::BuildConfiguration.new
        type.artifact_name = params[:artifact_name]
        type.code_build_service_role = params[:code_build_service_role]
        type.compute_type = params[:compute_type]
        type.image = params[:image]
        type.timeout_in_minutes = params[:timeout_in_minutes]
        type
      end
    end

    module Builder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Builder, context: context)
        type = Types::Builder.new
        type.arn = params[:arn]
        type
      end
    end

    module CPUUtilization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CPUUtilization, context: context)
        type = Types::CPUUtilization.new
        type.user = params[:user]
        type.nice = params[:nice]
        type.system = params[:system]
        type.idle = params[:idle]
        type.io_wait = params[:io_wait]
        type.irq = params[:irq]
        type.soft_irq = params[:soft_irq]
        type.privileged = params[:privileged]
        type
      end
    end

    module Causes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CheckDNSAvailabilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckDNSAvailabilityInput, context: context)
        type = Types::CheckDNSAvailabilityInput.new
        type.cname_prefix = params[:cname_prefix]
        type
      end
    end

    module CheckDNSAvailabilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckDNSAvailabilityOutput, context: context)
        type = Types::CheckDNSAvailabilityOutput.new
        type.available = params[:available]
        type.fully_qualified_cname = params[:fully_qualified_cname]
        type
      end
    end

    module CodeBuildNotInServiceRegionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeBuildNotInServiceRegionException, context: context)
        type = Types::CodeBuildNotInServiceRegionException.new
        type.message = params[:message]
        type
      end
    end

    module ComposeEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComposeEnvironmentsInput, context: context)
        type = Types::ComposeEnvironmentsInput.new
        type.application_name = params[:application_name]
        type.group_name = params[:group_name]
        type.version_labels = VersionLabels.build(params[:version_labels], context: "#{context}[:version_labels]") unless params[:version_labels].nil?
        type
      end
    end

    module ComposeEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComposeEnvironmentsOutput, context: context)
        type = Types::ComposeEnvironmentsOutput.new
        type.environments = EnvironmentDescriptionsList.build(params[:environments], context: "#{context}[:environments]") unless params[:environments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ConfigurationOptionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationOptionDescription, context: context)
        type = Types::ConfigurationOptionDescription.new
        type.namespace = params[:namespace]
        type.name = params[:name]
        type.default_value = params[:default_value]
        type.change_severity = params[:change_severity]
        type.user_defined = params[:user_defined]
        type.value_type = params[:value_type]
        type.value_options = ConfigurationOptionPossibleValues.build(params[:value_options], context: "#{context}[:value_options]") unless params[:value_options].nil?
        type.min_value = params[:min_value]
        type.max_value = params[:max_value]
        type.max_length = params[:max_length]
        type.regex = OptionRestrictionRegex.build(params[:regex], context: "#{context}[:regex]") unless params[:regex].nil?
        type
      end
    end

    module ConfigurationOptionDescriptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationOptionDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigurationOptionPossibleValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConfigurationOptionSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationOptionSetting, context: context)
        type = Types::ConfigurationOptionSetting.new
        type.resource_name = params[:resource_name]
        type.namespace = params[:namespace]
        type.option_name = params[:option_name]
        type.value = params[:value]
        type
      end
    end

    module ConfigurationOptionSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationOptionSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigurationSettingsDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationSettingsDescription, context: context)
        type = Types::ConfigurationSettingsDescription.new
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.application_name = params[:application_name]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.environment_name = params[:environment_name]
        type.deployment_status = params[:deployment_status]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.option_settings = ConfigurationOptionSettingsList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type
      end
    end

    module ConfigurationSettingsDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationSettingsDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigurationTemplateNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.application_name = params[:application_name]
        type.description = params[:description]
        type.resource_lifecycle_config = ApplicationResourceLifecycleConfig.build(params[:resource_lifecycle_config], context: "#{context}[:resource_lifecycle_config]") unless params[:resource_lifecycle_config].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application = ApplicationDescription.build(params[:application], context: "#{context}[:application]") unless params[:application].nil?
        type
      end
    end

    module CreateApplicationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationVersionInput, context: context)
        type = Types::CreateApplicationVersionInput.new
        type.application_name = params[:application_name]
        type.version_label = params[:version_label]
        type.description = params[:description]
        type.source_build_information = SourceBuildInformation.build(params[:source_build_information], context: "#{context}[:source_build_information]") unless params[:source_build_information].nil?
        type.source_bundle = S3Location.build(params[:source_bundle], context: "#{context}[:source_bundle]") unless params[:source_bundle].nil?
        type.build_configuration = BuildConfiguration.build(params[:build_configuration], context: "#{context}[:build_configuration]") unless params[:build_configuration].nil?
        type.auto_create_application = params[:auto_create_application]
        type.process = params[:process]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateApplicationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationVersionOutput, context: context)
        type = Types::CreateApplicationVersionOutput.new
        type.application_version = ApplicationVersionDescription.build(params[:application_version], context: "#{context}[:application_version]") unless params[:application_version].nil?
        type
      end
    end

    module CreateConfigurationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationTemplateInput, context: context)
        type = Types::CreateConfigurationTemplateInput.new
        type.application_name = params[:application_name]
        type.template_name = params[:template_name]
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.source_configuration = SourceConfiguration.build(params[:source_configuration], context: "#{context}[:source_configuration]") unless params[:source_configuration].nil?
        type.environment_id = params[:environment_id]
        type.description = params[:description]
        type.option_settings = ConfigurationOptionSettingsList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateConfigurationTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationTemplateOutput, context: context)
        type = Types::CreateConfigurationTemplateOutput.new
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.application_name = params[:application_name]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.environment_name = params[:environment_name]
        type.deployment_status = params[:deployment_status]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.option_settings = ConfigurationOptionSettingsList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type
      end
    end

    module CreateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentInput, context: context)
        type = Types::CreateEnvironmentInput.new
        type.application_name = params[:application_name]
        type.environment_name = params[:environment_name]
        type.group_name = params[:group_name]
        type.description = params[:description]
        type.cname_prefix = params[:cname_prefix]
        type.tier = EnvironmentTier.build(params[:tier], context: "#{context}[:tier]") unless params[:tier].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version_label = params[:version_label]
        type.template_name = params[:template_name]
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.option_settings = ConfigurationOptionSettingsList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type.options_to_remove = OptionsSpecifierList.build(params[:options_to_remove], context: "#{context}[:options_to_remove]") unless params[:options_to_remove].nil?
        type.operations_role = params[:operations_role]
        type
      end
    end

    module CreateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentOutput, context: context)
        type = Types::CreateEnvironmentOutput.new
        type.environment_name = params[:environment_name]
        type.environment_id = params[:environment_id]
        type.application_name = params[:application_name]
        type.version_label = params[:version_label]
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.endpoint_url = params[:endpoint_url]
        type.cname = params[:cname]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.status = params[:status]
        type.abortable_operation_in_progress = params[:abortable_operation_in_progress]
        type.health = params[:health]
        type.health_status = params[:health_status]
        type.resources = EnvironmentResourcesDescription.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tier = EnvironmentTier.build(params[:tier], context: "#{context}[:tier]") unless params[:tier].nil?
        type.environment_links = EnvironmentLinks.build(params[:environment_links], context: "#{context}[:environment_links]") unless params[:environment_links].nil?
        type.environment_arn = params[:environment_arn]
        type.operations_role = params[:operations_role]
        type
      end
    end

    module CreatePlatformVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlatformVersionInput, context: context)
        type = Types::CreatePlatformVersionInput.new
        type.platform_name = params[:platform_name]
        type.platform_version = params[:platform_version]
        type.platform_definition_bundle = S3Location.build(params[:platform_definition_bundle], context: "#{context}[:platform_definition_bundle]") unless params[:platform_definition_bundle].nil?
        type.environment_name = params[:environment_name]
        type.option_settings = ConfigurationOptionSettingsList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePlatformVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlatformVersionOutput, context: context)
        type = Types::CreatePlatformVersionOutput.new
        type.platform_summary = PlatformSummary.build(params[:platform_summary], context: "#{context}[:platform_summary]") unless params[:platform_summary].nil?
        type.builder = Builder.build(params[:builder], context: "#{context}[:builder]") unless params[:builder].nil?
        type
      end
    end

    module CreateStorageLocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStorageLocationInput, context: context)
        type = Types::CreateStorageLocationInput.new
        type
      end
    end

    module CreateStorageLocationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStorageLocationOutput, context: context)
        type = Types::CreateStorageLocationOutput.new
        type.s3_bucket = params[:s3_bucket]
        type
      end
    end

    module CustomAmi
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomAmi, context: context)
        type = Types::CustomAmi.new
        type.virtualization_type = params[:virtualization_type]
        type.image_id = params[:image_id]
        type
      end
    end

    module CustomAmiList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomAmi.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.application_name = params[:application_name]
        type.terminate_env_by_force = params[:terminate_env_by_force]
        type
      end
    end

    module DeleteApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutput, context: context)
        type = Types::DeleteApplicationOutput.new
        type
      end
    end

    module DeleteApplicationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationVersionInput, context: context)
        type = Types::DeleteApplicationVersionInput.new
        type.application_name = params[:application_name]
        type.version_label = params[:version_label]
        type.delete_source_bundle = params[:delete_source_bundle]
        type
      end
    end

    module DeleteApplicationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationVersionOutput, context: context)
        type = Types::DeleteApplicationVersionOutput.new
        type
      end
    end

    module DeleteConfigurationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationTemplateInput, context: context)
        type = Types::DeleteConfigurationTemplateInput.new
        type.application_name = params[:application_name]
        type.template_name = params[:template_name]
        type
      end
    end

    module DeleteConfigurationTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationTemplateOutput, context: context)
        type = Types::DeleteConfigurationTemplateOutput.new
        type
      end
    end

    module DeleteEnvironmentConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentConfigurationInput, context: context)
        type = Types::DeleteEnvironmentConfigurationInput.new
        type.application_name = params[:application_name]
        type.environment_name = params[:environment_name]
        type
      end
    end

    module DeleteEnvironmentConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentConfigurationOutput, context: context)
        type = Types::DeleteEnvironmentConfigurationOutput.new
        type
      end
    end

    module DeletePlatformVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlatformVersionInput, context: context)
        type = Types::DeletePlatformVersionInput.new
        type.platform_arn = params[:platform_arn]
        type
      end
    end

    module DeletePlatformVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlatformVersionOutput, context: context)
        type = Types::DeletePlatformVersionOutput.new
        type.platform_summary = PlatformSummary.build(params[:platform_summary], context: "#{context}[:platform_summary]") unless params[:platform_summary].nil?
        type
      end
    end

    module Deployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Deployment, context: context)
        type = Types::Deployment.new
        type.version_label = params[:version_label]
        type.deployment_id = params[:deployment_id]
        type.status = params[:status]
        type.deployment_time = params[:deployment_time]
        type
      end
    end

    module DescribeAccountAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesInput, context: context)
        type = Types::DescribeAccountAttributesInput.new
        type
      end
    end

    module DescribeAccountAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesOutput, context: context)
        type = Types::DescribeAccountAttributesOutput.new
        type.resource_quotas = ResourceQuotas.build(params[:resource_quotas], context: "#{context}[:resource_quotas]") unless params[:resource_quotas].nil?
        type
      end
    end

    module DescribeApplicationVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationVersionsInput, context: context)
        type = Types::DescribeApplicationVersionsInput.new
        type.application_name = params[:application_name]
        type.version_labels = VersionLabelsList.build(params[:version_labels], context: "#{context}[:version_labels]") unless params[:version_labels].nil?
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeApplicationVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationVersionsOutput, context: context)
        type = Types::DescribeApplicationVersionsOutput.new
        type.application_versions = ApplicationVersionDescriptionList.build(params[:application_versions], context: "#{context}[:application_versions]") unless params[:application_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationsInput, context: context)
        type = Types::DescribeApplicationsInput.new
        type.application_names = ApplicationNamesList.build(params[:application_names], context: "#{context}[:application_names]") unless params[:application_names].nil?
        type
      end
    end

    module DescribeApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationsOutput, context: context)
        type = Types::DescribeApplicationsOutput.new
        type.applications = ApplicationDescriptionList.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type
      end
    end

    module DescribeConfigurationOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationOptionsInput, context: context)
        type = Types::DescribeConfigurationOptionsInput.new
        type.application_name = params[:application_name]
        type.template_name = params[:template_name]
        type.environment_name = params[:environment_name]
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.options = OptionsSpecifierList.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module DescribeConfigurationOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationOptionsOutput, context: context)
        type = Types::DescribeConfigurationOptionsOutput.new
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.options = ConfigurationOptionDescriptionsList.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module DescribeConfigurationSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationSettingsInput, context: context)
        type = Types::DescribeConfigurationSettingsInput.new
        type.application_name = params[:application_name]
        type.template_name = params[:template_name]
        type.environment_name = params[:environment_name]
        type
      end
    end

    module DescribeConfigurationSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationSettingsOutput, context: context)
        type = Types::DescribeConfigurationSettingsOutput.new
        type.configuration_settings = ConfigurationSettingsDescriptionList.build(params[:configuration_settings], context: "#{context}[:configuration_settings]") unless params[:configuration_settings].nil?
        type
      end
    end

    module DescribeEnvironmentHealthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentHealthInput, context: context)
        type = Types::DescribeEnvironmentHealthInput.new
        type.environment_name = params[:environment_name]
        type.environment_id = params[:environment_id]
        type.attribute_names = EnvironmentHealthAttributes.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type
      end
    end

    module DescribeEnvironmentHealthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentHealthOutput, context: context)
        type = Types::DescribeEnvironmentHealthOutput.new
        type.environment_name = params[:environment_name]
        type.health_status = params[:health_status]
        type.status = params[:status]
        type.color = params[:color]
        type.causes = Causes.build(params[:causes], context: "#{context}[:causes]") unless params[:causes].nil?
        type.application_metrics = ApplicationMetrics.build(params[:application_metrics], context: "#{context}[:application_metrics]") unless params[:application_metrics].nil?
        type.instances_health = InstanceHealthSummary.build(params[:instances_health], context: "#{context}[:instances_health]") unless params[:instances_health].nil?
        type.refreshed_at = params[:refreshed_at]
        type
      end
    end

    module DescribeEnvironmentManagedActionHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentManagedActionHistoryInput, context: context)
        type = Types::DescribeEnvironmentManagedActionHistoryInput.new
        type.environment_id = params[:environment_id]
        type.environment_name = params[:environment_name]
        type.next_token = params[:next_token]
        type.max_items = params[:max_items]
        type
      end
    end

    module DescribeEnvironmentManagedActionHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentManagedActionHistoryOutput, context: context)
        type = Types::DescribeEnvironmentManagedActionHistoryOutput.new
        type.managed_action_history_items = ManagedActionHistoryItems.build(params[:managed_action_history_items], context: "#{context}[:managed_action_history_items]") unless params[:managed_action_history_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEnvironmentManagedActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentManagedActionsInput, context: context)
        type = Types::DescribeEnvironmentManagedActionsInput.new
        type.environment_name = params[:environment_name]
        type.environment_id = params[:environment_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeEnvironmentManagedActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentManagedActionsOutput, context: context)
        type = Types::DescribeEnvironmentManagedActionsOutput.new
        type.managed_actions = ManagedActions.build(params[:managed_actions], context: "#{context}[:managed_actions]") unless params[:managed_actions].nil?
        type
      end
    end

    module DescribeEnvironmentResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentResourcesInput, context: context)
        type = Types::DescribeEnvironmentResourcesInput.new
        type.environment_id = params[:environment_id]
        type.environment_name = params[:environment_name]
        type
      end
    end

    module DescribeEnvironmentResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentResourcesOutput, context: context)
        type = Types::DescribeEnvironmentResourcesOutput.new
        type.environment_resources = EnvironmentResourceDescription.build(params[:environment_resources], context: "#{context}[:environment_resources]") unless params[:environment_resources].nil?
        type
      end
    end

    module DescribeEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentsInput, context: context)
        type = Types::DescribeEnvironmentsInput.new
        type.application_name = params[:application_name]
        type.version_label = params[:version_label]
        type.environment_ids = EnvironmentIdList.build(params[:environment_ids], context: "#{context}[:environment_ids]") unless params[:environment_ids].nil?
        type.environment_names = EnvironmentNamesList.build(params[:environment_names], context: "#{context}[:environment_names]") unless params[:environment_names].nil?
        type.include_deleted = params[:include_deleted]
        type.included_deleted_back_to = params[:included_deleted_back_to]
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEnvironmentsOutput, context: context)
        type = Types::DescribeEnvironmentsOutput.new
        type.environments = EnvironmentDescriptionsList.build(params[:environments], context: "#{context}[:environments]") unless params[:environments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsInput, context: context)
        type = Types::DescribeEventsInput.new
        type.application_name = params[:application_name]
        type.version_label = params[:version_label]
        type.template_name = params[:template_name]
        type.environment_id = params[:environment_id]
        type.environment_name = params[:environment_name]
        type.platform_arn = params[:platform_arn]
        type.request_id = params[:request_id]
        type.severity = params[:severity]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsOutput, context: context)
        type = Types::DescribeEventsOutput.new
        type.events = EventDescriptionList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstancesHealthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancesHealthInput, context: context)
        type = Types::DescribeInstancesHealthInput.new
        type.environment_name = params[:environment_name]
        type.environment_id = params[:environment_id]
        type.attribute_names = InstancesHealthAttributes.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstancesHealthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancesHealthOutput, context: context)
        type = Types::DescribeInstancesHealthOutput.new
        type.instance_health_list = InstanceHealthList.build(params[:instance_health_list], context: "#{context}[:instance_health_list]") unless params[:instance_health_list].nil?
        type.refreshed_at = params[:refreshed_at]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePlatformVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePlatformVersionInput, context: context)
        type = Types::DescribePlatformVersionInput.new
        type.platform_arn = params[:platform_arn]
        type
      end
    end

    module DescribePlatformVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePlatformVersionOutput, context: context)
        type = Types::DescribePlatformVersionOutput.new
        type.platform_description = PlatformDescription.build(params[:platform_description], context: "#{context}[:platform_description]") unless params[:platform_description].nil?
        type
      end
    end

    module DisassociateEnvironmentOperationsRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateEnvironmentOperationsRoleInput, context: context)
        type = Types::DisassociateEnvironmentOperationsRoleInput.new
        type.environment_name = params[:environment_name]
        type
      end
    end

    module DisassociateEnvironmentOperationsRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateEnvironmentOperationsRoleOutput, context: context)
        type = Types::DisassociateEnvironmentOperationsRoleOutput.new
        type
      end
    end

    module ElasticBeanstalkServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticBeanstalkServiceException, context: context)
        type = Types::ElasticBeanstalkServiceException.new
        type.message = params[:message]
        type
      end
    end

    module EnvironmentDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentDescription, context: context)
        type = Types::EnvironmentDescription.new
        type.environment_name = params[:environment_name]
        type.environment_id = params[:environment_id]
        type.application_name = params[:application_name]
        type.version_label = params[:version_label]
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.endpoint_url = params[:endpoint_url]
        type.cname = params[:cname]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.status = params[:status]
        type.abortable_operation_in_progress = params[:abortable_operation_in_progress]
        type.health = params[:health]
        type.health_status = params[:health_status]
        type.resources = EnvironmentResourcesDescription.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tier = EnvironmentTier.build(params[:tier], context: "#{context}[:tier]") unless params[:tier].nil?
        type.environment_links = EnvironmentLinks.build(params[:environment_links], context: "#{context}[:environment_links]") unless params[:environment_links].nil?
        type.environment_arn = params[:environment_arn]
        type.operations_role = params[:operations_role]
        type
      end
    end

    module EnvironmentDescriptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentHealthAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EnvironmentIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EnvironmentInfoDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentInfoDescription, context: context)
        type = Types::EnvironmentInfoDescription.new
        type.info_type = params[:info_type]
        type.ec2_instance_id = params[:ec2_instance_id]
        type.sample_timestamp = params[:sample_timestamp]
        type.message = params[:message]
        type
      end
    end

    module EnvironmentInfoDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentInfoDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentLink
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentLink, context: context)
        type = Types::EnvironmentLink.new
        type.link_name = params[:link_name]
        type.environment_name = params[:environment_name]
        type
      end
    end

    module EnvironmentLinks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentLink.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EnvironmentResourceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentResourceDescription, context: context)
        type = Types::EnvironmentResourceDescription.new
        type.environment_name = params[:environment_name]
        type.auto_scaling_groups = AutoScalingGroupList.build(params[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless params[:auto_scaling_groups].nil?
        type.instances = InstanceList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.launch_configurations = LaunchConfigurationList.build(params[:launch_configurations], context: "#{context}[:launch_configurations]") unless params[:launch_configurations].nil?
        type.launch_templates = LaunchTemplateList.build(params[:launch_templates], context: "#{context}[:launch_templates]") unless params[:launch_templates].nil?
        type.load_balancers = LoadBalancerList.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type.triggers = TriggerList.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type.queues = QueueList.build(params[:queues], context: "#{context}[:queues]") unless params[:queues].nil?
        type
      end
    end

    module EnvironmentResourcesDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentResourcesDescription, context: context)
        type = Types::EnvironmentResourcesDescription.new
        type.load_balancer = LoadBalancerDescription.build(params[:load_balancer], context: "#{context}[:load_balancer]") unless params[:load_balancer].nil?
        type
      end
    end

    module EnvironmentTier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentTier, context: context)
        type = Types::EnvironmentTier.new
        type.name = params[:name]
        type.type = params[:type]
        type.version = params[:version]
        type
      end
    end

    module EventDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDescription, context: context)
        type = Types::EventDescription.new
        type.event_date = params[:event_date]
        type.message = params[:message]
        type.application_name = params[:application_name]
        type.version_label = params[:version_label]
        type.template_name = params[:template_name]
        type.environment_name = params[:environment_name]
        type.platform_arn = params[:platform_arn]
        type.request_id = params[:request_id]
        type.severity = params[:severity]
        type
      end
    end

    module EventDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.id = params[:id]
        type
      end
    end

    module InstanceHealthList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SingleInstanceHealth.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceHealthSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceHealthSummary, context: context)
        type = Types::InstanceHealthSummary.new
        type.no_data = params[:no_data]
        type.unknown = params[:unknown]
        type.pending = params[:pending]
        type.ok = params[:ok]
        type.info = params[:info]
        type.warning = params[:warning]
        type.degraded = params[:degraded]
        type.severe = params[:severe]
        type
      end
    end

    module InstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Instance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstancesHealthAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsufficientPrivilegesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientPrivilegesException, context: context)
        type = Types::InsufficientPrivilegesException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module Latency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Latency, context: context)
        type = Types::Latency.new
        type.p999 = params[:p999]
        type.p99 = params[:p99]
        type.p95 = params[:p95]
        type.p90 = params[:p90]
        type.p85 = params[:p85]
        type.p75 = params[:p75]
        type.p50 = params[:p50]
        type.p10 = params[:p10]
        type
      end
    end

    module LaunchConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchConfiguration, context: context)
        type = Types::LaunchConfiguration.new
        type.name = params[:name]
        type
      end
    end

    module LaunchConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplate, context: context)
        type = Types::LaunchTemplate.new
        type.id = params[:id]
        type
      end
    end

    module LaunchTemplateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchTemplate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListAvailableSolutionStacksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableSolutionStacksInput, context: context)
        type = Types::ListAvailableSolutionStacksInput.new
        type
      end
    end

    module ListAvailableSolutionStacksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableSolutionStacksOutput, context: context)
        type = Types::ListAvailableSolutionStacksOutput.new
        type.solution_stacks = AvailableSolutionStackNamesList.build(params[:solution_stacks], context: "#{context}[:solution_stacks]") unless params[:solution_stacks].nil?
        type.solution_stack_details = AvailableSolutionStackDetailsList.build(params[:solution_stack_details], context: "#{context}[:solution_stack_details]") unless params[:solution_stack_details].nil?
        type
      end
    end

    module ListPlatformBranchesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlatformBranchesInput, context: context)
        type = Types::ListPlatformBranchesInput.new
        type.filters = SearchFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPlatformBranchesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlatformBranchesOutput, context: context)
        type = Types::ListPlatformBranchesOutput.new
        type.platform_branch_summary_list = PlatformBranchSummaryList.build(params[:platform_branch_summary_list], context: "#{context}[:platform_branch_summary_list]") unless params[:platform_branch_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPlatformVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlatformVersionsInput, context: context)
        type = Types::ListPlatformVersionsInput.new
        type.filters = PlatformFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPlatformVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlatformVersionsOutput, context: context)
        type = Types::ListPlatformVersionsOutput.new
        type.platform_summary_list = PlatformSummaryList.build(params[:platform_summary_list], context: "#{context}[:platform_summary_list]") unless params[:platform_summary_list].nil?
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
        type.resource_arn = params[:resource_arn]
        type.resource_tags = TagList.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type
      end
    end

    module Listener
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Listener, context: context)
        type = Types::Listener.new
        type.protocol = params[:protocol]
        type.port = params[:port]
        type
      end
    end

    module LoadAverage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LoadBalancer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancer, context: context)
        type = Types::LoadBalancer.new
        type.name = params[:name]
        type
      end
    end

    module LoadBalancerDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerDescription, context: context)
        type = Types::LoadBalancerDescription.new
        type.load_balancer_name = params[:load_balancer_name]
        type.domain = params[:domain]
        type.listeners = LoadBalancerListenersDescription.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type
      end
    end

    module LoadBalancerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadBalancerListenersDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Listener.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ManagedAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedAction, context: context)
        type = Types::ManagedAction.new
        type.action_id = params[:action_id]
        type.action_description = params[:action_description]
        type.action_type = params[:action_type]
        type.status = params[:status]
        type.window_start_time = params[:window_start_time]
        type
      end
    end

    module ManagedActionHistoryItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedActionHistoryItem, context: context)
        type = Types::ManagedActionHistoryItem.new
        type.action_id = params[:action_id]
        type.action_type = params[:action_type]
        type.action_description = params[:action_description]
        type.failure_type = params[:failure_type]
        type.status = params[:status]
        type.failure_description = params[:failure_description]
        type.executed_time = params[:executed_time]
        type.finished_time = params[:finished_time]
        type
      end
    end

    module ManagedActionHistoryItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedActionHistoryItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ManagedActionInvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedActionInvalidStateException, context: context)
        type = Types::ManagedActionInvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module ManagedActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaxAgeRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxAgeRule, context: context)
        type = Types::MaxAgeRule.new
        type.enabled = params[:enabled]
        type.max_age_in_days = params[:max_age_in_days]
        type.delete_source_from_s3 = params[:delete_source_from_s3]
        type
      end
    end

    module MaxCountRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxCountRule, context: context)
        type = Types::MaxCountRule.new
        type.enabled = params[:enabled]
        type.max_count = params[:max_count]
        type.delete_source_from_s3 = params[:delete_source_from_s3]
        type
      end
    end

    module OperationInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationInProgressException, context: context)
        type = Types::OperationInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module OptionRestrictionRegex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionRestrictionRegex, context: context)
        type = Types::OptionRestrictionRegex.new
        type.pattern = params[:pattern]
        type.label = params[:label]
        type
      end
    end

    module OptionSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionSpecification, context: context)
        type = Types::OptionSpecification.new
        type.resource_name = params[:resource_name]
        type.namespace = params[:namespace]
        type.option_name = params[:option_name]
        type
      end
    end

    module OptionsSpecifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptionSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlatformBranchSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformBranchSummary, context: context)
        type = Types::PlatformBranchSummary.new
        type.platform_name = params[:platform_name]
        type.branch_name = params[:branch_name]
        type.lifecycle_state = params[:lifecycle_state]
        type.branch_order = params[:branch_order]
        type.supported_tier_list = SupportedTierList.build(params[:supported_tier_list], context: "#{context}[:supported_tier_list]") unless params[:supported_tier_list].nil?
        type
      end
    end

    module PlatformBranchSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlatformBranchSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlatformDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformDescription, context: context)
        type = Types::PlatformDescription.new
        type.platform_arn = params[:platform_arn]
        type.platform_owner = params[:platform_owner]
        type.platform_name = params[:platform_name]
        type.platform_version = params[:platform_version]
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_status = params[:platform_status]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.platform_category = params[:platform_category]
        type.description = params[:description]
        type.maintainer = params[:maintainer]
        type.operating_system_name = params[:operating_system_name]
        type.operating_system_version = params[:operating_system_version]
        type.programming_languages = PlatformProgrammingLanguages.build(params[:programming_languages], context: "#{context}[:programming_languages]") unless params[:programming_languages].nil?
        type.frameworks = PlatformFrameworks.build(params[:frameworks], context: "#{context}[:frameworks]") unless params[:frameworks].nil?
        type.custom_ami_list = CustomAmiList.build(params[:custom_ami_list], context: "#{context}[:custom_ami_list]") unless params[:custom_ami_list].nil?
        type.supported_tier_list = SupportedTierList.build(params[:supported_tier_list], context: "#{context}[:supported_tier_list]") unless params[:supported_tier_list].nil?
        type.supported_addon_list = SupportedAddonList.build(params[:supported_addon_list], context: "#{context}[:supported_addon_list]") unless params[:supported_addon_list].nil?
        type.platform_lifecycle_state = params[:platform_lifecycle_state]
        type.platform_branch_name = params[:platform_branch_name]
        type.platform_branch_lifecycle_state = params[:platform_branch_lifecycle_state]
        type
      end
    end

    module PlatformFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformFilter, context: context)
        type = Types::PlatformFilter.new
        type.type = params[:type]
        type.operator = params[:operator]
        type.values = PlatformFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module PlatformFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PlatformFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlatformFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlatformFramework
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformFramework, context: context)
        type = Types::PlatformFramework.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module PlatformFrameworks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlatformFramework.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlatformProgrammingLanguage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformProgrammingLanguage, context: context)
        type = Types::PlatformProgrammingLanguage.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module PlatformProgrammingLanguages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlatformProgrammingLanguage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlatformSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformSummary, context: context)
        type = Types::PlatformSummary.new
        type.platform_arn = params[:platform_arn]
        type.platform_owner = params[:platform_owner]
        type.platform_status = params[:platform_status]
        type.platform_category = params[:platform_category]
        type.operating_system_name = params[:operating_system_name]
        type.operating_system_version = params[:operating_system_version]
        type.supported_tier_list = SupportedTierList.build(params[:supported_tier_list], context: "#{context}[:supported_tier_list]") unless params[:supported_tier_list].nil?
        type.supported_addon_list = SupportedAddonList.build(params[:supported_addon_list], context: "#{context}[:supported_addon_list]") unless params[:supported_addon_list].nil?
        type.platform_lifecycle_state = params[:platform_lifecycle_state]
        type.platform_version = params[:platform_version]
        type.platform_branch_name = params[:platform_branch_name]
        type.platform_branch_lifecycle_state = params[:platform_branch_lifecycle_state]
        type
      end
    end

    module PlatformSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlatformSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlatformVersionStillReferencedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformVersionStillReferencedException, context: context)
        type = Types::PlatformVersionStillReferencedException.new
        type.message = params[:message]
        type
      end
    end

    module Queue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Queue, context: context)
        type = Types::Queue.new
        type.name = params[:name]
        type.url = params[:url]
        type
      end
    end

    module QueueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Queue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RebuildEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebuildEnvironmentInput, context: context)
        type = Types::RebuildEnvironmentInput.new
        type.environment_id = params[:environment_id]
        type.environment_name = params[:environment_name]
        type
      end
    end

    module RebuildEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebuildEnvironmentOutput, context: context)
        type = Types::RebuildEnvironmentOutput.new
        type
      end
    end

    module RequestEnvironmentInfoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestEnvironmentInfoInput, context: context)
        type = Types::RequestEnvironmentInfoInput.new
        type.environment_id = params[:environment_id]
        type.environment_name = params[:environment_name]
        type.info_type = params[:info_type]
        type
      end
    end

    module RequestEnvironmentInfoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestEnvironmentInfoOutput, context: context)
        type = Types::RequestEnvironmentInfoOutput.new
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

    module ResourceQuota
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceQuota, context: context)
        type = Types::ResourceQuota.new
        type.maximum = params[:maximum]
        type
      end
    end

    module ResourceQuotas
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceQuotas, context: context)
        type = Types::ResourceQuotas.new
        type.application_quota = ResourceQuota.build(params[:application_quota], context: "#{context}[:application_quota]") unless params[:application_quota].nil?
        type.application_version_quota = ResourceQuota.build(params[:application_version_quota], context: "#{context}[:application_version_quota]") unless params[:application_version_quota].nil?
        type.environment_quota = ResourceQuota.build(params[:environment_quota], context: "#{context}[:environment_quota]") unless params[:environment_quota].nil?
        type.configuration_template_quota = ResourceQuota.build(params[:configuration_template_quota], context: "#{context}[:configuration_template_quota]") unless params[:configuration_template_quota].nil?
        type.custom_platform_quota = ResourceQuota.build(params[:custom_platform_quota], context: "#{context}[:custom_platform_quota]") unless params[:custom_platform_quota].nil?
        type
      end
    end

    module ResourceTypeNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTypeNotSupportedException, context: context)
        type = Types::ResourceTypeNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module RestartAppServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestartAppServerInput, context: context)
        type = Types::RestartAppServerInput.new
        type.environment_id = params[:environment_id]
        type.environment_name = params[:environment_name]
        type
      end
    end

    module RestartAppServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestartAppServerOutput, context: context)
        type = Types::RestartAppServerOutput.new
        type
      end
    end

    module RetrieveEnvironmentInfoInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetrieveEnvironmentInfoInput, context: context)
        type = Types::RetrieveEnvironmentInfoInput.new
        type.environment_id = params[:environment_id]
        type.environment_name = params[:environment_name]
        type.info_type = params[:info_type]
        type
      end
    end

    module RetrieveEnvironmentInfoOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetrieveEnvironmentInfoOutput, context: context)
        type = Types::RetrieveEnvironmentInfoOutput.new
        type.environment_info = EnvironmentInfoDescriptionList.build(params[:environment_info], context: "#{context}[:environment_info]") unless params[:environment_info].nil?
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type
      end
    end

    module S3LocationNotInServiceRegionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3LocationNotInServiceRegionException, context: context)
        type = Types::S3LocationNotInServiceRegionException.new
        type.message = params[:message]
        type
      end
    end

    module S3SubscriptionRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SubscriptionRequiredException, context: context)
        type = Types::S3SubscriptionRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module SearchFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFilter, context: context)
        type = Types::SearchFilter.new
        type.attribute = params[:attribute]
        type.operator = params[:operator]
        type.values = SearchFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SearchFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SearchFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SingleInstanceHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SingleInstanceHealth, context: context)
        type = Types::SingleInstanceHealth.new
        type.instance_id = params[:instance_id]
        type.health_status = params[:health_status]
        type.color = params[:color]
        type.causes = Causes.build(params[:causes], context: "#{context}[:causes]") unless params[:causes].nil?
        type.launched_at = params[:launched_at]
        type.application_metrics = ApplicationMetrics.build(params[:application_metrics], context: "#{context}[:application_metrics]") unless params[:application_metrics].nil?
        type.system = SystemStatus.build(params[:system], context: "#{context}[:system]") unless params[:system].nil?
        type.deployment = Deployment.build(params[:deployment], context: "#{context}[:deployment]") unless params[:deployment].nil?
        type.availability_zone = params[:availability_zone]
        type.instance_type = params[:instance_type]
        type
      end
    end

    module SolutionStackDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SolutionStackDescription, context: context)
        type = Types::SolutionStackDescription.new
        type.solution_stack_name = params[:solution_stack_name]
        type.permitted_file_types = SolutionStackFileTypeList.build(params[:permitted_file_types], context: "#{context}[:permitted_file_types]") unless params[:permitted_file_types].nil?
        type
      end
    end

    module SolutionStackFileTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SourceBuildInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceBuildInformation, context: context)
        type = Types::SourceBuildInformation.new
        type.source_type = params[:source_type]
        type.source_repository = params[:source_repository]
        type.source_location = params[:source_location]
        type
      end
    end

    module SourceBundleDeletionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceBundleDeletionException, context: context)
        type = Types::SourceBundleDeletionException.new
        type.message = params[:message]
        type
      end
    end

    module SourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceConfiguration, context: context)
        type = Types::SourceConfiguration.new
        type.application_name = params[:application_name]
        type.template_name = params[:template_name]
        type
      end
    end

    module StatusCodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatusCodes, context: context)
        type = Types::StatusCodes.new
        type.status2xx = params[:status2xx]
        type.status3xx = params[:status3xx]
        type.status4xx = params[:status4xx]
        type.status5xx = params[:status5xx]
        type
      end
    end

    module SupportedAddonList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SupportedTierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SwapEnvironmentCNAMEsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SwapEnvironmentCNAMEsInput, context: context)
        type = Types::SwapEnvironmentCNAMEsInput.new
        type.source_environment_id = params[:source_environment_id]
        type.source_environment_name = params[:source_environment_name]
        type.destination_environment_id = params[:destination_environment_id]
        type.destination_environment_name = params[:destination_environment_name]
        type
      end
    end

    module SwapEnvironmentCNAMEsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SwapEnvironmentCNAMEsOutput, context: context)
        type = Types::SwapEnvironmentCNAMEsOutput.new
        type
      end
    end

    module SystemStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemStatus, context: context)
        type = Types::SystemStatus.new
        type.cpu_utilization = CPUUtilization.build(params[:cpu_utilization], context: "#{context}[:cpu_utilization]") unless params[:cpu_utilization].nil?
        type.load_average = LoadAverage.build(params[:load_average], context: "#{context}[:load_average]") unless params[:load_average].nil?
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

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module TerminateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateEnvironmentInput, context: context)
        type = Types::TerminateEnvironmentInput.new
        type.environment_id = params[:environment_id]
        type.environment_name = params[:environment_name]
        type.terminate_resources = params[:terminate_resources]
        type.force_terminate = params[:force_terminate]
        type
      end
    end

    module TerminateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateEnvironmentOutput, context: context)
        type = Types::TerminateEnvironmentOutput.new
        type.environment_name = params[:environment_name]
        type.environment_id = params[:environment_id]
        type.application_name = params[:application_name]
        type.version_label = params[:version_label]
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.endpoint_url = params[:endpoint_url]
        type.cname = params[:cname]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.status = params[:status]
        type.abortable_operation_in_progress = params[:abortable_operation_in_progress]
        type.health = params[:health]
        type.health_status = params[:health_status]
        type.resources = EnvironmentResourcesDescription.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tier = EnvironmentTier.build(params[:tier], context: "#{context}[:tier]") unless params[:tier].nil?
        type.environment_links = EnvironmentLinks.build(params[:environment_links], context: "#{context}[:environment_links]") unless params[:environment_links].nil?
        type.environment_arn = params[:environment_arn]
        type.operations_role = params[:operations_role]
        type
      end
    end

    module TooManyApplicationVersionsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyApplicationVersionsException, context: context)
        type = Types::TooManyApplicationVersionsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyApplicationsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyApplicationsException, context: context)
        type = Types::TooManyApplicationsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyBucketsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyBucketsException, context: context)
        type = Types::TooManyBucketsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyConfigurationTemplatesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyConfigurationTemplatesException, context: context)
        type = Types::TooManyConfigurationTemplatesException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyEnvironmentsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyEnvironmentsException, context: context)
        type = Types::TooManyEnvironmentsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyPlatformsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyPlatformsException, context: context)
        type = Types::TooManyPlatformsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module Trigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Trigger, context: context)
        type = Types::Trigger.new
        type.name = params[:name]
        type
      end
    end

    module TriggerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Trigger.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.application_name = params[:application_name]
        type.description = params[:description]
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type.application = ApplicationDescription.build(params[:application], context: "#{context}[:application]") unless params[:application].nil?
        type
      end
    end

    module UpdateApplicationResourceLifecycleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationResourceLifecycleInput, context: context)
        type = Types::UpdateApplicationResourceLifecycleInput.new
        type.application_name = params[:application_name]
        type.resource_lifecycle_config = ApplicationResourceLifecycleConfig.build(params[:resource_lifecycle_config], context: "#{context}[:resource_lifecycle_config]") unless params[:resource_lifecycle_config].nil?
        type
      end
    end

    module UpdateApplicationResourceLifecycleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationResourceLifecycleOutput, context: context)
        type = Types::UpdateApplicationResourceLifecycleOutput.new
        type.application_name = params[:application_name]
        type.resource_lifecycle_config = ApplicationResourceLifecycleConfig.build(params[:resource_lifecycle_config], context: "#{context}[:resource_lifecycle_config]") unless params[:resource_lifecycle_config].nil?
        type
      end
    end

    module UpdateApplicationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationVersionInput, context: context)
        type = Types::UpdateApplicationVersionInput.new
        type.application_name = params[:application_name]
        type.version_label = params[:version_label]
        type.description = params[:description]
        type
      end
    end

    module UpdateApplicationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationVersionOutput, context: context)
        type = Types::UpdateApplicationVersionOutput.new
        type.application_version = ApplicationVersionDescription.build(params[:application_version], context: "#{context}[:application_version]") unless params[:application_version].nil?
        type
      end
    end

    module UpdateConfigurationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationTemplateInput, context: context)
        type = Types::UpdateConfigurationTemplateInput.new
        type.application_name = params[:application_name]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.option_settings = ConfigurationOptionSettingsList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type.options_to_remove = OptionsSpecifierList.build(params[:options_to_remove], context: "#{context}[:options_to_remove]") unless params[:options_to_remove].nil?
        type
      end
    end

    module UpdateConfigurationTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationTemplateOutput, context: context)
        type = Types::UpdateConfigurationTemplateOutput.new
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.application_name = params[:application_name]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.environment_name = params[:environment_name]
        type.deployment_status = params[:deployment_status]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.option_settings = ConfigurationOptionSettingsList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type
      end
    end

    module UpdateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentInput, context: context)
        type = Types::UpdateEnvironmentInput.new
        type.application_name = params[:application_name]
        type.environment_id = params[:environment_id]
        type.environment_name = params[:environment_name]
        type.group_name = params[:group_name]
        type.description = params[:description]
        type.tier = EnvironmentTier.build(params[:tier], context: "#{context}[:tier]") unless params[:tier].nil?
        type.version_label = params[:version_label]
        type.template_name = params[:template_name]
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.option_settings = ConfigurationOptionSettingsList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type.options_to_remove = OptionsSpecifierList.build(params[:options_to_remove], context: "#{context}[:options_to_remove]") unless params[:options_to_remove].nil?
        type
      end
    end

    module UpdateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentOutput, context: context)
        type = Types::UpdateEnvironmentOutput.new
        type.environment_name = params[:environment_name]
        type.environment_id = params[:environment_id]
        type.application_name = params[:application_name]
        type.version_label = params[:version_label]
        type.solution_stack_name = params[:solution_stack_name]
        type.platform_arn = params[:platform_arn]
        type.template_name = params[:template_name]
        type.description = params[:description]
        type.endpoint_url = params[:endpoint_url]
        type.cname = params[:cname]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.status = params[:status]
        type.abortable_operation_in_progress = params[:abortable_operation_in_progress]
        type.health = params[:health]
        type.health_status = params[:health_status]
        type.resources = EnvironmentResourcesDescription.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tier = EnvironmentTier.build(params[:tier], context: "#{context}[:tier]") unless params[:tier].nil?
        type.environment_links = EnvironmentLinks.build(params[:environment_links], context: "#{context}[:environment_links]") unless params[:environment_links].nil?
        type.environment_arn = params[:environment_arn]
        type.operations_role = params[:operations_role]
        type
      end
    end

    module UpdateTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTagsForResourceInput, context: context)
        type = Types::UpdateTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags_to_add = TagList.build(params[:tags_to_add], context: "#{context}[:tags_to_add]") unless params[:tags_to_add].nil?
        type.tags_to_remove = TagKeyList.build(params[:tags_to_remove], context: "#{context}[:tags_to_remove]") unless params[:tags_to_remove].nil?
        type
      end
    end

    module UpdateTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTagsForResourceOutput, context: context)
        type = Types::UpdateTagsForResourceOutput.new
        type
      end
    end

    module ValidateConfigurationSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateConfigurationSettingsInput, context: context)
        type = Types::ValidateConfigurationSettingsInput.new
        type.application_name = params[:application_name]
        type.template_name = params[:template_name]
        type.environment_name = params[:environment_name]
        type.option_settings = ConfigurationOptionSettingsList.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type
      end
    end

    module ValidateConfigurationSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateConfigurationSettingsOutput, context: context)
        type = Types::ValidateConfigurationSettingsOutput.new
        type.messages = ValidationMessagesList.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type
      end
    end

    module ValidationMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationMessage, context: context)
        type = Types::ValidationMessage.new
        type.message = params[:message]
        type.severity = params[:severity]
        type.namespace = params[:namespace]
        type.option_name = params[:option_name]
        type
      end
    end

    module ValidationMessagesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VersionLabels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VersionLabelsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
