# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ElasticBeanstalk
  module Validators

    class AbortEnvironmentUpdateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortEnvironmentUpdateInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class AbortEnvironmentUpdateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortEnvironmentUpdateOutput, context: context)
      end
    end

    class ApplicationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationDescription, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::Time, context: "#{context}[:date_updated]")
        VersionLabelsList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
        ConfigurationTemplateNamesList.validate!(input[:configuration_templates], context: "#{context}[:configuration_templates]") unless input[:configuration_templates].nil?
        ApplicationResourceLifecycleConfig.validate!(input[:resource_lifecycle_config], context: "#{context}[:resource_lifecycle_config]") unless input[:resource_lifecycle_config].nil?
      end
    end

    class ApplicationDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationMetrics, context: context)
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:request_count], ::Integer, context: "#{context}[:request_count]")
        StatusCodes.validate!(input[:status_codes], context: "#{context}[:status_codes]") unless input[:status_codes].nil?
        Latency.validate!(input[:latency], context: "#{context}[:latency]") unless input[:latency].nil?
      end
    end

    class ApplicationNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ApplicationResourceLifecycleConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationResourceLifecycleConfig, context: context)
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        ApplicationVersionLifecycleConfig.validate!(input[:version_lifecycle_config], context: "#{context}[:version_lifecycle_config]") unless input[:version_lifecycle_config].nil?
      end
    end

    class ApplicationVersionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationVersionDescription, context: context)
        Hearth::Validator.validate!(input[:application_version_arn], ::String, context: "#{context}[:application_version_arn]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        SourceBuildInformation.validate!(input[:source_build_information], context: "#{context}[:source_build_information]") unless input[:source_build_information].nil?
        Hearth::Validator.validate!(input[:build_arn], ::String, context: "#{context}[:build_arn]")
        S3Location.validate!(input[:source_bundle], context: "#{context}[:source_bundle]") unless input[:source_bundle].nil?
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::Time, context: "#{context}[:date_updated]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ApplicationVersionDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationVersionDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationVersionLifecycleConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationVersionLifecycleConfig, context: context)
        MaxCountRule.validate!(input[:max_count_rule], context: "#{context}[:max_count_rule]") unless input[:max_count_rule].nil?
        MaxAgeRule.validate!(input[:max_age_rule], context: "#{context}[:max_age_rule]") unless input[:max_age_rule].nil?
      end
    end

    class ApplyEnvironmentManagedActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplyEnvironmentManagedActionInput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
      end
    end

    class ApplyEnvironmentManagedActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplyEnvironmentManagedActionOutput, context: context)
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:action_description], ::String, context: "#{context}[:action_description]")
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AssociateEnvironmentOperationsRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateEnvironmentOperationsRoleInput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:operations_role], ::String, context: "#{context}[:operations_role]")
      end
    end

    class AssociateEnvironmentOperationsRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateEnvironmentOperationsRoleOutput, context: context)
      end
    end

    class AutoScalingGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AutoScalingGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoScalingGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AvailableSolutionStackDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SolutionStackDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AvailableSolutionStackNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BuildConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildConfiguration, context: context)
        Hearth::Validator.validate!(input[:artifact_name], ::String, context: "#{context}[:artifact_name]")
        Hearth::Validator.validate!(input[:code_build_service_role], ::String, context: "#{context}[:code_build_service_role]")
        Hearth::Validator.validate!(input[:compute_type], ::String, context: "#{context}[:compute_type]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:timeout_in_minutes], ::Integer, context: "#{context}[:timeout_in_minutes]")
      end
    end

    class Builder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Builder, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CPUUtilization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CPUUtilization, context: context)
        Hearth::Validator.validate!(input[:user], ::Float, context: "#{context}[:user]")
        Hearth::Validator.validate!(input[:nice], ::Float, context: "#{context}[:nice]")
        Hearth::Validator.validate!(input[:system], ::Float, context: "#{context}[:system]")
        Hearth::Validator.validate!(input[:idle], ::Float, context: "#{context}[:idle]")
        Hearth::Validator.validate!(input[:io_wait], ::Float, context: "#{context}[:io_wait]")
        Hearth::Validator.validate!(input[:irq], ::Float, context: "#{context}[:irq]")
        Hearth::Validator.validate!(input[:soft_irq], ::Float, context: "#{context}[:soft_irq]")
        Hearth::Validator.validate!(input[:privileged], ::Float, context: "#{context}[:privileged]")
      end
    end

    class Causes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CheckDNSAvailabilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckDNSAvailabilityInput, context: context)
        Hearth::Validator.validate!(input[:cname_prefix], ::String, context: "#{context}[:cname_prefix]")
      end
    end

    class CheckDNSAvailabilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckDNSAvailabilityOutput, context: context)
        Hearth::Validator.validate!(input[:available], ::TrueClass, ::FalseClass, context: "#{context}[:available]")
        Hearth::Validator.validate!(input[:fully_qualified_cname], ::String, context: "#{context}[:fully_qualified_cname]")
      end
    end

    class CodeBuildNotInServiceRegionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeBuildNotInServiceRegionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ComposeEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComposeEnvironmentsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        VersionLabels.validate!(input[:version_labels], context: "#{context}[:version_labels]") unless input[:version_labels].nil?
      end
    end

    class ComposeEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComposeEnvironmentsOutput, context: context)
        EnvironmentDescriptionsList.validate!(input[:environments], context: "#{context}[:environments]") unless input[:environments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ConfigurationOptionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationOptionDescription, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:change_severity], ::String, context: "#{context}[:change_severity]")
        Hearth::Validator.validate!(input[:user_defined], ::TrueClass, ::FalseClass, context: "#{context}[:user_defined]")
        Hearth::Validator.validate!(input[:value_type], ::String, context: "#{context}[:value_type]")
        ConfigurationOptionPossibleValues.validate!(input[:value_options], context: "#{context}[:value_options]") unless input[:value_options].nil?
        Hearth::Validator.validate!(input[:min_value], ::Integer, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:max_value], ::Integer, context: "#{context}[:max_value]")
        Hearth::Validator.validate!(input[:max_length], ::Integer, context: "#{context}[:max_length]")
        OptionRestrictionRegex.validate!(input[:regex], context: "#{context}[:regex]") unless input[:regex].nil?
      end
    end

    class ConfigurationOptionDescriptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationOptionDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationOptionPossibleValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConfigurationOptionSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationOptionSetting, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:option_name], ::String, context: "#{context}[:option_name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ConfigurationOptionSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationOptionSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationSettingsDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationSettingsDescription, context: context)
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::Time, context: "#{context}[:date_updated]")
        ConfigurationOptionSettingsList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
      end
    end

    class ConfigurationSettingsDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationSettingsDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationTemplateNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ApplicationResourceLifecycleConfig.validate!(input[:resource_lifecycle_config], context: "#{context}[:resource_lifecycle_config]") unless input[:resource_lifecycle_config].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        ApplicationDescription.validate!(input[:application], context: "#{context}[:application]") unless input[:application].nil?
      end
    end

    class CreateApplicationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        SourceBuildInformation.validate!(input[:source_build_information], context: "#{context}[:source_build_information]") unless input[:source_build_information].nil?
        S3Location.validate!(input[:source_bundle], context: "#{context}[:source_bundle]") unless input[:source_bundle].nil?
        BuildConfiguration.validate!(input[:build_configuration], context: "#{context}[:build_configuration]") unless input[:build_configuration].nil?
        Hearth::Validator.validate!(input[:auto_create_application], ::TrueClass, ::FalseClass, context: "#{context}[:auto_create_application]")
        Hearth::Validator.validate!(input[:process], ::TrueClass, ::FalseClass, context: "#{context}[:process]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateApplicationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationVersionOutput, context: context)
        ApplicationVersionDescription.validate!(input[:application_version], context: "#{context}[:application_version]") unless input[:application_version].nil?
      end
    end

    class CreateConfigurationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        SourceConfiguration.validate!(input[:source_configuration], context: "#{context}[:source_configuration]") unless input[:source_configuration].nil?
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ConfigurationOptionSettingsList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateConfigurationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::Time, context: "#{context}[:date_updated]")
        ConfigurationOptionSettingsList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
      end
    end

    class CreateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cname_prefix], ::String, context: "#{context}[:cname_prefix]")
        EnvironmentTier.validate!(input[:tier], context: "#{context}[:tier]") unless input[:tier].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        ConfigurationOptionSettingsList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
        OptionsSpecifierList.validate!(input[:options_to_remove], context: "#{context}[:options_to_remove]") unless input[:options_to_remove].nil?
        Hearth::Validator.validate!(input[:operations_role], ::String, context: "#{context}[:operations_role]")
      end
    end

    class CreateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:endpoint_url], ::String, context: "#{context}[:endpoint_url]")
        Hearth::Validator.validate!(input[:cname], ::String, context: "#{context}[:cname]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::Time, context: "#{context}[:date_updated]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:abortable_operation_in_progress], ::TrueClass, ::FalseClass, context: "#{context}[:abortable_operation_in_progress]")
        Hearth::Validator.validate!(input[:health], ::String, context: "#{context}[:health]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        EnvironmentResourcesDescription.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        EnvironmentTier.validate!(input[:tier], context: "#{context}[:tier]") unless input[:tier].nil?
        EnvironmentLinks.validate!(input[:environment_links], context: "#{context}[:environment_links]") unless input[:environment_links].nil?
        Hearth::Validator.validate!(input[:environment_arn], ::String, context: "#{context}[:environment_arn]")
        Hearth::Validator.validate!(input[:operations_role], ::String, context: "#{context}[:operations_role]")
      end
    end

    class CreatePlatformVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlatformVersionInput, context: context)
        Hearth::Validator.validate!(input[:platform_name], ::String, context: "#{context}[:platform_name]")
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        S3Location.validate!(input[:platform_definition_bundle], context: "#{context}[:platform_definition_bundle]") unless input[:platform_definition_bundle].nil?
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        ConfigurationOptionSettingsList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePlatformVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlatformVersionOutput, context: context)
        PlatformSummary.validate!(input[:platform_summary], context: "#{context}[:platform_summary]") unless input[:platform_summary].nil?
        Builder.validate!(input[:builder], context: "#{context}[:builder]") unless input[:builder].nil?
      end
    end

    class CreateStorageLocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStorageLocationInput, context: context)
      end
    end

    class CreateStorageLocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStorageLocationOutput, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
      end
    end

    class CustomAmi
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomAmi, context: context)
        Hearth::Validator.validate!(input[:virtualization_type], ::String, context: "#{context}[:virtualization_type]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
      end
    end

    class CustomAmiList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomAmi.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:terminate_env_by_force], ::TrueClass, ::FalseClass, context: "#{context}[:terminate_env_by_force]")
      end
    end

    class DeleteApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutput, context: context)
      end
    end

    class DeleteApplicationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:delete_source_bundle], ::TrueClass, ::FalseClass, context: "#{context}[:delete_source_bundle]")
      end
    end

    class DeleteApplicationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationVersionOutput, context: context)
      end
    end

    class DeleteConfigurationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class DeleteConfigurationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationTemplateOutput, context: context)
      end
    end

    class DeleteEnvironmentConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class DeleteEnvironmentConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentConfigurationOutput, context: context)
      end
    end

    class DeletePlatformVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlatformVersionInput, context: context)
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
      end
    end

    class DeletePlatformVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlatformVersionOutput, context: context)
        PlatformSummary.validate!(input[:platform_summary], context: "#{context}[:platform_summary]") unless input[:platform_summary].nil?
      end
    end

    class Deployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Deployment, context: context)
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:deployment_id], ::Integer, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:deployment_time], ::Time, context: "#{context}[:deployment_time]")
      end
    end

    class DescribeAccountAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesInput, context: context)
      end
    end

    class DescribeAccountAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesOutput, context: context)
        ResourceQuotas.validate!(input[:resource_quotas], context: "#{context}[:resource_quotas]") unless input[:resource_quotas].nil?
      end
    end

    class DescribeApplicationVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationVersionsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        VersionLabelsList.validate!(input[:version_labels], context: "#{context}[:version_labels]") unless input[:version_labels].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeApplicationVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationVersionsOutput, context: context)
        ApplicationVersionDescriptionList.validate!(input[:application_versions], context: "#{context}[:application_versions]") unless input[:application_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationsInput, context: context)
        ApplicationNamesList.validate!(input[:application_names], context: "#{context}[:application_names]") unless input[:application_names].nil?
      end
    end

    class DescribeApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationsOutput, context: context)
        ApplicationDescriptionList.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
      end
    end

    class DescribeConfigurationOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationOptionsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        OptionsSpecifierList.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class DescribeConfigurationOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationOptionsOutput, context: context)
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        ConfigurationOptionDescriptionsList.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class DescribeConfigurationSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationSettingsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class DescribeConfigurationSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationSettingsOutput, context: context)
        ConfigurationSettingsDescriptionList.validate!(input[:configuration_settings], context: "#{context}[:configuration_settings]") unless input[:configuration_settings].nil?
      end
    end

    class DescribeEnvironmentHealthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentHealthInput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        EnvironmentHealthAttributes.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
      end
    end

    class DescribeEnvironmentHealthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentHealthOutput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:color], ::String, context: "#{context}[:color]")
        Causes.validate!(input[:causes], context: "#{context}[:causes]") unless input[:causes].nil?
        ApplicationMetrics.validate!(input[:application_metrics], context: "#{context}[:application_metrics]") unless input[:application_metrics].nil?
        InstanceHealthSummary.validate!(input[:instances_health], context: "#{context}[:instances_health]") unless input[:instances_health].nil?
        Hearth::Validator.validate!(input[:refreshed_at], ::Time, context: "#{context}[:refreshed_at]")
      end
    end

    class DescribeEnvironmentManagedActionHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentManagedActionHistoryInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class DescribeEnvironmentManagedActionHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentManagedActionHistoryOutput, context: context)
        ManagedActionHistoryItems.validate!(input[:managed_action_history_items], context: "#{context}[:managed_action_history_items]") unless input[:managed_action_history_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEnvironmentManagedActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentManagedActionsInput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DescribeEnvironmentManagedActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentManagedActionsOutput, context: context)
        ManagedActions.validate!(input[:managed_actions], context: "#{context}[:managed_actions]") unless input[:managed_actions].nil?
      end
    end

    class DescribeEnvironmentResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentResourcesInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class DescribeEnvironmentResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentResourcesOutput, context: context)
        EnvironmentResourceDescription.validate!(input[:environment_resources], context: "#{context}[:environment_resources]") unless input[:environment_resources].nil?
      end
    end

    class DescribeEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        EnvironmentIdList.validate!(input[:environment_ids], context: "#{context}[:environment_ids]") unless input[:environment_ids].nil?
        EnvironmentNamesList.validate!(input[:environment_names], context: "#{context}[:environment_names]") unless input[:environment_names].nil?
        Hearth::Validator.validate!(input[:include_deleted], ::TrueClass, ::FalseClass, context: "#{context}[:include_deleted]")
        Hearth::Validator.validate!(input[:included_deleted_back_to], ::Time, context: "#{context}[:included_deleted_back_to]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEnvironmentsOutput, context: context)
        EnvironmentDescriptionsList.validate!(input[:environments], context: "#{context}[:environments]") unless input[:environments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsOutput, context: context)
        EventDescriptionList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstancesHealthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancesHealthInput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        InstancesHealthAttributes.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstancesHealthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancesHealthOutput, context: context)
        InstanceHealthList.validate!(input[:instance_health_list], context: "#{context}[:instance_health_list]") unless input[:instance_health_list].nil?
        Hearth::Validator.validate!(input[:refreshed_at], ::Time, context: "#{context}[:refreshed_at]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePlatformVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePlatformVersionInput, context: context)
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
      end
    end

    class DescribePlatformVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePlatformVersionOutput, context: context)
        PlatformDescription.validate!(input[:platform_description], context: "#{context}[:platform_description]") unless input[:platform_description].nil?
      end
    end

    class DisassociateEnvironmentOperationsRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateEnvironmentOperationsRoleInput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class DisassociateEnvironmentOperationsRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateEnvironmentOperationsRoleOutput, context: context)
      end
    end

    class ElasticBeanstalkServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticBeanstalkServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnvironmentDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentDescription, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:endpoint_url], ::String, context: "#{context}[:endpoint_url]")
        Hearth::Validator.validate!(input[:cname], ::String, context: "#{context}[:cname]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::Time, context: "#{context}[:date_updated]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:abortable_operation_in_progress], ::TrueClass, ::FalseClass, context: "#{context}[:abortable_operation_in_progress]")
        Hearth::Validator.validate!(input[:health], ::String, context: "#{context}[:health]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        EnvironmentResourcesDescription.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        EnvironmentTier.validate!(input[:tier], context: "#{context}[:tier]") unless input[:tier].nil?
        EnvironmentLinks.validate!(input[:environment_links], context: "#{context}[:environment_links]") unless input[:environment_links].nil?
        Hearth::Validator.validate!(input[:environment_arn], ::String, context: "#{context}[:environment_arn]")
        Hearth::Validator.validate!(input[:operations_role], ::String, context: "#{context}[:operations_role]")
      end
    end

    class EnvironmentDescriptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentHealthAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EnvironmentIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EnvironmentInfoDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentInfoDescription, context: context)
        Hearth::Validator.validate!(input[:info_type], ::String, context: "#{context}[:info_type]")
        Hearth::Validator.validate!(input[:ec2_instance_id], ::String, context: "#{context}[:ec2_instance_id]")
        Hearth::Validator.validate!(input[:sample_timestamp], ::Time, context: "#{context}[:sample_timestamp]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnvironmentInfoDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentInfoDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentLink
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentLink, context: context)
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class EnvironmentLinks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentLink.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EnvironmentResourceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentResourceDescription, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        AutoScalingGroupList.validate!(input[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless input[:auto_scaling_groups].nil?
        InstanceList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        LaunchConfigurationList.validate!(input[:launch_configurations], context: "#{context}[:launch_configurations]") unless input[:launch_configurations].nil?
        LaunchTemplateList.validate!(input[:launch_templates], context: "#{context}[:launch_templates]") unless input[:launch_templates].nil?
        LoadBalancerList.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
        TriggerList.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
        QueueList.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
      end
    end

    class EnvironmentResourcesDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentResourcesDescription, context: context)
        LoadBalancerDescription.validate!(input[:load_balancer], context: "#{context}[:load_balancer]") unless input[:load_balancer].nil?
      end
    end

    class EnvironmentTier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentTier, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class EventDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDescription, context: context)
        Hearth::Validator.validate!(input[:event_date], ::Time, context: "#{context}[:event_date]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
      end
    end

    class EventDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class InstanceHealthList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SingleInstanceHealth.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceHealthSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceHealthSummary, context: context)
        Hearth::Validator.validate!(input[:no_data], ::Integer, context: "#{context}[:no_data]")
        Hearth::Validator.validate!(input[:unknown], ::Integer, context: "#{context}[:unknown]")
        Hearth::Validator.validate!(input[:pending], ::Integer, context: "#{context}[:pending]")
        Hearth::Validator.validate!(input[:ok], ::Integer, context: "#{context}[:ok]")
        Hearth::Validator.validate!(input[:info], ::Integer, context: "#{context}[:info]")
        Hearth::Validator.validate!(input[:warning], ::Integer, context: "#{context}[:warning]")
        Hearth::Validator.validate!(input[:degraded], ::Integer, context: "#{context}[:degraded]")
        Hearth::Validator.validate!(input[:severe], ::Integer, context: "#{context}[:severe]")
      end
    end

    class InstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Instance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstancesHealthAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsufficientPrivilegesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientPrivilegesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Latency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Latency, context: context)
        Hearth::Validator.validate!(input[:p999], ::Float, context: "#{context}[:p999]")
        Hearth::Validator.validate!(input[:p99], ::Float, context: "#{context}[:p99]")
        Hearth::Validator.validate!(input[:p95], ::Float, context: "#{context}[:p95]")
        Hearth::Validator.validate!(input[:p90], ::Float, context: "#{context}[:p90]")
        Hearth::Validator.validate!(input[:p85], ::Float, context: "#{context}[:p85]")
        Hearth::Validator.validate!(input[:p75], ::Float, context: "#{context}[:p75]")
        Hearth::Validator.validate!(input[:p50], ::Float, context: "#{context}[:p50]")
        Hearth::Validator.validate!(input[:p10], ::Float, context: "#{context}[:p10]")
      end
    end

    class LaunchConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class LaunchConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LaunchConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplate, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class LaunchTemplateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LaunchTemplate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListAvailableSolutionStacksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableSolutionStacksInput, context: context)
      end
    end

    class ListAvailableSolutionStacksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableSolutionStacksOutput, context: context)
        AvailableSolutionStackNamesList.validate!(input[:solution_stacks], context: "#{context}[:solution_stacks]") unless input[:solution_stacks].nil?
        AvailableSolutionStackDetailsList.validate!(input[:solution_stack_details], context: "#{context}[:solution_stack_details]") unless input[:solution_stack_details].nil?
      end
    end

    class ListPlatformBranchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlatformBranchesInput, context: context)
        SearchFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPlatformBranchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlatformBranchesOutput, context: context)
        PlatformBranchSummaryList.validate!(input[:platform_branch_summary_list], context: "#{context}[:platform_branch_summary_list]") unless input[:platform_branch_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPlatformVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlatformVersionsInput, context: context)
        PlatformFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPlatformVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlatformVersionsOutput, context: context)
        PlatformSummaryList.validate!(input[:platform_summary_list], context: "#{context}[:platform_summary_list]") unless input[:platform_summary_list].nil?
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
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class Listener
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Listener, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class LoadAverage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class LoadBalancer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancer, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class LoadBalancerDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerDescription, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        LoadBalancerListenersDescription.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
      end
    end

    class LoadBalancerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoadBalancer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancerListenersDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Listener.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagedAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedAction, context: context)
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:action_description], ::String, context: "#{context}[:action_description]")
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:window_start_time], ::Time, context: "#{context}[:window_start_time]")
      end
    end

    class ManagedActionHistoryItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedActionHistoryItem, context: context)
        Hearth::Validator.validate!(input[:action_id], ::String, context: "#{context}[:action_id]")
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:action_description], ::String, context: "#{context}[:action_description]")
        Hearth::Validator.validate!(input[:failure_type], ::String, context: "#{context}[:failure_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_description], ::String, context: "#{context}[:failure_description]")
        Hearth::Validator.validate!(input[:executed_time], ::Time, context: "#{context}[:executed_time]")
        Hearth::Validator.validate!(input[:finished_time], ::Time, context: "#{context}[:finished_time]")
      end
    end

    class ManagedActionHistoryItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ManagedActionHistoryItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagedActionInvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedActionInvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ManagedActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ManagedAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaxAgeRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxAgeRule, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:max_age_in_days], ::Integer, context: "#{context}[:max_age_in_days]")
        Hearth::Validator.validate!(input[:delete_source_from_s3], ::TrueClass, ::FalseClass, context: "#{context}[:delete_source_from_s3]")
      end
    end

    class MaxCountRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxCountRule, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:max_count], ::Integer, context: "#{context}[:max_count]")
        Hearth::Validator.validate!(input[:delete_source_from_s3], ::TrueClass, ::FalseClass, context: "#{context}[:delete_source_from_s3]")
      end
    end

    class OperationInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OptionRestrictionRegex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionRestrictionRegex, context: context)
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
      end
    end

    class OptionSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionSpecification, context: context)
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:option_name], ::String, context: "#{context}[:option_name]")
      end
    end

    class OptionsSpecifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OptionSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlatformBranchSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformBranchSummary, context: context)
        Hearth::Validator.validate!(input[:platform_name], ::String, context: "#{context}[:platform_name]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:lifecycle_state], ::String, context: "#{context}[:lifecycle_state]")
        Hearth::Validator.validate!(input[:branch_order], ::Integer, context: "#{context}[:branch_order]")
        SupportedTierList.validate!(input[:supported_tier_list], context: "#{context}[:supported_tier_list]") unless input[:supported_tier_list].nil?
      end
    end

    class PlatformBranchSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlatformBranchSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlatformDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformDescription, context: context)
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:platform_owner], ::String, context: "#{context}[:platform_owner]")
        Hearth::Validator.validate!(input[:platform_name], ::String, context: "#{context}[:platform_name]")
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_status], ::String, context: "#{context}[:platform_status]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::Time, context: "#{context}[:date_updated]")
        Hearth::Validator.validate!(input[:platform_category], ::String, context: "#{context}[:platform_category]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:maintainer], ::String, context: "#{context}[:maintainer]")
        Hearth::Validator.validate!(input[:operating_system_name], ::String, context: "#{context}[:operating_system_name]")
        Hearth::Validator.validate!(input[:operating_system_version], ::String, context: "#{context}[:operating_system_version]")
        PlatformProgrammingLanguages.validate!(input[:programming_languages], context: "#{context}[:programming_languages]") unless input[:programming_languages].nil?
        PlatformFrameworks.validate!(input[:frameworks], context: "#{context}[:frameworks]") unless input[:frameworks].nil?
        CustomAmiList.validate!(input[:custom_ami_list], context: "#{context}[:custom_ami_list]") unless input[:custom_ami_list].nil?
        SupportedTierList.validate!(input[:supported_tier_list], context: "#{context}[:supported_tier_list]") unless input[:supported_tier_list].nil?
        SupportedAddonList.validate!(input[:supported_addon_list], context: "#{context}[:supported_addon_list]") unless input[:supported_addon_list].nil?
        Hearth::Validator.validate!(input[:platform_lifecycle_state], ::String, context: "#{context}[:platform_lifecycle_state]")
        Hearth::Validator.validate!(input[:platform_branch_name], ::String, context: "#{context}[:platform_branch_name]")
        Hearth::Validator.validate!(input[:platform_branch_lifecycle_state], ::String, context: "#{context}[:platform_branch_lifecycle_state]")
      end
    end

    class PlatformFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformFilter, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        PlatformFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class PlatformFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PlatformFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlatformFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlatformFramework
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformFramework, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class PlatformFrameworks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlatformFramework.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlatformProgrammingLanguage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformProgrammingLanguage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class PlatformProgrammingLanguages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlatformProgrammingLanguage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlatformSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformSummary, context: context)
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:platform_owner], ::String, context: "#{context}[:platform_owner]")
        Hearth::Validator.validate!(input[:platform_status], ::String, context: "#{context}[:platform_status]")
        Hearth::Validator.validate!(input[:platform_category], ::String, context: "#{context}[:platform_category]")
        Hearth::Validator.validate!(input[:operating_system_name], ::String, context: "#{context}[:operating_system_name]")
        Hearth::Validator.validate!(input[:operating_system_version], ::String, context: "#{context}[:operating_system_version]")
        SupportedTierList.validate!(input[:supported_tier_list], context: "#{context}[:supported_tier_list]") unless input[:supported_tier_list].nil?
        SupportedAddonList.validate!(input[:supported_addon_list], context: "#{context}[:supported_addon_list]") unless input[:supported_addon_list].nil?
        Hearth::Validator.validate!(input[:platform_lifecycle_state], ::String, context: "#{context}[:platform_lifecycle_state]")
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:platform_branch_name], ::String, context: "#{context}[:platform_branch_name]")
        Hearth::Validator.validate!(input[:platform_branch_lifecycle_state], ::String, context: "#{context}[:platform_branch_lifecycle_state]")
      end
    end

    class PlatformSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlatformSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlatformVersionStillReferencedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformVersionStillReferencedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Queue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Queue, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class QueueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Queue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RebuildEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebuildEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class RebuildEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebuildEnvironmentOutput, context: context)
      end
    end

    class RequestEnvironmentInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestEnvironmentInfoInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:info_type], ::String, context: "#{context}[:info_type]")
      end
    end

    class RequestEnvironmentInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestEnvironmentInfoOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceQuota
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceQuota, context: context)
        Hearth::Validator.validate!(input[:maximum], ::Integer, context: "#{context}[:maximum]")
      end
    end

    class ResourceQuotas
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceQuotas, context: context)
        ResourceQuota.validate!(input[:application_quota], context: "#{context}[:application_quota]") unless input[:application_quota].nil?
        ResourceQuota.validate!(input[:application_version_quota], context: "#{context}[:application_version_quota]") unless input[:application_version_quota].nil?
        ResourceQuota.validate!(input[:environment_quota], context: "#{context}[:environment_quota]") unless input[:environment_quota].nil?
        ResourceQuota.validate!(input[:configuration_template_quota], context: "#{context}[:configuration_template_quota]") unless input[:configuration_template_quota].nil?
        ResourceQuota.validate!(input[:custom_platform_quota], context: "#{context}[:custom_platform_quota]") unless input[:custom_platform_quota].nil?
      end
    end

    class ResourceTypeNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTypeNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestartAppServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestartAppServerInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class RestartAppServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestartAppServerOutput, context: context)
      end
    end

    class RetrieveEnvironmentInfoInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetrieveEnvironmentInfoInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:info_type], ::String, context: "#{context}[:info_type]")
      end
    end

    class RetrieveEnvironmentInfoOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetrieveEnvironmentInfoOutput, context: context)
        EnvironmentInfoDescriptionList.validate!(input[:environment_info], context: "#{context}[:environment_info]") unless input[:environment_info].nil?
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
      end
    end

    class S3LocationNotInServiceRegionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3LocationNotInServiceRegionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3SubscriptionRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SubscriptionRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SearchFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFilter, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        SearchFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SearchFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SearchFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SearchFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SingleInstanceHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SingleInstanceHealth, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        Hearth::Validator.validate!(input[:color], ::String, context: "#{context}[:color]")
        Causes.validate!(input[:causes], context: "#{context}[:causes]") unless input[:causes].nil?
        Hearth::Validator.validate!(input[:launched_at], ::Time, context: "#{context}[:launched_at]")
        ApplicationMetrics.validate!(input[:application_metrics], context: "#{context}[:application_metrics]") unless input[:application_metrics].nil?
        SystemStatus.validate!(input[:system], context: "#{context}[:system]") unless input[:system].nil?
        Deployment.validate!(input[:deployment], context: "#{context}[:deployment]") unless input[:deployment].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
      end
    end

    class SolutionStackDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SolutionStackDescription, context: context)
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        SolutionStackFileTypeList.validate!(input[:permitted_file_types], context: "#{context}[:permitted_file_types]") unless input[:permitted_file_types].nil?
      end
    end

    class SolutionStackFileTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SourceBuildInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceBuildInformation, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:source_repository], ::String, context: "#{context}[:source_repository]")
        Hearth::Validator.validate!(input[:source_location], ::String, context: "#{context}[:source_location]")
      end
    end

    class SourceBundleDeletionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceBundleDeletionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceConfiguration, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
      end
    end

    class StatusCodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatusCodes, context: context)
        Hearth::Validator.validate!(input[:status2xx], ::Integer, context: "#{context}[:status2xx]")
        Hearth::Validator.validate!(input[:status3xx], ::Integer, context: "#{context}[:status3xx]")
        Hearth::Validator.validate!(input[:status4xx], ::Integer, context: "#{context}[:status4xx]")
        Hearth::Validator.validate!(input[:status5xx], ::Integer, context: "#{context}[:status5xx]")
      end
    end

    class SupportedAddonList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SupportedTierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SwapEnvironmentCNAMEsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SwapEnvironmentCNAMEsInput, context: context)
        Hearth::Validator.validate!(input[:source_environment_id], ::String, context: "#{context}[:source_environment_id]")
        Hearth::Validator.validate!(input[:source_environment_name], ::String, context: "#{context}[:source_environment_name]")
        Hearth::Validator.validate!(input[:destination_environment_id], ::String, context: "#{context}[:destination_environment_id]")
        Hearth::Validator.validate!(input[:destination_environment_name], ::String, context: "#{context}[:destination_environment_name]")
      end
    end

    class SwapEnvironmentCNAMEsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SwapEnvironmentCNAMEsOutput, context: context)
      end
    end

    class SystemStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemStatus, context: context)
        CPUUtilization.validate!(input[:cpu_utilization], context: "#{context}[:cpu_utilization]") unless input[:cpu_utilization].nil?
        LoadAverage.validate!(input[:load_average], context: "#{context}[:load_average]") unless input[:load_average].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TerminateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:terminate_resources], ::TrueClass, ::FalseClass, context: "#{context}[:terminate_resources]")
        Hearth::Validator.validate!(input[:force_terminate], ::TrueClass, ::FalseClass, context: "#{context}[:force_terminate]")
      end
    end

    class TerminateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:endpoint_url], ::String, context: "#{context}[:endpoint_url]")
        Hearth::Validator.validate!(input[:cname], ::String, context: "#{context}[:cname]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::Time, context: "#{context}[:date_updated]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:abortable_operation_in_progress], ::TrueClass, ::FalseClass, context: "#{context}[:abortable_operation_in_progress]")
        Hearth::Validator.validate!(input[:health], ::String, context: "#{context}[:health]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        EnvironmentResourcesDescription.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        EnvironmentTier.validate!(input[:tier], context: "#{context}[:tier]") unless input[:tier].nil?
        EnvironmentLinks.validate!(input[:environment_links], context: "#{context}[:environment_links]") unless input[:environment_links].nil?
        Hearth::Validator.validate!(input[:environment_arn], ::String, context: "#{context}[:environment_arn]")
        Hearth::Validator.validate!(input[:operations_role], ::String, context: "#{context}[:operations_role]")
      end
    end

    class TooManyApplicationVersionsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyApplicationVersionsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyApplicationsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyApplicationsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyBucketsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyBucketsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyConfigurationTemplatesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyConfigurationTemplatesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyEnvironmentsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyEnvironmentsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyPlatformsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyPlatformsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Trigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Trigger, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class TriggerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Trigger.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
        ApplicationDescription.validate!(input[:application], context: "#{context}[:application]") unless input[:application].nil?
      end
    end

    class UpdateApplicationResourceLifecycleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationResourceLifecycleInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        ApplicationResourceLifecycleConfig.validate!(input[:resource_lifecycle_config], context: "#{context}[:resource_lifecycle_config]") unless input[:resource_lifecycle_config].nil?
      end
    end

    class UpdateApplicationResourceLifecycleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationResourceLifecycleOutput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        ApplicationResourceLifecycleConfig.validate!(input[:resource_lifecycle_config], context: "#{context}[:resource_lifecycle_config]") unless input[:resource_lifecycle_config].nil?
      end
    end

    class UpdateApplicationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateApplicationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationVersionOutput, context: context)
        ApplicationVersionDescription.validate!(input[:application_version], context: "#{context}[:application_version]") unless input[:application_version].nil?
      end
    end

    class UpdateConfigurationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ConfigurationOptionSettingsList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
        OptionsSpecifierList.validate!(input[:options_to_remove], context: "#{context}[:options_to_remove]") unless input[:options_to_remove].nil?
      end
    end

    class UpdateConfigurationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::Time, context: "#{context}[:date_updated]")
        ConfigurationOptionSettingsList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
      end
    end

    class UpdateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        EnvironmentTier.validate!(input[:tier], context: "#{context}[:tier]") unless input[:tier].nil?
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        ConfigurationOptionSettingsList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
        OptionsSpecifierList.validate!(input[:options_to_remove], context: "#{context}[:options_to_remove]") unless input[:options_to_remove].nil?
      end
    end

    class UpdateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:endpoint_url], ::String, context: "#{context}[:endpoint_url]")
        Hearth::Validator.validate!(input[:cname], ::String, context: "#{context}[:cname]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::Time, context: "#{context}[:date_updated]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:abortable_operation_in_progress], ::TrueClass, ::FalseClass, context: "#{context}[:abortable_operation_in_progress]")
        Hearth::Validator.validate!(input[:health], ::String, context: "#{context}[:health]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        EnvironmentResourcesDescription.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        EnvironmentTier.validate!(input[:tier], context: "#{context}[:tier]") unless input[:tier].nil?
        EnvironmentLinks.validate!(input[:environment_links], context: "#{context}[:environment_links]") unless input[:environment_links].nil?
        Hearth::Validator.validate!(input[:environment_arn], ::String, context: "#{context}[:environment_arn]")
        Hearth::Validator.validate!(input[:operations_role], ::String, context: "#{context}[:operations_role]")
      end
    end

    class UpdateTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags_to_add], context: "#{context}[:tags_to_add]") unless input[:tags_to_add].nil?
        TagKeyList.validate!(input[:tags_to_remove], context: "#{context}[:tags_to_remove]") unless input[:tags_to_remove].nil?
      end
    end

    class UpdateTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTagsForResourceOutput, context: context)
      end
    end

    class ValidateConfigurationSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateConfigurationSettingsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:template_name], ::String, context: "#{context}[:template_name]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        ConfigurationOptionSettingsList.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
      end
    end

    class ValidateConfigurationSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateConfigurationSettingsOutput, context: context)
        ValidationMessagesList.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
      end
    end

    class ValidationMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationMessage, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:option_name], ::String, context: "#{context}[:option_name]")
      end
    end

    class ValidationMessagesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ValidationMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VersionLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VersionLabelsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
