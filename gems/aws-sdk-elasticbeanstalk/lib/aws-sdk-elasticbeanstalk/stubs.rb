# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticBeanstalk
  module Stubs

    # Operation Stubber for AbortEnvironmentUpdate
    class AbortEnvironmentUpdate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AbortEnvironmentUpdateResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('AbortEnvironmentUpdateResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ApplyEnvironmentManagedAction
    class ApplyEnvironmentManagedAction
      def self.default(visited=[])
        {
          action_id: 'action_id',
          action_description: 'action_description',
          action_type: 'action_type',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ApplyEnvironmentManagedActionResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('ApplyEnvironmentManagedActionResult')
        xml << Hearth::XML::Node.new('ActionId', stub[:action_id].to_s) unless stub[:action_id].nil?
        xml << Hearth::XML::Node.new('ActionDescription', stub[:action_description].to_s) unless stub[:action_description].nil?
        xml << Hearth::XML::Node.new('ActionType', stub[:action_type].to_s) unless stub[:action_type].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateEnvironmentOperationsRole
    class AssociateEnvironmentOperationsRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AssociateEnvironmentOperationsRoleResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('AssociateEnvironmentOperationsRoleResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CheckDNSAvailability
    class CheckDNSAvailability
      def self.default(visited=[])
        {
          available: false,
          fully_qualified_cname: 'fully_qualified_cname',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CheckDNSAvailabilityResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('CheckDNSAvailabilityResult')
        xml << Hearth::XML::Node.new('Available', stub[:available].to_s) unless stub[:available].nil?
        xml << Hearth::XML::Node.new('FullyQualifiedCNAME', stub[:fully_qualified_cname].to_s) unless stub[:fully_qualified_cname].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ComposeEnvironments
    class ComposeEnvironments
      def self.default(visited=[])
        {
          environments: Stubs::EnvironmentDescriptionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ComposeEnvironmentsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('ComposeEnvironmentsResult')
        xml << Hearth::XML::Node.new('Environments', Stubs::EnvironmentDescriptionsList.stub('member', stub[:environments])) unless stub[:environments].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EnvironmentDescriptionsList
    class EnvironmentDescriptionsList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentDescriptionsList')
        visited = visited + ['EnvironmentDescriptionsList']
        [
          Stubs::EnvironmentDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::EnvironmentDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EnvironmentDescription
    class EnvironmentDescription
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentDescription')
        visited = visited + ['EnvironmentDescription']
        {
          environment_name: 'environment_name',
          environment_id: 'environment_id',
          application_name: 'application_name',
          version_label: 'version_label',
          solution_stack_name: 'solution_stack_name',
          platform_arn: 'platform_arn',
          template_name: 'template_name',
          description: 'description',
          endpoint_url: 'endpoint_url',
          cname: 'cname',
          date_created: Time.now,
          date_updated: Time.now,
          status: 'status',
          abortable_operation_in_progress: false,
          health: 'health',
          health_status: 'health_status',
          resources: Stubs::EnvironmentResourcesDescription.default(visited),
          tier: Stubs::EnvironmentTier.default(visited),
          environment_links: Stubs::EnvironmentLinks.default(visited),
          environment_arn: 'environment_arn',
          operations_role: 'operations_role',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EnvironmentDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml << Hearth::XML::Node.new('EnvironmentId', stub[:environment_id].to_s) unless stub[:environment_id].nil?
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Hearth::XML::Node.new('VersionLabel', stub[:version_label].to_s) unless stub[:version_label].nil?
        xml << Hearth::XML::Node.new('SolutionStackName', stub[:solution_stack_name].to_s) unless stub[:solution_stack_name].nil?
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('EndpointURL', stub[:endpoint_url].to_s) unless stub[:endpoint_url].nil?
        xml << Hearth::XML::Node.new('CNAME', stub[:cname].to_s) unless stub[:cname].nil?
        xml << Hearth::XML::Node.new('DateCreated', Hearth::TimeHelper.to_date_time(stub[:date_created])) unless stub[:date_created].nil?
        xml << Hearth::XML::Node.new('DateUpdated', Hearth::TimeHelper.to_date_time(stub[:date_updated])) unless stub[:date_updated].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('AbortableOperationInProgress', stub[:abortable_operation_in_progress].to_s) unless stub[:abortable_operation_in_progress].nil?
        xml << Hearth::XML::Node.new('Health', stub[:health].to_s) unless stub[:health].nil?
        xml << Hearth::XML::Node.new('HealthStatus', stub[:health_status].to_s) unless stub[:health_status].nil?
        xml << Stubs::EnvironmentResourcesDescription.stub('Resources', stub[:resources]) unless stub[:resources].nil?
        xml << Stubs::EnvironmentTier.stub('Tier', stub[:tier]) unless stub[:tier].nil?
        xml << Hearth::XML::Node.new('EnvironmentLinks', Stubs::EnvironmentLinks.stub('member', stub[:environment_links])) unless stub[:environment_links].nil?
        xml << Hearth::XML::Node.new('EnvironmentArn', stub[:environment_arn].to_s) unless stub[:environment_arn].nil?
        xml << Hearth::XML::Node.new('OperationsRole', stub[:operations_role].to_s) unless stub[:operations_role].nil?
        xml
      end
    end

    # List Stubber for EnvironmentLinks
    class EnvironmentLinks
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentLinks')
        visited = visited + ['EnvironmentLinks']
        [
          Stubs::EnvironmentLink.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::EnvironmentLink.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EnvironmentLink
    class EnvironmentLink
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentLink')
        visited = visited + ['EnvironmentLink']
        {
          link_name: 'link_name',
          environment_name: 'environment_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EnvironmentLink.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LinkName', stub[:link_name].to_s) unless stub[:link_name].nil?
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml
      end
    end

    # Structure Stubber for EnvironmentTier
    class EnvironmentTier
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentTier')
        visited = visited + ['EnvironmentTier']
        {
          name: 'name',
          type: 'type',
          version: 'version',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EnvironmentTier.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('Version', stub[:version].to_s) unless stub[:version].nil?
        xml
      end
    end

    # Structure Stubber for EnvironmentResourcesDescription
    class EnvironmentResourcesDescription
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentResourcesDescription')
        visited = visited + ['EnvironmentResourcesDescription']
        {
          load_balancer: Stubs::LoadBalancerDescription.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EnvironmentResourcesDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::LoadBalancerDescription.stub('LoadBalancer', stub[:load_balancer]) unless stub[:load_balancer].nil?
        xml
      end
    end

    # Structure Stubber for LoadBalancerDescription
    class LoadBalancerDescription
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerDescription')
        visited = visited + ['LoadBalancerDescription']
        {
          load_balancer_name: 'load_balancer_name',
          domain: 'domain',
          listeners: Stubs::LoadBalancerListenersDescription.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadBalancerDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LoadBalancerName', stub[:load_balancer_name].to_s) unless stub[:load_balancer_name].nil?
        xml << Hearth::XML::Node.new('Domain', stub[:domain].to_s) unless stub[:domain].nil?
        xml << Hearth::XML::Node.new('Listeners', Stubs::LoadBalancerListenersDescription.stub('member', stub[:listeners])) unless stub[:listeners].nil?
        xml
      end
    end

    # List Stubber for LoadBalancerListenersDescription
    class LoadBalancerListenersDescription
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerListenersDescription')
        visited = visited + ['LoadBalancerListenersDescription']
        [
          Stubs::Listener.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Listener.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Listener
    class Listener
      def self.default(visited=[])
        return nil if visited.include?('Listener')
        visited = visited + ['Listener']
        {
          protocol: 'protocol',
          port: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Listener.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Protocol', stub[:protocol].to_s) unless stub[:protocol].nil?
        xml << Hearth::XML::Node.new('Port', stub[:port].to_s) unless stub[:port].nil?
        xml
      end
    end

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application: Stubs::ApplicationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateApplicationResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateApplicationResult')
        xml << Stubs::ApplicationDescription.stub('Application', stub[:application]) unless stub[:application].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ApplicationDescription
    class ApplicationDescription
      def self.default(visited=[])
        return nil if visited.include?('ApplicationDescription')
        visited = visited + ['ApplicationDescription']
        {
          application_arn: 'application_arn',
          application_name: 'application_name',
          description: 'description',
          date_created: Time.now,
          date_updated: Time.now,
          versions: Stubs::VersionLabelsList.default(visited),
          configuration_templates: Stubs::ConfigurationTemplateNamesList.default(visited),
          resource_lifecycle_config: Stubs::ApplicationResourceLifecycleConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ApplicationDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ApplicationArn', stub[:application_arn].to_s) unless stub[:application_arn].nil?
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('DateCreated', Hearth::TimeHelper.to_date_time(stub[:date_created])) unless stub[:date_created].nil?
        xml << Hearth::XML::Node.new('DateUpdated', Hearth::TimeHelper.to_date_time(stub[:date_updated])) unless stub[:date_updated].nil?
        xml << Hearth::XML::Node.new('Versions', Stubs::VersionLabelsList.stub('member', stub[:versions])) unless stub[:versions].nil?
        xml << Hearth::XML::Node.new('ConfigurationTemplates', Stubs::ConfigurationTemplateNamesList.stub('member', stub[:configuration_templates])) unless stub[:configuration_templates].nil?
        xml << Stubs::ApplicationResourceLifecycleConfig.stub('ResourceLifecycleConfig', stub[:resource_lifecycle_config]) unless stub[:resource_lifecycle_config].nil?
        xml
      end
    end

    # Structure Stubber for ApplicationResourceLifecycleConfig
    class ApplicationResourceLifecycleConfig
      def self.default(visited=[])
        return nil if visited.include?('ApplicationResourceLifecycleConfig')
        visited = visited + ['ApplicationResourceLifecycleConfig']
        {
          service_role: 'service_role',
          version_lifecycle_config: Stubs::ApplicationVersionLifecycleConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ApplicationResourceLifecycleConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ServiceRole', stub[:service_role].to_s) unless stub[:service_role].nil?
        xml << Stubs::ApplicationVersionLifecycleConfig.stub('VersionLifecycleConfig', stub[:version_lifecycle_config]) unless stub[:version_lifecycle_config].nil?
        xml
      end
    end

    # Structure Stubber for ApplicationVersionLifecycleConfig
    class ApplicationVersionLifecycleConfig
      def self.default(visited=[])
        return nil if visited.include?('ApplicationVersionLifecycleConfig')
        visited = visited + ['ApplicationVersionLifecycleConfig']
        {
          max_count_rule: Stubs::MaxCountRule.default(visited),
          max_age_rule: Stubs::MaxAgeRule.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ApplicationVersionLifecycleConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::MaxCountRule.stub('MaxCountRule', stub[:max_count_rule]) unless stub[:max_count_rule].nil?
        xml << Stubs::MaxAgeRule.stub('MaxAgeRule', stub[:max_age_rule]) unless stub[:max_age_rule].nil?
        xml
      end
    end

    # Structure Stubber for MaxAgeRule
    class MaxAgeRule
      def self.default(visited=[])
        return nil if visited.include?('MaxAgeRule')
        visited = visited + ['MaxAgeRule']
        {
          enabled: false,
          max_age_in_days: 1,
          delete_source_from_s3: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MaxAgeRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('MaxAgeInDays', stub[:max_age_in_days].to_s) unless stub[:max_age_in_days].nil?
        xml << Hearth::XML::Node.new('DeleteSourceFromS3', stub[:delete_source_from_s3].to_s) unless stub[:delete_source_from_s3].nil?
        xml
      end
    end

    # Structure Stubber for MaxCountRule
    class MaxCountRule
      def self.default(visited=[])
        return nil if visited.include?('MaxCountRule')
        visited = visited + ['MaxCountRule']
        {
          enabled: false,
          max_count: 1,
          delete_source_from_s3: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MaxCountRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('MaxCount', stub[:max_count].to_s) unless stub[:max_count].nil?
        xml << Hearth::XML::Node.new('DeleteSourceFromS3', stub[:delete_source_from_s3].to_s) unless stub[:delete_source_from_s3].nil?
        xml
      end
    end

    # List Stubber for ConfigurationTemplateNamesList
    class ConfigurationTemplateNamesList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationTemplateNamesList')
        visited = visited + ['ConfigurationTemplateNamesList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for VersionLabelsList
    class VersionLabelsList
      def self.default(visited=[])
        return nil if visited.include?('VersionLabelsList')
        visited = visited + ['VersionLabelsList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CreateApplicationVersion
    class CreateApplicationVersion
      def self.default(visited=[])
        {
          application_version: Stubs::ApplicationVersionDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateApplicationVersionResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateApplicationVersionResult')
        xml << Stubs::ApplicationVersionDescription.stub('ApplicationVersion', stub[:application_version]) unless stub[:application_version].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ApplicationVersionDescription
    class ApplicationVersionDescription
      def self.default(visited=[])
        return nil if visited.include?('ApplicationVersionDescription')
        visited = visited + ['ApplicationVersionDescription']
        {
          application_version_arn: 'application_version_arn',
          application_name: 'application_name',
          description: 'description',
          version_label: 'version_label',
          source_build_information: Stubs::SourceBuildInformation.default(visited),
          build_arn: 'build_arn',
          source_bundle: Stubs::S3Location.default(visited),
          date_created: Time.now,
          date_updated: Time.now,
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ApplicationVersionDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ApplicationVersionArn', stub[:application_version_arn].to_s) unless stub[:application_version_arn].nil?
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('VersionLabel', stub[:version_label].to_s) unless stub[:version_label].nil?
        xml << Stubs::SourceBuildInformation.stub('SourceBuildInformation', stub[:source_build_information]) unless stub[:source_build_information].nil?
        xml << Hearth::XML::Node.new('BuildArn', stub[:build_arn].to_s) unless stub[:build_arn].nil?
        xml << Stubs::S3Location.stub('SourceBundle', stub[:source_bundle]) unless stub[:source_bundle].nil?
        xml << Hearth::XML::Node.new('DateCreated', Hearth::TimeHelper.to_date_time(stub[:date_created])) unless stub[:date_created].nil?
        xml << Hearth::XML::Node.new('DateUpdated', Hearth::TimeHelper.to_date_time(stub[:date_updated])) unless stub[:date_updated].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          s3_bucket: 's3_bucket',
          s3_key: 's3_key',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3Location.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('S3Bucket', stub[:s3_bucket].to_s) unless stub[:s3_bucket].nil?
        xml << Hearth::XML::Node.new('S3Key', stub[:s3_key].to_s) unless stub[:s3_key].nil?
        xml
      end
    end

    # Structure Stubber for SourceBuildInformation
    class SourceBuildInformation
      def self.default(visited=[])
        return nil if visited.include?('SourceBuildInformation')
        visited = visited + ['SourceBuildInformation']
        {
          source_type: 'source_type',
          source_repository: 'source_repository',
          source_location: 'source_location',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SourceBuildInformation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SourceType', stub[:source_type].to_s) unless stub[:source_type].nil?
        xml << Hearth::XML::Node.new('SourceRepository', stub[:source_repository].to_s) unless stub[:source_repository].nil?
        xml << Hearth::XML::Node.new('SourceLocation', stub[:source_location].to_s) unless stub[:source_location].nil?
        xml
      end
    end

    # Operation Stubber for CreateConfigurationTemplate
    class CreateConfigurationTemplate
      def self.default(visited=[])
        {
          solution_stack_name: 'solution_stack_name',
          platform_arn: 'platform_arn',
          application_name: 'application_name',
          template_name: 'template_name',
          description: 'description',
          environment_name: 'environment_name',
          deployment_status: 'deployment_status',
          date_created: Time.now,
          date_updated: Time.now,
          option_settings: Stubs::ConfigurationOptionSettingsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateConfigurationTemplateResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateConfigurationTemplateResult')
        xml << Hearth::XML::Node.new('SolutionStackName', stub[:solution_stack_name].to_s) unless stub[:solution_stack_name].nil?
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml << Hearth::XML::Node.new('DeploymentStatus', stub[:deployment_status].to_s) unless stub[:deployment_status].nil?
        xml << Hearth::XML::Node.new('DateCreated', Hearth::TimeHelper.to_date_time(stub[:date_created])) unless stub[:date_created].nil?
        xml << Hearth::XML::Node.new('DateUpdated', Hearth::TimeHelper.to_date_time(stub[:date_updated])) unless stub[:date_updated].nil?
        xml << Hearth::XML::Node.new('OptionSettings', Stubs::ConfigurationOptionSettingsList.stub('member', stub[:option_settings])) unless stub[:option_settings].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationOptionSettingsList
    class ConfigurationOptionSettingsList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationOptionSettingsList')
        visited = visited + ['ConfigurationOptionSettingsList']
        [
          Stubs::ConfigurationOptionSetting.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ConfigurationOptionSetting.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ConfigurationOptionSetting
    class ConfigurationOptionSetting
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationOptionSetting')
        visited = visited + ['ConfigurationOptionSetting']
        {
          resource_name: 'resource_name',
          namespace: 'namespace',
          option_name: 'option_name',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ConfigurationOptionSetting.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ResourceName', stub[:resource_name].to_s) unless stub[:resource_name].nil?
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('OptionName', stub[:option_name].to_s) unless stub[:option_name].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for CreateEnvironment
    class CreateEnvironment
      def self.default(visited=[])
        {
          environment_name: 'environment_name',
          environment_id: 'environment_id',
          application_name: 'application_name',
          version_label: 'version_label',
          solution_stack_name: 'solution_stack_name',
          platform_arn: 'platform_arn',
          template_name: 'template_name',
          description: 'description',
          endpoint_url: 'endpoint_url',
          cname: 'cname',
          date_created: Time.now,
          date_updated: Time.now,
          status: 'status',
          abortable_operation_in_progress: false,
          health: 'health',
          health_status: 'health_status',
          resources: Stubs::EnvironmentResourcesDescription.default(visited),
          tier: Stubs::EnvironmentTier.default(visited),
          environment_links: Stubs::EnvironmentLinks.default(visited),
          environment_arn: 'environment_arn',
          operations_role: 'operations_role',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateEnvironmentResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateEnvironmentResult')
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml << Hearth::XML::Node.new('EnvironmentId', stub[:environment_id].to_s) unless stub[:environment_id].nil?
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Hearth::XML::Node.new('VersionLabel', stub[:version_label].to_s) unless stub[:version_label].nil?
        xml << Hearth::XML::Node.new('SolutionStackName', stub[:solution_stack_name].to_s) unless stub[:solution_stack_name].nil?
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('EndpointURL', stub[:endpoint_url].to_s) unless stub[:endpoint_url].nil?
        xml << Hearth::XML::Node.new('CNAME', stub[:cname].to_s) unless stub[:cname].nil?
        xml << Hearth::XML::Node.new('DateCreated', Hearth::TimeHelper.to_date_time(stub[:date_created])) unless stub[:date_created].nil?
        xml << Hearth::XML::Node.new('DateUpdated', Hearth::TimeHelper.to_date_time(stub[:date_updated])) unless stub[:date_updated].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('AbortableOperationInProgress', stub[:abortable_operation_in_progress].to_s) unless stub[:abortable_operation_in_progress].nil?
        xml << Hearth::XML::Node.new('Health', stub[:health].to_s) unless stub[:health].nil?
        xml << Hearth::XML::Node.new('HealthStatus', stub[:health_status].to_s) unless stub[:health_status].nil?
        xml << Stubs::EnvironmentResourcesDescription.stub('Resources', stub[:resources]) unless stub[:resources].nil?
        xml << Stubs::EnvironmentTier.stub('Tier', stub[:tier]) unless stub[:tier].nil?
        xml << Hearth::XML::Node.new('EnvironmentLinks', Stubs::EnvironmentLinks.stub('member', stub[:environment_links])) unless stub[:environment_links].nil?
        xml << Hearth::XML::Node.new('EnvironmentArn', stub[:environment_arn].to_s) unless stub[:environment_arn].nil?
        xml << Hearth::XML::Node.new('OperationsRole', stub[:operations_role].to_s) unless stub[:operations_role].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePlatformVersion
    class CreatePlatformVersion
      def self.default(visited=[])
        {
          platform_summary: Stubs::PlatformSummary.default(visited),
          builder: Stubs::Builder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreatePlatformVersionResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('CreatePlatformVersionResult')
        xml << Stubs::PlatformSummary.stub('PlatformSummary', stub[:platform_summary]) unless stub[:platform_summary].nil?
        xml << Stubs::Builder.stub('Builder', stub[:builder]) unless stub[:builder].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for Builder
    class Builder
      def self.default(visited=[])
        return nil if visited.include?('Builder')
        visited = visited + ['Builder']
        {
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Builder.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml
      end
    end

    # Structure Stubber for PlatformSummary
    class PlatformSummary
      def self.default(visited=[])
        return nil if visited.include?('PlatformSummary')
        visited = visited + ['PlatformSummary']
        {
          platform_arn: 'platform_arn',
          platform_owner: 'platform_owner',
          platform_status: 'platform_status',
          platform_category: 'platform_category',
          operating_system_name: 'operating_system_name',
          operating_system_version: 'operating_system_version',
          supported_tier_list: Stubs::SupportedTierList.default(visited),
          supported_addon_list: Stubs::SupportedAddonList.default(visited),
          platform_lifecycle_state: 'platform_lifecycle_state',
          platform_version: 'platform_version',
          platform_branch_name: 'platform_branch_name',
          platform_branch_lifecycle_state: 'platform_branch_lifecycle_state',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PlatformSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('PlatformOwner', stub[:platform_owner].to_s) unless stub[:platform_owner].nil?
        xml << Hearth::XML::Node.new('PlatformStatus', stub[:platform_status].to_s) unless stub[:platform_status].nil?
        xml << Hearth::XML::Node.new('PlatformCategory', stub[:platform_category].to_s) unless stub[:platform_category].nil?
        xml << Hearth::XML::Node.new('OperatingSystemName', stub[:operating_system_name].to_s) unless stub[:operating_system_name].nil?
        xml << Hearth::XML::Node.new('OperatingSystemVersion', stub[:operating_system_version].to_s) unless stub[:operating_system_version].nil?
        xml << Hearth::XML::Node.new('SupportedTierList', Stubs::SupportedTierList.stub('member', stub[:supported_tier_list])) unless stub[:supported_tier_list].nil?
        xml << Hearth::XML::Node.new('SupportedAddonList', Stubs::SupportedAddonList.stub('member', stub[:supported_addon_list])) unless stub[:supported_addon_list].nil?
        xml << Hearth::XML::Node.new('PlatformLifecycleState', stub[:platform_lifecycle_state].to_s) unless stub[:platform_lifecycle_state].nil?
        xml << Hearth::XML::Node.new('PlatformVersion', stub[:platform_version].to_s) unless stub[:platform_version].nil?
        xml << Hearth::XML::Node.new('PlatformBranchName', stub[:platform_branch_name].to_s) unless stub[:platform_branch_name].nil?
        xml << Hearth::XML::Node.new('PlatformBranchLifecycleState', stub[:platform_branch_lifecycle_state].to_s) unless stub[:platform_branch_lifecycle_state].nil?
        xml
      end
    end

    # List Stubber for SupportedAddonList
    class SupportedAddonList
      def self.default(visited=[])
        return nil if visited.include?('SupportedAddonList')
        visited = visited + ['SupportedAddonList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for SupportedTierList
    class SupportedTierList
      def self.default(visited=[])
        return nil if visited.include?('SupportedTierList')
        visited = visited + ['SupportedTierList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CreateStorageLocation
    class CreateStorageLocation
      def self.default(visited=[])
        {
          s3_bucket: 's3_bucket',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateStorageLocationResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('CreateStorageLocationResult')
        xml << Hearth::XML::Node.new('S3Bucket', stub[:s3_bucket].to_s) unless stub[:s3_bucket].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplication
    class DeleteApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteApplicationResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteApplicationResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplicationVersion
    class DeleteApplicationVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteApplicationVersionResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteApplicationVersionResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigurationTemplate
    class DeleteConfigurationTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteConfigurationTemplateResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteConfigurationTemplateResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEnvironmentConfiguration
    class DeleteEnvironmentConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteEnvironmentConfigurationResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DeleteEnvironmentConfigurationResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePlatformVersion
    class DeletePlatformVersion
      def self.default(visited=[])
        {
          platform_summary: Stubs::PlatformSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeletePlatformVersionResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DeletePlatformVersionResult')
        xml << Stubs::PlatformSummary.stub('PlatformSummary', stub[:platform_summary]) unless stub[:platform_summary].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.default(visited=[])
        {
          resource_quotas: Stubs::ResourceQuotas.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAccountAttributesResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeAccountAttributesResult')
        xml << Stubs::ResourceQuotas.stub('ResourceQuotas', stub[:resource_quotas]) unless stub[:resource_quotas].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResourceQuotas
    class ResourceQuotas
      def self.default(visited=[])
        return nil if visited.include?('ResourceQuotas')
        visited = visited + ['ResourceQuotas']
        {
          application_quota: Stubs::ResourceQuota.default(visited),
          application_version_quota: Stubs::ResourceQuota.default(visited),
          environment_quota: Stubs::ResourceQuota.default(visited),
          configuration_template_quota: Stubs::ResourceQuota.default(visited),
          custom_platform_quota: Stubs::ResourceQuota.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourceQuotas.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::ResourceQuota.stub('ApplicationQuota', stub[:application_quota]) unless stub[:application_quota].nil?
        xml << Stubs::ResourceQuota.stub('ApplicationVersionQuota', stub[:application_version_quota]) unless stub[:application_version_quota].nil?
        xml << Stubs::ResourceQuota.stub('EnvironmentQuota', stub[:environment_quota]) unless stub[:environment_quota].nil?
        xml << Stubs::ResourceQuota.stub('ConfigurationTemplateQuota', stub[:configuration_template_quota]) unless stub[:configuration_template_quota].nil?
        xml << Stubs::ResourceQuota.stub('CustomPlatformQuota', stub[:custom_platform_quota]) unless stub[:custom_platform_quota].nil?
        xml
      end
    end

    # Structure Stubber for ResourceQuota
    class ResourceQuota
      def self.default(visited=[])
        return nil if visited.include?('ResourceQuota')
        visited = visited + ['ResourceQuota']
        {
          maximum: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourceQuota.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Maximum', stub[:maximum].to_s) unless stub[:maximum].nil?
        xml
      end
    end

    # Operation Stubber for DescribeApplicationVersions
    class DescribeApplicationVersions
      def self.default(visited=[])
        {
          application_versions: Stubs::ApplicationVersionDescriptionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeApplicationVersionsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeApplicationVersionsResult')
        xml << Hearth::XML::Node.new('ApplicationVersions', Stubs::ApplicationVersionDescriptionList.stub('member', stub[:application_versions])) unless stub[:application_versions].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ApplicationVersionDescriptionList
    class ApplicationVersionDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationVersionDescriptionList')
        visited = visited + ['ApplicationVersionDescriptionList']
        [
          Stubs::ApplicationVersionDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ApplicationVersionDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeApplications
    class DescribeApplications
      def self.default(visited=[])
        {
          applications: Stubs::ApplicationDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeApplicationsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeApplicationsResult')
        xml << Hearth::XML::Node.new('Applications', Stubs::ApplicationDescriptionList.stub('member', stub[:applications])) unless stub[:applications].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ApplicationDescriptionList
    class ApplicationDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationDescriptionList')
        visited = visited + ['ApplicationDescriptionList']
        [
          Stubs::ApplicationDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ApplicationDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeConfigurationOptions
    class DescribeConfigurationOptions
      def self.default(visited=[])
        {
          solution_stack_name: 'solution_stack_name',
          platform_arn: 'platform_arn',
          options: Stubs::ConfigurationOptionDescriptionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeConfigurationOptionsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeConfigurationOptionsResult')
        xml << Hearth::XML::Node.new('SolutionStackName', stub[:solution_stack_name].to_s) unless stub[:solution_stack_name].nil?
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('Options', Stubs::ConfigurationOptionDescriptionsList.stub('member', stub[:options])) unless stub[:options].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationOptionDescriptionsList
    class ConfigurationOptionDescriptionsList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationOptionDescriptionsList')
        visited = visited + ['ConfigurationOptionDescriptionsList']
        [
          Stubs::ConfigurationOptionDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ConfigurationOptionDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ConfigurationOptionDescription
    class ConfigurationOptionDescription
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationOptionDescription')
        visited = visited + ['ConfigurationOptionDescription']
        {
          namespace: 'namespace',
          name: 'name',
          default_value: 'default_value',
          change_severity: 'change_severity',
          user_defined: false,
          value_type: 'value_type',
          value_options: Stubs::ConfigurationOptionPossibleValues.default(visited),
          min_value: 1,
          max_value: 1,
          max_length: 1,
          regex: Stubs::OptionRestrictionRegex.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ConfigurationOptionDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('ChangeSeverity', stub[:change_severity].to_s) unless stub[:change_severity].nil?
        xml << Hearth::XML::Node.new('UserDefined', stub[:user_defined].to_s) unless stub[:user_defined].nil?
        xml << Hearth::XML::Node.new('ValueType', stub[:value_type].to_s) unless stub[:value_type].nil?
        xml << Hearth::XML::Node.new('ValueOptions', Stubs::ConfigurationOptionPossibleValues.stub('member', stub[:value_options])) unless stub[:value_options].nil?
        xml << Hearth::XML::Node.new('MinValue', stub[:min_value].to_s) unless stub[:min_value].nil?
        xml << Hearth::XML::Node.new('MaxValue', stub[:max_value].to_s) unless stub[:max_value].nil?
        xml << Hearth::XML::Node.new('MaxLength', stub[:max_length].to_s) unless stub[:max_length].nil?
        xml << Stubs::OptionRestrictionRegex.stub('Regex', stub[:regex]) unless stub[:regex].nil?
        xml
      end
    end

    # Structure Stubber for OptionRestrictionRegex
    class OptionRestrictionRegex
      def self.default(visited=[])
        return nil if visited.include?('OptionRestrictionRegex')
        visited = visited + ['OptionRestrictionRegex']
        {
          pattern: 'pattern',
          label: 'label',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OptionRestrictionRegex.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Pattern', stub[:pattern].to_s) unless stub[:pattern].nil?
        xml << Hearth::XML::Node.new('Label', stub[:label].to_s) unless stub[:label].nil?
        xml
      end
    end

    # List Stubber for ConfigurationOptionPossibleValues
    class ConfigurationOptionPossibleValues
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationOptionPossibleValues')
        visited = visited + ['ConfigurationOptionPossibleValues']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeConfigurationSettings
    class DescribeConfigurationSettings
      def self.default(visited=[])
        {
          configuration_settings: Stubs::ConfigurationSettingsDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeConfigurationSettingsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeConfigurationSettingsResult')
        xml << Hearth::XML::Node.new('ConfigurationSettings', Stubs::ConfigurationSettingsDescriptionList.stub('member', stub[:configuration_settings])) unless stub[:configuration_settings].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationSettingsDescriptionList
    class ConfigurationSettingsDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationSettingsDescriptionList')
        visited = visited + ['ConfigurationSettingsDescriptionList']
        [
          Stubs::ConfigurationSettingsDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ConfigurationSettingsDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ConfigurationSettingsDescription
    class ConfigurationSettingsDescription
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationSettingsDescription')
        visited = visited + ['ConfigurationSettingsDescription']
        {
          solution_stack_name: 'solution_stack_name',
          platform_arn: 'platform_arn',
          application_name: 'application_name',
          template_name: 'template_name',
          description: 'description',
          environment_name: 'environment_name',
          deployment_status: 'deployment_status',
          date_created: Time.now,
          date_updated: Time.now,
          option_settings: Stubs::ConfigurationOptionSettingsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ConfigurationSettingsDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SolutionStackName', stub[:solution_stack_name].to_s) unless stub[:solution_stack_name].nil?
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml << Hearth::XML::Node.new('DeploymentStatus', stub[:deployment_status].to_s) unless stub[:deployment_status].nil?
        xml << Hearth::XML::Node.new('DateCreated', Hearth::TimeHelper.to_date_time(stub[:date_created])) unless stub[:date_created].nil?
        xml << Hearth::XML::Node.new('DateUpdated', Hearth::TimeHelper.to_date_time(stub[:date_updated])) unless stub[:date_updated].nil?
        xml << Hearth::XML::Node.new('OptionSettings', Stubs::ConfigurationOptionSettingsList.stub('member', stub[:option_settings])) unless stub[:option_settings].nil?
        xml
      end
    end

    # Operation Stubber for DescribeEnvironmentHealth
    class DescribeEnvironmentHealth
      def self.default(visited=[])
        {
          environment_name: 'environment_name',
          health_status: 'health_status',
          status: 'status',
          color: 'color',
          causes: Stubs::Causes.default(visited),
          application_metrics: Stubs::ApplicationMetrics.default(visited),
          instances_health: Stubs::InstanceHealthSummary.default(visited),
          refreshed_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEnvironmentHealthResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeEnvironmentHealthResult')
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml << Hearth::XML::Node.new('HealthStatus', stub[:health_status].to_s) unless stub[:health_status].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Color', stub[:color].to_s) unless stub[:color].nil?
        xml << Hearth::XML::Node.new('Causes', Stubs::Causes.stub('member', stub[:causes])) unless stub[:causes].nil?
        xml << Stubs::ApplicationMetrics.stub('ApplicationMetrics', stub[:application_metrics]) unless stub[:application_metrics].nil?
        xml << Stubs::InstanceHealthSummary.stub('InstancesHealth', stub[:instances_health]) unless stub[:instances_health].nil?
        xml << Hearth::XML::Node.new('RefreshedAt', Hearth::TimeHelper.to_date_time(stub[:refreshed_at])) unless stub[:refreshed_at].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for InstanceHealthSummary
    class InstanceHealthSummary
      def self.default(visited=[])
        return nil if visited.include?('InstanceHealthSummary')
        visited = visited + ['InstanceHealthSummary']
        {
          no_data: 1,
          unknown: 1,
          pending: 1,
          ok: 1,
          info: 1,
          warning: 1,
          degraded: 1,
          severe: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceHealthSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NoData', stub[:no_data].to_s) unless stub[:no_data].nil?
        xml << Hearth::XML::Node.new('Unknown', stub[:unknown].to_s) unless stub[:unknown].nil?
        xml << Hearth::XML::Node.new('Pending', stub[:pending].to_s) unless stub[:pending].nil?
        xml << Hearth::XML::Node.new('Ok', stub[:ok].to_s) unless stub[:ok].nil?
        xml << Hearth::XML::Node.new('Info', stub[:info].to_s) unless stub[:info].nil?
        xml << Hearth::XML::Node.new('Warning', stub[:warning].to_s) unless stub[:warning].nil?
        xml << Hearth::XML::Node.new('Degraded', stub[:degraded].to_s) unless stub[:degraded].nil?
        xml << Hearth::XML::Node.new('Severe', stub[:severe].to_s) unless stub[:severe].nil?
        xml
      end
    end

    # Structure Stubber for ApplicationMetrics
    class ApplicationMetrics
      def self.default(visited=[])
        return nil if visited.include?('ApplicationMetrics')
        visited = visited + ['ApplicationMetrics']
        {
          duration: 1,
          request_count: 1,
          status_codes: Stubs::StatusCodes.default(visited),
          latency: Stubs::Latency.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ApplicationMetrics.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Duration', stub[:duration].to_s) unless stub[:duration].nil?
        xml << Hearth::XML::Node.new('RequestCount', stub[:request_count].to_s) unless stub[:request_count].nil?
        xml << Stubs::StatusCodes.stub('StatusCodes', stub[:status_codes]) unless stub[:status_codes].nil?
        xml << Stubs::Latency.stub('Latency', stub[:latency]) unless stub[:latency].nil?
        xml
      end
    end

    # Structure Stubber for Latency
    class Latency
      def self.default(visited=[])
        return nil if visited.include?('Latency')
        visited = visited + ['Latency']
        {
          p999: 1.0,
          p99: 1.0,
          p95: 1.0,
          p90: 1.0,
          p85: 1.0,
          p75: 1.0,
          p50: 1.0,
          p10: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Latency.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('P999', Hearth::NumberHelper.serialize(stub[:p999]).to_s) unless stub[:p999].nil?
        xml << Hearth::XML::Node.new('P99', Hearth::NumberHelper.serialize(stub[:p99]).to_s) unless stub[:p99].nil?
        xml << Hearth::XML::Node.new('P95', Hearth::NumberHelper.serialize(stub[:p95]).to_s) unless stub[:p95].nil?
        xml << Hearth::XML::Node.new('P90', Hearth::NumberHelper.serialize(stub[:p90]).to_s) unless stub[:p90].nil?
        xml << Hearth::XML::Node.new('P85', Hearth::NumberHelper.serialize(stub[:p85]).to_s) unless stub[:p85].nil?
        xml << Hearth::XML::Node.new('P75', Hearth::NumberHelper.serialize(stub[:p75]).to_s) unless stub[:p75].nil?
        xml << Hearth::XML::Node.new('P50', Hearth::NumberHelper.serialize(stub[:p50]).to_s) unless stub[:p50].nil?
        xml << Hearth::XML::Node.new('P10', Hearth::NumberHelper.serialize(stub[:p10]).to_s) unless stub[:p10].nil?
        xml
      end
    end

    # Structure Stubber for StatusCodes
    class StatusCodes
      def self.default(visited=[])
        return nil if visited.include?('StatusCodes')
        visited = visited + ['StatusCodes']
        {
          status2xx: 1,
          status3xx: 1,
          status4xx: 1,
          status5xx: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StatusCodes.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Status2xx', stub[:status2xx].to_s) unless stub[:status2xx].nil?
        xml << Hearth::XML::Node.new('Status3xx', stub[:status3xx].to_s) unless stub[:status3xx].nil?
        xml << Hearth::XML::Node.new('Status4xx', stub[:status4xx].to_s) unless stub[:status4xx].nil?
        xml << Hearth::XML::Node.new('Status5xx', stub[:status5xx].to_s) unless stub[:status5xx].nil?
        xml
      end
    end

    # List Stubber for Causes
    class Causes
      def self.default(visited=[])
        return nil if visited.include?('Causes')
        visited = visited + ['Causes']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeEnvironmentManagedActionHistory
    class DescribeEnvironmentManagedActionHistory
      def self.default(visited=[])
        {
          managed_action_history_items: Stubs::ManagedActionHistoryItems.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEnvironmentManagedActionHistoryResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeEnvironmentManagedActionHistoryResult')
        xml << Hearth::XML::Node.new('ManagedActionHistoryItems', Stubs::ManagedActionHistoryItems.stub('member', stub[:managed_action_history_items])) unless stub[:managed_action_history_items].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ManagedActionHistoryItems
    class ManagedActionHistoryItems
      def self.default(visited=[])
        return nil if visited.include?('ManagedActionHistoryItems')
        visited = visited + ['ManagedActionHistoryItems']
        [
          Stubs::ManagedActionHistoryItem.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ManagedActionHistoryItem.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ManagedActionHistoryItem
    class ManagedActionHistoryItem
      def self.default(visited=[])
        return nil if visited.include?('ManagedActionHistoryItem')
        visited = visited + ['ManagedActionHistoryItem']
        {
          action_id: 'action_id',
          action_type: 'action_type',
          action_description: 'action_description',
          failure_type: 'failure_type',
          status: 'status',
          failure_description: 'failure_description',
          executed_time: Time.now,
          finished_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ManagedActionHistoryItem.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ActionId', stub[:action_id].to_s) unless stub[:action_id].nil?
        xml << Hearth::XML::Node.new('ActionType', stub[:action_type].to_s) unless stub[:action_type].nil?
        xml << Hearth::XML::Node.new('ActionDescription', stub[:action_description].to_s) unless stub[:action_description].nil?
        xml << Hearth::XML::Node.new('FailureType', stub[:failure_type].to_s) unless stub[:failure_type].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('FailureDescription', stub[:failure_description].to_s) unless stub[:failure_description].nil?
        xml << Hearth::XML::Node.new('ExecutedTime', Hearth::TimeHelper.to_date_time(stub[:executed_time])) unless stub[:executed_time].nil?
        xml << Hearth::XML::Node.new('FinishedTime', Hearth::TimeHelper.to_date_time(stub[:finished_time])) unless stub[:finished_time].nil?
        xml
      end
    end

    # Operation Stubber for DescribeEnvironmentManagedActions
    class DescribeEnvironmentManagedActions
      def self.default(visited=[])
        {
          managed_actions: Stubs::ManagedActions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEnvironmentManagedActionsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeEnvironmentManagedActionsResult')
        xml << Hearth::XML::Node.new('ManagedActions', Stubs::ManagedActions.stub('member', stub[:managed_actions])) unless stub[:managed_actions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ManagedActions
    class ManagedActions
      def self.default(visited=[])
        return nil if visited.include?('ManagedActions')
        visited = visited + ['ManagedActions']
        [
          Stubs::ManagedAction.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ManagedAction.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ManagedAction
    class ManagedAction
      def self.default(visited=[])
        return nil if visited.include?('ManagedAction')
        visited = visited + ['ManagedAction']
        {
          action_id: 'action_id',
          action_description: 'action_description',
          action_type: 'action_type',
          status: 'status',
          window_start_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ManagedAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ActionId', stub[:action_id].to_s) unless stub[:action_id].nil?
        xml << Hearth::XML::Node.new('ActionDescription', stub[:action_description].to_s) unless stub[:action_description].nil?
        xml << Hearth::XML::Node.new('ActionType', stub[:action_type].to_s) unless stub[:action_type].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('WindowStartTime', Hearth::TimeHelper.to_date_time(stub[:window_start_time])) unless stub[:window_start_time].nil?
        xml
      end
    end

    # Operation Stubber for DescribeEnvironmentResources
    class DescribeEnvironmentResources
      def self.default(visited=[])
        {
          environment_resources: Stubs::EnvironmentResourceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEnvironmentResourcesResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeEnvironmentResourcesResult')
        xml << Stubs::EnvironmentResourceDescription.stub('EnvironmentResources', stub[:environment_resources]) unless stub[:environment_resources].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for EnvironmentResourceDescription
    class EnvironmentResourceDescription
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentResourceDescription')
        visited = visited + ['EnvironmentResourceDescription']
        {
          environment_name: 'environment_name',
          auto_scaling_groups: Stubs::AutoScalingGroupList.default(visited),
          instances: Stubs::InstanceList.default(visited),
          launch_configurations: Stubs::LaunchConfigurationList.default(visited),
          launch_templates: Stubs::LaunchTemplateList.default(visited),
          load_balancers: Stubs::LoadBalancerList.default(visited),
          triggers: Stubs::TriggerList.default(visited),
          queues: Stubs::QueueList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EnvironmentResourceDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml << Hearth::XML::Node.new('AutoScalingGroups', Stubs::AutoScalingGroupList.stub('member', stub[:auto_scaling_groups])) unless stub[:auto_scaling_groups].nil?
        xml << Hearth::XML::Node.new('Instances', Stubs::InstanceList.stub('member', stub[:instances])) unless stub[:instances].nil?
        xml << Hearth::XML::Node.new('LaunchConfigurations', Stubs::LaunchConfigurationList.stub('member', stub[:launch_configurations])) unless stub[:launch_configurations].nil?
        xml << Hearth::XML::Node.new('LaunchTemplates', Stubs::LaunchTemplateList.stub('member', stub[:launch_templates])) unless stub[:launch_templates].nil?
        xml << Hearth::XML::Node.new('LoadBalancers', Stubs::LoadBalancerList.stub('member', stub[:load_balancers])) unless stub[:load_balancers].nil?
        xml << Hearth::XML::Node.new('Triggers', Stubs::TriggerList.stub('member', stub[:triggers])) unless stub[:triggers].nil?
        xml << Hearth::XML::Node.new('Queues', Stubs::QueueList.stub('member', stub[:queues])) unless stub[:queues].nil?
        xml
      end
    end

    # List Stubber for QueueList
    class QueueList
      def self.default(visited=[])
        return nil if visited.include?('QueueList')
        visited = visited + ['QueueList']
        [
          Stubs::Queue.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Queue.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Queue
    class Queue
      def self.default(visited=[])
        return nil if visited.include?('Queue')
        visited = visited + ['Queue']
        {
          name: 'name',
          url: 'url',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Queue.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('URL', stub[:url].to_s) unless stub[:url].nil?
        xml
      end
    end

    # List Stubber for TriggerList
    class TriggerList
      def self.default(visited=[])
        return nil if visited.include?('TriggerList')
        visited = visited + ['TriggerList']
        [
          Stubs::Trigger.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Trigger.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Trigger
    class Trigger
      def self.default(visited=[])
        return nil if visited.include?('Trigger')
        visited = visited + ['Trigger']
        {
          name: 'name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Trigger.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml
      end
    end

    # List Stubber for LoadBalancerList
    class LoadBalancerList
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerList')
        visited = visited + ['LoadBalancerList']
        [
          Stubs::LoadBalancer.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LoadBalancer.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LoadBalancer
    class LoadBalancer
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancer')
        visited = visited + ['LoadBalancer']
        {
          name: 'name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadBalancer.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml
      end
    end

    # List Stubber for LaunchTemplateList
    class LaunchTemplateList
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateList')
        visited = visited + ['LaunchTemplateList']
        [
          Stubs::LaunchTemplate.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LaunchTemplate.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LaunchTemplate
    class LaunchTemplate
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplate')
        visited = visited + ['LaunchTemplate']
        {
          id: 'id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LaunchTemplate.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml
      end
    end

    # List Stubber for LaunchConfigurationList
    class LaunchConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('LaunchConfigurationList')
        visited = visited + ['LaunchConfigurationList']
        [
          Stubs::LaunchConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LaunchConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LaunchConfiguration
    class LaunchConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LaunchConfiguration')
        visited = visited + ['LaunchConfiguration']
        {
          name: 'name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LaunchConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml
      end
    end

    # List Stubber for InstanceList
    class InstanceList
      def self.default(visited=[])
        return nil if visited.include?('InstanceList')
        visited = visited + ['InstanceList']
        [
          Stubs::Instance.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Instance.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          id: 'id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Instance.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml
      end
    end

    # List Stubber for AutoScalingGroupList
    class AutoScalingGroupList
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroupList')
        visited = visited + ['AutoScalingGroupList']
        [
          Stubs::AutoScalingGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::AutoScalingGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AutoScalingGroup
    class AutoScalingGroup
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroup')
        visited = visited + ['AutoScalingGroup']
        {
          name: 'name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AutoScalingGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml
      end
    end

    # Operation Stubber for DescribeEnvironments
    class DescribeEnvironments
      def self.default(visited=[])
        {
          environments: Stubs::EnvironmentDescriptionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEnvironmentsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeEnvironmentsResult')
        xml << Hearth::XML::Node.new('Environments', Stubs::EnvironmentDescriptionsList.stub('member', stub[:environments])) unless stub[:environments].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEvents
    class DescribeEvents
      def self.default(visited=[])
        {
          events: Stubs::EventDescriptionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeEventsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeEventsResult')
        xml << Hearth::XML::Node.new('Events', Stubs::EventDescriptionList.stub('member', stub[:events])) unless stub[:events].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EventDescriptionList
    class EventDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('EventDescriptionList')
        visited = visited + ['EventDescriptionList']
        [
          Stubs::EventDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::EventDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EventDescription
    class EventDescription
      def self.default(visited=[])
        return nil if visited.include?('EventDescription')
        visited = visited + ['EventDescription']
        {
          event_date: Time.now,
          message: 'message',
          application_name: 'application_name',
          version_label: 'version_label',
          template_name: 'template_name',
          environment_name: 'environment_name',
          platform_arn: 'platform_arn',
          request_id: 'request_id',
          severity: 'severity',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EventDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EventDate', Hearth::TimeHelper.to_date_time(stub[:event_date])) unless stub[:event_date].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Hearth::XML::Node.new('VersionLabel', stub[:version_label].to_s) unless stub[:version_label].nil?
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('RequestId', stub[:request_id].to_s) unless stub[:request_id].nil?
        xml << Hearth::XML::Node.new('Severity', stub[:severity].to_s) unless stub[:severity].nil?
        xml
      end
    end

    # Operation Stubber for DescribeInstancesHealth
    class DescribeInstancesHealth
      def self.default(visited=[])
        {
          instance_health_list: Stubs::InstanceHealthList.default(visited),
          refreshed_at: Time.now,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeInstancesHealthResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribeInstancesHealthResult')
        xml << Hearth::XML::Node.new('InstanceHealthList', Stubs::InstanceHealthList.stub('member', stub[:instance_health_list])) unless stub[:instance_health_list].nil?
        xml << Hearth::XML::Node.new('RefreshedAt', Hearth::TimeHelper.to_date_time(stub[:refreshed_at])) unless stub[:refreshed_at].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceHealthList
    class InstanceHealthList
      def self.default(visited=[])
        return nil if visited.include?('InstanceHealthList')
        visited = visited + ['InstanceHealthList']
        [
          Stubs::SingleInstanceHealth.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::SingleInstanceHealth.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SingleInstanceHealth
    class SingleInstanceHealth
      def self.default(visited=[])
        return nil if visited.include?('SingleInstanceHealth')
        visited = visited + ['SingleInstanceHealth']
        {
          instance_id: 'instance_id',
          health_status: 'health_status',
          color: 'color',
          causes: Stubs::Causes.default(visited),
          launched_at: Time.now,
          application_metrics: Stubs::ApplicationMetrics.default(visited),
          system: Stubs::SystemStatus.default(visited),
          deployment: Stubs::Deployment.default(visited),
          availability_zone: 'availability_zone',
          instance_type: 'instance_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SingleInstanceHealth.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('InstanceId', stub[:instance_id].to_s) unless stub[:instance_id].nil?
        xml << Hearth::XML::Node.new('HealthStatus', stub[:health_status].to_s) unless stub[:health_status].nil?
        xml << Hearth::XML::Node.new('Color', stub[:color].to_s) unless stub[:color].nil?
        xml << Hearth::XML::Node.new('Causes', Stubs::Causes.stub('member', stub[:causes])) unless stub[:causes].nil?
        xml << Hearth::XML::Node.new('LaunchedAt', Hearth::TimeHelper.to_date_time(stub[:launched_at])) unless stub[:launched_at].nil?
        xml << Stubs::ApplicationMetrics.stub('ApplicationMetrics', stub[:application_metrics]) unless stub[:application_metrics].nil?
        xml << Stubs::SystemStatus.stub('System', stub[:system]) unless stub[:system].nil?
        xml << Stubs::Deployment.stub('Deployment', stub[:deployment]) unless stub[:deployment].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml << Hearth::XML::Node.new('InstanceType', stub[:instance_type].to_s) unless stub[:instance_type].nil?
        xml
      end
    end

    # Structure Stubber for Deployment
    class Deployment
      def self.default(visited=[])
        return nil if visited.include?('Deployment')
        visited = visited + ['Deployment']
        {
          version_label: 'version_label',
          deployment_id: 1,
          status: 'status',
          deployment_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Deployment.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VersionLabel', stub[:version_label].to_s) unless stub[:version_label].nil?
        xml << Hearth::XML::Node.new('DeploymentId', stub[:deployment_id].to_s) unless stub[:deployment_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('DeploymentTime', Hearth::TimeHelper.to_date_time(stub[:deployment_time])) unless stub[:deployment_time].nil?
        xml
      end
    end

    # Structure Stubber for SystemStatus
    class SystemStatus
      def self.default(visited=[])
        return nil if visited.include?('SystemStatus')
        visited = visited + ['SystemStatus']
        {
          cpu_utilization: Stubs::CPUUtilization.default(visited),
          load_average: Stubs::LoadAverage.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SystemStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::CPUUtilization.stub('CPUUtilization', stub[:cpu_utilization]) unless stub[:cpu_utilization].nil?
        xml << Hearth::XML::Node.new('LoadAverage', Stubs::LoadAverage.stub('member', stub[:load_average])) unless stub[:load_average].nil?
        xml
      end
    end

    # List Stubber for LoadAverage
    class LoadAverage
      def self.default(visited=[])
        return nil if visited.include?('LoadAverage')
        visited = visited + ['LoadAverage']
        [
          1.0
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, Hearth::NumberHelper.serialize(element).to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CPUUtilization
    class CPUUtilization
      def self.default(visited=[])
        return nil if visited.include?('CPUUtilization')
        visited = visited + ['CPUUtilization']
        {
          user: 1.0,
          nice: 1.0,
          system: 1.0,
          idle: 1.0,
          io_wait: 1.0,
          irq: 1.0,
          soft_irq: 1.0,
          privileged: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CPUUtilization.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('User', Hearth::NumberHelper.serialize(stub[:user]).to_s) unless stub[:user].nil?
        xml << Hearth::XML::Node.new('Nice', Hearth::NumberHelper.serialize(stub[:nice]).to_s) unless stub[:nice].nil?
        xml << Hearth::XML::Node.new('System', Hearth::NumberHelper.serialize(stub[:system]).to_s) unless stub[:system].nil?
        xml << Hearth::XML::Node.new('Idle', Hearth::NumberHelper.serialize(stub[:idle]).to_s) unless stub[:idle].nil?
        xml << Hearth::XML::Node.new('IOWait', Hearth::NumberHelper.serialize(stub[:io_wait]).to_s) unless stub[:io_wait].nil?
        xml << Hearth::XML::Node.new('IRQ', Hearth::NumberHelper.serialize(stub[:irq]).to_s) unless stub[:irq].nil?
        xml << Hearth::XML::Node.new('SoftIRQ', Hearth::NumberHelper.serialize(stub[:soft_irq]).to_s) unless stub[:soft_irq].nil?
        xml << Hearth::XML::Node.new('Privileged', Hearth::NumberHelper.serialize(stub[:privileged]).to_s) unless stub[:privileged].nil?
        xml
      end
    end

    # Operation Stubber for DescribePlatformVersion
    class DescribePlatformVersion
      def self.default(visited=[])
        {
          platform_description: Stubs::PlatformDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribePlatformVersionResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DescribePlatformVersionResult')
        xml << Stubs::PlatformDescription.stub('PlatformDescription', stub[:platform_description]) unless stub[:platform_description].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for PlatformDescription
    class PlatformDescription
      def self.default(visited=[])
        return nil if visited.include?('PlatformDescription')
        visited = visited + ['PlatformDescription']
        {
          platform_arn: 'platform_arn',
          platform_owner: 'platform_owner',
          platform_name: 'platform_name',
          platform_version: 'platform_version',
          solution_stack_name: 'solution_stack_name',
          platform_status: 'platform_status',
          date_created: Time.now,
          date_updated: Time.now,
          platform_category: 'platform_category',
          description: 'description',
          maintainer: 'maintainer',
          operating_system_name: 'operating_system_name',
          operating_system_version: 'operating_system_version',
          programming_languages: Stubs::PlatformProgrammingLanguages.default(visited),
          frameworks: Stubs::PlatformFrameworks.default(visited),
          custom_ami_list: Stubs::CustomAmiList.default(visited),
          supported_tier_list: Stubs::SupportedTierList.default(visited),
          supported_addon_list: Stubs::SupportedAddonList.default(visited),
          platform_lifecycle_state: 'platform_lifecycle_state',
          platform_branch_name: 'platform_branch_name',
          platform_branch_lifecycle_state: 'platform_branch_lifecycle_state',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PlatformDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('PlatformOwner', stub[:platform_owner].to_s) unless stub[:platform_owner].nil?
        xml << Hearth::XML::Node.new('PlatformName', stub[:platform_name].to_s) unless stub[:platform_name].nil?
        xml << Hearth::XML::Node.new('PlatformVersion', stub[:platform_version].to_s) unless stub[:platform_version].nil?
        xml << Hearth::XML::Node.new('SolutionStackName', stub[:solution_stack_name].to_s) unless stub[:solution_stack_name].nil?
        xml << Hearth::XML::Node.new('PlatformStatus', stub[:platform_status].to_s) unless stub[:platform_status].nil?
        xml << Hearth::XML::Node.new('DateCreated', Hearth::TimeHelper.to_date_time(stub[:date_created])) unless stub[:date_created].nil?
        xml << Hearth::XML::Node.new('DateUpdated', Hearth::TimeHelper.to_date_time(stub[:date_updated])) unless stub[:date_updated].nil?
        xml << Hearth::XML::Node.new('PlatformCategory', stub[:platform_category].to_s) unless stub[:platform_category].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Maintainer', stub[:maintainer].to_s) unless stub[:maintainer].nil?
        xml << Hearth::XML::Node.new('OperatingSystemName', stub[:operating_system_name].to_s) unless stub[:operating_system_name].nil?
        xml << Hearth::XML::Node.new('OperatingSystemVersion', stub[:operating_system_version].to_s) unless stub[:operating_system_version].nil?
        xml << Hearth::XML::Node.new('ProgrammingLanguages', Stubs::PlatformProgrammingLanguages.stub('member', stub[:programming_languages])) unless stub[:programming_languages].nil?
        xml << Hearth::XML::Node.new('Frameworks', Stubs::PlatformFrameworks.stub('member', stub[:frameworks])) unless stub[:frameworks].nil?
        xml << Hearth::XML::Node.new('CustomAmiList', Stubs::CustomAmiList.stub('member', stub[:custom_ami_list])) unless stub[:custom_ami_list].nil?
        xml << Hearth::XML::Node.new('SupportedTierList', Stubs::SupportedTierList.stub('member', stub[:supported_tier_list])) unless stub[:supported_tier_list].nil?
        xml << Hearth::XML::Node.new('SupportedAddonList', Stubs::SupportedAddonList.stub('member', stub[:supported_addon_list])) unless stub[:supported_addon_list].nil?
        xml << Hearth::XML::Node.new('PlatformLifecycleState', stub[:platform_lifecycle_state].to_s) unless stub[:platform_lifecycle_state].nil?
        xml << Hearth::XML::Node.new('PlatformBranchName', stub[:platform_branch_name].to_s) unless stub[:platform_branch_name].nil?
        xml << Hearth::XML::Node.new('PlatformBranchLifecycleState', stub[:platform_branch_lifecycle_state].to_s) unless stub[:platform_branch_lifecycle_state].nil?
        xml
      end
    end

    # List Stubber for CustomAmiList
    class CustomAmiList
      def self.default(visited=[])
        return nil if visited.include?('CustomAmiList')
        visited = visited + ['CustomAmiList']
        [
          Stubs::CustomAmi.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::CustomAmi.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CustomAmi
    class CustomAmi
      def self.default(visited=[])
        return nil if visited.include?('CustomAmi')
        visited = visited + ['CustomAmi']
        {
          virtualization_type: 'virtualization_type',
          image_id: 'image_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CustomAmi.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VirtualizationType', stub[:virtualization_type].to_s) unless stub[:virtualization_type].nil?
        xml << Hearth::XML::Node.new('ImageId', stub[:image_id].to_s) unless stub[:image_id].nil?
        xml
      end
    end

    # List Stubber for PlatformFrameworks
    class PlatformFrameworks
      def self.default(visited=[])
        return nil if visited.include?('PlatformFrameworks')
        visited = visited + ['PlatformFrameworks']
        [
          Stubs::PlatformFramework.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PlatformFramework.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PlatformFramework
    class PlatformFramework
      def self.default(visited=[])
        return nil if visited.include?('PlatformFramework')
        visited = visited + ['PlatformFramework']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PlatformFramework.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Version', stub[:version].to_s) unless stub[:version].nil?
        xml
      end
    end

    # List Stubber for PlatformProgrammingLanguages
    class PlatformProgrammingLanguages
      def self.default(visited=[])
        return nil if visited.include?('PlatformProgrammingLanguages')
        visited = visited + ['PlatformProgrammingLanguages']
        [
          Stubs::PlatformProgrammingLanguage.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PlatformProgrammingLanguage.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PlatformProgrammingLanguage
    class PlatformProgrammingLanguage
      def self.default(visited=[])
        return nil if visited.include?('PlatformProgrammingLanguage')
        visited = visited + ['PlatformProgrammingLanguage']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PlatformProgrammingLanguage.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Version', stub[:version].to_s) unless stub[:version].nil?
        xml
      end
    end

    # Operation Stubber for DisassociateEnvironmentOperationsRole
    class DisassociateEnvironmentOperationsRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DisassociateEnvironmentOperationsRoleResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('DisassociateEnvironmentOperationsRoleResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAvailableSolutionStacks
    class ListAvailableSolutionStacks
      def self.default(visited=[])
        {
          solution_stacks: Stubs::AvailableSolutionStackNamesList.default(visited),
          solution_stack_details: Stubs::AvailableSolutionStackDetailsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListAvailableSolutionStacksResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('ListAvailableSolutionStacksResult')
        xml << Hearth::XML::Node.new('SolutionStacks', Stubs::AvailableSolutionStackNamesList.stub('member', stub[:solution_stacks])) unless stub[:solution_stacks].nil?
        xml << Hearth::XML::Node.new('SolutionStackDetails', Stubs::AvailableSolutionStackDetailsList.stub('member', stub[:solution_stack_details])) unless stub[:solution_stack_details].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AvailableSolutionStackDetailsList
    class AvailableSolutionStackDetailsList
      def self.default(visited=[])
        return nil if visited.include?('AvailableSolutionStackDetailsList')
        visited = visited + ['AvailableSolutionStackDetailsList']
        [
          Stubs::SolutionStackDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::SolutionStackDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SolutionStackDescription
    class SolutionStackDescription
      def self.default(visited=[])
        return nil if visited.include?('SolutionStackDescription')
        visited = visited + ['SolutionStackDescription']
        {
          solution_stack_name: 'solution_stack_name',
          permitted_file_types: Stubs::SolutionStackFileTypeList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SolutionStackDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SolutionStackName', stub[:solution_stack_name].to_s) unless stub[:solution_stack_name].nil?
        xml << Hearth::XML::Node.new('PermittedFileTypes', Stubs::SolutionStackFileTypeList.stub('member', stub[:permitted_file_types])) unless stub[:permitted_file_types].nil?
        xml
      end
    end

    # List Stubber for SolutionStackFileTypeList
    class SolutionStackFileTypeList
      def self.default(visited=[])
        return nil if visited.include?('SolutionStackFileTypeList')
        visited = visited + ['SolutionStackFileTypeList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for AvailableSolutionStackNamesList
    class AvailableSolutionStackNamesList
      def self.default(visited=[])
        return nil if visited.include?('AvailableSolutionStackNamesList')
        visited = visited + ['AvailableSolutionStackNamesList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListPlatformBranches
    class ListPlatformBranches
      def self.default(visited=[])
        {
          platform_branch_summary_list: Stubs::PlatformBranchSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListPlatformBranchesResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('ListPlatformBranchesResult')
        xml << Hearth::XML::Node.new('PlatformBranchSummaryList', Stubs::PlatformBranchSummaryList.stub('member', stub[:platform_branch_summary_list])) unless stub[:platform_branch_summary_list].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for PlatformBranchSummaryList
    class PlatformBranchSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PlatformBranchSummaryList')
        visited = visited + ['PlatformBranchSummaryList']
        [
          Stubs::PlatformBranchSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PlatformBranchSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PlatformBranchSummary
    class PlatformBranchSummary
      def self.default(visited=[])
        return nil if visited.include?('PlatformBranchSummary')
        visited = visited + ['PlatformBranchSummary']
        {
          platform_name: 'platform_name',
          branch_name: 'branch_name',
          lifecycle_state: 'lifecycle_state',
          branch_order: 1,
          supported_tier_list: Stubs::SupportedTierList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PlatformBranchSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PlatformName', stub[:platform_name].to_s) unless stub[:platform_name].nil?
        xml << Hearth::XML::Node.new('BranchName', stub[:branch_name].to_s) unless stub[:branch_name].nil?
        xml << Hearth::XML::Node.new('LifecycleState', stub[:lifecycle_state].to_s) unless stub[:lifecycle_state].nil?
        xml << Hearth::XML::Node.new('BranchOrder', stub[:branch_order].to_s) unless stub[:branch_order].nil?
        xml << Hearth::XML::Node.new('SupportedTierList', Stubs::SupportedTierList.stub('member', stub[:supported_tier_list])) unless stub[:supported_tier_list].nil?
        xml
      end
    end

    # Operation Stubber for ListPlatformVersions
    class ListPlatformVersions
      def self.default(visited=[])
        {
          platform_summary_list: Stubs::PlatformSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListPlatformVersionsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('ListPlatformVersionsResult')
        xml << Hearth::XML::Node.new('PlatformSummaryList', Stubs::PlatformSummaryList.stub('member', stub[:platform_summary_list])) unless stub[:platform_summary_list].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for PlatformSummaryList
    class PlatformSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PlatformSummaryList')
        visited = visited + ['PlatformSummaryList']
        [
          Stubs::PlatformSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PlatformSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          resource_tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListTagsForResourceResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('ListTagsForResourceResult')
        xml << Hearth::XML::Node.new('ResourceArn', stub[:resource_arn].to_s) unless stub[:resource_arn].nil?
        xml << Hearth::XML::Node.new('ResourceTags', Stubs::TagList.stub('member', stub[:resource_tags])) unless stub[:resource_tags].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Tag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for RebuildEnvironment
    class RebuildEnvironment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RebuildEnvironmentResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('RebuildEnvironmentResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RequestEnvironmentInfo
    class RequestEnvironmentInfo
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RequestEnvironmentInfoResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('RequestEnvironmentInfoResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RestartAppServer
    class RestartAppServer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RestartAppServerResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('RestartAppServerResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RetrieveEnvironmentInfo
    class RetrieveEnvironmentInfo
      def self.default(visited=[])
        {
          environment_info: Stubs::EnvironmentInfoDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RetrieveEnvironmentInfoResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('RetrieveEnvironmentInfoResult')
        xml << Hearth::XML::Node.new('EnvironmentInfo', Stubs::EnvironmentInfoDescriptionList.stub('member', stub[:environment_info])) unless stub[:environment_info].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EnvironmentInfoDescriptionList
    class EnvironmentInfoDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentInfoDescriptionList')
        visited = visited + ['EnvironmentInfoDescriptionList']
        [
          Stubs::EnvironmentInfoDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::EnvironmentInfoDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EnvironmentInfoDescription
    class EnvironmentInfoDescription
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentInfoDescription')
        visited = visited + ['EnvironmentInfoDescription']
        {
          info_type: 'info_type',
          ec2_instance_id: 'ec2_instance_id',
          sample_timestamp: Time.now,
          message: 'message',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EnvironmentInfoDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('InfoType', stub[:info_type].to_s) unless stub[:info_type].nil?
        xml << Hearth::XML::Node.new('Ec2InstanceId', stub[:ec2_instance_id].to_s) unless stub[:ec2_instance_id].nil?
        xml << Hearth::XML::Node.new('SampleTimestamp', Hearth::TimeHelper.to_date_time(stub[:sample_timestamp])) unless stub[:sample_timestamp].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml
      end
    end

    # Operation Stubber for SwapEnvironmentCNAMEs
    class SwapEnvironmentCNAMEs
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SwapEnvironmentCNAMEsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('SwapEnvironmentCNAMEsResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TerminateEnvironment
    class TerminateEnvironment
      def self.default(visited=[])
        {
          environment_name: 'environment_name',
          environment_id: 'environment_id',
          application_name: 'application_name',
          version_label: 'version_label',
          solution_stack_name: 'solution_stack_name',
          platform_arn: 'platform_arn',
          template_name: 'template_name',
          description: 'description',
          endpoint_url: 'endpoint_url',
          cname: 'cname',
          date_created: Time.now,
          date_updated: Time.now,
          status: 'status',
          abortable_operation_in_progress: false,
          health: 'health',
          health_status: 'health_status',
          resources: Stubs::EnvironmentResourcesDescription.default(visited),
          tier: Stubs::EnvironmentTier.default(visited),
          environment_links: Stubs::EnvironmentLinks.default(visited),
          environment_arn: 'environment_arn',
          operations_role: 'operations_role',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TerminateEnvironmentResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('TerminateEnvironmentResult')
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml << Hearth::XML::Node.new('EnvironmentId', stub[:environment_id].to_s) unless stub[:environment_id].nil?
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Hearth::XML::Node.new('VersionLabel', stub[:version_label].to_s) unless stub[:version_label].nil?
        xml << Hearth::XML::Node.new('SolutionStackName', stub[:solution_stack_name].to_s) unless stub[:solution_stack_name].nil?
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('EndpointURL', stub[:endpoint_url].to_s) unless stub[:endpoint_url].nil?
        xml << Hearth::XML::Node.new('CNAME', stub[:cname].to_s) unless stub[:cname].nil?
        xml << Hearth::XML::Node.new('DateCreated', Hearth::TimeHelper.to_date_time(stub[:date_created])) unless stub[:date_created].nil?
        xml << Hearth::XML::Node.new('DateUpdated', Hearth::TimeHelper.to_date_time(stub[:date_updated])) unless stub[:date_updated].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('AbortableOperationInProgress', stub[:abortable_operation_in_progress].to_s) unless stub[:abortable_operation_in_progress].nil?
        xml << Hearth::XML::Node.new('Health', stub[:health].to_s) unless stub[:health].nil?
        xml << Hearth::XML::Node.new('HealthStatus', stub[:health_status].to_s) unless stub[:health_status].nil?
        xml << Stubs::EnvironmentResourcesDescription.stub('Resources', stub[:resources]) unless stub[:resources].nil?
        xml << Stubs::EnvironmentTier.stub('Tier', stub[:tier]) unless stub[:tier].nil?
        xml << Hearth::XML::Node.new('EnvironmentLinks', Stubs::EnvironmentLinks.stub('member', stub[:environment_links])) unless stub[:environment_links].nil?
        xml << Hearth::XML::Node.new('EnvironmentArn', stub[:environment_arn].to_s) unless stub[:environment_arn].nil?
        xml << Hearth::XML::Node.new('OperationsRole', stub[:operations_role].to_s) unless stub[:operations_role].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
          application: Stubs::ApplicationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateApplicationResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateApplicationResult')
        xml << Stubs::ApplicationDescription.stub('Application', stub[:application]) unless stub[:application].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplicationResourceLifecycle
    class UpdateApplicationResourceLifecycle
      def self.default(visited=[])
        {
          application_name: 'application_name',
          resource_lifecycle_config: Stubs::ApplicationResourceLifecycleConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateApplicationResourceLifecycleResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateApplicationResourceLifecycleResult')
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Stubs::ApplicationResourceLifecycleConfig.stub('ResourceLifecycleConfig', stub[:resource_lifecycle_config]) unless stub[:resource_lifecycle_config].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplicationVersion
    class UpdateApplicationVersion
      def self.default(visited=[])
        {
          application_version: Stubs::ApplicationVersionDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateApplicationVersionResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateApplicationVersionResult')
        xml << Stubs::ApplicationVersionDescription.stub('ApplicationVersion', stub[:application_version]) unless stub[:application_version].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConfigurationTemplate
    class UpdateConfigurationTemplate
      def self.default(visited=[])
        {
          solution_stack_name: 'solution_stack_name',
          platform_arn: 'platform_arn',
          application_name: 'application_name',
          template_name: 'template_name',
          description: 'description',
          environment_name: 'environment_name',
          deployment_status: 'deployment_status',
          date_created: Time.now,
          date_updated: Time.now,
          option_settings: Stubs::ConfigurationOptionSettingsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateConfigurationTemplateResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateConfigurationTemplateResult')
        xml << Hearth::XML::Node.new('SolutionStackName', stub[:solution_stack_name].to_s) unless stub[:solution_stack_name].nil?
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml << Hearth::XML::Node.new('DeploymentStatus', stub[:deployment_status].to_s) unless stub[:deployment_status].nil?
        xml << Hearth::XML::Node.new('DateCreated', Hearth::TimeHelper.to_date_time(stub[:date_created])) unless stub[:date_created].nil?
        xml << Hearth::XML::Node.new('DateUpdated', Hearth::TimeHelper.to_date_time(stub[:date_updated])) unless stub[:date_updated].nil?
        xml << Hearth::XML::Node.new('OptionSettings', Stubs::ConfigurationOptionSettingsList.stub('member', stub[:option_settings])) unless stub[:option_settings].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEnvironment
    class UpdateEnvironment
      def self.default(visited=[])
        {
          environment_name: 'environment_name',
          environment_id: 'environment_id',
          application_name: 'application_name',
          version_label: 'version_label',
          solution_stack_name: 'solution_stack_name',
          platform_arn: 'platform_arn',
          template_name: 'template_name',
          description: 'description',
          endpoint_url: 'endpoint_url',
          cname: 'cname',
          date_created: Time.now,
          date_updated: Time.now,
          status: 'status',
          abortable_operation_in_progress: false,
          health: 'health',
          health_status: 'health_status',
          resources: Stubs::EnvironmentResourcesDescription.default(visited),
          tier: Stubs::EnvironmentTier.default(visited),
          environment_links: Stubs::EnvironmentLinks.default(visited),
          environment_arn: 'environment_arn',
          operations_role: 'operations_role',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateEnvironmentResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateEnvironmentResult')
        xml << Hearth::XML::Node.new('EnvironmentName', stub[:environment_name].to_s) unless stub[:environment_name].nil?
        xml << Hearth::XML::Node.new('EnvironmentId', stub[:environment_id].to_s) unless stub[:environment_id].nil?
        xml << Hearth::XML::Node.new('ApplicationName', stub[:application_name].to_s) unless stub[:application_name].nil?
        xml << Hearth::XML::Node.new('VersionLabel', stub[:version_label].to_s) unless stub[:version_label].nil?
        xml << Hearth::XML::Node.new('SolutionStackName', stub[:solution_stack_name].to_s) unless stub[:solution_stack_name].nil?
        xml << Hearth::XML::Node.new('PlatformArn', stub[:platform_arn].to_s) unless stub[:platform_arn].nil?
        xml << Hearth::XML::Node.new('TemplateName', stub[:template_name].to_s) unless stub[:template_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('EndpointURL', stub[:endpoint_url].to_s) unless stub[:endpoint_url].nil?
        xml << Hearth::XML::Node.new('CNAME', stub[:cname].to_s) unless stub[:cname].nil?
        xml << Hearth::XML::Node.new('DateCreated', Hearth::TimeHelper.to_date_time(stub[:date_created])) unless stub[:date_created].nil?
        xml << Hearth::XML::Node.new('DateUpdated', Hearth::TimeHelper.to_date_time(stub[:date_updated])) unless stub[:date_updated].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('AbortableOperationInProgress', stub[:abortable_operation_in_progress].to_s) unless stub[:abortable_operation_in_progress].nil?
        xml << Hearth::XML::Node.new('Health', stub[:health].to_s) unless stub[:health].nil?
        xml << Hearth::XML::Node.new('HealthStatus', stub[:health_status].to_s) unless stub[:health_status].nil?
        xml << Stubs::EnvironmentResourcesDescription.stub('Resources', stub[:resources]) unless stub[:resources].nil?
        xml << Stubs::EnvironmentTier.stub('Tier', stub[:tier]) unless stub[:tier].nil?
        xml << Hearth::XML::Node.new('EnvironmentLinks', Stubs::EnvironmentLinks.stub('member', stub[:environment_links])) unless stub[:environment_links].nil?
        xml << Hearth::XML::Node.new('EnvironmentArn', stub[:environment_arn].to_s) unless stub[:environment_arn].nil?
        xml << Hearth::XML::Node.new('OperationsRole', stub[:operations_role].to_s) unless stub[:operations_role].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTagsForResource
    class UpdateTagsForResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateTagsForResourceResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('UpdateTagsForResourceResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ValidateConfigurationSettings
    class ValidateConfigurationSettings
      def self.default(visited=[])
        {
          messages: Stubs::ValidationMessagesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ValidateConfigurationSettingsResponse')
        response.attributes['xmlns'] = 'http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/'
        xml = Hearth::XML::Node.new('ValidateConfigurationSettingsResult')
        xml << Hearth::XML::Node.new('Messages', Stubs::ValidationMessagesList.stub('member', stub[:messages])) unless stub[:messages].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ValidationMessagesList
    class ValidationMessagesList
      def self.default(visited=[])
        return nil if visited.include?('ValidationMessagesList')
        visited = visited + ['ValidationMessagesList']
        [
          Stubs::ValidationMessage.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ValidationMessage.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ValidationMessage
    class ValidationMessage
      def self.default(visited=[])
        return nil if visited.include?('ValidationMessage')
        visited = visited + ['ValidationMessage']
        {
          message: 'message',
          severity: 'severity',
          namespace: 'namespace',
          option_name: 'option_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ValidationMessage.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('Severity', stub[:severity].to_s) unless stub[:severity].nil?
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('OptionName', stub[:option_name].to_s) unless stub[:option_name].nil?
        xml
      end
    end
  end
end
