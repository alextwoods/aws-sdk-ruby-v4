# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ElasticBeanstalk
  module Parsers

    # Operation Parser for AbortEnvironmentUpdate
    class AbortEnvironmentUpdate
      def self.parse(http_resp)
        data = Types::AbortEnvironmentUpdateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AbortEnvironmentUpdateResult')
        data
      end
    end

    # Error Parser for InsufficientPrivilegesException
    class InsufficientPrivilegesException
      def self.parse(http_resp)
        data = Types::InsufficientPrivilegesException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ApplyEnvironmentManagedAction
    class ApplyEnvironmentManagedAction
      def self.parse(http_resp)
        data = Types::ApplyEnvironmentManagedActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ApplyEnvironmentManagedActionResult')
        xml.at('ActionId') do |node|
          data.action_id = (node.text || '')
        end
        xml.at('ActionDescription') do |node|
          data.action_description = (node.text || '')
        end
        xml.at('ActionType') do |node|
          data.action_type = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ManagedActionInvalidStateException
    class ManagedActionInvalidStateException
      def self.parse(http_resp)
        data = Types::ManagedActionInvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ElasticBeanstalkServiceException
    class ElasticBeanstalkServiceException
      def self.parse(http_resp)
        data = Types::ElasticBeanstalkServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AssociateEnvironmentOperationsRole
    class AssociateEnvironmentOperationsRole
      def self.parse(http_resp)
        data = Types::AssociateEnvironmentOperationsRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AssociateEnvironmentOperationsRoleResult')
        data
      end
    end

    # Operation Parser for CheckDNSAvailability
    class CheckDNSAvailability
      def self.parse(http_resp)
        data = Types::CheckDNSAvailabilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CheckDNSAvailabilityResult')
        xml.at('Available') do |node|
          data.available = (node.text == 'true')
        end
        xml.at('FullyQualifiedCNAME') do |node|
          data.fully_qualified_cname = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ComposeEnvironments
    class ComposeEnvironments
      def self.parse(http_resp)
        data = Types::ComposeEnvironmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ComposeEnvironmentsResult')
        xml.at('Environments') do |node|
          children = node.children('member')
          data.environments = Parsers::EnvironmentDescriptionsList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class EnvironmentDescriptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EnvironmentDescription.parse(node)
        end
        data
      end
    end

    class EnvironmentDescription
      def self.parse(xml)
        data = Types::EnvironmentDescription.new
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        xml.at('EnvironmentId') do |node|
          data.environment_id = (node.text || '')
        end
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('VersionLabel') do |node|
          data.version_label = (node.text || '')
        end
        xml.at('SolutionStackName') do |node|
          data.solution_stack_name = (node.text || '')
        end
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('EndpointURL') do |node|
          data.endpoint_url = (node.text || '')
        end
        xml.at('CNAME') do |node|
          data.cname = (node.text || '')
        end
        xml.at('DateCreated') do |node|
          data.date_created = Time.parse(node.text) if node.text
        end
        xml.at('DateUpdated') do |node|
          data.date_updated = Time.parse(node.text) if node.text
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('AbortableOperationInProgress') do |node|
          data.abortable_operation_in_progress = (node.text == 'true')
        end
        xml.at('Health') do |node|
          data.health = (node.text || '')
        end
        xml.at('HealthStatus') do |node|
          data.health_status = (node.text || '')
        end
        xml.at('Resources') do |node|
          data.resources = Parsers::EnvironmentResourcesDescription.parse(node)
        end
        xml.at('Tier') do |node|
          data.tier = Parsers::EnvironmentTier.parse(node)
        end
        xml.at('EnvironmentLinks') do |node|
          children = node.children('member')
          data.environment_links = Parsers::EnvironmentLinks.parse(children)
        end
        xml.at('EnvironmentArn') do |node|
          data.environment_arn = (node.text || '')
        end
        xml.at('OperationsRole') do |node|
          data.operations_role = (node.text || '')
        end
        return data
      end
    end

    class EnvironmentLinks
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EnvironmentLink.parse(node)
        end
        data
      end
    end

    class EnvironmentLink
      def self.parse(xml)
        data = Types::EnvironmentLink.new
        xml.at('LinkName') do |node|
          data.link_name = (node.text || '')
        end
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        return data
      end
    end

    class EnvironmentTier
      def self.parse(xml)
        data = Types::EnvironmentTier.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Type') do |node|
          data.type = (node.text || '')
        end
        xml.at('Version') do |node|
          data.version = (node.text || '')
        end
        return data
      end
    end

    class EnvironmentResourcesDescription
      def self.parse(xml)
        data = Types::EnvironmentResourcesDescription.new
        xml.at('LoadBalancer') do |node|
          data.load_balancer = Parsers::LoadBalancerDescription.parse(node)
        end
        return data
      end
    end

    class LoadBalancerDescription
      def self.parse(xml)
        data = Types::LoadBalancerDescription.new
        xml.at('LoadBalancerName') do |node|
          data.load_balancer_name = (node.text || '')
        end
        xml.at('Domain') do |node|
          data.domain = (node.text || '')
        end
        xml.at('Listeners') do |node|
          children = node.children('member')
          data.listeners = Parsers::LoadBalancerListenersDescription.parse(children)
        end
        return data
      end
    end

    class LoadBalancerListenersDescription
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Listener.parse(node)
        end
        data
      end
    end

    class Listener
      def self.parse(xml)
        data = Types::Listener.new
        xml.at('Protocol') do |node|
          data.protocol = (node.text || '')
        end
        xml.at('Port') do |node|
          data.port = node.text&.to_i
        end
        return data
      end
    end

    # Error Parser for TooManyEnvironmentsException
    class TooManyEnvironmentsException
      def self.parse(http_resp)
        data = Types::TooManyEnvironmentsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateApplicationResult')
        xml.at('Application') do |node|
          data.application = Parsers::ApplicationDescription.parse(node)
        end
        data
      end
    end

    class ApplicationDescription
      def self.parse(xml)
        data = Types::ApplicationDescription.new
        xml.at('ApplicationArn') do |node|
          data.application_arn = (node.text || '')
        end
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('DateCreated') do |node|
          data.date_created = Time.parse(node.text) if node.text
        end
        xml.at('DateUpdated') do |node|
          data.date_updated = Time.parse(node.text) if node.text
        end
        xml.at('Versions') do |node|
          children = node.children('member')
          data.versions = Parsers::VersionLabelsList.parse(children)
        end
        xml.at('ConfigurationTemplates') do |node|
          children = node.children('member')
          data.configuration_templates = Parsers::ConfigurationTemplateNamesList.parse(children)
        end
        xml.at('ResourceLifecycleConfig') do |node|
          data.resource_lifecycle_config = Parsers::ApplicationResourceLifecycleConfig.parse(node)
        end
        return data
      end
    end

    class ApplicationResourceLifecycleConfig
      def self.parse(xml)
        data = Types::ApplicationResourceLifecycleConfig.new
        xml.at('ServiceRole') do |node|
          data.service_role = (node.text || '')
        end
        xml.at('VersionLifecycleConfig') do |node|
          data.version_lifecycle_config = Parsers::ApplicationVersionLifecycleConfig.parse(node)
        end
        return data
      end
    end

    class ApplicationVersionLifecycleConfig
      def self.parse(xml)
        data = Types::ApplicationVersionLifecycleConfig.new
        xml.at('MaxCountRule') do |node|
          data.max_count_rule = Parsers::MaxCountRule.parse(node)
        end
        xml.at('MaxAgeRule') do |node|
          data.max_age_rule = Parsers::MaxAgeRule.parse(node)
        end
        return data
      end
    end

    class MaxAgeRule
      def self.parse(xml)
        data = Types::MaxAgeRule.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('MaxAgeInDays') do |node|
          data.max_age_in_days = node.text&.to_i
        end
        xml.at('DeleteSourceFromS3') do |node|
          data.delete_source_from_s3 = (node.text == 'true')
        end
        return data
      end
    end

    class MaxCountRule
      def self.parse(xml)
        data = Types::MaxCountRule.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('MaxCount') do |node|
          data.max_count = node.text&.to_i
        end
        xml.at('DeleteSourceFromS3') do |node|
          data.delete_source_from_s3 = (node.text == 'true')
        end
        return data
      end
    end

    class ConfigurationTemplateNamesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class VersionLabelsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyApplicationsException
    class TooManyApplicationsException
      def self.parse(http_resp)
        data = Types::TooManyApplicationsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateApplicationVersion
    class CreateApplicationVersion
      def self.parse(http_resp)
        data = Types::CreateApplicationVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateApplicationVersionResult')
        xml.at('ApplicationVersion') do |node|
          data.application_version = Parsers::ApplicationVersionDescription.parse(node)
        end
        data
      end
    end

    class ApplicationVersionDescription
      def self.parse(xml)
        data = Types::ApplicationVersionDescription.new
        xml.at('ApplicationVersionArn') do |node|
          data.application_version_arn = (node.text || '')
        end
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('VersionLabel') do |node|
          data.version_label = (node.text || '')
        end
        xml.at('SourceBuildInformation') do |node|
          data.source_build_information = Parsers::SourceBuildInformation.parse(node)
        end
        xml.at('BuildArn') do |node|
          data.build_arn = (node.text || '')
        end
        xml.at('SourceBundle') do |node|
          data.source_bundle = Parsers::S3Location.parse(node)
        end
        xml.at('DateCreated') do |node|
          data.date_created = Time.parse(node.text) if node.text
        end
        xml.at('DateUpdated') do |node|
          data.date_updated = Time.parse(node.text) if node.text
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        return data
      end
    end

    class S3Location
      def self.parse(xml)
        data = Types::S3Location.new
        xml.at('S3Bucket') do |node|
          data.s3_bucket = (node.text || '')
        end
        xml.at('S3Key') do |node|
          data.s3_key = (node.text || '')
        end
        return data
      end
    end

    class SourceBuildInformation
      def self.parse(xml)
        data = Types::SourceBuildInformation.new
        xml.at('SourceType') do |node|
          data.source_type = (node.text || '')
        end
        xml.at('SourceRepository') do |node|
          data.source_repository = (node.text || '')
        end
        xml.at('SourceLocation') do |node|
          data.source_location = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for S3LocationNotInServiceRegionException
    class S3LocationNotInServiceRegionException
      def self.parse(http_resp)
        data = Types::S3LocationNotInServiceRegionException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for CodeBuildNotInServiceRegionException
    class CodeBuildNotInServiceRegionException
      def self.parse(http_resp)
        data = Types::CodeBuildNotInServiceRegionException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyApplicationVersionsException
    class TooManyApplicationVersionsException
      def self.parse(http_resp)
        data = Types::TooManyApplicationVersionsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateConfigurationTemplate
    class CreateConfigurationTemplate
      def self.parse(http_resp)
        data = Types::CreateConfigurationTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateConfigurationTemplateResult')
        xml.at('SolutionStackName') do |node|
          data.solution_stack_name = (node.text || '')
        end
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        xml.at('DeploymentStatus') do |node|
          data.deployment_status = (node.text || '')
        end
        xml.at('DateCreated') do |node|
          data.date_created = Time.parse(node.text) if node.text
        end
        xml.at('DateUpdated') do |node|
          data.date_updated = Time.parse(node.text) if node.text
        end
        xml.at('OptionSettings') do |node|
          children = node.children('member')
          data.option_settings = Parsers::ConfigurationOptionSettingsList.parse(children)
        end
        data
      end
    end

    class ConfigurationOptionSettingsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ConfigurationOptionSetting.parse(node)
        end
        data
      end
    end

    class ConfigurationOptionSetting
      def self.parse(xml)
        data = Types::ConfigurationOptionSetting.new
        xml.at('ResourceName') do |node|
          data.resource_name = (node.text || '')
        end
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('OptionName') do |node|
          data.option_name = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for TooManyConfigurationTemplatesException
    class TooManyConfigurationTemplatesException
      def self.parse(http_resp)
        data = Types::TooManyConfigurationTemplatesException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyBucketsException
    class TooManyBucketsException
      def self.parse(http_resp)
        data = Types::TooManyBucketsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateEnvironment
    class CreateEnvironment
      def self.parse(http_resp)
        data = Types::CreateEnvironmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateEnvironmentResult')
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        xml.at('EnvironmentId') do |node|
          data.environment_id = (node.text || '')
        end
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('VersionLabel') do |node|
          data.version_label = (node.text || '')
        end
        xml.at('SolutionStackName') do |node|
          data.solution_stack_name = (node.text || '')
        end
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('EndpointURL') do |node|
          data.endpoint_url = (node.text || '')
        end
        xml.at('CNAME') do |node|
          data.cname = (node.text || '')
        end
        xml.at('DateCreated') do |node|
          data.date_created = Time.parse(node.text) if node.text
        end
        xml.at('DateUpdated') do |node|
          data.date_updated = Time.parse(node.text) if node.text
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('AbortableOperationInProgress') do |node|
          data.abortable_operation_in_progress = (node.text == 'true')
        end
        xml.at('Health') do |node|
          data.health = (node.text || '')
        end
        xml.at('HealthStatus') do |node|
          data.health_status = (node.text || '')
        end
        xml.at('Resources') do |node|
          data.resources = Parsers::EnvironmentResourcesDescription.parse(node)
        end
        xml.at('Tier') do |node|
          data.tier = Parsers::EnvironmentTier.parse(node)
        end
        xml.at('EnvironmentLinks') do |node|
          children = node.children('member')
          data.environment_links = Parsers::EnvironmentLinks.parse(children)
        end
        xml.at('EnvironmentArn') do |node|
          data.environment_arn = (node.text || '')
        end
        xml.at('OperationsRole') do |node|
          data.operations_role = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreatePlatformVersion
    class CreatePlatformVersion
      def self.parse(http_resp)
        data = Types::CreatePlatformVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreatePlatformVersionResult')
        xml.at('PlatformSummary') do |node|
          data.platform_summary = Parsers::PlatformSummary.parse(node)
        end
        xml.at('Builder') do |node|
          data.builder = Parsers::Builder.parse(node)
        end
        data
      end
    end

    class Builder
      def self.parse(xml)
        data = Types::Builder.new
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    class PlatformSummary
      def self.parse(xml)
        data = Types::PlatformSummary.new
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('PlatformOwner') do |node|
          data.platform_owner = (node.text || '')
        end
        xml.at('PlatformStatus') do |node|
          data.platform_status = (node.text || '')
        end
        xml.at('PlatformCategory') do |node|
          data.platform_category = (node.text || '')
        end
        xml.at('OperatingSystemName') do |node|
          data.operating_system_name = (node.text || '')
        end
        xml.at('OperatingSystemVersion') do |node|
          data.operating_system_version = (node.text || '')
        end
        xml.at('SupportedTierList') do |node|
          children = node.children('member')
          data.supported_tier_list = Parsers::SupportedTierList.parse(children)
        end
        xml.at('SupportedAddonList') do |node|
          children = node.children('member')
          data.supported_addon_list = Parsers::SupportedAddonList.parse(children)
        end
        xml.at('PlatformLifecycleState') do |node|
          data.platform_lifecycle_state = (node.text || '')
        end
        xml.at('PlatformVersion') do |node|
          data.platform_version = (node.text || '')
        end
        xml.at('PlatformBranchName') do |node|
          data.platform_branch_name = (node.text || '')
        end
        xml.at('PlatformBranchLifecycleState') do |node|
          data.platform_branch_lifecycle_state = (node.text || '')
        end
        return data
      end
    end

    class SupportedAddonList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class SupportedTierList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for TooManyPlatformsException
    class TooManyPlatformsException
      def self.parse(http_resp)
        data = Types::TooManyPlatformsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateStorageLocation
    class CreateStorageLocation
      def self.parse(http_resp)
        data = Types::CreateStorageLocationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateStorageLocationResult')
        xml.at('S3Bucket') do |node|
          data.s3_bucket = (node.text || '')
        end
        data
      end
    end

    # Error Parser for S3SubscriptionRequiredException
    class S3SubscriptionRequiredException
      def self.parse(http_resp)
        data = Types::S3SubscriptionRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteApplication
    class DeleteApplication
      def self.parse(http_resp)
        data = Types::DeleteApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteApplicationResult')
        data
      end
    end

    # Error Parser for OperationInProgressException
    class OperationInProgressException
      def self.parse(http_resp)
        data = Types::OperationInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteApplicationVersion
    class DeleteApplicationVersion
      def self.parse(http_resp)
        data = Types::DeleteApplicationVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteApplicationVersionResult')
        data
      end
    end

    # Error Parser for SourceBundleDeletionException
    class SourceBundleDeletionException
      def self.parse(http_resp)
        data = Types::SourceBundleDeletionException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteConfigurationTemplate
    class DeleteConfigurationTemplate
      def self.parse(http_resp)
        data = Types::DeleteConfigurationTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteConfigurationTemplateResult')
        data
      end
    end

    # Operation Parser for DeleteEnvironmentConfiguration
    class DeleteEnvironmentConfiguration
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteEnvironmentConfigurationResult')
        data
      end
    end

    # Operation Parser for DeletePlatformVersion
    class DeletePlatformVersion
      def self.parse(http_resp)
        data = Types::DeletePlatformVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeletePlatformVersionResult')
        xml.at('PlatformSummary') do |node|
          data.platform_summary = Parsers::PlatformSummary.parse(node)
        end
        data
      end
    end

    # Error Parser for PlatformVersionStillReferencedException
    class PlatformVersionStillReferencedException
      def self.parse(http_resp)
        data = Types::PlatformVersionStillReferencedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.parse(http_resp)
        data = Types::DescribeAccountAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAccountAttributesResult')
        xml.at('ResourceQuotas') do |node|
          data.resource_quotas = Parsers::ResourceQuotas.parse(node)
        end
        data
      end
    end

    class ResourceQuotas
      def self.parse(xml)
        data = Types::ResourceQuotas.new
        xml.at('ApplicationQuota') do |node|
          data.application_quota = Parsers::ResourceQuota.parse(node)
        end
        xml.at('ApplicationVersionQuota') do |node|
          data.application_version_quota = Parsers::ResourceQuota.parse(node)
        end
        xml.at('EnvironmentQuota') do |node|
          data.environment_quota = Parsers::ResourceQuota.parse(node)
        end
        xml.at('ConfigurationTemplateQuota') do |node|
          data.configuration_template_quota = Parsers::ResourceQuota.parse(node)
        end
        xml.at('CustomPlatformQuota') do |node|
          data.custom_platform_quota = Parsers::ResourceQuota.parse(node)
        end
        return data
      end
    end

    class ResourceQuota
      def self.parse(xml)
        data = Types::ResourceQuota.new
        xml.at('Maximum') do |node|
          data.maximum = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeApplicationVersions
    class DescribeApplicationVersions
      def self.parse(http_resp)
        data = Types::DescribeApplicationVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeApplicationVersionsResult')
        xml.at('ApplicationVersions') do |node|
          children = node.children('member')
          data.application_versions = Parsers::ApplicationVersionDescriptionList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ApplicationVersionDescriptionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ApplicationVersionDescription.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeApplications
    class DescribeApplications
      def self.parse(http_resp)
        data = Types::DescribeApplicationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeApplicationsResult')
        xml.at('Applications') do |node|
          children = node.children('member')
          data.applications = Parsers::ApplicationDescriptionList.parse(children)
        end
        data
      end
    end

    class ApplicationDescriptionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ApplicationDescription.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeConfigurationOptions
    class DescribeConfigurationOptions
      def self.parse(http_resp)
        data = Types::DescribeConfigurationOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeConfigurationOptionsResult')
        xml.at('SolutionStackName') do |node|
          data.solution_stack_name = (node.text || '')
        end
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('Options') do |node|
          children = node.children('member')
          data.options = Parsers::ConfigurationOptionDescriptionsList.parse(children)
        end
        data
      end
    end

    class ConfigurationOptionDescriptionsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ConfigurationOptionDescription.parse(node)
        end
        data
      end
    end

    class ConfigurationOptionDescription
      def self.parse(xml)
        data = Types::ConfigurationOptionDescription.new
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('ChangeSeverity') do |node|
          data.change_severity = (node.text || '')
        end
        xml.at('UserDefined') do |node|
          data.user_defined = (node.text == 'true')
        end
        xml.at('ValueType') do |node|
          data.value_type = (node.text || '')
        end
        xml.at('ValueOptions') do |node|
          children = node.children('member')
          data.value_options = Parsers::ConfigurationOptionPossibleValues.parse(children)
        end
        xml.at('MinValue') do |node|
          data.min_value = node.text&.to_i
        end
        xml.at('MaxValue') do |node|
          data.max_value = node.text&.to_i
        end
        xml.at('MaxLength') do |node|
          data.max_length = node.text&.to_i
        end
        xml.at('Regex') do |node|
          data.regex = Parsers::OptionRestrictionRegex.parse(node)
        end
        return data
      end
    end

    class OptionRestrictionRegex
      def self.parse(xml)
        data = Types::OptionRestrictionRegex.new
        xml.at('Pattern') do |node|
          data.pattern = (node.text || '')
        end
        xml.at('Label') do |node|
          data.label = (node.text || '')
        end
        return data
      end
    end

    class ConfigurationOptionPossibleValues
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeConfigurationSettings
    class DescribeConfigurationSettings
      def self.parse(http_resp)
        data = Types::DescribeConfigurationSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeConfigurationSettingsResult')
        xml.at('ConfigurationSettings') do |node|
          children = node.children('member')
          data.configuration_settings = Parsers::ConfigurationSettingsDescriptionList.parse(children)
        end
        data
      end
    end

    class ConfigurationSettingsDescriptionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ConfigurationSettingsDescription.parse(node)
        end
        data
      end
    end

    class ConfigurationSettingsDescription
      def self.parse(xml)
        data = Types::ConfigurationSettingsDescription.new
        xml.at('SolutionStackName') do |node|
          data.solution_stack_name = (node.text || '')
        end
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        xml.at('DeploymentStatus') do |node|
          data.deployment_status = (node.text || '')
        end
        xml.at('DateCreated') do |node|
          data.date_created = Time.parse(node.text) if node.text
        end
        xml.at('DateUpdated') do |node|
          data.date_updated = Time.parse(node.text) if node.text
        end
        xml.at('OptionSettings') do |node|
          children = node.children('member')
          data.option_settings = Parsers::ConfigurationOptionSettingsList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for DescribeEnvironmentHealth
    class DescribeEnvironmentHealth
      def self.parse(http_resp)
        data = Types::DescribeEnvironmentHealthOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEnvironmentHealthResult')
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        xml.at('HealthStatus') do |node|
          data.health_status = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Color') do |node|
          data.color = (node.text || '')
        end
        xml.at('Causes') do |node|
          children = node.children('member')
          data.causes = Parsers::Causes.parse(children)
        end
        xml.at('ApplicationMetrics') do |node|
          data.application_metrics = Parsers::ApplicationMetrics.parse(node)
        end
        xml.at('InstancesHealth') do |node|
          data.instances_health = Parsers::InstanceHealthSummary.parse(node)
        end
        xml.at('RefreshedAt') do |node|
          data.refreshed_at = Time.parse(node.text) if node.text
        end
        data
      end
    end

    class InstanceHealthSummary
      def self.parse(xml)
        data = Types::InstanceHealthSummary.new
        xml.at('NoData') do |node|
          data.no_data = node.text&.to_i
        end
        xml.at('Unknown') do |node|
          data.unknown = node.text&.to_i
        end
        xml.at('Pending') do |node|
          data.pending = node.text&.to_i
        end
        xml.at('Ok') do |node|
          data.ok = node.text&.to_i
        end
        xml.at('Info') do |node|
          data.info = node.text&.to_i
        end
        xml.at('Warning') do |node|
          data.warning = node.text&.to_i
        end
        xml.at('Degraded') do |node|
          data.degraded = node.text&.to_i
        end
        xml.at('Severe') do |node|
          data.severe = node.text&.to_i
        end
        return data
      end
    end

    class ApplicationMetrics
      def self.parse(xml)
        data = Types::ApplicationMetrics.new
        xml.at('Duration') do |node|
          data.duration = node.text&.to_i
        end
        xml.at('RequestCount') do |node|
          data.request_count = node.text&.to_i
        end
        xml.at('StatusCodes') do |node|
          data.status_codes = Parsers::StatusCodes.parse(node)
        end
        xml.at('Latency') do |node|
          data.latency = Parsers::Latency.parse(node)
        end
        return data
      end
    end

    class Latency
      def self.parse(xml)
        data = Types::Latency.new
        xml.at('P999') do |node|
          data.p999 = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('P99') do |node|
          data.p99 = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('P95') do |node|
          data.p95 = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('P90') do |node|
          data.p90 = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('P85') do |node|
          data.p85 = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('P75') do |node|
          data.p75 = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('P50') do |node|
          data.p50 = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('P10') do |node|
          data.p10 = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class StatusCodes
      def self.parse(xml)
        data = Types::StatusCodes.new
        xml.at('Status2xx') do |node|
          data.status2xx = node.text&.to_i
        end
        xml.at('Status3xx') do |node|
          data.status3xx = node.text&.to_i
        end
        xml.at('Status4xx') do |node|
          data.status4xx = node.text&.to_i
        end
        xml.at('Status5xx') do |node|
          data.status5xx = node.text&.to_i
        end
        return data
      end
    end

    class Causes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeEnvironmentManagedActionHistory
    class DescribeEnvironmentManagedActionHistory
      def self.parse(http_resp)
        data = Types::DescribeEnvironmentManagedActionHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEnvironmentManagedActionHistoryResult')
        xml.at('ManagedActionHistoryItems') do |node|
          children = node.children('member')
          data.managed_action_history_items = Parsers::ManagedActionHistoryItems.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ManagedActionHistoryItems
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ManagedActionHistoryItem.parse(node)
        end
        data
      end
    end

    class ManagedActionHistoryItem
      def self.parse(xml)
        data = Types::ManagedActionHistoryItem.new
        xml.at('ActionId') do |node|
          data.action_id = (node.text || '')
        end
        xml.at('ActionType') do |node|
          data.action_type = (node.text || '')
        end
        xml.at('ActionDescription') do |node|
          data.action_description = (node.text || '')
        end
        xml.at('FailureType') do |node|
          data.failure_type = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('FailureDescription') do |node|
          data.failure_description = (node.text || '')
        end
        xml.at('ExecutedTime') do |node|
          data.executed_time = Time.parse(node.text) if node.text
        end
        xml.at('FinishedTime') do |node|
          data.finished_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeEnvironmentManagedActions
    class DescribeEnvironmentManagedActions
      def self.parse(http_resp)
        data = Types::DescribeEnvironmentManagedActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEnvironmentManagedActionsResult')
        xml.at('ManagedActions') do |node|
          children = node.children('member')
          data.managed_actions = Parsers::ManagedActions.parse(children)
        end
        data
      end
    end

    class ManagedActions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ManagedAction.parse(node)
        end
        data
      end
    end

    class ManagedAction
      def self.parse(xml)
        data = Types::ManagedAction.new
        xml.at('ActionId') do |node|
          data.action_id = (node.text || '')
        end
        xml.at('ActionDescription') do |node|
          data.action_description = (node.text || '')
        end
        xml.at('ActionType') do |node|
          data.action_type = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('WindowStartTime') do |node|
          data.window_start_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeEnvironmentResources
    class DescribeEnvironmentResources
      def self.parse(http_resp)
        data = Types::DescribeEnvironmentResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEnvironmentResourcesResult')
        xml.at('EnvironmentResources') do |node|
          data.environment_resources = Parsers::EnvironmentResourceDescription.parse(node)
        end
        data
      end
    end

    class EnvironmentResourceDescription
      def self.parse(xml)
        data = Types::EnvironmentResourceDescription.new
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        xml.at('AutoScalingGroups') do |node|
          children = node.children('member')
          data.auto_scaling_groups = Parsers::AutoScalingGroupList.parse(children)
        end
        xml.at('Instances') do |node|
          children = node.children('member')
          data.instances = Parsers::InstanceList.parse(children)
        end
        xml.at('LaunchConfigurations') do |node|
          children = node.children('member')
          data.launch_configurations = Parsers::LaunchConfigurationList.parse(children)
        end
        xml.at('LaunchTemplates') do |node|
          children = node.children('member')
          data.launch_templates = Parsers::LaunchTemplateList.parse(children)
        end
        xml.at('LoadBalancers') do |node|
          children = node.children('member')
          data.load_balancers = Parsers::LoadBalancerList.parse(children)
        end
        xml.at('Triggers') do |node|
          children = node.children('member')
          data.triggers = Parsers::TriggerList.parse(children)
        end
        xml.at('Queues') do |node|
          children = node.children('member')
          data.queues = Parsers::QueueList.parse(children)
        end
        return data
      end
    end

    class QueueList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Queue.parse(node)
        end
        data
      end
    end

    class Queue
      def self.parse(xml)
        data = Types::Queue.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('URL') do |node|
          data.url = (node.text || '')
        end
        return data
      end
    end

    class TriggerList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Trigger.parse(node)
        end
        data
      end
    end

    class Trigger
      def self.parse(xml)
        data = Types::Trigger.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        return data
      end
    end

    class LoadBalancerList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LoadBalancer.parse(node)
        end
        data
      end
    end

    class LoadBalancer
      def self.parse(xml)
        data = Types::LoadBalancer.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplateList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplate.parse(node)
        end
        data
      end
    end

    class LaunchTemplate
      def self.parse(xml)
        data = Types::LaunchTemplate.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        return data
      end
    end

    class LaunchConfigurationList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchConfiguration.parse(node)
        end
        data
      end
    end

    class LaunchConfiguration
      def self.parse(xml)
        data = Types::LaunchConfiguration.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        return data
      end
    end

    class InstanceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Instance.parse(node)
        end
        data
      end
    end

    class Instance
      def self.parse(xml)
        data = Types::Instance.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        return data
      end
    end

    class AutoScalingGroupList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AutoScalingGroup.parse(node)
        end
        data
      end
    end

    class AutoScalingGroup
      def self.parse(xml)
        data = Types::AutoScalingGroup.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeEnvironments
    class DescribeEnvironments
      def self.parse(http_resp)
        data = Types::DescribeEnvironmentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEnvironmentsResult')
        xml.at('Environments') do |node|
          children = node.children('member')
          data.environments = Parsers::EnvironmentDescriptionsList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeEvents
    class DescribeEvents
      def self.parse(http_resp)
        data = Types::DescribeEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeEventsResult')
        xml.at('Events') do |node|
          children = node.children('member')
          data.events = Parsers::EventDescriptionList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class EventDescriptionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EventDescription.parse(node)
        end
        data
      end
    end

    class EventDescription
      def self.parse(xml)
        data = Types::EventDescription.new
        xml.at('EventDate') do |node|
          data.event_date = Time.parse(node.text) if node.text
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('VersionLabel') do |node|
          data.version_label = (node.text || '')
        end
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('RequestId') do |node|
          data.request_id = (node.text || '')
        end
        xml.at('Severity') do |node|
          data.severity = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeInstancesHealth
    class DescribeInstancesHealth
      def self.parse(http_resp)
        data = Types::DescribeInstancesHealthOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeInstancesHealthResult')
        xml.at('InstanceHealthList') do |node|
          children = node.children('member')
          data.instance_health_list = Parsers::InstanceHealthList.parse(children)
        end
        xml.at('RefreshedAt') do |node|
          data.refreshed_at = Time.parse(node.text) if node.text
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class InstanceHealthList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SingleInstanceHealth.parse(node)
        end
        data
      end
    end

    class SingleInstanceHealth
      def self.parse(xml)
        data = Types::SingleInstanceHealth.new
        xml.at('InstanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('HealthStatus') do |node|
          data.health_status = (node.text || '')
        end
        xml.at('Color') do |node|
          data.color = (node.text || '')
        end
        xml.at('Causes') do |node|
          children = node.children('member')
          data.causes = Parsers::Causes.parse(children)
        end
        xml.at('LaunchedAt') do |node|
          data.launched_at = Time.parse(node.text) if node.text
        end
        xml.at('ApplicationMetrics') do |node|
          data.application_metrics = Parsers::ApplicationMetrics.parse(node)
        end
        xml.at('System') do |node|
          data.system = Parsers::SystemStatus.parse(node)
        end
        xml.at('Deployment') do |node|
          data.deployment = Parsers::Deployment.parse(node)
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('InstanceType') do |node|
          data.instance_type = (node.text || '')
        end
        return data
      end
    end

    class Deployment
      def self.parse(xml)
        data = Types::Deployment.new
        xml.at('VersionLabel') do |node|
          data.version_label = (node.text || '')
        end
        xml.at('DeploymentId') do |node|
          data.deployment_id = node.text&.to_i
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('DeploymentTime') do |node|
          data.deployment_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    class SystemStatus
      def self.parse(xml)
        data = Types::SystemStatus.new
        xml.at('CPUUtilization') do |node|
          data.cpu_utilization = Parsers::CPUUtilization.parse(node)
        end
        xml.at('LoadAverage') do |node|
          children = node.children('member')
          data.load_average = Parsers::LoadAverage.parse(children)
        end
        return data
      end
    end

    class LoadAverage
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Hearth::NumberHelper.deserialize(node.text)
        end
        data
      end
    end

    class CPUUtilization
      def self.parse(xml)
        data = Types::CPUUtilization.new
        xml.at('User') do |node|
          data.user = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Nice') do |node|
          data.nice = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('System') do |node|
          data.system = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Idle') do |node|
          data.idle = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('IOWait') do |node|
          data.io_wait = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('IRQ') do |node|
          data.irq = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('SoftIRQ') do |node|
          data.soft_irq = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Privileged') do |node|
          data.privileged = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    # Operation Parser for DescribePlatformVersion
    class DescribePlatformVersion
      def self.parse(http_resp)
        data = Types::DescribePlatformVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribePlatformVersionResult')
        xml.at('PlatformDescription') do |node|
          data.platform_description = Parsers::PlatformDescription.parse(node)
        end
        data
      end
    end

    class PlatformDescription
      def self.parse(xml)
        data = Types::PlatformDescription.new
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('PlatformOwner') do |node|
          data.platform_owner = (node.text || '')
        end
        xml.at('PlatformName') do |node|
          data.platform_name = (node.text || '')
        end
        xml.at('PlatformVersion') do |node|
          data.platform_version = (node.text || '')
        end
        xml.at('SolutionStackName') do |node|
          data.solution_stack_name = (node.text || '')
        end
        xml.at('PlatformStatus') do |node|
          data.platform_status = (node.text || '')
        end
        xml.at('DateCreated') do |node|
          data.date_created = Time.parse(node.text) if node.text
        end
        xml.at('DateUpdated') do |node|
          data.date_updated = Time.parse(node.text) if node.text
        end
        xml.at('PlatformCategory') do |node|
          data.platform_category = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Maintainer') do |node|
          data.maintainer = (node.text || '')
        end
        xml.at('OperatingSystemName') do |node|
          data.operating_system_name = (node.text || '')
        end
        xml.at('OperatingSystemVersion') do |node|
          data.operating_system_version = (node.text || '')
        end
        xml.at('ProgrammingLanguages') do |node|
          children = node.children('member')
          data.programming_languages = Parsers::PlatformProgrammingLanguages.parse(children)
        end
        xml.at('Frameworks') do |node|
          children = node.children('member')
          data.frameworks = Parsers::PlatformFrameworks.parse(children)
        end
        xml.at('CustomAmiList') do |node|
          children = node.children('member')
          data.custom_ami_list = Parsers::CustomAmiList.parse(children)
        end
        xml.at('SupportedTierList') do |node|
          children = node.children('member')
          data.supported_tier_list = Parsers::SupportedTierList.parse(children)
        end
        xml.at('SupportedAddonList') do |node|
          children = node.children('member')
          data.supported_addon_list = Parsers::SupportedAddonList.parse(children)
        end
        xml.at('PlatformLifecycleState') do |node|
          data.platform_lifecycle_state = (node.text || '')
        end
        xml.at('PlatformBranchName') do |node|
          data.platform_branch_name = (node.text || '')
        end
        xml.at('PlatformBranchLifecycleState') do |node|
          data.platform_branch_lifecycle_state = (node.text || '')
        end
        return data
      end
    end

    class CustomAmiList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::CustomAmi.parse(node)
        end
        data
      end
    end

    class CustomAmi
      def self.parse(xml)
        data = Types::CustomAmi.new
        xml.at('VirtualizationType') do |node|
          data.virtualization_type = (node.text || '')
        end
        xml.at('ImageId') do |node|
          data.image_id = (node.text || '')
        end
        return data
      end
    end

    class PlatformFrameworks
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PlatformFramework.parse(node)
        end
        data
      end
    end

    class PlatformFramework
      def self.parse(xml)
        data = Types::PlatformFramework.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Version') do |node|
          data.version = (node.text || '')
        end
        return data
      end
    end

    class PlatformProgrammingLanguages
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PlatformProgrammingLanguage.parse(node)
        end
        data
      end
    end

    class PlatformProgrammingLanguage
      def self.parse(xml)
        data = Types::PlatformProgrammingLanguage.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Version') do |node|
          data.version = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DisassociateEnvironmentOperationsRole
    class DisassociateEnvironmentOperationsRole
      def self.parse(http_resp)
        data = Types::DisassociateEnvironmentOperationsRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DisassociateEnvironmentOperationsRoleResult')
        data
      end
    end

    # Operation Parser for ListAvailableSolutionStacks
    class ListAvailableSolutionStacks
      def self.parse(http_resp)
        data = Types::ListAvailableSolutionStacksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListAvailableSolutionStacksResult')
        xml.at('SolutionStacks') do |node|
          children = node.children('member')
          data.solution_stacks = Parsers::AvailableSolutionStackNamesList.parse(children)
        end
        xml.at('SolutionStackDetails') do |node|
          children = node.children('member')
          data.solution_stack_details = Parsers::AvailableSolutionStackDetailsList.parse(children)
        end
        data
      end
    end

    class AvailableSolutionStackDetailsList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SolutionStackDescription.parse(node)
        end
        data
      end
    end

    class SolutionStackDescription
      def self.parse(xml)
        data = Types::SolutionStackDescription.new
        xml.at('SolutionStackName') do |node|
          data.solution_stack_name = (node.text || '')
        end
        xml.at('PermittedFileTypes') do |node|
          children = node.children('member')
          data.permitted_file_types = Parsers::SolutionStackFileTypeList.parse(children)
        end
        return data
      end
    end

    class SolutionStackFileTypeList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AvailableSolutionStackNamesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ListPlatformBranches
    class ListPlatformBranches
      def self.parse(http_resp)
        data = Types::ListPlatformBranchesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListPlatformBranchesResult')
        xml.at('PlatformBranchSummaryList') do |node|
          children = node.children('member')
          data.platform_branch_summary_list = Parsers::PlatformBranchSummaryList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class PlatformBranchSummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PlatformBranchSummary.parse(node)
        end
        data
      end
    end

    class PlatformBranchSummary
      def self.parse(xml)
        data = Types::PlatformBranchSummary.new
        xml.at('PlatformName') do |node|
          data.platform_name = (node.text || '')
        end
        xml.at('BranchName') do |node|
          data.branch_name = (node.text || '')
        end
        xml.at('LifecycleState') do |node|
          data.lifecycle_state = (node.text || '')
        end
        xml.at('BranchOrder') do |node|
          data.branch_order = node.text&.to_i
        end
        xml.at('SupportedTierList') do |node|
          children = node.children('member')
          data.supported_tier_list = Parsers::SupportedTierList.parse(children)
        end
        return data
      end
    end

    # Operation Parser for ListPlatformVersions
    class ListPlatformVersions
      def self.parse(http_resp)
        data = Types::ListPlatformVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListPlatformVersionsResult')
        xml.at('PlatformSummaryList') do |node|
          children = node.children('member')
          data.platform_summary_list = Parsers::PlatformSummaryList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class PlatformSummaryList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PlatformSummary.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListTagsForResourceResult')
        xml.at('ResourceArn') do |node|
          data.resource_arn = (node.text || '')
        end
        xml.at('ResourceTags') do |node|
          children = node.children('member')
          data.resource_tags = Parsers::TagList.parse(children)
        end
        data
      end
    end

    class TagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Tag.parse(node)
        end
        data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for ResourceTypeNotSupportedException
    class ResourceTypeNotSupportedException
      def self.parse(http_resp)
        data = Types::ResourceTypeNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for RebuildEnvironment
    class RebuildEnvironment
      def self.parse(http_resp)
        data = Types::RebuildEnvironmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RebuildEnvironmentResult')
        data
      end
    end

    # Operation Parser for RequestEnvironmentInfo
    class RequestEnvironmentInfo
      def self.parse(http_resp)
        data = Types::RequestEnvironmentInfoOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RequestEnvironmentInfoResult')
        data
      end
    end

    # Operation Parser for RestartAppServer
    class RestartAppServer
      def self.parse(http_resp)
        data = Types::RestartAppServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RestartAppServerResult')
        data
      end
    end

    # Operation Parser for RetrieveEnvironmentInfo
    class RetrieveEnvironmentInfo
      def self.parse(http_resp)
        data = Types::RetrieveEnvironmentInfoOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RetrieveEnvironmentInfoResult')
        xml.at('EnvironmentInfo') do |node|
          children = node.children('member')
          data.environment_info = Parsers::EnvironmentInfoDescriptionList.parse(children)
        end
        data
      end
    end

    class EnvironmentInfoDescriptionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EnvironmentInfoDescription.parse(node)
        end
        data
      end
    end

    class EnvironmentInfoDescription
      def self.parse(xml)
        data = Types::EnvironmentInfoDescription.new
        xml.at('InfoType') do |node|
          data.info_type = (node.text || '')
        end
        xml.at('Ec2InstanceId') do |node|
          data.ec2_instance_id = (node.text || '')
        end
        xml.at('SampleTimestamp') do |node|
          data.sample_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for SwapEnvironmentCNAMEs
    class SwapEnvironmentCNAMEs
      def self.parse(http_resp)
        data = Types::SwapEnvironmentCNAMEsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SwapEnvironmentCNAMEsResult')
        data
      end
    end

    # Operation Parser for TerminateEnvironment
    class TerminateEnvironment
      def self.parse(http_resp)
        data = Types::TerminateEnvironmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TerminateEnvironmentResult')
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        xml.at('EnvironmentId') do |node|
          data.environment_id = (node.text || '')
        end
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('VersionLabel') do |node|
          data.version_label = (node.text || '')
        end
        xml.at('SolutionStackName') do |node|
          data.solution_stack_name = (node.text || '')
        end
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('EndpointURL') do |node|
          data.endpoint_url = (node.text || '')
        end
        xml.at('CNAME') do |node|
          data.cname = (node.text || '')
        end
        xml.at('DateCreated') do |node|
          data.date_created = Time.parse(node.text) if node.text
        end
        xml.at('DateUpdated') do |node|
          data.date_updated = Time.parse(node.text) if node.text
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('AbortableOperationInProgress') do |node|
          data.abortable_operation_in_progress = (node.text == 'true')
        end
        xml.at('Health') do |node|
          data.health = (node.text || '')
        end
        xml.at('HealthStatus') do |node|
          data.health_status = (node.text || '')
        end
        xml.at('Resources') do |node|
          data.resources = Parsers::EnvironmentResourcesDescription.parse(node)
        end
        xml.at('Tier') do |node|
          data.tier = Parsers::EnvironmentTier.parse(node)
        end
        xml.at('EnvironmentLinks') do |node|
          children = node.children('member')
          data.environment_links = Parsers::EnvironmentLinks.parse(children)
        end
        xml.at('EnvironmentArn') do |node|
          data.environment_arn = (node.text || '')
        end
        xml.at('OperationsRole') do |node|
          data.operations_role = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateApplication
    class UpdateApplication
      def self.parse(http_resp)
        data = Types::UpdateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateApplicationResult')
        xml.at('Application') do |node|
          data.application = Parsers::ApplicationDescription.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateApplicationResourceLifecycle
    class UpdateApplicationResourceLifecycle
      def self.parse(http_resp)
        data = Types::UpdateApplicationResourceLifecycleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateApplicationResourceLifecycleResult')
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('ResourceLifecycleConfig') do |node|
          data.resource_lifecycle_config = Parsers::ApplicationResourceLifecycleConfig.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateApplicationVersion
    class UpdateApplicationVersion
      def self.parse(http_resp)
        data = Types::UpdateApplicationVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateApplicationVersionResult')
        xml.at('ApplicationVersion') do |node|
          data.application_version = Parsers::ApplicationVersionDescription.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateConfigurationTemplate
    class UpdateConfigurationTemplate
      def self.parse(http_resp)
        data = Types::UpdateConfigurationTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateConfigurationTemplateResult')
        xml.at('SolutionStackName') do |node|
          data.solution_stack_name = (node.text || '')
        end
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        xml.at('DeploymentStatus') do |node|
          data.deployment_status = (node.text || '')
        end
        xml.at('DateCreated') do |node|
          data.date_created = Time.parse(node.text) if node.text
        end
        xml.at('DateUpdated') do |node|
          data.date_updated = Time.parse(node.text) if node.text
        end
        xml.at('OptionSettings') do |node|
          children = node.children('member')
          data.option_settings = Parsers::ConfigurationOptionSettingsList.parse(children)
        end
        data
      end
    end

    # Operation Parser for UpdateEnvironment
    class UpdateEnvironment
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateEnvironmentResult')
        xml.at('EnvironmentName') do |node|
          data.environment_name = (node.text || '')
        end
        xml.at('EnvironmentId') do |node|
          data.environment_id = (node.text || '')
        end
        xml.at('ApplicationName') do |node|
          data.application_name = (node.text || '')
        end
        xml.at('VersionLabel') do |node|
          data.version_label = (node.text || '')
        end
        xml.at('SolutionStackName') do |node|
          data.solution_stack_name = (node.text || '')
        end
        xml.at('PlatformArn') do |node|
          data.platform_arn = (node.text || '')
        end
        xml.at('TemplateName') do |node|
          data.template_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('EndpointURL') do |node|
          data.endpoint_url = (node.text || '')
        end
        xml.at('CNAME') do |node|
          data.cname = (node.text || '')
        end
        xml.at('DateCreated') do |node|
          data.date_created = Time.parse(node.text) if node.text
        end
        xml.at('DateUpdated') do |node|
          data.date_updated = Time.parse(node.text) if node.text
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('AbortableOperationInProgress') do |node|
          data.abortable_operation_in_progress = (node.text == 'true')
        end
        xml.at('Health') do |node|
          data.health = (node.text || '')
        end
        xml.at('HealthStatus') do |node|
          data.health_status = (node.text || '')
        end
        xml.at('Resources') do |node|
          data.resources = Parsers::EnvironmentResourcesDescription.parse(node)
        end
        xml.at('Tier') do |node|
          data.tier = Parsers::EnvironmentTier.parse(node)
        end
        xml.at('EnvironmentLinks') do |node|
          children = node.children('member')
          data.environment_links = Parsers::EnvironmentLinks.parse(children)
        end
        xml.at('EnvironmentArn') do |node|
          data.environment_arn = (node.text || '')
        end
        xml.at('OperationsRole') do |node|
          data.operations_role = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateTagsForResource
    class UpdateTagsForResource
      def self.parse(http_resp)
        data = Types::UpdateTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateTagsForResourceResult')
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for ValidateConfigurationSettings
    class ValidateConfigurationSettings
      def self.parse(http_resp)
        data = Types::ValidateConfigurationSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ValidateConfigurationSettingsResult')
        xml.at('Messages') do |node|
          children = node.children('member')
          data.messages = Parsers::ValidationMessagesList.parse(children)
        end
        data
      end
    end

    class ValidationMessagesList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ValidationMessage.parse(node)
        end
        data
      end
    end

    class ValidationMessage
      def self.parse(xml)
        data = Types::ValidationMessage.new
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        xml.at('Severity') do |node|
          data.severity = (node.text || '')
        end
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('OptionName') do |node|
          data.option_name = (node.text || '')
        end
        return data
      end
    end
  end
end
