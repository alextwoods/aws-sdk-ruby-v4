# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticBeanstalk
  module Builders

    # Operation Builder for AbortEnvironmentUpdate
    class AbortEnvironmentUpdate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AbortEnvironmentUpdate'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ApplyEnvironmentManagedAction
    class ApplyEnvironmentManagedAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ApplyEnvironmentManagedAction'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'ActionId'] = input[:action_id].to_s unless input[:action_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssociateEnvironmentOperationsRole
    class AssociateEnvironmentOperationsRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssociateEnvironmentOperationsRole'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'OperationsRole'] = input[:operations_role].to_s unless input[:operations_role].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CheckDNSAvailability
    class CheckDNSAvailability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CheckDNSAvailability'
        params['Version'] = '2010-12-01'
        params[context + 'CNAMEPrefix'] = input[:cname_prefix].to_s unless input[:cname_prefix].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ComposeEnvironments
    class ComposeEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ComposeEnvironments'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        Builders::VersionLabels.build(input[:version_labels], params, context: context + 'VersionLabels' + '.member') unless input[:version_labels].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VersionLabels
    class VersionLabels
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateApplication'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::ApplicationResourceLifecycleConfig.build(input[:resource_lifecycle_config], params, context: context + 'ResourceLifecycleConfig' + '.') unless input[:resource_lifecycle_config].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Structure Builder for ApplicationResourceLifecycleConfig
    class ApplicationResourceLifecycleConfig
      def self.build(input, params, context: nil)
        params[context + 'ServiceRole'] = input[:service_role].to_s unless input[:service_role].nil?
        Builders::ApplicationVersionLifecycleConfig.build(input[:version_lifecycle_config], params, context: context + 'VersionLifecycleConfig' + '.') unless input[:version_lifecycle_config].nil?
      end
    end

    # Structure Builder for ApplicationVersionLifecycleConfig
    class ApplicationVersionLifecycleConfig
      def self.build(input, params, context: nil)
        Builders::MaxCountRule.build(input[:max_count_rule], params, context: context + 'MaxCountRule' + '.') unless input[:max_count_rule].nil?
        Builders::MaxAgeRule.build(input[:max_age_rule], params, context: context + 'MaxAgeRule' + '.') unless input[:max_age_rule].nil?
      end
    end

    # Structure Builder for MaxAgeRule
    class MaxAgeRule
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'MaxAgeInDays'] = input[:max_age_in_days].to_s unless input[:max_age_in_days].nil?
        params[context + 'DeleteSourceFromS3'] = input[:delete_source_from_s3].to_s unless input[:delete_source_from_s3].nil?
      end
    end

    # Structure Builder for MaxCountRule
    class MaxCountRule
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        params[context + 'MaxCount'] = input[:max_count].to_s unless input[:max_count].nil?
        params[context + 'DeleteSourceFromS3'] = input[:delete_source_from_s3].to_s unless input[:delete_source_from_s3].nil?
      end
    end

    # Operation Builder for CreateApplicationVersion
    class CreateApplicationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateApplicationVersion'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'VersionLabel'] = input[:version_label].to_s unless input[:version_label].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::SourceBuildInformation.build(input[:source_build_information], params, context: context + 'SourceBuildInformation' + '.') unless input[:source_build_information].nil?
        Builders::S3Location.build(input[:source_bundle], params, context: context + 'SourceBundle' + '.') unless input[:source_bundle].nil?
        Builders::BuildConfiguration.build(input[:build_configuration], params, context: context + 'BuildConfiguration' + '.') unless input[:build_configuration].nil?
        params[context + 'AutoCreateApplication'] = input[:auto_create_application].to_s unless input[:auto_create_application].nil?
        params[context + 'Process'] = input[:process].to_s unless input[:process].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for BuildConfiguration
    class BuildConfiguration
      def self.build(input, params, context: nil)
        params[context + 'ArtifactName'] = input[:artifact_name].to_s unless input[:artifact_name].nil?
        params[context + 'CodeBuildServiceRole'] = input[:code_build_service_role].to_s unless input[:code_build_service_role].nil?
        params[context + 'ComputeType'] = input[:compute_type].to_s unless input[:compute_type].nil?
        params[context + 'Image'] = input[:image].to_s unless input[:image].nil?
        params[context + 'TimeoutInMinutes'] = input[:timeout_in_minutes].to_s unless input[:timeout_in_minutes].nil?
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input, params, context: nil)
        params[context + 'S3Bucket'] = input[:s3_bucket].to_s unless input[:s3_bucket].nil?
        params[context + 'S3Key'] = input[:s3_key].to_s unless input[:s3_key].nil?
      end
    end

    # Structure Builder for SourceBuildInformation
    class SourceBuildInformation
      def self.build(input, params, context: nil)
        params[context + 'SourceType'] = input[:source_type].to_s unless input[:source_type].nil?
        params[context + 'SourceRepository'] = input[:source_repository].to_s unless input[:source_repository].nil?
        params[context + 'SourceLocation'] = input[:source_location].to_s unless input[:source_location].nil?
      end
    end

    # Operation Builder for CreateConfigurationTemplate
    class CreateConfigurationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateConfigurationTemplate'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'SolutionStackName'] = input[:solution_stack_name].to_s unless input[:solution_stack_name].nil?
        params[context + 'PlatformArn'] = input[:platform_arn].to_s unless input[:platform_arn].nil?
        Builders::SourceConfiguration.build(input[:source_configuration], params, context: context + 'SourceConfiguration' + '.') unless input[:source_configuration].nil?
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::ConfigurationOptionSettingsList.build(input[:option_settings], params, context: context + 'OptionSettings' + '.member') unless input[:option_settings].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ConfigurationOptionSettingsList
    class ConfigurationOptionSettingsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ConfigurationOptionSetting.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ConfigurationOptionSetting
    class ConfigurationOptionSetting
      def self.build(input, params, context: nil)
        params[context + 'ResourceName'] = input[:resource_name].to_s unless input[:resource_name].nil?
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'OptionName'] = input[:option_name].to_s unless input[:option_name].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Structure Builder for SourceConfiguration
    class SourceConfiguration
      def self.build(input, params, context: nil)
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
      end
    end

    # Operation Builder for CreateEnvironment
    class CreateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateEnvironment'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'CNAMEPrefix'] = input[:cname_prefix].to_s unless input[:cname_prefix].nil?
        Builders::EnvironmentTier.build(input[:tier], params, context: context + 'Tier' + '.') unless input[:tier].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'VersionLabel'] = input[:version_label].to_s unless input[:version_label].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'SolutionStackName'] = input[:solution_stack_name].to_s unless input[:solution_stack_name].nil?
        params[context + 'PlatformArn'] = input[:platform_arn].to_s unless input[:platform_arn].nil?
        Builders::ConfigurationOptionSettingsList.build(input[:option_settings], params, context: context + 'OptionSettings' + '.member') unless input[:option_settings].nil?
        Builders::OptionsSpecifierList.build(input[:options_to_remove], params, context: context + 'OptionsToRemove' + '.member') unless input[:options_to_remove].nil?
        params[context + 'OperationsRole'] = input[:operations_role].to_s unless input[:operations_role].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for OptionsSpecifierList
    class OptionsSpecifierList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::OptionSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for OptionSpecification
    class OptionSpecification
      def self.build(input, params, context: nil)
        params[context + 'ResourceName'] = input[:resource_name].to_s unless input[:resource_name].nil?
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'OptionName'] = input[:option_name].to_s unless input[:option_name].nil?
      end
    end

    # Structure Builder for EnvironmentTier
    class EnvironmentTier
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'Version'] = input[:version].to_s unless input[:version].nil?
      end
    end

    # Operation Builder for CreatePlatformVersion
    class CreatePlatformVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreatePlatformVersion'
        params['Version'] = '2010-12-01'
        params[context + 'PlatformName'] = input[:platform_name].to_s unless input[:platform_name].nil?
        params[context + 'PlatformVersion'] = input[:platform_version].to_s unless input[:platform_version].nil?
        Builders::S3Location.build(input[:platform_definition_bundle], params, context: context + 'PlatformDefinitionBundle' + '.') unless input[:platform_definition_bundle].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        Builders::ConfigurationOptionSettingsList.build(input[:option_settings], params, context: context + 'OptionSettings' + '.member') unless input[:option_settings].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateStorageLocation
    class CreateStorageLocation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateStorageLocation'
        params['Version'] = '2010-12-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteApplication'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'TerminateEnvByForce'] = input[:terminate_env_by_force].to_s unless input[:terminate_env_by_force].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteApplicationVersion
    class DeleteApplicationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteApplicationVersion'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'VersionLabel'] = input[:version_label].to_s unless input[:version_label].nil?
        params[context + 'DeleteSourceBundle'] = input[:delete_source_bundle].to_s unless input[:delete_source_bundle].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteConfigurationTemplate
    class DeleteConfigurationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteConfigurationTemplate'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteEnvironmentConfiguration
    class DeleteEnvironmentConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteEnvironmentConfiguration'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeletePlatformVersion
    class DeletePlatformVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeletePlatformVersion'
        params['Version'] = '2010-12-01'
        params[context + 'PlatformArn'] = input[:platform_arn].to_s unless input[:platform_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAccountAttributes'
        params['Version'] = '2010-12-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeApplicationVersions
    class DescribeApplicationVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeApplicationVersions'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        Builders::VersionLabelsList.build(input[:version_labels], params, context: context + 'VersionLabels' + '.member') unless input[:version_labels].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for VersionLabelsList
    class VersionLabelsList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeApplications
    class DescribeApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeApplications'
        params['Version'] = '2010-12-01'
        Builders::ApplicationNamesList.build(input[:application_names], params, context: context + 'ApplicationNames' + '.member') unless input[:application_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ApplicationNamesList
    class ApplicationNamesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeConfigurationOptions
    class DescribeConfigurationOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeConfigurationOptions'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'SolutionStackName'] = input[:solution_stack_name].to_s unless input[:solution_stack_name].nil?
        params[context + 'PlatformArn'] = input[:platform_arn].to_s unless input[:platform_arn].nil?
        Builders::OptionsSpecifierList.build(input[:options], params, context: context + 'Options' + '.member') unless input[:options].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeConfigurationSettings
    class DescribeConfigurationSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeConfigurationSettings'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEnvironmentHealth
    class DescribeEnvironmentHealth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEnvironmentHealth'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        Builders::EnvironmentHealthAttributes.build(input[:attribute_names], params, context: context + 'AttributeNames' + '.member') unless input[:attribute_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for EnvironmentHealthAttributes
    class EnvironmentHealthAttributes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeEnvironmentManagedActionHistory
    class DescribeEnvironmentManagedActionHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEnvironmentManagedActionHistory'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEnvironmentManagedActions
    class DescribeEnvironmentManagedActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEnvironmentManagedActions'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEnvironmentResources
    class DescribeEnvironmentResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEnvironmentResources'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeEnvironments
    class DescribeEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEnvironments'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'VersionLabel'] = input[:version_label].to_s unless input[:version_label].nil?
        Builders::EnvironmentIdList.build(input[:environment_ids], params, context: context + 'EnvironmentIds' + '.member') unless input[:environment_ids].nil?
        Builders::EnvironmentNamesList.build(input[:environment_names], params, context: context + 'EnvironmentNames' + '.member') unless input[:environment_names].nil?
        params[context + 'IncludeDeleted'] = input[:include_deleted].to_s unless input[:include_deleted].nil?
        params[context + 'IncludedDeletedBackTo'] = Hearth::TimeHelper.to_date_time(input[:included_deleted_back_to]) unless input[:included_deleted_back_to].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for EnvironmentNamesList
    class EnvironmentNamesList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for EnvironmentIdList
    class EnvironmentIdList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeEvents
    class DescribeEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeEvents'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'VersionLabel'] = input[:version_label].to_s unless input[:version_label].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'PlatformArn'] = input[:platform_arn].to_s unless input[:platform_arn].nil?
        params[context + 'RequestId'] = input[:request_id].to_s unless input[:request_id].nil?
        params[context + 'Severity'] = input[:severity].to_s unless input[:severity].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeInstancesHealth
    class DescribeInstancesHealth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstancesHealth'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        Builders::InstancesHealthAttributes.build(input[:attribute_names], params, context: context + 'AttributeNames' + '.member') unless input[:attribute_names].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InstancesHealthAttributes
    class InstancesHealthAttributes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribePlatformVersion
    class DescribePlatformVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePlatformVersion'
        params['Version'] = '2010-12-01'
        params[context + 'PlatformArn'] = input[:platform_arn].to_s unless input[:platform_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisassociateEnvironmentOperationsRole
    class DisassociateEnvironmentOperationsRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisassociateEnvironmentOperationsRole'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListAvailableSolutionStacks
    class ListAvailableSolutionStacks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListAvailableSolutionStacks'
        params['Version'] = '2010-12-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListPlatformBranches
    class ListPlatformBranches
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListPlatformBranches'
        params['Version'] = '2010-12-01'
        Builders::SearchFilters.build(input[:filters], params, context: context + 'Filters' + '.member') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SearchFilters
    class SearchFilters
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::SearchFilter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for SearchFilter
    class SearchFilter
      def self.build(input, params, context: nil)
        params[context + 'Attribute'] = input[:attribute].to_s unless input[:attribute].nil?
        params[context + 'Operator'] = input[:operator].to_s unless input[:operator].nil?
        Builders::SearchFilterValues.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
      end
    end

    # List Builder for SearchFilterValues
    class SearchFilterValues
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ListPlatformVersions
    class ListPlatformVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListPlatformVersions'
        params['Version'] = '2010-12-01'
        Builders::PlatformFilters.build(input[:filters], params, context: context + 'Filters' + '.member') unless input[:filters].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PlatformFilters
    class PlatformFilters
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::PlatformFilter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for PlatformFilter
    class PlatformFilter
      def self.build(input, params, context: nil)
        params[context + 'Type'] = input[:type].to_s unless input[:type].nil?
        params[context + 'Operator'] = input[:operator].to_s unless input[:operator].nil?
        Builders::PlatformFilterValueList.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
      end
    end

    # List Builder for PlatformFilterValueList
    class PlatformFilterValueList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListTagsForResource'
        params['Version'] = '2010-12-01'
        params[context + 'ResourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RebuildEnvironment
    class RebuildEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RebuildEnvironment'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RequestEnvironmentInfo
    class RequestEnvironmentInfo
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RequestEnvironmentInfo'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'InfoType'] = input[:info_type].to_s unless input[:info_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RestartAppServer
    class RestartAppServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RestartAppServer'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RetrieveEnvironmentInfo
    class RetrieveEnvironmentInfo
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RetrieveEnvironmentInfo'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'InfoType'] = input[:info_type].to_s unless input[:info_type].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SwapEnvironmentCNAMEs
    class SwapEnvironmentCNAMEs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SwapEnvironmentCNAMEs'
        params['Version'] = '2010-12-01'
        params[context + 'SourceEnvironmentId'] = input[:source_environment_id].to_s unless input[:source_environment_id].nil?
        params[context + 'SourceEnvironmentName'] = input[:source_environment_name].to_s unless input[:source_environment_name].nil?
        params[context + 'DestinationEnvironmentId'] = input[:destination_environment_id].to_s unless input[:destination_environment_id].nil?
        params[context + 'DestinationEnvironmentName'] = input[:destination_environment_name].to_s unless input[:destination_environment_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TerminateEnvironment
    class TerminateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TerminateEnvironment'
        params['Version'] = '2010-12-01'
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'TerminateResources'] = input[:terminate_resources].to_s unless input[:terminate_resources].nil?
        params[context + 'ForceTerminate'] = input[:force_terminate].to_s unless input[:force_terminate].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateApplication'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateApplicationResourceLifecycle
    class UpdateApplicationResourceLifecycle
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateApplicationResourceLifecycle'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        Builders::ApplicationResourceLifecycleConfig.build(input[:resource_lifecycle_config], params, context: context + 'ResourceLifecycleConfig' + '.') unless input[:resource_lifecycle_config].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateApplicationVersion
    class UpdateApplicationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateApplicationVersion'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'VersionLabel'] = input[:version_label].to_s unless input[:version_label].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateConfigurationTemplate
    class UpdateConfigurationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateConfigurationTemplate'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::ConfigurationOptionSettingsList.build(input[:option_settings], params, context: context + 'OptionSettings' + '.member') unless input[:option_settings].nil?
        Builders::OptionsSpecifierList.build(input[:options_to_remove], params, context: context + 'OptionsToRemove' + '.member') unless input[:options_to_remove].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateEnvironment
    class UpdateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateEnvironment'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'EnvironmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::EnvironmentTier.build(input[:tier], params, context: context + 'Tier' + '.') unless input[:tier].nil?
        params[context + 'VersionLabel'] = input[:version_label].to_s unless input[:version_label].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'SolutionStackName'] = input[:solution_stack_name].to_s unless input[:solution_stack_name].nil?
        params[context + 'PlatformArn'] = input[:platform_arn].to_s unless input[:platform_arn].nil?
        Builders::ConfigurationOptionSettingsList.build(input[:option_settings], params, context: context + 'OptionSettings' + '.member') unless input[:option_settings].nil?
        Builders::OptionsSpecifierList.build(input[:options_to_remove], params, context: context + 'OptionsToRemove' + '.member') unless input[:options_to_remove].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateTagsForResource
    class UpdateTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateTagsForResource'
        params['Version'] = '2010-12-01'
        params[context + 'ResourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        Builders::TagList.build(input[:tags_to_add], params, context: context + 'TagsToAdd' + '.member') unless input[:tags_to_add].nil?
        Builders::TagKeyList.build(input[:tags_to_remove], params, context: context + 'TagsToRemove' + '.member') unless input[:tags_to_remove].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Operation Builder for ValidateConfigurationSettings
    class ValidateConfigurationSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ValidateConfigurationSettings'
        params['Version'] = '2010-12-01'
        params[context + 'ApplicationName'] = input[:application_name].to_s unless input[:application_name].nil?
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'EnvironmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        Builders::ConfigurationOptionSettingsList.build(input[:option_settings], params, context: context + 'OptionSettings' + '.member') unless input[:option_settings].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end
  end
end
